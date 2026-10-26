extends CharacterBody2D
## Player ship controller for Menace
## Handles movement, shooting, and collision

const SPEED = 150.0
const BULLET_SCENE = preload("res://scenes/bullet.tscn")

@onready var shoot_timer = $ShootTimer
@onready var sprite = $Sprite2D

var can_shoot = true


func _physics_process(delta):
	# Get input direction
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	
	# Move player
	velocity = direction * SPEED
	move_and_slide()
	
	# Keep player on screen
	position.x = clamp(position.x, 16, 304)
	position.y = clamp(position.y, 16, 224)
	
	# Shooting
	if Input.is_action_pressed("shoot") and can_shoot:
		shoot()


func shoot():
	if not BULLET_SCENE:
		return
		
	var bullet = BULLET_SCENE.instantiate()
	bullet.position = position + Vector2(16, 0)  # Offset from ship
	get_parent().add_child(bullet)
	
	can_shoot = false
	shoot_timer.start()


func _on_shoot_timer_timeout():
	can_shoot = true


func hit():
	# TODO: Implement damage/death logic
	print("Player hit!")
