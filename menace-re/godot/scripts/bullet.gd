extends Area2D
## Player bullet

const SPEED = 300.0


func _physics_process(delta):
	position.x += SPEED * delta
	
	# Remove if off screen
	if position.x > 350:
		queue_free()


func _on_body_entered(body):
	if body.has_method("hit"):
		body.hit()
	queue_free()
