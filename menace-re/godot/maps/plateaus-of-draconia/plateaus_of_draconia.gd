extends Node2D
## PLATEAUS OF DRACONIA, loader level 5 (head 0 cylinder 65).
## Blitter $73762: 16x16, three planes, source $34F80 + index*$60.
## Map pointer $3B060. Index 0 is transparent. Sky is COLOR00.
## The retail scroller at $72D52 still subtracts on this level. This scene
## opens on the far side and scroll_step travels back toward column 0.
## $757C0 loads head 0 cylinder 48, 17 tracks, to $11600 after the level
## is cleared. Globe frames sit at $16A60, stride $1200, palette $768F6.

const MAP_HEIGHT := 12
const REVERSED_SCROLL := true
const VIEW_W := 320
const OPENING_X := -7808

@onready var playfield: Node2D = $Playfield
@onready var layer: TileMapLayer = $Playfield/TileMapLayer
@onready var ending: Sprite2D = $Ending

func _ready() -> void:
	var bytes := FileAccess.get_file_as_bytes("res://maps/plateaus-of-draconia/map.bin")
	var columns := int(bytes.size() / MAP_HEIGHT)
	for column in columns:
		for row in MAP_HEIGHT:
			var index := bytes[column * MAP_HEIGHT + row]
			layer.set_cell(Vector2i(column, row), 0, Vector2i(index % 16, int(index / 16)))
	playfield.position.x = float(OPENING_X)
	ending.visible = false
	ending.centered = false
	ending.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST

func scroll_step(pixels: int) -> void:
	playfield.position.x = min(playfield.position.x + float(pixels), 0.0)

func show_ending(frame: int) -> void:
	var path := "res://maps/plateaus-of-draconia/ending/globe-%02d.png" % frame
	var image := Image.new()
	var err := image.load_png_from_buffer(FileAccess.get_file_as_bytes(path))
	if err != OK:
		push_error("missing globe frame %d" % frame)
		return
	ending.texture = ImageTexture.create_from_image(image)
	ending.visible = true
