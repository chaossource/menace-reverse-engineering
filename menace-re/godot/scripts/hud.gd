extends CanvasLayer
## Retail panel for the bottom 32 rows of the 320x224 display.
## Playfield above it is 192 pixels. Viewport stays 320x240.
## Score glyphs are the $77A14 digits.
## Shield, cannons, and lasers are the 128x3 bars at x=112.
## Rows are 7, 15, and 23 (panel offsets $144, $2A4, $404).
## decrease.energy keeps $AAAA columns and shifts $5555 fill out to the right.
## Those columns are the panel art, so the ticks stay vertical bars.
## Shield fill pixels are four 32px quarters, low to high: red, amber, yellow, green.

const PANEL := preload("res://sprites/hud/hud-panel.png")
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
const BAR_X := 112
const SHIELD_Y := 7
const CANON_Y := 15
const LASER_Y := 23
const BAR_W := 128
const BAR_H := 3
const ENERGY_MAX := 128
const SHIELD_X := BAR_X
const SHIELD_MAX := ENERGY_MAX
const EMPTY := Color(0, 0, 0, 1)

@export var score: int = 0
@export var shield: int = 128
@export var canon: int = 0
@export var laser: int = 0

var _digits: Array[Sprite2D] = []
var _bases: Array[Image] = []
var _images: Array[Image] = []
var _sprites: Array[Sprite2D] = []


func _ready() -> void:
	var root := Node2D.new()
	root.name = "HudRoot"
	root.position = Vector2(0, PANEL_Y)
	add_child(root)

	var panel := Sprite2D.new()
	panel.name = "Panel"
	panel.texture = PANEL
	panel.centered = false
	panel.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	root.add_child(panel)

	var source: Image = PANEL.get_image()
	if source.get_format() != Image.FORMAT_RGBA8:
		source.convert(Image.FORMAT_RGBA8)
	_add_bar(root, source, SHIELD_Y, "ShieldBar")
	_add_bar(root, source, CANON_Y, "CanonBar")
	_add_bar(root, source, LASER_Y, "LaserBar")

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
	set_canon(canon)
	set_laser(laser)


func set_score(value: int) -> void:
	score = value
	_show_bcd(_decimal_to_bcd(value))


func set_score_bcd(bcd: int) -> void:
	score = bcd
	_show_bcd(bcd)


func set_shield(energy: int) -> void:
	shield = _set_bar(0, energy)


func set_canon(energy: int) -> void:
	canon = _set_bar(1, energy)


func set_laser(energy: int) -> void:
	laser = _set_bar(2, energy)


func _add_bar(root: Node2D, source: Image, top: int, node_name: String) -> void:
	var base: Image = Image.create(BAR_W, BAR_H, false, Image.FORMAT_RGBA8)
	for row in BAR_H:
		for x in BAR_W:
			base.set_pixel(x, row, source.get_pixel(BAR_X + x, top + row))
	var image: Image = base.duplicate() as Image
	var sprite := Sprite2D.new()
	sprite.name = node_name
	sprite.centered = false
	sprite.position = Vector2(BAR_X, top)
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	root.add_child(sprite)
	_bases.append(base)
	_images.append(image)
	_sprites.append(sprite)


func _set_bar(index: int, energy: int) -> int:
	var amount := energy
	if amount < 0:
		amount = 0
	if amount > ENERGY_MAX:
		amount = ENERGY_MAX
	if index < 0 or index >= _images.size():
		return amount
	var image: Image = _images[index]
	var base: Image = _bases[index]
	for x in BAR_W:
		var tick := (x & 1) == 0
		var lit := _fill_lit(amount, x)
		for row in BAR_H:
			if tick:
				image.set_pixel(x, row, base.get_pixel(x, row))
			elif lit and index == 0:
				image.set_pixel(x, row, _shield_quarter(x))
			elif lit:
				image.set_pixel(x, row, base.get_pixel(x, row))
			else:
				image.set_pixel(x, row, EMPTY)
	# create_from_image copies the pixels. update() leaves get_image() on the old copy.
	var shown: Image = image.duplicate() as Image
	_sprites[index].texture = ImageTexture.create_from_image(shown)
	return amount


# Low to high across the 128px shield fill: red, amber, yellow, green.
func _shield_quarter(x: int) -> Color:
	var band := int(x / 32)
	if band <= 0:
		return Color8(255, 0, 0)
	if band == 1:
		return Color8(255, 170, 0)
	if band == 2:
		return Color8(255, 255, 0)
	return Color8(0, 255, 0)


# $5555 shifted left by 2 for each 2 energy spent inside this 16-wide word.
# Bit 15 is the left pixel. Even pixels are the $AAAA ticks and are not in this mask.
func _fill_lit(energy: int, x: int) -> bool:
	var word := int(x / 16)
	var band := word * 16
	var shifts := 8
	if energy >= band + 16:
		shifts = 0
	elif energy >= band:
		shifts = int((band + 16 - energy) / 2)
	var bits := (0x5555 << (shifts * 2)) & 0xFFFF
	var local := x - band
	var mask := 1 << (15 - local)
	return (bits & mask) != 0


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
