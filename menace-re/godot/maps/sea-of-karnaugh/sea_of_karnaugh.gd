extends Node2D
## SEA OF KARNAUGH, loader level 0 (head 1 cylinder 0).
## Foreground blitter $73762: 16x16, three planes, source $34F80 + index*$60.
## Index 0 is clear, so the rear playfield shows through. Foreground tiles stay.
##
## $73894 builds playfield 1 once. Map $7ADA6 is 12 rows of 12 bytes (144).
## High nibble is always drawn. The low nibble is skipped when the column
## counter is 0, so each row is 23 tiles. Tiles $7BE26 are 16 blocks of 64
## bytes: 32 plane0 then 32 plane1. Colour is bp0 + 2*bp1, using COLOR00-03
## $0332 $0055 $0543 $0000. RGB is the Amiga nibble times 17.
##
## $72D2C steps pf1scroll on the odd frame only, then falls into the
## foreground step. The rear layer moves at half the foreground rate and
## the picture repeats every 368 pixels (pf1count reloads at 23).

const MAP_HEIGHT: int = 12
const REAR_W: int = 368
const REAR_H: int = 192
const TILE: int = 16

const PALETTE: Array[Color] = [
	Color8(51, 51, 34),
	Color8(0, 85, 85),
	Color8(85, 68, 51),
	Color8(0, 0, 0),
]

@onready var layer: TileMapLayer = $Playfield/TileMapLayer

var _rear: Node2D


func _ready() -> void:
	_build_foreground()
	_build_rear()


func sync_rear(scroll_x: float) -> void:
	if _rear == null:
		return
	var half: float = scroll_x * 0.5
	var wraps: int = int(half / float(REAR_W))
	var shift: float = half - float(wraps) * float(REAR_W)
	_rear.position.x = scroll_x - shift


func _build_foreground() -> void:
	var bytes: PackedByteArray = FileAccess.get_file_as_bytes("res://maps/sea-of-karnaugh/map.bin")
	var columns: int = int(bytes.size() / MAP_HEIGHT)
	var column: int = 0
	while column < columns:
		var row: int = 0
		while row < MAP_HEIGHT:
			var index: int = bytes[column * MAP_HEIGHT + row]
			layer.set_cell(Vector2i(column, row), 0, Vector2i(index % 16, int(index / 16)))
			row += 1
		column += 1


func _build_rear() -> void:
	var map_bytes: PackedByteArray = FileAccess.get_file_as_bytes("res://maps/sea-of-karnaugh/rear-map.bin")
	var tile_bytes: PackedByteArray = FileAccess.get_file_as_bytes("res://maps/sea-of-karnaugh/rear-tiles.bin")
	if map_bytes.size() < 144 or tile_bytes.size() < 1024:
		push_error("rear playfield bytes are short")
		return
	var image: Image = Image.create(REAR_W, REAR_H, false, Image.FORMAT_RGBA8)
	var row: int = 0
	while row < 12:
		var tile_x: int = 0
		var col: int = 0
		while col < 12:
			var packed: int = map_bytes[row * 12 + col]
			_stamp(image, tile_bytes, tile_x, row, (packed >> 4) & 15)
			tile_x += 1
			if col != 11:
				_stamp(image, tile_bytes, tile_x, row, packed & 15)
				tile_x += 1
			col += 1
		row += 1
	var texture: ImageTexture = ImageTexture.create_from_image(image)
	var rear: Node2D = Node2D.new()
	rear.name = "Rear"
	rear.z_index = -1
	_add_copy(rear, texture, 0)
	_add_copy(rear, texture, REAR_W)
	add_child(rear)
	move_child(rear, 0)
	_rear = rear


func _add_copy(rear: Node2D, texture: ImageTexture, at_x: int) -> void:
	var sprite: Sprite2D = Sprite2D.new()
	sprite.name = "A" if at_x == 0 else "B"
	sprite.centered = false
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	sprite.texture = texture
	sprite.position = Vector2(float(at_x), 0.0)
	rear.add_child(sprite)


func _stamp(image: Image, tile_bytes: PackedByteArray, tile_x: int, tile_y: int, index: int) -> void:
	var base: int = index * 64
	var row: int = 0
	while row < TILE:
		var plane0_at: int = base + row * 2
		var plane1_at: int = base + 32 + row * 2
		var w0: int = (tile_bytes[plane0_at] << 8) | tile_bytes[plane0_at + 1]
		var w1: int = (tile_bytes[plane1_at] << 8) | tile_bytes[plane1_at + 1]
		var bit: int = 0
		while bit < TILE:
			var shift: int = 15 - bit
			var b0: int = (w0 >> shift) & 1
			var b1: int = (w1 >> shift) & 1
			image.set_pixel(tile_x * TILE + bit, tile_y * TILE + row, PALETTE[b0 + b1 * 2])
			bit += 1
		row += 1
