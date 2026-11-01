extends Node2D
## Play scene for loaders 1-5. Loader 0 stays on scenes/main.tscn.
## The level card stores menace_start_level. The map scrolls to its far
## end, then the level boss runs. A finished fight returns to the card.
## A lost life uses the same init copy as Sea of Karnaugh. The map goes
## back to the edge it started on. The ship script places the hull.
## Loader 1 (Vanguard) also runs the attack table at $3C898. Loaders 2-5
## still scroll straight to the boss.

const PLAYER_SCENE = preload("res://scenes/player.tscn")
const HUD_SCENE = preload("res://scenes/hud.tscn")
const ENEMY_SCENE = preload("res://scenes/level2_enemy.tscn")
const FRONT_SCENE := "res://scenes/front_end.tscn"
const LevelMusicScript = preload("res://scripts/level_music.gd")
const LevelTableScript = preload("res://scripts/level_table.gd")
const MusicVolumeScript = preload("res://scripts/music_volume.gd")
const Level2Attack = preload("res://scripts/level2_attack.gd")
const BonusIconScript = preload("res://scripts/bonus_icon.gd")

const SCROLL_SPEED := 50.0
const VIEW_W := 320
const ATTACK_TICK := 1.0 / 25.0

var loader := 1
var map: Node2D
var playfield: Node2D
var reversed := false
var end_x := 0.0
var scroll_acc := 0.0
var start_x := 0.0
var boss_started := false
var left_for_card := false
var music: AudioStreamPlayer
var ship = null
var sched = null
var wave = null
var attack_acc := 0.0
## $17(a5). A finished path with mode bit 2 clear sets this to $FF ($73E70).
var no_bonus: int = 0
## Set on the clear tick. $74912 not.b waits one scheduler call before $74946.
var bonus_arm = null
var bonus_node = null
var bonus_hold := false


func _ready() -> void:
	if get_tree().root.has_meta("menace_start_level"):
		loader = int(get_tree().root.get_meta("menace_start_level"))
	var info: Dictionary = LevelTableScript.new().scene_for(loader)
	reversed = bool(info["scroll_reversed"])
	map = load(str(info["map_scene"])).instantiate()
	add_child(map)
	playfield = map.get_node("Playfield")
	if not reversed:
		playfield.position.x = 0.0
	start_x = playfield.position.x
	var layer: TileMapLayer = playfield.get_node("TileMapLayer")
	var cols := layer.get_used_rect().size.x
	end_x = -float(cols * 16 - VIEW_W)
	ship = PLAYER_SCENE.instantiate()
	ship.position = Vector2(50, 120)
	add_child(ship)
	add_child(HUD_SCENE.instantiate())
	music = AudioStreamPlayer.new()
	music.name = "Music"
	MusicVolumeScript.attach(music)
	add_child(music)
	LevelMusicScript.play_on(music, loader + 1, false)
	if loader == 1:
		sched = Level2Attack.new()


func _physics_process(delta: float) -> void:
	if boss_started:
		return
	scroll_acc += SCROLL_SPEED * delta
	var pixels := int(scroll_acc)
	if pixels <= 0:
		_run_attacks(delta)
		return
	scroll_acc -= float(pixels)
	if map.has_method("scroll_step"):
		map.scroll_step(pixels)
	elif reversed:
		playfield.position.x = min(playfield.position.x + float(pixels), 0.0)
	else:
		playfield.position.x -= float(pixels)
	if reversed and playfield.position.x >= 0.0:
		_begin_boss()
	elif not reversed and playfield.position.x <= end_x:
		_begin_boss()
	else:
		_run_attacks(delta)


func _run_attacks(delta: float) -> void:
	if loader != 1 or sched == null:
		return
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
	if ship == null:
		return
	var top: Vector2 = ship.position - Vector2(16, 22)
	if wave == null:
		var born: PackedByteArray = sched.tick_spawn()
		if born.size() > 0:
			wave = sched.make_wave(born)
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
	if ship == null or ship.pod == null:
		return
	ship.pod.arm_drop()
	var icon = BonusIconScript.new()
	icon.pod = ship.pod
	icon.pilot = ship
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


func _clear_bonus() -> void:
	bonus_arm = null
	bonus_hold = false
	no_bonus = 0
	if bonus_node != null and is_instance_valid(bonus_node):
		bonus_node.queue_free()
	bonus_node = null


## Life loss. The playfield returns to the position _ready left it at.
## Subsong 2 (or menace.ogg on level 1) replaces the boss song.
func restart_section() -> void:
	boss_started = false
	left_for_card = false
	scroll_acc = 0.0
	attack_acc = 0.0
	if playfield != null:
		playfield.position.x = start_x
	var bosses: Array = []
	for child in get_children():
		if child.has_signal("fight_finished"):
			bosses.append(child)
	for boss in bosses:
		if boss.fight_finished.is_connected(_on_fight_finished):
			boss.fight_finished.disconnect(_on_fight_finished)
		boss.free()
	for shot in get_tree().get_nodes_in_group("player_shot"):
		if is_instance_valid(shot):
			shot.queue_free()
	_free_wave()
	_clear_bonus()
	if loader == 1:
		sched = Level2Attack.new()
	var hud := get_node_or_null("Hud")
	if hud != null and hud.has_method("set_score"):
		hud.set_score(0)
	LevelMusicScript.play_on(music, loader + 1, false)


func _begin_boss() -> void:
	if boss_started:
		return
	boss_started = true
	_clear_bonus()
	_free_wave()
	LevelMusicScript.play_on(music, loader + 1, true)
	var info: Dictionary = LevelTableScript.new().scene_for(loader)
	var boss = load(str(info["boss_scene"])).instantiate()
	boss.z_index = 10
	if boss.has_signal("fight_finished"):
		boss.fight_finished.connect(_on_fight_finished)
	add_child(boss)


func _on_fight_finished() -> void:
	if left_for_card:
		return
	left_for_card = true
	get_tree().root.set_meta("menace_return_cleared", true)
	get_tree().root.set_meta("menace_cleared_level", loader)
	get_tree().change_scene_to_file(FRONT_SCENE)
