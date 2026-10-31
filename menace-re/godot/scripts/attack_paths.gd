extends RefCounted
## Sea of Karnaugh attack cycle. Pointer table $3C898 in the level image.
## Eighteen longs: bonus at +0, then 17 wave pointers, then a zero long at $3C8E0.
## The three boss end scripts live after that zero and are not loaded here.
## Scheduler matches $74900 with the workspace template: path.delay 15, path.number 4.

const BIN_PATH := "res://scripts/level0-waves.bin"
## Order of the 17 attacks. Repeats share one unique script.
var uniques: Array = []
var cycle: Array = []
var cursor: int = 0
var bonus: int = 0
var delay: int = 15


func _init() -> void:
	var f := FileAccess.open(BIN_PATH, FileAccess.READ)
	if f == null:
		push_error("Missing level0-waves.bin")
		return
	var n := f.get_16()
	for _i in n:
		var ln := f.get_16()
		uniques.append(f.get_buffer(ln))
	var cn := f.get_16()
	for _i in cn:
		cycle.append(f.get_16())


func unique(index: int) -> PackedByteArray:
	return uniques[index].duplicate()


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


class Wave extends RefCounted:
	var buf: PackedByteArray
	var bases: Array = []
	var chains: int = 0
	var fresh: bool = false
	var ship_x: int = 112
	var ship_y: int = 84

	func _init(src: PackedByteArray) -> void:
		buf = src.duplicate()
		var b := 0
		for _i in 12:
			if b + 22 > buf.size():
				break
			bases.append(b)
			var nxt := w(b)
			if nxt == 0:
				break
			b += nxt

	func w(i: int) -> int:
		if i < 0 or i + 1 >= buf.size():
			return 0
		return (buf[i] << 8) | buf[i + 1]

	func sw(i: int, v: int) -> void:
		if i < 0 or i + 1 >= buf.size():
			return
		v = v & 0xFFFF
		buf[i] = (v >> 8) & 255
		buf[i + 1] = v & 255

	func bget(i: int) -> int:
		if i < 0 or i >= buf.size():
			return 0
		return buf[i]

	func bset(i: int, v: int) -> void:
		if i < 0 or i >= buf.size():
			return
		buf[i] = v & 255

	func s16(v: int) -> int:
		v = v & 0xFFFF
		if v >= 0x8000:
			return v - 65536
		return v

	func s8(v: int) -> int:
		v = v & 255
		if v >= 128:
			return v - 256
		return v

	func x_at(base: int) -> int:
		return w(base + 2)

	func y_at(base: int) -> int:
		return w(base + 4)

	func toff(base: int) -> int:
		return w(base + 8)

	func mode(base: int) -> int:
		return bget(base + 16)

	func seekb(base: int) -> int:
		return bget(base + 21)

	func alive() -> bool:
		for base in bases:
			if x_at(base) != 0:
				return true
		return false

	func step(sx: int, sy: int) -> void:
		ship_x = sx
		ship_y = sy
		for base in bases:
			step_one(base)

	func step_one(base: int) -> void:
		if x_at(base) == 0:
			return
		var delay_b := (bget(base + 12) - 1) & 255
		bset(base + 12, delay_b)
		if delay_b == 0:
			var nanim := bget(base + 20)
			if nanim != 0:
				var mode_b := mode(base)
				var anim := bget(base + 11)
				if mode_b & 0x08:
					if (mode_b & 0x10) == 0:
						anim = (anim + 1) & 255
						if anim == nanim:
							mode_b = mode_b ^ 0x10
					else:
						anim = (anim - 1) & 255
						if anim >= 128:
							anim = 1
							mode_b = mode_b ^ 0x10
				else:
					anim = (anim + 1) & 255
					if anim == ((nanim + 1) & 255):
						anim = 0
						if bget(base + 10) == 0:
							bset(base + 11, 0)
							sw(base + 2, 0)
							return
				bset(base + 11, anim)
				bset(base + 16, mode_b)
				bset(base + 12, bget(base + 13))
		if bget(base + 10) == 0:
			return
		var pause := bget(base + 15)
		if pause != 0:
			if pause == 0xFF:
				return
			pause = (pause - 1) & 255
			bset(base + 15, pause)
			if pause == 0:
				chains = 0
				dc0(base, toff(base))
			return
		var t := toff(base)
		var d3 := bget(base + t)
		var d4 := bget(base + t + 1)
		var skip_x := false
		var skip_y := false
		var x_neq := false
		var y_neq := false
		var mode_b := mode(base)
		if mode_b & 0x40:
			skip_y = true
			y_neq = true
			d3 = (ship_x + 54) >> 1
			var sk := (seekb(base) - 1) & 255
			bset(base + 21, sk)
			if sk == 0:
				mode_b = mode_b & ~0x40
		if mode_b & 0x80:
			skip_x = true
			x_neq = true
			d4 = (ship_y + 14) >> 1
			var sk2 := (seekb(base) - 1) & 255
			bset(base + 21, sk2)
			if sk2 == 0:
				mode_b = mode_b & ~0x80
		if mode_b & 0x20:
			d3 = (ship_x + 56) >> 1
			d4 = (ship_y + 16) >> 1
			var sk3 := (seekb(base) - 1) & 255
			bset(base + 21, sk3)
			if sk3 == 0:
				bset(base + 16, mode_b)
				explode(base)
				return
		bset(base + 16, mode_b)
		if bget(base + 10) == 0:
			return
		var x := x_at(base)
		var y := y_at(base)
		var speed := bget(base + 14)
		if mode_b & 0x01:
			if not skip_x:
				x = (s16(x) + s8(d3)) & 0xFFFF
			if not skip_y:
				y = (s16(y) + s8(d4)) & 0xFFFF
			x_neq = false
			y_neq = false
		else:
			if not skip_x:
				var sxr: Array = seek_axis(x, d3 << 1, speed)
				x = sxr[0]
				x_neq = not sxr[1]
			if not skip_y:
				var syr: Array = seek_axis(y, d4 << 1, speed)
				y = syr[0]
				y_neq = not syr[1]
		sw(base + 2, x)
		sw(base + 4, y)
		if x_neq or y_neq:
			return
		if mode_b & 0x20:
			explode(base)
			return
		chains = 0
		dc0(base, toff(base))

	func seek_axis(pos: int, target: int, speed: int) -> Array:
		pos = s16(pos)
		if pos == target:
			return [target & 0xFFFF, true]
		if pos > target:
			pos -= speed
			if pos > target:
				return [pos & 0xFFFF, false]
			return [target & 0xFFFF, true]
		pos += speed
		if pos < target:
			return [pos & 0xFFFF, false]
		return [target & 0xFFFF, true]

	func dc0(base: int, d0: int) -> void:
		var mode_b := mode(base)
		if mode_b & 0x02:
			write_player(base, d0)
			var sk := (seekb(base) - 1) & 255
			bset(base + 21, sk)
			if sk != 0:
				return
			bset(base + 16, mode_b & ~0x02)
		dd8(base, d0)

	func dd8(base: int, d0: int) -> void:
		chains += 1
		if chains > 64:
			return
		d0 = (d0 + 2) & 0xFFFF
		sw(base + 8, d0)
		if w(base + d0) == 0:
			sw(base + 2, 0)
			return
		var b := bget(base + d0)
		if (b & 0xF0) == 0xE0:
			command(base, d0, b & 0x0F)

	func write_player(base: int, d0: int) -> void:
		bset(base + d0, (ship_x + 54) >> 1)
		bset(base + d0 + 1, (ship_y + 14) >> 1)

	func explode(base: int) -> void:
		bset(base + 11, 0)
		bset(base + 10, 0)
		bset(base + 20, 7)
		bset(base + 12, 2)
		bset(base + 13, 2)
		bset(base + 16, mode(base) & ~0x08)

	func command(base: int, t: int, n: int) -> void:
		if n == 0:
			bset(base + 15, bget(base + t + 1))
			return
		if n == 1:
			var back := bget(base + 17) << 1
			var count := (bget(base + 18) - 1) & 255
			bset(base + 18, count)
			if count == 0:
				dc0(base, t)
			else:
				sw(base + 8, (t - back) & 0xFFFF)
			return
		if n == 2:
			bset(base + 16, mode(base) ^ 0x01)
			dc0(base, t)
			return
		if n == 3:
			bset(base + 14, bget(base + t + 1))
			dc0(base, t)
			return
		if n == 4:
			var t2 := (t + 2) & 0xFFFF
			bset(base + 10, bget(base + t2))
			bset(base + 20, bget(base + t2 + 1))
			bset(base + 11, 0)
			bset(base + 12, bget(base + 13))
			dc0(base, t2)
			return
		if n == 5:
			bset(base + 16, mode(base) | 0x02)
			bset(base + 21, bget(base + t + 1))
			var t5 := (t + 2) & 0xFFFF
			sw(base + 8, t5)
			write_player(base, t5)
			return
		if n == 6:
			var t6 := (t + 2) & 0xFFFF
			sw(base + 2, bget(base + t6) << 1)
			sw(base + 4, bget(base + t6 + 1) << 1)
			dc0(base, t6)
			return
		if n == 7:
			var op := (t + 2) & 0xFFFF
			bset(base + 18, op & 255)
			bset(base + 17, (op >> 8) & 255)
			var dest := w(base + op)
			dd8(base, (dest - 2) & 0xFFFF)
			return
		if n == 8:
			var ret := (bget(base + 17) << 8) | bget(base + 18)
			dd8(base, ret)
			return
		if n == 9:
			dd8(base, (t + 2) & 0xFFFF)
			return
		if n == 0xA:
			bset(base + 11, bget(base + t + 1))
			dd8(base, t)
			return
		if n == 0xB:
			dc0(base, 20)
			return
		if n == 0xC:
			ec(base, t)
			dd8(base, t)
			return
		if n == 0xD:
			bset(base + 16, mode(base) | 0x40)
			bset(base + 21, bget(base + t + 1))
			sw(base + 8, (t + 2) & 0xFFFF)
			return
		if n == 0xE:
			bset(base + 16, mode(base) | 0x80)
			bset(base + 21, bget(base + t + 1))
			sw(base + 8, (t + 2) & 0xFFFF)
			return

	func ec(base: int, t: int) -> void:
		var which := (bget(base + t + 1) - 2) & 255
		var dest := 0
		var guard := 0
		while guard <= which and guard < 12:
			var nxt := w(dest)
			if nxt == 0:
				return
			dest += nxt
			guard += 1
		sw(dest + 2, x_at(base))
		sw(dest + 4, y_at(base))
		bset(dest + 22, (s16(x_at(base)) >> 1) & 255)
		bset(dest + 23, (s16(y_at(base)) >> 1) & 255)
		sw(dest + 8, 22)
		bset(dest + 19, 0x80)
		bset(dest + 12, 2)
		bset(dest + 15, 0)
		bset(dest + 11, 0)

	## Bullet test from $7448C. Bit 7 of hits consumes the shot and does not decrement.
	## kills.what at +6 explodes those slots once; it does not chain.
	func damage(slot: int) -> bool:
		if slot < 0 or slot >= bases.size():
			return false
		var base: int = bases[slot]
		if x_at(base) == 0 or bget(base + 10) == 0:
			return false
		var hits := bget(base + 19)
		if hits & 0x80:
			return true
		hits = (hits - 1) & 255
		bset(base + 19, hits)
		if hits != 0:
			return true
		explode(base)
		var bits := w(base + 6)
		var walk: int = bases[0]
		for _i in 12:
			if bits & 1:
				explode(walk)
			bits = (bits >> 1) & 0xFFFF
			var nxt := w(walk)
			if nxt == 0:
				break
			walk += nxt
		return true

	func debug_row(hide_dead: bool) -> String:
		var parts: PackedStringArray = PackedStringArray()
		for i in bases.size():
			var base: int = bases[i]
			var xx := s16(w(base + 2))
			if hide_dead and xx == 0:
				continue
			parts.append("%d:%d,%d,s%d,a%d" % [i, xx, s16(w(base + 4)), bget(base + 10), bget(base + 11)])
		return " ".join(parts)
