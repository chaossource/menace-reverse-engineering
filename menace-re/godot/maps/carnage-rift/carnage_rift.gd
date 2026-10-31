extends Node2D
## CARNAGE RIFT, loader level 2 (head 1 cylinder 30).
## Blitter $73762: 16x16, three planes, source $34F80 + index*$60.
## Map pointer $3B060. Index 0 is transparent. Sky is COLOR00.
## scroll_step walks the playfield the way $72D52 does, toward the end.

const MAP_HEIGHT := 12
const REVERSED_SCROLL := false
const VIEW_W := 320

@onready var playfield: Node2D = $Playfield
@onready var layer: TileMapLayer = $Playfield/TileMapLayer

func _ready() -> void:
	var bytes := FileAccess.get_file_as_bytes("res://maps/carnage-rift/map.bin")
	var columns := int(bytes.size() / MAP_HEIGHT)
	for column in columns:
		for row in MAP_HEIGHT:
			var index := bytes[column * MAP_HEIGHT + row]
			layer.set_cell(Vector2i(column, row), 0, Vector2i(index % 16, int(index / 16)))

func scroll_step(pixels: int) -> void:
	playfield.position.x -= pixels
