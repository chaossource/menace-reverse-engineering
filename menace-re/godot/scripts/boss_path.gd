extends Node2D
## Shared boss path machine, the same one as scripts/level1_boss.gd.
## One driver at $74900. Each level supplies its own script bytes from the
## path table at $3C898 and its own 91-frame sheet.
## Sprite 2 is the mine. It has no alien-sheet frame, so those slots stay hidden.
## Set end_script before the node enters the tree:
##   1 fight, 2 death, 3 timeout.

@export_range(1, 3) var end_script: int = 1
signal fight_finished

const TICK_SECONDS := 1.0 / 25.0

const SPRITE_FRAMES := {
	0: ["explosion", 9],
	3: ["guardian-eye", 4],
	4: ["explosion", 9],
	5: ["tadpole", 4],
	6: ["eye", 15],
	7: ["bubble", 4],
	8: ["jellyfish1", 4],
	9: ["jellyfish2", 4],
	10: ["border-tl", 6],
	11: ["border-bl", 6],
	12: ["border-tr", 6],
	13: ["border-br", 6],
	14: ["mouth", 8],
	15: ["slime", 9],
	16: ["snake-body", 1],
	17: ["snake-head", 5],
}

var sprite_folder := ""
var enemy_prefix := ""
var fight_rows: Array = []
var death_rows: Array = []
var timeout_rows: Array = []

var _aliens: Array[Alien] = []
var _sprites: Array[Sprite2D] = []
var _frames := {}
var _accum := 0.0
var _fight_done := false


func _ready() -> void:
	texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	for id in SPRITE_FRAMES:
		var spec: Array = SPRITE_FRAMES[id]
		var stem := "%s-%s" % [enemy_prefix, spec[0]]
		_frames[id] = _load_frames(stem, int(spec[1]))
	_load_script(end_script)


func _process(delta: float) -> void:
	_accum += delta
	while _accum >= TICK_SECONDS:
		_accum -= TICK_SECONDS
		for alien in _aliens:
			_step(alien)
		_sync()
		_check_fight_finished()


func _check_fight_finished() -> void:
	if _fight_done or end_script != 1 or _aliens.is_empty():
		return
	for alien in _aliens:
		if alien.x() == 0:
			continue
		if alien.pause() == 0xFF:
			continue
		return
	_fight_done = true
	fight_finished.emit()


func _load_script(which: int) -> void:
	for sprite in _sprites:
		sprite.free()
	_sprites.clear()
	_aliens.clear()
	_accum = 0.0
	var rows: Array = fight_rows
	if which == 2:
		rows = death_rows
	elif which == 3:
		rows = timeout_rows
	for i in rows.size():
		var alien := Alien.new(_from_hex(rows[i]))
		_aliens.append(alien)
		var sprite := Sprite2D.new()
		sprite.name = "Bob%d" % i
		sprite.centered = false
		sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
		sprite.z_index = 20 - i
		add_child(sprite)
		_sprites.append(sprite)
	_sync()


func _load_frames(stem: String, count: int) -> Array:
	var out: Array = []
	for i in count:
		var path := "%s/%s-%02d.png" % [sprite_folder, stem, i]
		var image := Image.new()
		var err := image.load_png_from_buffer(FileAccess.get_file_as_bytes(path))
		if err != OK:
			push_error("missing %s frame %d (%d)" % [stem, i, err])
			continue
		out.append(ImageTexture.create_from_image(image))
	return out


func _from_hex(hex: String) -> PackedByteArray:
	var out := PackedByteArray()
	out.resize(hex.length() >> 1)
	for i in out.size():
		out[i] = hex.substr(i * 2, 2).hex_to_int()
	return out


func _sync() -> void:
	for i in _aliens.size():
		var alien := _aliens[i]
		var sprite := _sprites[i]
		var sheet: Array = _frames.get(alien.sprite(), [])
		if alien.x() == 0 or sheet.is_empty():
			sprite.visible = false
			continue
		sprite.visible = true
		sprite.position = Vector2(alien.x(), alien.y())
		sprite.texture = sheet[alien.anim() % sheet.size()]


func _step(a: Alien) -> void:
	if a.x() == 0:
		return
	a.delay_set((a.delay() - 1) & 0xFF)
	if a.delay() == 0:
		if a.mode() & 0x08:
			if not (a.mode() & 0x10):
				a.anim_set((a.anim() + 1) & 0xFF)
				if a.anim() == a.nanim():
					a.mode_set(a.mode() ^ 0x10)
			else:
				a.anim_set((a.anim() - 1) & 0xFF)
				if a.anim() == 0xFF:
					a.anim_set(1)
					a.mode_set(a.mode() ^ 0x10)
		else:
			a.anim_set((a.anim() + 1) & 0xFF)
			if a.anim() == ((a.nanim() + 1) & 0xFF):
				a.anim_set(0)
				if a.sprite() == 0:
					a.x_set(0)
					return
		a.delay_set(a.delay2())
	if a.sprite() == 0:
		return
	if a.pause():
		if a.pause() == 0xFF:
			return
		a.pause_set((a.pause() - 1) & 0xFF)
		if a.pause() != 0:
			return
		_advance(a)
		return
	if a.toff() + 1 >= a.d.size():
		return
	var b0 := a.d[a.toff()]
	var b1 := a.d[a.toff() + 1]
	var moving := false
	if a.mode() & 0x01:
		a.x_set((a.x() + _sbyte(b0)) & 0xFFFF)
		a.y_set((a.y() + _sbyte(b1)) & 0xFFFF)
	else:
		var sx := _seek_axis(a.x(), b0, a.speed())
		var sy := _seek_axis(a.y(), b1, a.speed())
		a.x_set(sx[0])
		a.y_set(sy[0])
		moving = sx[1] or sy[1]
	if moving:
		return
	if a.mode() & 0x20:
		a.seek_set((a.seek() - 1) & 0xFF)
		if a.seek() == 0:
			a.sprite_set(0)
			a.x_set(0)
			return
	_advance(a)


func _advance(a: Alien) -> void:
	a.toff_set((a.toff() + 2) & 0xFFFF)
	if a.toff() + 1 >= a.d.size() or a.word_at(a.toff()) == 0:
		a.x_set(0)
		return
	var b := a.d[a.toff()]
	if (b & 0xF0) == 0xE0:
		_command(a, b & 0x0F)


func _command(a: Alien, n: int) -> void:
	var t := a.toff()
	if n == 0:
		a.pause_set(a.d[t + 1])
		return
	if n == 1:
		var back := a.loop_off() << 1
		a.loop_count_set((a.loop_count() - 1) & 0xFF)
		if a.loop_count() == 0:
			_advance(a)
		else:
			a.toff_set((a.toff() - back) & 0xFFFF)
		return
	if n == 2:
		a.mode_set(a.mode() ^ 0x01)
		_advance(a)
		return
	if n == 3:
		a.speed_set(a.d[t + 1])
		_advance(a)
		return
	if n == 4:
		a.toff_set(t + 2)
		a.sprite_set(a.d[a.toff()])
		a.nanim_set(a.d[a.toff() + 1])
		a.anim_set(0)
		a.delay_set(a.delay2())
		_advance(a)
		return
	if n == 6:
		a.toff_set(t + 2)
		a.x_set(a.d[a.toff()] << 1)
		a.y_set(a.d[a.toff() + 1] << 1)
		_advance(a)
		return
	if n == 9:
		a.toff_set(t + 2)
		for other in _aliens:
			if other == a:
				continue
			if (other.mode() & 0x20) and other.x() == 0:
				other.x_set(a.x())
				other.y_set(a.y())
				other.seek_set(a.d[a.toff()])
				other.hits_set(a.d[a.toff() + 1])
				other.sprite_set(2)
				other.delay_set(2)
				other.anim_set(0)
				other.nanim_set(3)
				break
		_advance(a)
		return
	if n == 0xB:
		a.toff_set(20)
		_advance(a)
		return
	_advance(a)


func _seek_axis(pos: int, target_byte: int, speed: int) -> Array:
	if target_byte >= 0x80:
		return [pos, false]
	var target := target_byte << 1
	if pos == target:
		return [pos, false]
	if pos > target:
		pos -= speed
		if pos > target:
			return [pos, true]
		return [target, false]
	pos += speed
	if pos < target:
		return [pos, true]
	return [target, false]


func _sbyte(v: int) -> int:
	return v - 256 if v >= 128 else v


class Alien:
	var d: PackedByteArray

	func _init(src: PackedByteArray) -> void:
		d = src.duplicate()
		if d.size() < 64:
			d.resize(64)

	func word_at(i: int) -> int:
		return (d[i] << 8) | d[i + 1]

	func _set_word(i: int, v: int) -> void:
		d[i] = (v >> 8) & 0xFF
		d[i + 1] = v & 0xFF

	func x() -> int:
		return word_at(2)

	func x_set(v: int) -> void:
		_set_word(2, v)

	func y() -> int:
		return word_at(4)

	func y_set(v: int) -> void:
		_set_word(4, v)

	func toff() -> int:
		return word_at(8)

	func toff_set(v: int) -> void:
		_set_word(8, v)

	func sprite() -> int:
		return d[10]

	func sprite_set(v: int) -> void:
		d[10] = v & 0xFF

	func anim() -> int:
		return d[11]

	func anim_set(v: int) -> void:
		d[11] = v & 0xFF

	func delay() -> int:
		return d[12]

	func delay_set(v: int) -> void:
		d[12] = v & 0xFF

	func delay2() -> int:
		return d[13]

	func speed() -> int:
		return d[14]

	func speed_set(v: int) -> void:
		d[14] = v & 0xFF

	func pause() -> int:
		return d[15]

	func pause_set(v: int) -> void:
		d[15] = v & 0xFF

	func mode() -> int:
		return d[16]

	func mode_set(v: int) -> void:
		d[16] = v & 0xFF

	func loop_off() -> int:
		return d[17]

	func loop_count() -> int:
		return d[18]

	func loop_count_set(v: int) -> void:
		d[18] = v & 0xFF

	func hits_set(v: int) -> void:
		d[19] = v & 0xFF

	func nanim() -> int:
		return d[20]

	func nanim_set(v: int) -> void:
		d[20] = v & 0xFF

	func seek() -> int:
		return d[21]

	func seek_set(v: int) -> void:
		d[21] = v & 0xFF
