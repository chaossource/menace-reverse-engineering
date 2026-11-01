extends Node2D
## In-play weapon pod. The front-end weapon column is a legend, not a picker.
## $72FE4 dispatches the pod type after a foreground hit while bonus.mode ($16(a5)) is set.
## Type 0 ($73044) stores the BCD long $1000. $74B46 ABCD-adds that into the score: 1000 points.
## Type 1 ($73058) sets canons at $0F(a5). The first collect addq.b #1 on $1D(a5) and calls
## $7317E. Canon energy at $3E(a5) stays 0, so $734C0 does not fire. The second collect
## writes 128 there ($73070) and does not advance $1D.
## Type 2 ($7308E) does the same for lasers at $10(a5) / $40(a5), addq.b #2, then $7317E.
## $7317E selects the ship block at $7820E + $1D * $690. Index 0-3.
## Pose $38(a5) is level, -$230 up, or +$230 down.
## Type 3 ($730C4) adds 1 to ship speed at $24(a5) unless that word is already 8.
## Type 4 ($73100) sets outrider 1 at $04(a5), or outrider 2 at $05(a5) if 1 is already on.
## Type 5 ($730E2) writes 768 to the force-field count at $5E(a5).
## Type 6 ($73026) writes 128 to ship energy at $42(a5).
## Types 3-6 do not call $7317E.
## Shots do not advance the graphic every hit. $7459E subtracts bonus.count ($4A(a5)).
## On zero, $745A6 reloads 5 and $745B8 adds 1 to bonus.num unless it is already 6.
## collect() applies the current type. There is no menu click-to-pick.

signal collected(pod_type: int, weapon_level: int)

var weapon_level: int = 0
var canons_on := false
var lasers_on := false
var score: int = 0
var pose: int = 0
var pod_type: int = 0
var bonus_count: int = 5
var consumed := false
var refilled := false
var ship_path := ""
var ship_speed: int = 2
var canon_energy: int = 0
var laser_energy: int = 0
var mult1 := false
var mult2 := false
var field_count: int = 0
var shield_full := false

var icon: Sprite2D
var ship: Sprite2D


func _ready() -> void:
	if not has_node("Icon"):
		return
	icon = $Icon
	ship = $Ship
	texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	icon.centered = false
	icon.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	ship.centered = false
	ship.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	_show_pod()
	_show_ship()


## A new drop starts at the 1000 icon. Weapon flags from earlier drops stay.
func arm_drop() -> void:
	pod_type = 0
	bonus_count = 5
	consumed = false
	refilled = false
	shield_full = false
	_show_pod()


## One shot that overlapped the icon. The picture changes on every fifth hit.
func cycle_type() -> void:
	if consumed:
		return
	bonus_count -= 1
	if bonus_count != 0:
		return
	bonus_count = 5
	if pod_type != 6:
		pod_type += 1
	_show_pod()


func collect() -> void:
	apply_type(pod_type)
	consumed = true
	if icon != null:
		icon.visible = false
	collected.emit(pod_type, weapon_level)


func apply_type(type: int) -> void:
	refilled = false
	shield_full = false
	if type == 0:
		score += 1000
	elif type == 1:
		if canons_on:
			refilled = true
			canon_energy = 128
		else:
			canons_on = true
			weapon_level += 1
			if weapon_level > 3:
				weapon_level = 3
	elif type == 2:
		if lasers_on:
			refilled = true
			laser_energy = 128
		else:
			lasers_on = true
			weapon_level += 2
			if weapon_level > 3:
				weapon_level = 3
	elif type == 3:
		if ship_speed != 8:
			ship_speed += 1
	elif type == 4:
		if not mult1:
			mult1 = true
		else:
			mult2 = true
	elif type == 5:
		field_count = 768
	elif type == 6:
		shield_full = true
	_show_ship()


func set_pose(next: int) -> void:
	pose = next
	if pose < -1:
		pose = -1
	elif pose > 1:
		pose = 1
	_show_ship()


func _pose_name() -> String:
	if pose < 0:
		return "up"
	if pose > 0:
		return "down"
	return "level"


func _show_ship() -> void:
	if ship == null:
		return
	ship_path = "res://sprites/ship/ship-w%d-%s.png" % [weapon_level, _pose_name()]
	var image := Image.new()
	var err := image.load_png_from_buffer(FileAccess.get_file_as_bytes(ship_path))
	if err != OK:
		push_error("missing ship %s (%d)" % [ship_path, err])
		return
	ship.texture = ImageTexture.create_from_image(image)


func _show_pod() -> void:
	if icon == null:
		return
	var path := "res://sprites/pod/pod-%02d.png" % pod_type
	var image := Image.new()
	var err := image.load_png_from_buffer(FileAccess.get_file_as_bytes(path))
	if err != OK:
		push_error("missing pod %s (%d)" % [path, err])
		return
	icon.texture = ImageTexture.create_from_image(image)
