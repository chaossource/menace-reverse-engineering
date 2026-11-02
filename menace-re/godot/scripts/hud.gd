extends CanvasLayer
## Retail panel for the bottom 32 rows of the 320x224 display.
## Playfield above it is 192 pixels. Viewport stays 320x240.
## Score glyphs are the $77A14 digits. Shield fill sits on the $5555 slot at offset $144.
## The 128 by 3 fill is four 32px quarters, low to high: red, amber, yellow, green.
## Cropping from the left drops the high end as energy falls. The drained stretch
## keeps the trough colors.

const PANEL := preload("res://sprites/hud/hud-panel.png")
const SHIELD_FILL := preload("res://sprites/hud/shield-fill.png")
const DIGIT: Array[Texture2D] = [
	preload("res://sprites/hud/hud-digit-0.png"),
	preload("res://sprites/hud/hud-digit-1.png"),
	preload("res://sprites/hud/hud-digit-2.png"),
	preload("res://sprites/hud/hud-digit-3.png"),
	preload("res://sprites/hud/hud-digit-4.png"),
	preload("res://sprites/hud/hud-digit-5.png"),
	preload("res://sprites/hud/hud-digit-6.png"),
	preload("res://sprites/hud/hud-digit-7.png"),
	preload("res://sprites/hud/hud-digit-8.png"),
	preload("res://sprites/hud/hud-digit-9.png"),
]

const PANEL_Y := 192
const SCORE_X := 16
const SCORE_Y := 6
const SHIELD_X := 112
const SHIELD_Y := 7
const SHIELD_MAX := 128

@export var score: int = 0
@export var shield: int = 128

var _digits: Array[Sprite2D] = []
var _shield: Sprite2D
var _fill: Texture2D
var _empty: Sprite2D
var _empty_base: Texture2D


func _ready() -> void:
	var root := Node2D.new()
	root.position = Vector2(0, PANEL_Y)
	add_child(root)

	var panel := Sprite2D.new()
	panel.name = "Panel"
	panel.texture = PANEL
	panel.centered = false
	panel.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	root.add_child(panel)

	_empty_base = _trough_texture()
	_empty = Sprite2D.new()
	_empty.name = "ShieldEmpty"
	_empty.centered = false
	_empty.position = Vector2(SHIELD_X, SHIELD_Y)
	_empty.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	_empty.visible = false
	root.add_child(_empty)

	_shield = Sprite2D.new()
	_shield.name = "ShieldFill"
	_shield.centered = false
	_shield.position = Vector2(SHIELD_X, SHIELD_Y)
	_shield.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	root.add_child(_shield)

	for i in range(6):
		var digit := Sprite2D.new()
		digit.name = "Digit%d" % i
		digit.centered = false
		digit.position = Vector2(SCORE_X + i * 8, SCORE_Y)
		digit.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
		digit.texture = DIGIT[0]
		root.add_child(digit)
		_digits.append(digit)

	set_score(score)
	set_shield(shield)


func set_score(value: int) -> void:
	score = value
	_show_bcd(_decimal_to_bcd(value))


func set_score_bcd(bcd: int) -> void:
	score = bcd
	_show_bcd(bcd)


func set_shield(energy: int) -> void:
	var amount := energy
	if amount < 0:
		amount = 0
	if amount > SHIELD_MAX:
		amount = SHIELD_MAX
	shield = amount
	# Sprite2D.region_rect does not clip this fill in the compatibility renderer.
	# An atlas region is the drawn texture, so the bar actually shortens.
	if _fill == null:
		_fill = _painted_fill()
	if _shield != null:
		if amount <= 0:
			_shield.visible = false
		else:
			_shield.visible = true
			_shield.texture = _crop(_fill, amount)
	if _empty == null or _empty_base == null:
		return
	var gap := SHIELD_MAX - amount
	if gap <= 0:
		_empty.visible = false
		return
	_empty.visible = true
	_empty.position = Vector2(SHIELD_X + amount, SHIELD_Y)
	_empty.texture = _crop(_empty_base, gap)


func _painted_fill() -> Texture2D:
	var image: Image = Image.create(SHIELD_MAX, 3, false, Image.FORMAT_RGBA8)
	var loaded: Image = SHIELD_FILL.get_image()
	if loaded != null and loaded.get_width() == SHIELD_MAX and loaded.get_height() == 3:
		var copy: Image = loaded.duplicate() as Image
		if copy != null:
			image = copy
			if image.get_format() != Image.FORMAT_RGBA8:
				image.convert(Image.FORMAT_RGBA8)
	var colors: Array[Color] = [
		Color8(255, 0, 0),
		Color8(255, 170, 0),
		Color8(255, 255, 0),
		Color8(0, 255, 0),
	]
	for x in SHIELD_MAX:
		var band: int = int(x / 32)
		if band > 3:
			band = 3
		var pixel: Color = colors[band]
		for y in 3:
			image.set_pixel(x, y, pixel)
	return ImageTexture.create_from_image(image)


func _crop(base: Texture2D, width: int) -> AtlasTexture:
	var atlas := AtlasTexture.new()
	atlas.atlas = base
	atlas.region = Rect2(0, 0, width, 3)
	return atlas


func _trough_texture() -> Texture2D:
	var image := Image.create(SHIELD_MAX, 3, false, Image.FORMAT_RGBA8)
	var rows: Array[Color] = [
		Color8(34, 85, 34),
		Color8(85, 119, 119),
		Color8(34, 85, 34),
	]
	for y in 3:
		for x in SHIELD_MAX:
			image.set_pixel(x, y, rows[y])
	return ImageTexture.create_from_image(image)


func _show_bcd(bcd: int) -> void:
	if _digits.is_empty():
		return
	var v := bcd & 0xFFFFFFFF
	v = ((v << 8) | ((v >> 24) & 0xFF)) & 0xFFFFFFFF
	for i in range(6):
		v = ((v << 4) | ((v >> 28) & 0xF)) & 0xFFFFFFFF
		var nib := v & 0xF
		if nib > 9:
			nib = 0
		_digits[i].texture = DIGIT[nib]


func _decimal_to_bcd(value: int) -> int:
	var bcd := 0
	var shift := 0
	var n := value
	if n < 0:
		n = 0
	while n > 0 and shift < 24:
		var digit := n % 10
		bcd |= digit << shift
		n = int(n / 10)
		shift += 4
	return bcd
