extends Node2D
## Main game scene with scrolling, spawning, and music

const ENEMY_SCENE = preload("res://scenes/enemy.tscn")

@onready var player = $Player
@onready var spawn_timer = $SpawnTimer
@onready var music_player = $MusicPlayer
@onready var parallax = $ParallaxBackground


func _ready():
	# Start music if available
	if music_player.stream:
		music_player.play()


func _physics_process(delta):
	# Scroll background
	parallax.scroll_offset.x += 50 * delta


func _on_spawn_timer_timeout():
	# Spawn enemy at random Y position
	var enemy = ENEMY_SCENE.instantiate()
	enemy.position = Vector2(350, randf_range(30, 210))
	add_child(enemy)
