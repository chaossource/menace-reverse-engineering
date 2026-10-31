extends Node2D
## Sea of Karnaugh scroll, music, and the retail attack cycle.
##
## The map is 440 columns. The fight starts at the right end, foreground
## fine scroll 8. Waves come from the path table at $3C898. The old timer
## does not spawn. When the fight script finishes, the level card returns.

const ENEMY_SCENE = preload("res://scenes/enemy.tscn")
const BOSS_SCENE = preload("res://scenes/level1_boss.tscn")
const FRONT_SCENE := "res://scenes/front_end.tscn"
const LevelMusicScript = preload("res://scripts/level_music.gd")
const AttackScript = preload("res://scripts/attack_paths.gd")

# 440 columns * 16 px, minus the 320 px view, is 6720 at a flush right edge.
# Fine scroll 8 is that edge minus 8.
const BOSS_SCROLL_X := 6712.0
const SCROLL_SPEED := 50.0
const ATTACK_TICK := 1.0 / 25.0

@onready var player = $Player
@onready var spawn_timer = $SpawnTimer
@onready var music_player = $MusicPlayer
@onready var parallax = $ParallaxBackground
@onready var sea = $SeaOfKarnaugh

var scroll_x := 0.0
var boss_started := false
var left_for_card := false
var sched = null
var wave = null
var attack_acc := 0.0


func _ready() -> void:
	spawn_timer.stop()
	sched = AttackScript.new()
	# Level 1 keeps menace.ogg. The boss switches to subsong 0.
	LevelMusicScript.play_on(music_player, 1, false)


func _physics_process(delta: float) -> void:
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
	_run_attacks(delta)


func _run_attacks(delta: float) -> void:
	attack_acc += delta
	if attack_acc > ATTACK_TICK * 5.0:
		attack_acc = ATTACK_TICK * 5.0
	var n := 0
	while attack_acc >= ATTACK_TICK and n < 5:
		attack_acc -= ATTACK_TICK
		n += 1
		_attack_tick()


func _attack_tick() -> void:
	var top: Vector2 = player.position - Vector2(16, 22)
	if wave == null:
		var born: PackedByteArray = sched.tick_spawn()
		if born.size() > 0:
			wave = AttackScript.Wave.new(born)
			_spawn_wave(wave)
			wave.fresh = true
	if wave == null:
		return
	if wave.fresh:
		wave.fresh = false
		_sync_wave()
		return
	wave.step(int(top.x), int(top.y))
	if not wave.alive():
		_free_wave()
		wave = null
		return
	_sync_wave()


func _spawn_wave(w) -> void:
	for i in w.bases.size():
		var enemy = ENEMY_SCENE.instantiate()
		enemy.attach(w, i)
		add_child(enemy)


func _sync_wave() -> void:
	for node in get_tree().get_nodes_in_group("karnaugh_wave"):
		if node.has_method("sync_from_wave"):
			node.sync_from_wave()


func _free_wave() -> void:
	for node in get_tree().get_nodes_in_group("karnaugh_wave"):
		node.free()
	wave = null


func _begin_boss() -> void:
	if boss_started:
		return
	boss_started = true
	spawn_timer.stop()
	_free_wave()
	LevelMusicScript.play_on(music_player, 1, true)
	var boss = BOSS_SCENE.instantiate()
	boss.z_index = 10
	boss.fight_finished.connect(_on_fight_finished)
	add_child(boss)


func _on_fight_finished() -> void:
	if left_for_card:
		return
	left_for_card = true
	get_tree().root.set_meta("menace_return_cleared", true)
	get_tree().root.set_meta("menace_cleared_level", 0)
	get_tree().change_scene_to_file(FRONT_SCENE)


func _on_spawn_timer_timeout() -> void:
	pass
