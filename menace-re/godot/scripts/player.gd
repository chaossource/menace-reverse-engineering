extends CharacterBody2D
## Player ship. Movement stays as Samuel played it.
## Shooting matches $733F6 / initmissile $73596: one missile per press.
## The fire-delay word $74(a5) is 3 vertical blanks, refreshed while held,
## so holding does not autofire. The gap between taps is 3/50 s.
## Contact with an alien uses the faster clxdat path in check.collision:
## ship.count starts at $FFFF and shifts right 5 while the bodies overlap.
## When bit 4 is clear, ship.energy drops by 2 ($74AE6 bar, max 128).

const SPEED = 150.0
const BULLET_SCENE = preload("res://scenes/bullet.tscn")
const SHIELD_MAX := 128
const CONTACT_STEP := 1.0 / 50.0

@onready var shoot_timer = $ShootTimer
@onready var sprite = $Sprite2D
@onready var body_shape: CollisionShape2D = $CollisionShape2D

var can_shoot = true
var energy: int = SHIELD_MAX
var ship_count: int = 0xFFFF
var contact_acc: float = 0.0


func _ready() -> void:
	collision_layer = 1
	collision_mask = 2
	z_index = 30
	shoot_timer.wait_time = 3.0 / 50.0
	shoot_timer.one_shot = true
	_push_shield()


func _physics_process(delta: float) -> void:
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
	can_shoot = false
	shoot_timer.start()


func _on_shoot_timer_timeout() -> void:
	can_shoot = true


func hit() -> void:
	energy -= 2
	ship_count = 0xFFFF
	if energy < 0:
		energy = 0
	_push_shield()


func _contact_clock(delta: float) -> void:
	contact_acc += delta
	if contact_acc > CONTACT_STEP * 5.0:
		contact_acc = CONTACT_STEP * 5.0
	var touching := _touching_alien()
	while contact_acc >= CONTACT_STEP:
		contact_acc -= CONTACT_STEP
		if touching:
			_shield_tick()


## lsr.w #5 then bcc: bit 4 clear spends 2 shield. Bit 4 set only shifts the counter.
func _shield_tick() -> void:
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
	var found: Array = space.intersect_shape(query, 4)
	for item in found:
		if _is_alien(item.get("collider")):
			return true
	return false


func _is_alien(body: Object) -> bool:
	if body == null or body == self:
		return false
	if not body.has_method("hit"):
		return false
	return "slot" in body


func _push_shield() -> void:
	var parent := get_parent()
	if parent == null:
		return
	var hud := parent.get_node_or_null("Hud")
	if hud != null and hud.has_method("set_shield"):
		hud.set_shield(energy)
