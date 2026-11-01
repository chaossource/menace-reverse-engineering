extends RefCounted
## Vanguard Warzone attack cycle. Loader 1, head 1 cylinders 15-29,
## loaded at $34F80. The pointer table is $3C898, which is byte 0 of
## head 1 cylinder 20. $7499A (start.path1, from the scheduler at $74900)
## reads it. Ten attack longs, then a zero long at $3C8C4. The bonus long
## at $3C898 and the three boss longs after the zero are not in this cycle.
## path.delay starts at 15 and bonus.delay is toggled every call, same as
## the Sea of Karnaugh scheduler. The first wave is call 30.

const BIN_PATH := "res://scripts/level2-waves.bin"
const AttackScript = preload("res://scripts/attack_paths.gd")

var uniques: Array = []
var cycle: Array = []
var cursor: int = 0
var bonus: int = 0
var delay: int = 15


func _init() -> void:
	var f := FileAccess.open(BIN_PATH, FileAccess.READ)
	if f == null:
		push_error("Missing level2-waves.bin")
		return
	var n := f.get_16()
	for _i in n:
		var ln := f.get_16()
		uniques.append(f.get_buffer(ln))
	var cn := f.get_16()
	for _i in cn:
		cycle.append(f.get_16())


func unique_count() -> int:
	return uniques.size()


func cycle_count() -> int:
	return cycle.size()


## One scheduler call (25 Hz). Empty until the retail countdown installs a wave.
func tick_spawn() -> PackedByteArray:
	bonus = (~bonus) & 255
	if bonus != 0:
		return PackedByteArray()
	delay -= 1
	if delay != 0:
		return PackedByteArray()
	delay = 10
	var idx := 0
	if cursor >= cycle.size():
		idx = 0
		cursor = 1
	else:
		idx = cursor
		cursor = idx + 1
	return uniques[cycle[idx]].duplicate()


func make_wave(src: PackedByteArray):
	return AttackScript.Wave.new(src)
