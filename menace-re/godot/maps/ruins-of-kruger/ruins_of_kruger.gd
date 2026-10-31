extends Node2D
## RUINS OF KRUGER (loader level 4, head 1 cylinder 60). Not SEA OF KARNAUGH.
## The blitter at $73762 copies 16×16 tiles, 3 planes, from $34F80 + index*$60
## onto playfield 2 (BPL2/BPL4/BPL6). map.bin is the column-major byte map
## whose pointer the init table stores at $3B060. This image is the one that
## matches the gameplay shot (loader level 4, head 1 cylinder 60).

const MAP_HEIGHT := 12
const SCREEN_X := 1129

@onready var playfield: Node2D = $Playfield
@onready var layer: TileMapLayer = $Playfield/TileMapLayer

func _ready() -> void:
	var bytes := FileAccess.get_file_as_bytes("res://maps/ruins-of-kruger/map.bin")
	var columns := bytes.size() // MAP_HEIGHT
	for column in columns:
		for row in MAP_HEIGHT:
			var index := bytes[column * MAP_HEIGHT + row]
			layer.set_cell(Vector2i(column, row), 0, Vector2i(index % 16, index // 16))
	playfield.position.x = -SCREEN_X
