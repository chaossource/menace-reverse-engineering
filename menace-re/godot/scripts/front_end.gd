extends Node2D
## Menace front end, from the head-0 image.
##
## Power-on enters $74C9A (title). F1 ($50) and F2 ($51) are read by $74DD8.
## A 500-frame timeout walks the attract screens: high scores ($77830),
## then the weapon column ($7760C / blit $74EB2). Fire or any key on those
## two screens returns to the title ($74DAC → $74C92). Either way the next
## picture is the level card ($74E38): portraits at blit $74EF0, names from
## $7768E, arrow at blit $74F94.
##
## The arrow is not moved by the player on that card. $74D2A passes y = 8,
## the first portrait. After a cleared level, $74A8E branches to $75022,
## which parks the arrow on the current portrait and, unless this is the
## last level, slides it down 32 pixels ($750E0) before $1A6 increments.

const SCREEN_W := 320
const SCREEN_H := 192
const PAL_FRAME := 1.0 / 50.0

const SPRITE_DIR := "res://sprites/front"

# $686F0. Advance for '!' ($21) through '^' ($5E). Space is not in the table:
# $754BA treats every byte below $21 as an 8-pixel gap.
const GLYPH_WIDTHS := [
	6, 10, 13, 10, 13, 12, 6, 7, 7, 12, 11, 5, 11, 6, 13,
	11, 7, 11, 11, 12, 11, 11, 11, 11, 11, 6, 6, 9, 11, 9,
	10, 11, 11, 11, 11, 11, 10, 10, 11, 11, 6, 10, 11, 10, 13,
	11, 11, 11, 11, 11, 10, 12, 11, 12, 15, 11, 11, 11, 6, 13,
	16, 16,
]

# String blocks. Each row is the x byte, the y byte, then the text.
# $75492 shifts x left by 1 (pixels = byte * 2) and $75494 shifts y left by 3
# (pixels = byte * 8). $FF ends a block; that byte is not stored here.
const TITLE_ROWS := [
	[0x3C, 0x01, "MENACE"],
	[0x1B, 0x04, "CODE           GRAPHICS"],
	[0x0E, 0x06, "DAVE JONES     TONY SMITH"],
	[0x34, 0x09, "DMA DESIGN"],
	[0x0E, 0x0D, "PRESS F1 - ROOKIE"],
	[0x2C, 0x0F, "F2 - EXPERT (X2 SCORE)"],
	[0x24, 0x14, "@ 1988 PSYGNOSIS"],
]
const HISCORE_ROWS := [
	[0x16, 0x00, "1 050000"],
	[0x44, 0x00, "....DAVE JONES"],
	[0x14, 0x02, "2 045000"],
	[0x44, 0x02, "....TONY SMITH"],
	[0x14, 0x04, "3 040000"],
	[0x44, 0x04, "....DMA DESIGN"],
	[0x14, 0x06, "4 035000"],
	[0x44, 0x06, "....BRIAN -W- "],
	[0x14, 0x08, "5 030000"],
	[0x44, 0x08, "....RUSSELL K "],
	[0x14, 0x0A, "6 025000"],
	[0x44, 0x0A, "....STEVE -H- "],
	[0x14, 0x0C, "7 020000"],
	[0x44, 0x0C, "....MIKE  -D- "],
	[0x14, 0x0E, "8 010000"],
	[0x44, 0x0E, "....EWAN  -W- "],
]
const WEAPON_ROWS := [
	[0x32, 0x01, "1000 POINT BONUS"],
	[0x32, 0x04, "CANNONS & ENERGY"],
	[0x32, 0x07, "LASERS & ENERGY"],
	[0x32, 0x0A, "SPEEDUP - MAX X6"],
	[0x32, 0x0D, "OUTRIDER- MAX X2"],
	[0x32, 0x10, "FORCE FIELD "],
	[0x32, 0x13, "FULL SHIELD POWER"],
]
const LEVEL_ROWS := [
	[0x32, 0x01, "SEA OF KARNAUGH"],
	[0x32, 0x05, "VANGUARD WARZONE"],
	[0x32, 0x09, "CARNAGE RIFT"],
	[0x32, 0x0D, "TROPICS OF MACE"],
	[0x32, 0x11, "RUINS OF KRUGER"],
	[0x32, 0x15, "PLATEAUS OF DRACONIA"],
]

enum Screen { TITLE, HISCORE, WEAPONS, LEVEL, ARROW_SLIDE }

var screen_sprite: Sprite2D
var glyphs: Array[Image] = []
var levels_img: Image
var weapons_img: Image
var arrow_img: Image
var burst_img: Image

var screen_id := Screen.TITLE
var waiting := false
var frames_left := 0

# $1A6 level, $1A8 difficulty, $1AA / $1AE constants stored by $74E02 / $74E1C.
var level := 0
var difficulty := 0
var timer_1aa := 0
var timer_1ae := 0
# $74D5A, taken only when the weapon screen times out.
var flag_1a0 := false
var flag_1a3 := false
var flag_3 := false
var timer_60 := 0

var slide_y := 0
var slide_steps := 0
var slide_acc := 0.0


func _ready() -> void:
	screen_sprite = $Screen
	screen_sprite.centered = false
	screen_sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	_load_art()
	# $72C54 calls $74C9A. $1A6 is 0 in the resident image.
	_enter_title()


func _load_art() -> void:
	glyphs.clear()
	for i in GLYPH_WIDTHS.size():
		glyphs.append(_load_rgba(SPRITE_DIR + "/hud-font-%02x.png" % (0x21 + i)))
	levels_img = _load_rgba(SPRITE_DIR + "/front-levels.png")
	weapons_img = _load_rgba(SPRITE_DIR + "/front-weapons.png")
	arrow_img = _load_rgba(SPRITE_DIR + "/front-arrow.png")
	burst_img = _load_rgba(SPRITE_DIR + "/front-burst.png")


func _load_rgba(path: String) -> Image:
	var tex := load(path) as Texture2D
	if tex == null:
		push_error("Missing front-end art: %s" % path)
		return Image.create(1, 1, false, Image.FORMAT_RGBA8)
	var image := tex.get_image()
	if image.get_format() != Image.FORMAT_RGBA8:
		image.convert(Image.FORMAT_RGBA8)
	return image


func _process(delta: float) -> void:
	# One vblank is 1/50 s. A long frame must not consume the whole wait:
	# $72CF4 blocks on the vblank flag, so a hitch is still a single tick.
	var tick := minf(delta, PAL_FRAME)
	if screen_id == Screen.ARROW_SLIDE:
		# $750EA waits one vblank, then drops the arrow 2 pixels. 16 times.
		slide_acc += tick
		if slide_acc < PAL_FRAME:
			return
		slide_acc -= PAL_FRAME
		slide_y += 2
		slide_steps -= 1
		_present(_compose_level(slide_y, level))
		if slide_steps <= 0:
			level += 1 # $750F8
			screen_id = Screen.LEVEL
			waiting = false
		return
	if not waiting:
		return
	slide_acc += tick
	while slide_acc >= PAL_FRAME and waiting:
		slide_acc -= PAL_FRAME
		frames_left -= 1
		if frames_left <= 0:
			_on_timeout()
			return


func _unhandled_input(event: InputEvent) -> void:
	if screen_id == Screen.ARROW_SLIDE:
		return
	var pressed := false
	var keycode := 0
	if event is InputEventKey and event.pressed and not event.echo:
		pressed = true
		keycode = event.keycode
	elif event is InputEventJoypadButton and event.pressed:
		# $7342C: either joystick fire (CIA-A $BFE001 bits 6 and 7).
		pressed = true
		keycode = -1
	if not pressed:
		return
	if screen_id == Screen.TITLE and event is InputEventKey:
		# $74DE8 / $74DF0. Other keys stay unread; they do not leave the title.
		if keycode == KEY_F1:
			_choose_difficulty(0)
		elif keycode == KEY_F2:
			_choose_difficulty(1)
	elif screen_id == Screen.HISCORE or screen_id == Screen.WEAPONS:
		if event is InputEventKey or event is InputEventJoypadButton:
			# $74DAC returns to $74C92, which reopens the title.
			_enter_title()


func _on_timeout() -> void:
	waiting = false
	match screen_id:
		Screen.TITLE:
			# $74CD6 falls through. $74CE2 draws $77830.
			_enter_hiscore()
		Screen.HISCORE:
			# $74CF2 not taken. $74CFE draws $7760C and $74D06 blits weapons.
			_enter_weapons()
		Screen.WEAPONS:
			# $74D16 calls $74D5A, then the level card.
			flag_1a0 = true
			flag_1a3 = true
			flag_3 = true
			timer_60 = 0x5DC
			_enter_level_card()


func _choose_difficulty(which: int) -> void:
	# $74E02 rookie, $74E1C expert. $74CD6 then branches to $74D1A.
	difficulty = which
	if which == 0:
		timer_1aa = 0x150
		timer_1ae = 0x30
	else:
		timer_1aa = 0x300
		timer_1ae = 0x70
	_enter_level_card()


func _enter_title() -> void:
	screen_id = Screen.TITLE
	_present(_compose_text(TITLE_ROWS))
	# $74DDC loads #$1F4 and DBRA counts that value as well, so 501 vblanks.
	_arm_wait(0x1F5)


func _enter_hiscore() -> void:
	screen_id = Screen.HISCORE
	_present(_compose_text(HISCORE_ROWS))
	# $74DB0 loads #$15E. DBRA runs 351 vblanks.
	_arm_wait(0x15F)


func _enter_weapons() -> void:
	screen_id = Screen.WEAPONS
	var image := _blank()
	_draw_rows(image, WEAPON_ROWS)
	# $74EB2. Destination $8008 is x = 64, y = 0 on the $8000 bitplane.
	_blend(image, weapons_img, 64, 0)
	_present(image)
	_arm_wait(0x15F)


func _enter_level_card() -> void:
	# $74D2A moveq #8, d0 / $74E38. Level index is still 0, so $74F2E
	# punches no bursts. The card stays up: the original holds it across
	# the $75FE2 load, and this scene does not start a level.
	screen_id = Screen.LEVEL
	waiting = false
	_present(_compose_level(8, level))


func return_from_cleared_level() -> void:
	# $75022. Used when $54(a5) == 3 and $11(a5) == 3 ($74A8E), not at power-on.
	var arrow_y := (level << 5) + 8
	_present(_compose_level(arrow_y, level))
	if level >= 5:
		screen_id = Screen.LEVEL
		waiting = false
		return
	screen_id = Screen.ARROW_SLIDE
	waiting = false
	slide_y = arrow_y
	slide_steps = 16
	slide_acc = 0.0


func _arm_wait(frames: int) -> void:
	frames_left = frames
	slide_acc = 0.0
	waiting = true


func _compose_text(rows: Array) -> Image:
	var image := _blank()
	_draw_rows(image, rows)
	return image


func _compose_level(arrow_y: int, burst_until: int) -> Image:
	var image := _blank()
	_draw_rows(image, LEVEL_ROWS)
	# $74EF0. Destination $8004 is x = 32, y = 0. The strip is 64×192.
	_blend(image, levels_img, 32, 0)
	# $74F94. x = 0, y = d0. Three planes, 32×16.
	_blend(image, arrow_img, 0, arrow_y)
	# $74F2E blits $74F40 at y = 0, 32, 64, ... while the index is below $1A6.
	# BLTCON0 $0D0C is D = B & ~A, so the star clears pixels to colour 0.
	for i in burst_until:
		_punch_burst(image, 32, i * 32)
	return image


func _blank() -> Image:
	var image := Image.create(SCREEN_W, SCREEN_H, false, Image.FORMAT_RGBA8)
	image.fill(Color(0, 0, 0, 1))
	return image


func _draw_rows(image: Image, rows: Array) -> void:
	for row in rows:
		var x: int = int(row[0]) << 1
		var y: int = int(row[1]) << 3
		var text: String = row[2]
		for i in text.length():
			var code := text.unicode_at(i)
			if code < 0x21:
				x += 8
				continue
			var index := code - 0x21
			var glyph := glyphs[index]
			_blend(image, glyph, x, y)
			x += GLYPH_WIDTHS[index]


func _blend(image: Image, sprite: Image, x: int, y: int) -> void:
	if x >= SCREEN_W or y >= SCREEN_H:
		return
	var w := mini(sprite.get_width(), SCREEN_W - x)
	var h := mini(sprite.get_height(), SCREEN_H - y)
	if w <= 0 or h <= 0:
		return
	image.blend_rect(sprite, Rect2i(0, 0, w, h), Vector2i(x, y))


func _punch_burst(image: Image, x: int, y: int) -> void:
	for py in burst_img.get_height():
		for px in burst_img.get_width():
			if burst_img.get_pixel(px, py).a <= 0.0:
				continue
			var dx := x + px
			var dy := y + py
			if dx < 0 or dy < 0 or dx >= SCREEN_W or dy >= SCREEN_H:
				continue
			image.set_pixel(dx, dy, Color(0, 0, 0, 1))


func _present(image: Image) -> void:
	screen_sprite.texture = ImageTexture.create_from_image(image)
