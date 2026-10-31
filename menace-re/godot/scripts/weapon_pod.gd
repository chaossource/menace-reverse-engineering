extends Node2D
## In-play weapon pod. The front-end weapon column is a legend, not a picker.
## $72FE4 dispatches the pod type after a foreground hit while bonus.mode is set.
## Type 0 ($73044) adds $1000 to the score.
## Type 1 ($73058) sets canons at $0F(a5) and addq.b #1 on $1D(a5), then calls
## $7317E. If canons are already on, it refills and does not advance $1D.
## Type 2 ($7308E) sets lasers at $10(a5) and addq.b #2 on $1D(a5), then calls
## $7317E. If lasers are already on, it refills and does not advance $1D.
## $7317E selects the ship block at $7820E + $1D * $690 (1680). Index 0-3.
## Pose $38(a5) is level, -$230 up, or +$230 down: ship-wN-level, up, or down.
## Types 3-6 (speed, outriders, force field, shields) do not call $7317E.
## collect() applies the current type and hides the icon. cycle_type() is the
## shot that advances the pod graphic. There is no menu click-to-pick.

signal collected(pod_type: int, weapon_level: int)

var weapon_level: int = 0
var canons_on := false
var lasers_on := false
var score: int = 0
var pose: int = 0
var pod_type: int = 0
var consumed := false
var refilled := false
var ship_path := ""

@onready var icon: Sprite2D = $Icon
@onready var ship: Sprite2D = $Ship


func _ready() -> void:
	texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	icon.centered = false
	icon.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	ship.centered = false
	ship.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	_show_pod()
	_show_ship()


func cycle_type() -> void:
	if consumed:
		return
	pod_type = (pod_type + 1) % 7
	_show_pod()


func collect() -> void:
	apply_type(pod_type)
	consumed = true
	icon.visible = false
	collected.emit(pod_type, weapon_level)


func apply_type(type: int) -> void:
	refilled = false
	if type == 0:
		score += 0x1000
	elif type == 1:
		if canons_on:
			refilled = true
		else:
			canons_on = true
			weapon_level += 1
			if weapon_level > 3:
				weapon_level = 3
	elif type == 2:
		if lasers_on:
			refilled = true
		else:
			lasers_on = true
			weapon_level += 2
			if weapon_level > 3:
				weapon_level = 3
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
	ship_path = "res://sprites/ship/ship-w%d-%s.png" % [weapon_level, _pose_name()]
	var image := Image.new()
	var err := image.load_png_from_buffer(FileAccess.get_file_as_bytes(ship_path))
	if err != OK:
		push_error("missing ship %s (%d)" % [ship_path, err])
		return
	ship.texture = ImageTexture.create_from_image(image)


func _show_pod() -> void:
	var path := "res://sprites/pod/pod-%02d.png" % pod_type
	var image := Image.new()
	var err := image.load_png_from_buffer(FileAccess.get_file_as_bytes(path))
	if err != OK:
		push_error("missing pod %s (%d)" % [path, err])
		return
	icon.texture = ImageTexture.create_from_image(image)
