extends Node2D
## Flying bonus from the level-0 script at $3C8F0.
## $74946 sets bonus.mode, $7494A clears bonus.num, $7494E loads bonus.count with 5.
## The script's path word is patched at $74968 to $0200 | (last.y >> 1), so the
## bob seeks x = 4 and the even y at speed 3. Sprite byte is 1. Reaching the
## target clears x ($73E66) and the icon leaves. Shots that overlap call
## cycle_type. The ship rectangle collects it.

const BonusFrames = preload("res://scripts/bonus_mine.gd")
const STEP := 1.0 / 25.0
const SPEED := 3
const TARGET_X := 4
const ICON_SIZE := Vector2(32, 24)

var pod = null
var pilot = null
var ix: int = 0
var iy: int = 0
var goal_y: int = 0
var acc: float = 0.0
var gone := false

var _sprite: Sprite2D


func _ready() -> void:
	z_index = 22
	ix = int(position.x)
	iy = int(position.y)
	var bits := iy & 0xFFFF
	var shifted := (bits >> 1) & 0xFFFF
	shifted = (shifted << 1) & 0xFFFF
	if shifted >= 0x8000:
		shifted -= 65536
	goal_y = shifted
	_sprite = Sprite2D.new()
	_sprite.centered = false
	_sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	add_child(_sprite)
	_show()


func _physics_process(delta: float) -> void:
	if gone:
		return
	if _touching_ship():
		_take()
		return
	_poke_shots()
	if gone:
		return
	acc += delta
	if acc > STEP * 5.0:
		acc = STEP * 5.0
	while acc >= STEP and not gone:
		acc -= STEP
		_seek_step()


func hit() -> void:
	if gone or pod == null or pod.consumed:
		return
	pod.cycle_type()
	_show()


func _take() -> void:
	if gone:
		return
	gone = true
	if pilot != null and pilot.has_method("collect_bonus"):
		pilot.collect_bonus()
	queue_free()


func _show() -> void:
	if _sprite == null or pod == null:
		return
	_sprite.texture = BonusFrames.texture_for_sprite(1, pod.pod_type)


func _seek_step() -> void:
	ix = _seek(ix, TARGET_X, SPEED)
	iy = _seek(iy, goal_y, SPEED)
	position = Vector2(ix, iy)
	if ix == TARGET_X and iy == goal_y:
		gone = true
		queue_free()


func _seek(pos: int, target: int, speed: int) -> int:
	if pos == target:
		return target
	if pos > target:
		pos -= speed
		if pos < target:
			return target
		return pos
	pos += speed
	if pos > target:
		return target
	return pos


func _touching_ship() -> bool:
	if pilot == null or not is_instance_valid(pilot):
		return false
	if pilot.get("ship_dead") == true:
		return false
	var p: Vector2 = pilot.global_position
	var ship := Rect2(p.x - 16.0, p.y - 22.0, 32.0, 44.0)
	var mine := Rect2(global_position, ICON_SIZE)
	return ship.intersects(mine)


func _poke_shots() -> void:
	if not is_inside_tree():
		return
	var mine := Rect2(global_position, ICON_SIZE)
	var tree := get_tree()
	if tree == null:
		return
	for node in tree.get_nodes_in_group("player_shot"):
		if gone:
			return
		if not is_instance_valid(node):
			continue
		if node.get("spent") == true:
			continue
		var shape := node.get_node_or_null("CollisionShape2D") as CollisionShape2D
		if shape == null or shape.disabled or shape.shape == null:
			continue
		var rect := shape.shape as RectangleShape2D
		if rect == null:
			continue
		var shot := Rect2(shape.global_position - rect.size * 0.5, rect.size)
		if mine.intersects(shot) and node.has_method("_apply_hit"):
			node._apply_hit(self)


## One process.aliens pass. raw == 0 is an empty slot.
## An explosion that reaches its last frame stores last.x / last.y ($73CBC).
## A path word of 0 ($73E66) seqs no.bonus from mode bit 2 ($73E70).
static func note_paths(before: Array, after: Array, no_bonus: int) -> Dictionary:
	var last_x := 0
	var last_y := 0
	var nb := no_bonus
	var n: int = before.size()
	if after.size() < n:
		n = after.size()
	for i in n:
		var prev: Dictionary = before[i]
		if int(prev.raw) == 0:
			continue
		last_x = 0
		last_y = 0
		var now: Dictionary = after[i]
		if int(now.raw) == 0 and int(prev.sprite) == 0:
			last_x = int(prev.x)
			last_y = int(prev.y)
		elif int(now.raw) == 0 and int(prev.sprite) != 0:
			if (int(prev.mode) & 4) == 0:
				nb = 255
			else:
				nb = 0
	return {"x": last_x, "y": last_y, "no_bonus": nb}
