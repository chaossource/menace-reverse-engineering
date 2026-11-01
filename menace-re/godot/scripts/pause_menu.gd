extends CanvasLayer
## Pause screen for Sea of Karnaugh and the later levels.
## Esc freezes the tree, blurs the last playfield frame, and draws PAUSED
## with the front-end glyphs. Esc again resumes. The title scene does not
## carry this layer. This node stays on PROCESS_MODE_ALWAYS so it still
## runs while the tree is paused.
##
## Music and sound sliders call MusicVolume and SfxVolume. Those scripts
## own the volume file. This menu does not write a second copy of it.

const FRONT_SCENE := "res://scenes/front_end.tscn"
const SAVE_PATH := "user://menace-save.cfg"
const SPRITE_DIR := "res://sprites/front"
const MusicVolumeScript = preload("res://scripts/music_volume.gd")
const SfxVolumeScript = preload("res://scripts/sfx_volume.gd")

const SCREEN_W := 320
const SCREEN_H := 240
const BAR_CELLS := 10
const BAR_W := 8
const BAR_H := 8
const BAR_GAP := 2
const VOLUME_STEP := 0.1

# Same advances as scripts/front_end.gd. '!' ($21) through '^' ($5E).
const GLYPH_WIDTHS := [
	6, 10, 13, 10, 13, 12, 6, 7, 7, 12, 11, 5, 11, 6, 13,
	11, 7, 11, 11, 12, 11, 11, 11, 11, 11, 6, 6, 9, 11, 9,
	10, 11, 11, 11, 11, 11, 10, 10, 11, 11, 6, 10, 11, 10, 13,
	11, 11, 11, 11, 11, 10, 12, 11, 12, 15, 11, 11, 11, 6, 13,
	16, 16,
]
const MENU_ITEMS := ["END GAME", "SAVE GAME", "OPTIONS"]
const OPTION_LABELS := ["MUSIC", "SOUND FX"]

var glyphs: Array[Image] = []
var open := false
var on_options := false
var menu_row := 0
var option_row := 0
var saved_note := false
var _blurred: Image
var _capture_tries := 0
var _volume_boxes: Dictionary = {}
var _saved_modes: Array[Dictionary] = []

var _blur: Sprite2D
var _text: Sprite2D


func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	layer = 40
	_load_glyphs()
	_blur = Sprite2D.new()
	_blur.name = "Blur"
	_blur.centered = false
	_blur.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	_blur.modulate = Color(0.62, 0.62, 0.62, 1.0)
	_blur.visible = false
	add_child(_blur)
	_text = Sprite2D.new()
	_text.name = "Screen"
	_text.centered = false
	_text.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	_text.z_index = 1
	_text.visible = false
	add_child(_text)
	set_process_unhandled_input(true)


func _process(_delta: float) -> void:
	if not open or _blurred != null:
		return
	if _capture_tries >= 12:
		_redraw()
		return
	_capture_tries += 1
	var grabbed := _grab_frame()
	if grabbed == null:
		return
	if _mean_luma(grabbed) < 0.03 and _capture_tries < 12:
		return
	_blurred = _blur_image(grabbed)
	_blur.texture = ImageTexture.create_from_image(_blurred)
	_blur.visible = true
	_redraw()


func _unhandled_input(event: InputEvent) -> void:
	if not event is InputEventKey:
		return
	var key := event as InputEventKey
	if not key.pressed:
		return
	var code := key.keycode
	if code == 0:
		code = key.physical_keycode
	if code == KEY_ESCAPE:
		if key.echo:
			_mark_handled()
			return
		if not _in_play():
			return
		if open:
			_resume()
		else:
			_open()
		_mark_handled()
		return
	if not open:
		return
	# Echo is only useful while a slider is held. Menu rows take one press.
	var sliding := on_options and (event.is_action("move_left") or event.is_action("move_right"))
	if key.echo and not sliding:
		_mark_handled()
		return
	if event.is_action("move_up"):
		_move_vert(-1)
	elif event.is_action("move_down"):
		_move_vert(1)
	elif event.is_action("move_left"):
		_move_horiz(-1)
	elif event.is_action("move_right"):
		_move_horiz(1)
	elif event.is_action("shoot"):
		# Mark first. End game frees this node before the handler returns.
		_mark_handled()
		_activate()
		return
	else:
		return
	_mark_handled()


func _mark_handled() -> void:
	var viewport := get_viewport()
	if viewport == null:
		return
	viewport.set_input_as_handled()


func _in_play() -> bool:
	var scene := get_tree().current_scene
	if scene == null:
		return false
	return not scene.scene_file_path.ends_with("front_end.tscn")


func _open() -> void:
	if open:
		return
	open = true
	on_options = false
	menu_row = 0
	option_row = 0
	saved_note = false
	_blurred = null
	_capture_tries = 0
	_blur.visible = false
	_text.visible = false
	_hold_music()
	get_tree().paused = true


func _resume() -> void:
	open = false
	on_options = false
	saved_note = false
	_blurred = null
	_capture_tries = 0
	if _blur != null:
		_blur.visible = false
		_blur.texture = null
	if _text != null:
		_text.visible = false
		_text.texture = null
	_release_music()
	get_tree().paused = false


func _move_vert(dir: int) -> void:
	if not on_options:
		var next := menu_row + dir
		if next < 0:
			next = 0
		if next > MENU_ITEMS.size() - 1:
			next = MENU_ITEMS.size() - 1
		menu_row = next
	elif dir < 0 and option_row == 0:
		on_options = false
		menu_row = 2
	elif dir > 0 and option_row == OPTION_LABELS.size() - 1:
		on_options = false
		menu_row = 2
	else:
		option_row += dir
	_redraw()


func _move_horiz(dir: int) -> void:
	# Left and right change a slider only while that row is selected.
	if not on_options:
		return
	_nudge_volume(option_row, dir)
	_redraw()


func _activate() -> void:
	if on_options:
		return
	if menu_row == 0:
		_end_game()
	elif menu_row == 1:
		_save_game()
	else:
		on_options = true
		option_row = 0
		_redraw()


func _end_game() -> void:
	_resume()
	get_tree().change_scene_to_file(FRONT_SCENE)


func _save_game() -> void:
	var cfg := ConfigFile.new()
	var play := _collect_play()
	cfg.set_value("play", "level", int(play["level"]))
	cfg.set_value("play", "difficulty", int(play["difficulty"]))
	cfg.set_value("play", "score", int(play["score"]))
	cfg.set_value("play", "shield", int(play["shield"]))
	cfg.set_value("play", "scroll", float(play["scroll"]))
	if play.has("weapon"):
		cfg.set_value("play", "weapon", int(play["weapon"]))
	var err := cfg.save(SAVE_PATH)
	if err != OK:
		push_error("Could not write %s (%s)" % [SAVE_PATH, err])
		return
	saved_note = true
	_redraw()


func _collect_play() -> Dictionary:
	var play := {
		"level": _level_index(),
		"difficulty": _difficulty(),
		"score": _score(),
		"shield": _shield(),
		"scroll": _scroll(),
	}
	var weapon = _weapon_on(_ship())
	if weapon != null:
		play["weapon"] = int(weapon)
	return play


func _level_index() -> int:
	var scene := get_tree().current_scene
	if scene != null and "loader" in scene:
		return int(scene.loader)
	return 0


func _difficulty() -> int:
	var scene := get_tree().current_scene
	if scene != null and "difficulty" in scene:
		return int(scene.difficulty)
	var root := get_tree().root
	if root.has_meta("menace_difficulty"):
		return int(root.get_meta("menace_difficulty"))
	return 0


func _score() -> int:
	var ship := _ship()
	if ship != null and "score" in ship:
		return int(ship.score)
	var hud := _hud()
	if hud != null and "score" in hud:
		return int(hud.score)
	return 0


func _shield() -> int:
	var ship := _ship()
	if ship != null and "energy" in ship:
		return int(ship.energy)
	var hud := _hud()
	if hud != null and "shield" in hud:
		return int(hud.shield)
	return 0


func _scroll() -> float:
	var scene := get_tree().current_scene
	if scene == null:
		return 0.0
	if "scroll_x" in scene:
		return float(scene.scroll_x)
	if scene.get("playfield") != null:
		return float(scene.playfield.position.x)
	return 0.0


func _weapon_on(ship: Node) -> Variant:
	if ship == null:
		return null
	for key in ["weapon", "weapon_index", "weapon_level"]:
		if key in ship:
			return int(ship.get(key))
	return null


func _ship() -> Node:
	var scene := get_tree().current_scene
	if scene == null:
		return null
	return scene.get_node_or_null("Player")


func _hud() -> Node:
	var scene := get_tree().current_scene
	if scene == null:
		return null
	return scene.get_node_or_null("Hud")


func _nudge_volume(which: int, direction: int) -> void:
	var script: Script = MusicVolumeScript if which == 0 else SfxVolumeScript
	var current := _volume_get(script)
	var steps := int(round(current / VOLUME_STEP)) + direction
	if steps < 0:
		steps = 0
	if steps > BAR_CELLS:
		steps = BAR_CELLS
	_volume_set(script, float(steps) * VOLUME_STEP)


func _volume_get(script: Script) -> float:
	var value = _volume_call(script, "get_linear", [])
	if typeof(value) != TYPE_FLOAT and typeof(value) != TYPE_INT:
		return 1.0
	return clampf(float(value), 0.0, 1.0)


func _volume_set(script: Script, value: float) -> void:
	_volume_call(script, "set_linear", [clampf(value, 0.0, 1.0)])


func _volume_call(script: Script, method: String, args: Array) -> Variant:
	if _method_is_static(script, method):
		return script.callv(method, args)
	var key := script.resource_path
	if not _volume_boxes.has(key):
		_volume_boxes[key] = script.new()
	return (_volume_boxes[key] as Object).callv(method, args)


func _method_is_static(script: Script, method: String) -> bool:
	for entry in script.get_script_method_list():
		if String(entry["name"]) != method:
			continue
		return (int(entry["flags"]) & METHOD_FLAG_STATIC) != 0
	push_error("Missing %s on %s" % [method, script.resource_path])
	return false


func _hold_music() -> void:
	_saved_modes.clear()
	var scene := get_parent()
	if scene == null:
		return
	for node in scene.get_children():
		if not node is AudioStreamPlayer:
			continue
		if not String(node.name).begins_with("Music"):
			continue
		_saved_modes.append({"node": node, "mode": node.process_mode})
		node.process_mode = Node.PROCESS_MODE_ALWAYS


func _release_music() -> void:
	for entry in _saved_modes:
		var node: Object = entry["node"]
		if is_instance_valid(node):
			(node as Node).process_mode = int(entry["mode"])
	_saved_modes.clear()


func _grab_frame() -> Image:
	# The headless dummy renderer has no viewport texture. Skip it instead
	# of calling get_image on an empty rid.
	if DisplayServer.get_name() == "headless":
		return null
	var viewport := get_viewport()
	if viewport == null:
		return null
	var texture := viewport.get_texture()
	if texture == null or not texture.get_rid().is_valid():
		return null
	var image := texture.get_image()
	if image == null or image.get_width() < 2 or image.get_height() < 2:
		return null
	if image.get_format() != Image.FORMAT_RGBA8:
		image.convert(Image.FORMAT_RGBA8)
	return image


func _mean_luma(image: Image) -> float:
	var width := image.get_width()
	var height := image.get_height()
	var acc := 0.0
	var n := 0
	var y := 0
	while y < height:
		var x := 0
		while x < width:
			var pixel := image.get_pixel(x, y)
			acc += pixel.r + pixel.g + pixel.b
			n += 1
			x += 8
		y += 8
	if n == 0:
		return 0.0
	return acc / float(n)


func _blur_image(src: Image) -> Image:
	# Two bilinear shrinks then the matching expands. That is a real
	# low-pass of the playfield, not a flat fill.
	var image: Image = src.duplicate()
	var width: int = image.get_width()
	var height: int = image.get_height()
	if width != SCREEN_W or height != SCREEN_H:
		image.resize(SCREEN_W, SCREEN_H, Image.INTERPOLATE_BILINEAR)
		width = SCREEN_W
		height = SCREEN_H
	var half_w := int(width / 2)
	var half_h := int(height / 2)
	var quarter_w := int(width / 4)
	var quarter_h := int(height / 4)
	if half_w < 1:
		half_w = 1
	if half_h < 1:
		half_h = 1
	if quarter_w < 1:
		quarter_w = 1
	if quarter_h < 1:
		quarter_h = 1
	image.resize(half_w, half_h, Image.INTERPOLATE_BILINEAR)
	image.resize(quarter_w, quarter_h, Image.INTERPOLATE_BILINEAR)
	image.resize(half_w, half_h, Image.INTERPOLATE_BILINEAR)
	image.resize(width, height, Image.INTERPOLATE_BILINEAR)
	return image


func _redraw() -> void:
	if not open or _text == null:
		return
	var image := _clear_plate()
	_draw_text(image, "PAUSED", _center_x("PAUSED"), 32)
	if on_options:
		_draw_options(image)
	else:
		_draw_menu(image)
		if saved_note:
			_draw_text(image, "SAVED", _center_x("SAVED"), 168)
	_text.texture = ImageTexture.create_from_image(image)
	_text.visible = true


func _draw_menu(image: Image) -> void:
	for i in MENU_ITEMS.size():
		var y := 78 + i * 26
		if i == menu_row:
			_draw_text(image, ">", 72, y)
		_draw_text(image, MENU_ITEMS[i], 96, y)


func _draw_options(image: Image) -> void:
	for i in OPTION_LABELS.size():
		var y := 84 + i * 36
		if i == option_row:
			_draw_text(image, ">", 48, y)
		_draw_text(image, OPTION_LABELS[i], 70, y)
		var script: Script = MusicVolumeScript if i == 0 else SfxVolumeScript
		_draw_slider(image, 176, y + 4, _volume_get(script))


func _draw_slider(image: Image, x: int, y: int, value: float) -> void:
	var filled := int(round(clampf(value, 0.0, 1.0) * float(BAR_CELLS)))
	var on := Color(1.0, 0.867, 0.333, 1.0)
	var off := Color(0.533, 0.4, 0.867, 1.0)
	for i in BAR_CELLS:
		var col := on if i < filled else off
		image.fill_rect(Rect2i(x + i * (BAR_W + BAR_GAP), y, BAR_W, BAR_H), col)


func _center_x(text: String) -> int:
	return int((SCREEN_W - _text_width(text)) / 2.0)


func _text_width(text: String) -> int:
	var width := 0
	for i in text.length():
		var code := text.unicode_at(i)
		if code < 0x21 or code > 0x5E:
			width += 8
			continue
		width += GLYPH_WIDTHS[code - 0x21]
	return width


func _draw_text(image: Image, text: String, x: int, y: int) -> void:
	var pen := x
	for i in text.length():
		var code := text.unicode_at(i)
		if code < 0x21 or code > 0x5E:
			pen += 8
			continue
		var index := code - 0x21
		_blend(image, glyphs[index], pen, y)
		pen += GLYPH_WIDTHS[index]


func _blend(image: Image, sprite: Image, x: int, y: int) -> void:
	if sprite == null or x >= SCREEN_W or y >= SCREEN_H:
		return
	var w := mini(sprite.get_width(), SCREEN_W - x)
	var h := mini(sprite.get_height(), SCREEN_H - y)
	if w <= 0 or h <= 0:
		return
	image.blend_rect(sprite, Rect2i(0, 0, w, h), Vector2i(maxi(x, 0), y))


func _clear_plate() -> Image:
	var image := Image.create(SCREEN_W, SCREEN_H, false, Image.FORMAT_RGBA8)
	image.fill(Color(0, 0, 0, 0))
	return image


func _load_glyphs() -> void:
	glyphs.clear()
	for i in GLYPH_WIDTHS.size():
		glyphs.append(_load_rgba(SPRITE_DIR + "/hud-font-%02x.png" % (0x21 + i)))


func _load_rgba(path: String) -> Image:
	var tex := load(path) as Texture2D
	if tex == null:
		push_error("Missing pause glyph: %s" % path)
		return Image.create(1, 1, false, Image.FORMAT_RGBA8)
	var image := tex.get_image()
	if image.get_format() != Image.FORMAT_RGBA8:
		image.convert(Image.FORMAT_RGBA8)
	return image
