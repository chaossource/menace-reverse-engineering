extends CharacterBody2D
## Level 1 alien. Each spawn plays one retail animation from the level-0 sheet.

const SPEED = 50.0

var health = 1
var dying = false

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D


func _ready() -> void:
	var choices: Array[String] = []
	for anim_name in sprite.sprite_frames.get_animation_names():
		if anim_name != "explosion":
			choices.append(anim_name)
	sprite.play(choices[randi() % choices.size()])


func _physics_process(_delta: float) -> void:
	velocity.x = -SPEED
	move_and_slide()
	if position.x < -50:
		queue_free()


func hit() -> void:
	if dying:
		return
	health -= 1
	if health <= 0:
		dying = true
		velocity = Vector2.ZERO
		collision_layer = 0
		collision_mask = 0
		set_physics_process(false)
		sprite.play("explosion")
		sprite.animation_finished.connect(queue_free)
