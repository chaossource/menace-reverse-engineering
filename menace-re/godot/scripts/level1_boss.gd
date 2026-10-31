extends Node2D
## Level 1 boss (loader level 0, SEA OF KARNAUGH).
##
## The driver at $74900 installs one of the three scripts after the zero long
## at $3C8E0. This node runs that path machine at the movement rate (25 Hz)
## and draws only the sprites those scripts select:
##   3 guardian-eye, 5 tadpole, 4 explosion.
## Sprite 2 (timeout mines) has no cut. Those slots stay hidden.
## Border quadrants and the mouth are not in these scripts, so they are not drawn.
##
## The body is not a bob. $737E0 paints it into the foreground while the
## level scrolls off: 16 columns from the mask and packed planes at $3F908.
## On the frozen window it sits at screen (67, 0), behind the eye.
##
## A level instances this node. Set end_script before it enters the tree:
##   1 fight ($3D21A), 2 death explosions ($3DFFA), 3 timeout eye ($3E624).
## The guardian eye is the kill spot. Hits is record byte 19, the same
## offset hits_set writes. The fight eye stores 25. At 0 the node loads
## script 2. fight_finished fires when that death script ends, and still
## fires when script 1 runs out: tadpoles cleared, eye held.
##
## Below 25 hits the eye bob and the Body sprite pulse in place. Wound is
## (25 - hits left) / 25. Peak scale is 1 + 0.06 + 0.16 * wound, and the
## hot flash peaks at 0.18 + 0.82 * wound. First hit stays light. One hit
## left is much stronger. Scale and modulate only. The body stays at
## (67, 0) and the eye stays on its path. Hits and the kill rule do not
## change.

signal fight_finished

@export_range(1, 3) var end_script: int = 1

const TICK_SECONDS := 1.0 / 25.0
const EYE := "enemy-l0-guardian-eye"
const TADPOLE := "enemy-l0-tadpole"
const EXPLOSION := "enemy-l0-explosion"
## Path words are not screen pixels. The bob blit subtracts 16 and the
## frozen foreground window (body column 0) is 37 pixels left of the
## pf2offset/scroll formula. 16 + 37 lands one pixel off the socket;
## 52 puts stored (282, 90) on screen (230, 90), inside the ring.
const SCREEN_DX := 52
const BODY_X := 67
## Fight eye stores 25. Wound fraction is (25 - hits left) / 25.
const HITS_FULL := 25
const PULSE_HZ := 5.0
## Peak extra scale is 0.06 + 0.16 * wound. Peak flash is 0.18 + 0.82 * wound.
const PULSE_SCALE_FLOOR := 0.06
const PULSE_SCALE_SPAN := 0.16
const PULSE_FLASH_FLOOR := 0.18
const PULSE_FLASH_SPAN := 0.82
const PULSE_HOT := Color(1.0, 0.42, 0.32)

# Retail records, size word stripped. Bytes match level image $3D21A / $3DFFA / $3E624.
const FIGHT := [
	"001c011a005a0fff00160300080802000000001903008d2de0ff0000",
	"002600e8002a000000160501020202000004638003007415e0020115e003e6007415e1000000",
	"002600de003a000000160502020202000004638003006f1de00b011de004e6006f1de1000000",
	"002600e80040000000160502020203000004638003007420e0070120e007e6007420e1000000",
	"002600e0004c000000160500020203000004638003007025e00f0125e006e6007025e1000000",
	"002600de0056000000160501020202000004638003006f2be001012be001e6006f2be1000000",
	"002600e2005c00000016050202020200000463800300712ee00a012ee008e600712ee1000000",
	"002600e40064000000160502020203000004638003007232e0090132e003e6007232e1000000",
	"002600d8006c000000160500020202000004638003006c36e0020136e009e6006c36e1000000",
	"002600e6007600000016050102020300000463800300733be008013be005e600733be1000000",
	"002600e20082000000160502020203000004638003007141e00b0141e009e6007141e1000000",
]
const DEATH := [
	"00380002000000000016040001010100000f038008000100e003e4000408e6006a17e012e6009b1be012e6009b3be012e6000100e1000000",
	"00380002000000000016040001010100000f038008000100e005e4000408e6006f40e012e6007620e012e6008224e012e6000100e1000000",
	"00380002000000000016040001010100000f038008000100e007e4000408e6007615e012e600a223e012e600903ae012e6000100e1000000",
	"00380002000000000016040001010100000f038008000100e009e4000408e6006837e012e600772ae012e6008d30e012e6000100e1000000",
	"00380002000000000016040001010100000f038008000100e00be4000408e6009830e012e600712ae012e6007e1ee012e6000100e1000000",
	"00380002000000000016040001010100000f038008000100e00ce4000408e6008b21e012e6006d3be012e600942be012e6000100e1000000",
	"00380002000000000016040001010100000f038008000100e00de4000408e6008319e012e600a32be012e6008539e012e6000100e1000000",
	"00380002000000000016040001010100000f038008000100e00ee4000408e6006c2ee012e6007536e012e6008c27e012e6000100e1000000",
	"00380002000000000016040001010100000f038008000100e002e4000408e600901de012e600a234e012e6007b3ee012e6000100e1000000",
	"00380002000000000016040001010100000f038008000100e004e4000408e6006a23e012e6008030e012e6009826e012e6000100e1000000",
	"00380002000000000016040001010100000f038008000100e006e4000408e600711de012e6007e37e012e6009334e012e6000100e1000000",
	"00000002000000000016040001010100000f038008000100e008e4000408e6006820e012e6008b34e012e600852be012e6000100e1000000",
]
const TIMEOUT := [
	"002a011a005a0fff00160300080802000000001403008d2de001e900ff80e008e900ff80e006eb000000",
	"001a000000000000001603000202040020000003040000000000",
	"001a000000000000001603010202050020000003040000000000",
	"001a000000000000001603020202040020000003040000000000",
	"001a000000000000001603000202050020000003040000000000",
	"001a000000000000001603010202040020000003040000000000",
	"001a000000000000001603020202050020000003040000000000",
	"001a000000000000001603000202040020000003040000000000",
	"001a000000000000001603010202050020000003040000000000",
	"001a000000000000001603020202040020000003040000000000",
	"001a000000000000001603020202050020000003040000000000",
	"0000000000000000001603020202040020000003040000000000",
]

var _aliens: Array[Alien] = []
var _sprites: Array[Sprite2D] = []
var _frames := {}
var _accum := 0.0
var _fight_done := false
var _dying := false
var _death_loaded := false
var _eye_body: StaticBody2D
var _eye_shape: CollisionShape2D
var _pulse_phase := 0.0
var _explosion_seen := false


func _ready() -> void:
	texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	_bind_eye()
	_add_body()
	_frames[3] = _load_frames(EYE, 4)
	_frames[4] = _load_frames(EXPLOSION, 9)
	_frames[5] = _load_frames(TADPOLE, 4)
	_load_script(end_script)


func _add_body() -> void:
	var image := Image.new()
	var err := image.load_png_from_buffer(FileAccess.get_file_as_bytes("res://sprites/level1/tentacle-body.png"))
	if err != OK:
		push_error("missing tentacle body (%d)" % err)
		return
	var sprite := Sprite2D.new()
	sprite.name = "Body"
	sprite.centered = false
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	sprite.z_index = 0
	sprite.position = Vector2(BODY_X, 0)
	sprite.texture = ImageTexture.create_from_image(image)
	add_child(sprite)


func _process(delta: float) -> void:
	_accum += delta
	while _accum >= TICK_SECONDS:
		_accum -= TICK_SECONDS
		for alien in _aliens:
			_step(alien)
		_sync()
		_check_fight_finished()
	_pulse(delta)


func _check_fight_finished() -> void:
	# Script 2 ends when every slot's x is cleared. Script 1 still ends when
	# the tadpole paths run out while the eye is held by pause 0xFF.
	# The tentacle sprite is not part of that machine and is not a target.
	if _fight_done or _aliens.is_empty():
		return
	if end_script == 2:
		if not _explosion_seen:
			return
		for alien in _aliens:
			if alien.x() != 0:
				return
		_remove_defeated_sprites()
		_mark_fight_finished()
		return
	if end_script != 1:
		return
	for alien in _aliens:
		if alien.x() == 0:
			continue
		if alien.pause() == 0xFF:
			continue
		return
	_mark_fight_finished()


func _remove_defeated_sprites() -> void:
	# Death script 2 has finished and the explosions were visible.
	# free() drops the body, the eye, and the blasts before the card returns.
	var doomed: Array[Node] = []
	for child in get_children():
		if child is Sprite2D:
			doomed.append(child)
	for node in doomed:
		node.free()
	_sprites.clear()


func _mark_fight_finished() -> void:
	if _fight_done:
		return
	_fight_done = true
	_rest_pulse()
	if _eye_shape:
		_eye_shape.disabled = true
	fight_finished.emit()


func _bind_eye() -> void:
	# Bullet Area2D mask 2 overlaps this body on layer 2, so body_entered
	# calls hit(). The shape is the 32x24 guardian-eye bob, not the tentacle.
	var shape := _take_eye_shape()
	var body := EyeHitBody.new()
	body.name = "EyeHit"
	body.collision_layer = 2
	body.collision_mask = 0
	shape.disabled = true
	body.add_child(shape)
	add_child(body)
	_eye_body = body
	_eye_shape = shape


func _take_eye_shape() -> CollisionShape2D:
	var placed := get_node_or_null("EyeHit")
	if placed != null:
		var old := placed.get_node_or_null("CollisionShape2D")
		if old is CollisionShape2D:
			placed.remove_child(old)
			placed.name = "_EyeHitOld"
			placed.queue_free()
			return old
		placed.name = "_EyeHitOld"
		placed.queue_free()
	var shape := CollisionShape2D.new()
	var rect := RectangleShape2D.new()
	rect.size = Vector2(32, 24)
	shape.shape = rect
	shape.position = Vector2(16, 12)
	return shape


## Bullet struck the eye. Hits byte is record offset 19.
func damage_eye() -> void:
	if _dying or _fight_done or _death_loaded or end_script != 1:
		return
	var eye := _find_eye()
	if eye == null:
		return
	var left := eye.hits()
	if left & 0x80:
		return
	left = (left - 1) & 0xFF
	eye.hits_set(left)
	if left != 0:
		return
	_dying = true
	if _eye_shape:
		_eye_shape.set_deferred("disabled", true)
	call_deferred("_begin_death")


func _find_eye() -> Alien:
	for alien in _aliens:
		if alien.sprite() == 3 and alien.x() != 0:
			return alien
	return null


func _eye_sprite() -> Sprite2D:
	for i in _aliens.size():
		var alien := _aliens[i]
		if alien.sprite() == 3 and alien.x() != 0:
			return _sprites[i]
	return null


## Wound fraction from the hits byte. 0 at 25, 1/25 after the first
## shot, 24/25 with one hit left, 1 when the byte has reached 0.
func _wound(left: int) -> float:
	return clampf(float(HITS_FULL - left) / float(HITS_FULL), 0.0, 1.0)


func _pulse(delta: float) -> void:
	var eye := _find_eye()
	var body := get_node_or_null("Body") as Sprite2D
	var active := false
	var left := HITS_FULL
	if eye != null and end_script == 1 and not _death_loaded and not _fight_done:
		left = eye.hits()
		if left < HITS_FULL and (left & 0x80) == 0:
			active = true
	if not active:
		_rest_pulse()
		return
	_pulse_phase += delta * PULSE_HZ * TAU
	var wound := _wound(left)
	var wave := 0.5 - 0.5 * cos(_pulse_phase)
	var extra := (PULSE_SCALE_FLOOR + PULSE_SCALE_SPAN * wound) * wave
	var flash := (PULSE_FLASH_FLOOR + PULSE_FLASH_SPAN * wound) * wave
	_paint_pulse(_eye_sprite(), extra, flash)
	_paint_pulse(body, extra, flash)


func _paint_pulse(sprite: Sprite2D, extra: float, flash: float) -> void:
	if sprite == null:
		return
	var tex := sprite.texture
	if tex == null or extra <= 0.0:
		sprite.scale = Vector2.ONE
		sprite.offset = Vector2.ZERO
		sprite.modulate = Color.WHITE
		return
	var s := 1.0 + extra
	sprite.scale = Vector2(s, s)
	# Scale is about the sprite origin. Shift the draw so the texture
	# center stays on the unscaled center. position is not moved.
	var size := tex.get_size()
	sprite.offset = size * 0.5 * ((1.0 / s) - 1.0)
	sprite.modulate = Color.WHITE.lerp(PULSE_HOT, clampf(flash, 0.0, 1.0))


func _begin_death() -> void:
	if _fight_done or _death_loaded:
		return
	_death_loaded = true
	_rest_pulse()
	end_script = 2
	_load_script(2)


func _rest_pulse() -> void:
	_pulse_phase = 0.0
	_paint_pulse(_eye_sprite(), 0.0, 0.0)
	_paint_pulse(get_node_or_null("Body") as Sprite2D, 0.0, 0.0)


func _track_eye_hit() -> void:
	if _eye_body == null or _eye_shape == null:
		return
	var eye := _find_eye()
	if eye == null or end_script != 1 or _dying or _death_loaded or _fight_done:
		_eye_shape.disabled = true
		return
	_eye_body.position = Vector2(eye.x() - SCREEN_DX, eye.y())
	_eye_shape.disabled = false


func _load_script(which: int) -> void:
	for sprite in _sprites:
		sprite.free()
	_sprites.clear()
	_aliens.clear()
	_accum = 0.0
	var rows: Array = FIGHT
	if which == 2:
		rows = DEATH
	elif which == 3:
		rows = TIMEOUT
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
		var path := "res://sprites/level1/%s-%02d.png" % [stem, i]
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
		sprite.position = Vector2(alien.x() - SCREEN_DX, alien.y())
		sprite.texture = sheet[alien.anim() % sheet.size()]
		if end_script == 2 and alien.sprite() == 4:
			_explosion_seen = true
	_track_eye_hit()


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


class EyeHitBody extends StaticBody2D:
	func hit() -> void:
		var boss := get_parent()
		if boss != null and boss.has_method("damage_eye"):
			boss.damage_eye()


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

	func hits() -> int:
		return d[19]

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
