extends Node2D
## Play scene for loaders 1-5. Loader 0 stays on scenes/main.tscn.
## The level card stores menace_start_level. The map scrolls to its far
## end, then the level boss runs. A finished fight returns to the card.

const PLAYER_SCENE = preload("res://scenes/player.tscn")
const HUD_SCENE = preload("res://scenes/hud.tscn")
const FRONT_SCENE := "res://scenes/front_end.tscn"
const LevelMusicScript = preload("res://scripts/level_music.gd")
const LevelTableScript = preload("res://scripts/level_table.gd")

const SCROLL_SPEED := 50.0
const VIEW_W := 320

var loader := 1
var map: Node2D
var playfield: Node2D
var reversed := false
var end_x := 0.0
var scroll_acc := 0.0
var boss_started := false
var left_for_card := false
var music: AudioStreamPlayer


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
	var layer: TileMapLayer = playfield.get_node("TileMapLayer")
	var cols := layer.get_used_rect().size.x
	end_x = -float(cols * 16 - VIEW_W)
	var player = PLAYER_SCENE.instantiate()
	player.position = Vector2(50, 120)
	add_child(player)
	add_child(HUD_SCENE.instantiate())
	music = AudioStreamPlayer.new()
	music.name = "Music"
	add_child(music)
	LevelMusicScript.play_on(music, loader + 1, false)


func _physics_process(delta: float) -> void:
	if boss_started:
		return
	scroll_acc += SCROLL_SPEED * delta
	var pixels := int(scroll_acc)
	if pixels <= 0:
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


func _begin_boss() -> void:
	if boss_started:
		return
	boss_started = true
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
