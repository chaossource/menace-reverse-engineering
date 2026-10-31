extends Node2D
## Main game scene with scrolling, spawning, and music.
##
## SEA OF KARNAUGH is 440 columns. The fight starts at the right end, with
## the foreground fine scroll held at 8 ($30(a5) once phase $54 becomes 3).
## When the fight script finishes, control returns to the level card.

const ENEMY_SCENE = preload("res://scenes/enemy.tscn")
const BOSS_SCENE = preload("res://scenes/level1_boss.tscn")
const FRONT_SCENE := "res://scenes/front_end.tscn"

# 440 columns * 16 px, minus the 320 px view, is 6720 at a flush right edge.
# Fine scroll 8 is that edge minus 8, so the offset modulo 16 is 8.
const BOSS_SCROLL_X := 6712.0
const SCROLL_SPEED := 50.0

@onready var player = $Player
@onready var spawn_timer = $SpawnTimer
@onready var music_player = $MusicPlayer
@onready var parallax = $ParallaxBackground
@onready var sea = $SeaOfKarnaugh

var scroll_x := 0.0
var boss_started := false
var left_for_card := false


func _ready():
	# Start music if available
	if music_player.stream:
		music_player.play()


func _physics_process(delta):
	if boss_started:
		return
	var advance: float = SCROLL_SPEED * delta
	if scroll_x + advance >= BOSS_SCROLL_X:
		advance = BOSS_SCROLL_X - scroll_x
		scroll_x = BOSS_SCROLL_X
		parallax.scroll_offset.x += advance
		sea.position.x = -scroll_x
		_begin_boss()
		return
	scroll_x += advance
	parallax.scroll_offset.x += advance
	sea.position.x = -scroll_x


func _begin_boss() -> void:
	if boss_started:
		return
	boss_started = true
	spawn_timer.stop()
	var boss = BOSS_SCENE.instantiate()
	boss.z_index = 10
	boss.fight_finished.connect(_on_fight_finished)
	add_child(boss)


func _on_fight_finished() -> void:
	if left_for_card:
		return
	left_for_card = true
	get_tree().root.set_meta("menace_return_cleared", true)
	get_tree().change_scene_to_file(FRONT_SCENE)


func _on_spawn_timer_timeout():
	if boss_started:
		return
	# Spawn enemy at random Y position
	var enemy = ENEMY_SCENE.instantiate()
	enemy.position = Vector2(350, randf_range(30, 210))
	add_child(enemy)
