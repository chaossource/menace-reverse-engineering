extends CharacterBody2D
## Basic enemy ship

const SPEED = 50.0

var health = 1


func _physics_process(delta):
	# Simple left movement
	velocity.x = -SPEED
	move_and_slide()
	
	# Remove if off screen
	if position.x < -50:
		queue_free()


func hit():
	health -= 1
	if health <= 0:
		queue_free()
