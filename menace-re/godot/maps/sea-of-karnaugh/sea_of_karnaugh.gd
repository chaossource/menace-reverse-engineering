extends Node2D
## SEA OF KARNAUGH, loader level 0 (head 1 cylinder 0).
## Same blitter as $73762: 16×16, three planes, source $34F80 + index*$60.
## Playfield 2 colours are registers 9–15 of the block at $7BA06.
## Index 0 is transparent. The sky is COLOR00 $0332.

const MAP_HEIGHT := 12

@onready var layer: TileMapLayer = $Playfield/TileMapLayer

func _ready() -> void:
	var bytes := FileAccess.get_file_as_bytes("res://maps/sea-of-karnaugh/map.bin")
	var columns := int(bytes.size() / MAP_HEIGHT)
	for column in columns:
		for row in MAP_HEIGHT:
			var index := bytes[column * MAP_HEIGHT + row]
			layer.set_cell(Vector2i(column, row), 0, Vector2i(index % 16, int(index / 16)))
