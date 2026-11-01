extends CharacterBody2D
## Player ship. Movement stays as Samuel played it.
## Shooting matches $733F6 / initmissile $73596: one missile per press.
## The fire-delay word $74(a5) is 3 vertical blanks, refreshed while held,
## so holding does not autofire. The gap between taps is 3/50 s.
## Contact with an alien uses the faster clxdat path in check.collision:
## ship.count starts at $FFFF and shifts right 5 while the bodies overlap.
## When bit 4 is clear, ship.energy drops by 2 ($74AE6 bar, max 128).
## Energy 0 kills the ship: controls stop and the explosion frames play.
## Retail never flashes the ship for low energy. decrease.energy only
## shortens the panel bar. The colours+74 outline ($000f / $000c) is the
## force field in moveship. While this ship is alive and energy is at or
## under a quarter of the bar (32), the sprite pulses. Above 32, and when
## the ship dies, scale and modulate return to rest. Position is not moved.

const SPEED = 150.0
const BULLET_SCENE = preload("res://scenes/bullet.tscn")
const PodScript = preload("res://scripts/weapon_pod.gd")
const ShipFrames = preload("res://scripts/ship_weapon.gd")
const SHIELD_MAX := 128
## Quarter of the bar. int(SHIELD_MAX / 4) is 32. Pulse only at or under this.
const LOW_SHIELD := 32
const LOW_PULSE_HZ := 4.0
const LOW_PULSE_SCALE := 0.08
const LOW_PULSE_FLASH := 0.85
const LOW_PULSE_HOT := Color(1.0, 0.28, 0.22)
const CONTACT_STEP := 1.0 / 50.0
const EXPLODE_STEP := 4.0 / 50.0
const EXPLODE: Array[Texture2D] = [
	preload("res://sprites/level1/enemy-l0-explosion-00.png"),
	preload("res://sprites/level1/enemy-l0-explosion-01.png"),
	preload("res://sprites/level1/enemy-l0-explosion-02.png"),
	preload("res://sprites/level1/enemy-l0-explosion-03.png"),
	preload("res://sprites/level1/enemy-l0-explosion-04.png"),
	preload("res://sprites/level1/enemy-l0-explosion-05.png"),
	preload("res://sprites/level1/enemy-l0-explosion-06.png"),
	preload("res://sprites/level1/enemy-l0-explosion-07.png"),
	preload("res://sprites/level1/enemy-l0-explosion-08.png"),
]

@onready var shoot_timer = $ShootTimer
@onready var sprite = $Sprite2D
@onready var body_shape: CollisionShape2D = $CollisionShape2D

var can_shoot = true
var energy: int = SHIELD_MAX
var ship_count: int = 0xFFFF
var contact_acc: float = 0.0
var ship_dead: bool = false
var explode_i: int = 0
var explode_acc: float = 0.0
var _low_phase: float = 0.0
var _low_on: bool = false
var pod = null
## $5E(a5). moveship subtracts one per vertical blank. 768 is about 15 s at 50 Hz.
var field_count: int = 0
var field_acc: float = 0.0


func _ready() -> void:
	collision_layer = 1
	collision_mask = 2
	z_index = 30
	shoot_timer.wait_time = 3.0 / 50.0
	shoot_timer.one_shot = true
	pod = PodScript.new()
	pod.name = "WeaponPod"
	add_child(pod)
	_push_shield()


func _physics_process(delta: float) -> void:
	if ship_dead:
		_rest_low_shield()
		_explosion(delta)
		return
	_sync_alien_bodies()
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var speed_scale := 1.0
	if pod != null and pod.ship_speed > 0:
		speed_scale = float(pod.ship_speed) / 2.0
	velocity = direction * SPEED * speed_scale
	move_and_slide()
	# Keep the 32x44 ship inside the 320x192 playfield, above the HUD.
	position.x = clamp(position.x, 16, 304)
	position.y = clamp(position.y, 22, 170)
	if Input.is_action_just_pressed("shoot") and can_shoot:
		shoot()
	_contact_clock(delta)
	if ship_dead:
		return
	_tick_field(delta)
	if field_count > 0:
		_rest_low_shield()
		_show_field()
	else:
		_low_shield_pulse(delta)


func shoot() -> void:
	# The node is the ship center. Retail xpos/ypos are the top-left.
	# The missile blit origin is that corner plus (58, 24). $73596 always fires it.
	var top_left := position - Vector2(16, 22)
	_launch(0, top_left + Vector2(58, 24), 0)
	if pod != null and pod.canons_on and pod.canon_energy != 0:
		_launch(1, top_left + Vector2(53, 30), 0)
		pod.canon_energy -= 2
		if pod.canon_energy < 0:
			pod.canon_energy = 0
	if pod != null and pod.lasers_on and pod.laser_energy != 0:
		_launch(2, top_left + Vector2(42, 14), 0)
		pod.laser_energy -= 2
		if pod.laser_energy < 0:
			pod.laser_energy = 0
	if pod != null and pod.mult1:
		_launch(3, top_left + Vector2(38, 6), 0)
	if pod != null and pod.mult2:
		_launch(3, top_left + Vector2(38, 40), 0)
	var blast = get_node_or_null("ShootSound")
	if blast == null:
		blast = AudioStreamPlayer.new()
		blast.name = "ShootSound"
		blast.stream = preload("res://audio/shoot.ogg")
		add_child(blast)
	blast.bus = "Sfx"
	blast.play()
	can_shoot = false
	shoot_timer.start()


func _on_shoot_timer_timeout() -> void:
	can_shoot = true


func _launch(kind: int, at: Vector2, drift: int) -> void:
	var bullet = BULLET_SCENE.instantiate()
	bullet.kind = kind
	bullet.drift_y = drift
	bullet.position = at
	get_parent().add_child(bullet)


## Flying into the icon. $72FE4 applies bonus.num and clears bonus.mode.
func collect_bonus() -> void:
	if ship_dead or pod == null or pod.consumed:
		return
	var taken: int = pod.pod_type
	pod.collect()
	if taken == 0:
		var hud := _hud()
		if hud != null and hud.has_method("set_score"):
			hud.set_score(int(hud.score) + 1000)
	elif taken == 1 or taken == 2:
		if not pod.refilled and sprite != null:
			ShipFrames.apply(sprite, pod.weapon_level, "level")
	elif taken == 5:
		field_count = 768
		field_acc = 0.0
	elif taken == 6:
		energy = SHIELD_MAX
		_push_shield()


func hit() -> void:
	if ship_dead:
		return
	if field_count > 0:
		return
	energy -= 2
	ship_count = 0xFFFF
	if energy <= 0:
		energy = 0
		_push_shield()
		_rest_low_shield()
		_die()
		return
	_push_shield()


func _die() -> void:
	ship_dead = true
	field_count = 0
	velocity = Vector2.ZERO
	can_shoot = false
	collision_layer = 0
	collision_mask = 0
	if body_shape != null:
		body_shape.disabled = true
	explode_i = 0
	explode_acc = 0.0
	if sprite != null and EXPLODE.size() > 0:
		sprite.texture = EXPLODE[0]
		sprite.centered = true
		sprite.visible = true
		sprite.modulate = Color.WHITE
		sprite.scale = Vector2.ONE


func _explosion(delta: float) -> void:
	velocity = Vector2.ZERO
	explode_acc += delta
	if explode_acc < EXPLODE_STEP:
		return
	explode_acc -= EXPLODE_STEP
	if explode_i + 1 >= EXPLODE.size():
		if sprite != null and EXPLODE.size() > 0:
			sprite.texture = EXPLODE[EXPLODE.size() - 1]
		set_physics_process(false)
		return
	explode_i += 1
	if sprite != null:
		sprite.texture = EXPLODE[explode_i]


func _contact_clock(delta: float) -> void:
	contact_acc += delta
	if contact_acc > CONTACT_STEP * 5.0:
		contact_acc = CONTACT_STEP * 5.0
	var touching := _touching_alien()
	while contact_acc >= CONTACT_STEP and not ship_dead:
		contact_acc -= CONTACT_STEP
		if touching:
			_shield_tick()


## lsr.w #5 then bcc: bit 4 clear spends 2 shield. Bit 4 set only shifts the counter.
func _shield_tick() -> void:
	if ship_dead or field_count > 0:
		return
	var bit := (ship_count >> 4) & 1
	if bit != 0:
		ship_count = (ship_count >> 5) & 0xFFFF
		return
	hit()


func _touching_alien() -> bool:
	for i in get_slide_collision_count():
		var slide := get_slide_collision(i)
		var collider: Object = slide.get_collider()
		if _is_alien(collider):
			return true
	if _query_overlap():
		return true
	return _sprite_overlap()


func _query_overlap() -> bool:
	if body_shape == null or body_shape.shape == null:
		return false
	var world := get_world_2d()
	if world == null:
		return false
	var space := world.direct_space_state
	if space == null:
		return false
	var query := PhysicsShapeQueryParameters2D.new()
	query.shape = body_shape.shape
	query.transform = body_shape.global_transform
	query.collision_mask = collision_mask
	query.collide_with_bodies = true
	query.collide_with_areas = false
	query.exclude.append(get_rid())
	var found: Array = space.intersect_shape(query, 8)
	for item in found:
		if _is_alien(item.get("collider")):
			return true
	return false


## Setting an alien's position during this frame leaves the physics body
## on the previous origin, so the shape query misses the sprite. Push the
## body forward, and also test the node rectangle.
func _sync_alien_bodies() -> void:
	var tree := get_tree()
	if tree == null:
		return
	for node in tree.get_nodes_in_group("karnaugh_wave"):
		if not node is CollisionObject2D:
			continue
		if not _is_alien(node):
			continue
		if not node.visible:
			continue
		PhysicsServer2D.body_set_state(node.get_rid(), PhysicsServer2D.BODY_STATE_TRANSFORM, node.global_transform)


func _sprite_overlap() -> bool:
	var mine := _body_rect(body_shape)
	if mine.size == Vector2.ZERO:
		return false
	var tree := get_tree()
	if tree == null:
		return false
	for node in tree.get_nodes_in_group("karnaugh_wave"):
		if not _is_alien(node):
			continue
		if not node.visible:
			continue
		var shape := node.get_node_or_null("CollisionShape2D") as CollisionShape2D
		if shape == null or shape.disabled:
			continue
		if mine.intersects(_body_rect(shape)):
			return true
	return false


func _body_rect(shape: CollisionShape2D) -> Rect2:
	if shape == null or shape.shape == null:
		return Rect2()
	var rect := shape.shape as RectangleShape2D
	if rect == null:
		return Rect2()
	var size := rect.size
	return Rect2(shape.global_position - size * 0.5, size)


func _is_alien(body: Object) -> bool:
	if body == null or body == self:
		return false
	if not body.has_method("hit"):
		return false
	return "slot" in body


## Alive and at or under LOW_SHIELD: breathe the sprite about its center.
## The scene sprite is centered, so scale stays on the texture center.
func _low_shield_pulse(delta: float) -> void:
	if energy > LOW_SHIELD:
		_rest_low_shield()
		return
	if sprite == null:
		return
	_low_on = true
	_low_phase = fmod(_low_phase + delta * LOW_PULSE_HZ * TAU, TAU)
	var wave := 0.5 - 0.5 * cos(_low_phase)
	var s := 1.0 + LOW_PULSE_SCALE * wave
	sprite.scale = Vector2(s, s)
	sprite.modulate = Color.WHITE.lerp(LOW_PULSE_HOT, LOW_PULSE_FLASH * wave)


## One restore. Later calls leave scale and modulate alone, so a death
## fade can own the sprite after the pulse has stopped.
func _rest_low_shield() -> void:
	_low_phase = 0.0
	if not _low_on:
		return
	_low_on = false
	if sprite == null:
		return
	sprite.scale = Vector2.ONE
	sprite.modulate = Color.WHITE


func _tick_field(delta: float) -> void:
	if field_count <= 0:
		return
	field_acc += delta
	if field_acc > CONTACT_STEP * 5.0:
		field_acc = CONTACT_STEP * 5.0
	while field_acc >= CONTACT_STEP and field_count > 0:
		field_acc -= CONTACT_STEP
		field_count -= 1
	if field_count == 0 and sprite != null:
		sprite.modulate = Color.WHITE
		sprite.scale = Vector2.ONE


## $731B4 writes colour $000F. $731D4 writes $000C while bit 1 of the low byte is set.
func _show_field() -> void:
	if sprite == null:
		return
	sprite.scale = Vector2.ONE
	if (field_count & 2) != 0:
		sprite.modulate = Color(0.0, 0.0, 0.75)
	else:
		sprite.modulate = Color(0.0, 0.0, 1.0)


func _push_shield() -> void:
	var hud := _hud()
	if hud != null and hud.has_method("set_shield"):
		hud.set_shield(energy)


func _hud() -> Node:
	var here: Node = get_parent()
	while here != null:
		var found := here.get_node_or_null("Hud")
		if found != null:
			return found
		here = here.get_parent()
	return null
