extends Node2D
## Sea of Karnaugh scroll, music, and the retail attack cycle.
##
## The map is 440 columns. The boss picture rides the foreground in from
## the right. The scroll stops at fine scroll 8 (x = 6712) with the
## tentacle body on the right of the view. The ship stays where the
## player left it. Waves come from the path table at $3C898. The old
## timer does not spawn. When the fight script finishes, the level card
## returns.

const ENEMY_SCENE = preload("res://scenes/enemy.tscn")
const BOSS_SCENE = preload("res://scenes/level1_boss.tscn")
const FRONT_SCENE := "res://scenes/front_end.tscn"
const LevelMusicScript = preload("res://scripts/level_music.gd")
const AttackScript = preload("res://scripts/attack_paths.gd")
const MusicVolumeScript = preload("res://scripts/music_volume.gd")
const BonusIconScript = preload("res://scripts/bonus_icon.gd")

# 440 columns * 16 px, minus the 320 px view, is 6720 at a flush right edge.
# Fine scroll 8 is that edge minus 8. The boss node origin is then at
# screen x 0, and the body (local x 67) sits at screen x 67.
const BOSS_SCROLL_X := 6712.0
const VIEW_W := 320.0
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
var boss = null
## $17(a5). A finished path with mode bit 2 clear sets this to $FF ($73E70).
var no_bonus: int = 0
## Set on the clear tick. $74912 not.b waits one scheduler call before $74946.
var bonus_arm = null
var bonus_node = null
var bonus_hold := false


func _ready() -> void:
	spawn_timer.stop()
	sched = AttackScript.new()
	_route_music_bus()
	# Level 1 keeps menace.ogg. The boss switches to subsong 0.
	LevelMusicScript.play_on(music_player, 1, false)


func _route_music_bus() -> void:
	for node_name in ["MusicPlayer", "MusicTitle", "MusicIngame", "MusicBoss"]:
		MusicVolumeScript.attach(get_node_or_null(node_name) as AudioStreamPlayer)


func _physics_process(delta: float) -> void:
	if boss_started:
		return
	var advance: float = SCROLL_SPEED * delta
	var at_boss := false
	if scroll_x + advance >= BOSS_SCROLL_X:
		advance = BOSS_SCROLL_X - scroll_x
		scroll_x = BOSS_SCROLL_X
		at_boss = true
	else:
		scroll_x += advance
	parallax.scroll_offset.x += advance
	sea.position.x = -scroll_x
	_sync_boss_scroll()
	if at_boss:
		_begin_boss()
		return
	_run_attacks(delta)


func _sync_boss_scroll() -> void:
	# Same shift as the sea. While scroll_x is still short of the stop,
	# the picture hangs off the right edge and walks left. It is not
	# placed under the ship, and the ship is not moved to meet it.
	var screen_x := BOSS_SCROLL_X - scroll_x
	if boss == null:
		if screen_x >= VIEW_W:
			return
		boss = BOSS_SCENE.instantiate()
		boss.z_index = 10
		boss.position = Vector2(screen_x, 0.0)
		boss.set_process(false)
		boss.fight_finished.connect(_on_fight_finished)
		add_child(boss)
		boss.set_process(false)
	boss.position = Vector2(screen_x, 0.0)


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
	if bonus_hold:
		return
	if bonus_arm != null:
		_spawn_bonus(bonus_arm)
		bonus_arm = null
		return
	var top: Vector2 = player.position - Vector2(16, 22)
	if wave == null:
		var born: PackedByteArray = sched.tick_spawn()
		if born.size() > 0:
			wave = AttackScript.Wave.new(born)
			no_bonus = 0
			_spawn_wave(wave)
			wave.fresh = true
	if wave == null:
		return
	if wave.fresh:
		wave.fresh = false
		_sync_wave()
		return
	var before := _wave_snap()
	wave.step(int(top.x), int(top.y))
	var noted: Dictionary = BonusIconScript.note_paths(before, _wave_snap(), no_bonus)
	no_bonus = int(noted.no_bonus)
	if not wave.alive():
		_free_wave()
		wave = null
		if int(noted.x) != 0 and no_bonus == 0:
			bonus_arm = {"x": int(noted.x), "y": int(noted.y)}
		return
	_sync_wave()


func _wave_snap() -> Array:
	var rows: Array = []
	if wave == null:
		return rows
	for base in wave.bases:
		rows.append({
			"raw": wave.x_at(base),
			"x": wave.s16(wave.x_at(base)),
			"y": wave.s16(wave.y_at(base)),
			"sprite": wave.bget(base + 10),
			"mode": wave.mode(base),
		})
	return rows


func _spawn_bonus(at: Dictionary) -> void:
	if player == null or player.pod == null:
		return
	player.pod.arm_drop()
	var icon = BonusIconScript.new()
	icon.pod = player.pod
	icon.pilot = player
	icon.position = Vector2(int(at.x), int(at.y))
	icon.tree_exited.connect(_on_bonus_gone)
	bonus_node = icon
	bonus_hold = true
	add_child(icon)


func _on_bonus_gone() -> void:
	bonus_node = null
	bonus_hold = false


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
	bonus_arm = null
	if bonus_node != null and is_instance_valid(bonus_node):
		bonus_node.queue_free()
	bonus_hold = false
	_free_wave()
	LevelMusicScript.play_on(music_player, 1, true)
	if boss == null:
		boss = BOSS_SCENE.instantiate()
		boss.z_index = 10
		boss.fight_finished.connect(_on_fight_finished)
		add_child(boss)
	# Frozen view: node origin at screen 0, body at local x 67.
	# The player node is not moved, clamped, or reparented.
	boss.position = Vector2(0.0, 0.0)
	boss.set_process(true)


func _on_fight_finished() -> void:
	if left_for_card:
		return
	left_for_card = true
	get_tree().root.set_meta("menace_return_cleared", true)
	get_tree().root.set_meta("menace_cleared_level", 0)
	get_tree().change_scene_to_file(FRONT_SCENE)


func _on_spawn_timer_timeout() -> void:
	pass
