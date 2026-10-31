extends RefCounted
class_name ShipWeapon
## Ship frames for weapon index $1D(a5), which is 0, 1, 2, or 3.
## Base is $7820E. Each weapon is $690 bytes. Pose $38(a5) is
## 0 (level), -$230 (up), or +$230 (down).
## This does not collect pods or change the weapon index.

const LEVEL: Array[Texture2D] = [
	preload("res://sprites/level1/ship-w0-level.png"),
	preload("res://sprites/level1/ship-w1-level.png"),
	preload("res://sprites/level1/ship-w2-level.png"),
	preload("res://sprites/level1/ship-w3-level.png"),
]
const UP: Array[Texture2D] = [
	preload("res://sprites/level1/ship-w0-up.png"),
	preload("res://sprites/level1/ship-w1-up.png"),
	preload("res://sprites/level1/ship-w2-up.png"),
	preload("res://sprites/level1/ship-w3-up.png"),
]
const DOWN: Array[Texture2D] = [
	preload("res://sprites/level1/ship-w0-down.png"),
	preload("res://sprites/level1/ship-w1-down.png"),
	preload("res://sprites/level1/ship-w2-down.png"),
	preload("res://sprites/level1/ship-w3-down.png"),
]


static func texture_for(weapon_index: int, pose: String = "level") -> Texture2D:
	var index := weapon_index
	if index < 0:
		index = 0
	if index > 3:
		index = 3
	if pose == "up":
		return UP[index]
	if pose == "down":
		return DOWN[index]
	return LEVEL[index]


static func texture_for_pose_offset(weapon_index: int, pose_offset: int) -> Texture2D:
	if pose_offset < 0:
		return texture_for(weapon_index, "up")
	if pose_offset > 0:
		return texture_for(weapon_index, "down")
	return texture_for(weapon_index, "level")


static func apply(sprite: Sprite2D, weapon_index: int, pose: String = "level") -> void:
	if sprite == null:
		return
	sprite.texture = texture_for(weapon_index, pose)
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
