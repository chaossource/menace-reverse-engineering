extends RefCounted
class_name BonusMine
## Sprite 1 is the bonus at $69F28. Sprite 2 is the mine at $6A9A8.
## Both come from the level-0 pointer table at $7BBE6.
## A frame is 32x24, three planes, mask at +$120, stride $180.
## Bonus frames 0-6 follow bonus.num. Mine frames 0-3 are nanim 3.

const BONUS: Array[Texture2D] = [
	preload("res://sprites/bonus/bonus-00-score.png"),
	preload("res://sprites/bonus/bonus-01-cannon.png"),
	preload("res://sprites/bonus/bonus-02-laser.png"),
	preload("res://sprites/bonus/bonus-03-speed.png"),
	preload("res://sprites/bonus/bonus-04-outriders.png"),
	preload("res://sprites/bonus/bonus-05-field.png"),
	preload("res://sprites/bonus/bonus-06-shield.png"),
]
const MINE: Array[Texture2D] = [
	preload("res://sprites/mines/mine-00.png"),
	preload("res://sprites/mines/mine-01.png"),
	preload("res://sprites/mines/mine-02.png"),
	preload("res://sprites/mines/mine-03.png"),
]


static func texture_for_sprite(sprite_number: int, frame: int) -> Texture2D:
	if sprite_number == 1:
		return BONUS[_clamp_frame(frame, BONUS.size())]
	if sprite_number == 2:
		return MINE[_clamp_frame(frame, MINE.size())]
	return null


static func _clamp_frame(frame: int, count: int) -> int:
	if frame < 0:
		return 0
	if frame >= count:
		return count - 1
	return frame
