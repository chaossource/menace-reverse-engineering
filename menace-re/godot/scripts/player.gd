extends CharacterBody2D
## Player ship. Movement stays as Samuel played it.
## Shooting matches $733F6 / initmissile $73596: one missile per press.
## The fire-delay word $74(a5) is 3 vertical blanks, refreshed while held,
## so holding does not autofire. The gap between taps is 3/50 s.
## Contact with an alien uses the faster clxdat path in check.collision:
## ship.count starts at $FFFF and shifts right 5 while the bodies overlap.
## When bit 4 is clear, ship.energy drops by 2 ($74AE6 bar, max 128).
## Energy 0 kills the ship: controls stop and the explosion frames play.

const SPEED = 150.0
const BULLET_SCENE = preload("res://scenes/bullet.tscn")
const SHIELD_MAX := 128
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


func _ready() -> void:
	collision_layer = 1
	collision_mask = 2
	z_index = 30
	shoot_timer.wait_time = 3.0 / 50.0
	shoot_timer.one_shot = true
	_push_shield()


func _physics_process(delta: float) -> void:
	if ship_dead:
		_explosion(delta)
		return
	_sync_alien_bodies()
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * SPEED
	move_and_slide()
	# Keep the 32x44 ship inside the 320x192 playfield, above the HUD.
	position.x = clamp(position.x, 16, 304)
	position.y = clamp(position.y, 22, 170)
	if Input.is_action_just_pressed("shoot") and can_shoot:
		shoot()
	_contact_clock(delta)


func shoot() -> void:
	var bullet = BULLET_SCENE.instantiate()
	bullet.kind = 0
	# The node is the ship center. Retail xpos/ypos are the top-left.
	# The missile blit origin is that corner plus (58, 24).
	var top_left := position - Vector2(16, 22)
	bullet.position = top_left + Vector2(58, 24)
	get_parent().add_child(bullet)
	var blast = get_node_or_null("ShootSound")
	if blast == null:
		blast = AudioStreamPlayer.new()
		blast.name = "ShootSound"
		blast.stream = preload("res://audio/shoot.ogg")
		add_child(blast)
	blast.play()
	can_shoot = false
	shoot_timer.start()


func _on_shoot_timer_timeout() -> void:
	can_shoot = true


func hit() -> void:
	if ship_dead:
		return
	energy -= 2
	ship_count = 0xFFFF
	if energy <= 0:
		energy = 0
		_push_shield()
		_die()
		return
	_push_shield()


func _die() -> void:
	ship_dead = true
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
	if ship_dead:
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
