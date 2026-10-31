extends CharacterBody2D
## Player ship. Movement stays as Samuel played it.
## Shooting matches $733F6 / initmissile $73596: one missile per press.
## The fire-delay word $74(a5) is 3 vertical blanks, refreshed while held,
## so holding does not autofire. The gap between taps is 3/50 s.

const SPEED = 150.0
const BULLET_SCENE = preload("res://scenes/bullet.tscn")

@onready var shoot_timer = $ShootTimer
@onready var sprite = $Sprite2D

var can_shoot = true


func _ready() -> void:
	z_index = 30
	shoot_timer.wait_time = 3.0 / 50.0
	shoot_timer.one_shot = true


func _physics_process(_delta: float) -> void:
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * SPEED
	move_and_slide()
	# Keep the 32x44 ship inside the 320x192 playfield, above the HUD.
	position.x = clamp(position.x, 16, 304)
	position.y = clamp(position.y, 22, 170)
	if Input.is_action_just_pressed("shoot") and can_shoot:
		shoot()


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
	print("Player hit!")
