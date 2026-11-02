extends CharacterBody2D
## One slot of a retail attack wave. The node origin is the bob's top-left.
## Frames stay on sprites/level1/level1_aliens.tres. The path chooses the animation.
## A damaging shot plays the retail impact sample. $744F2 loads D0 with $0106
## and jsr $6FFE0. The low byte is Whittaker effect 6. Its PCM is the 128 bytes
## at $58C66 (head 0, cylinder 23, offset $FDE). Bit 7 of hits does not change
## the byte and does not play. A miss never reaches hit().

const NAMES := {
	0: "explosion",
	3: "guardian-eye",
	4: "explosion",
	5: "tadpole",
	6: "eye",
	7: "bubble",
	8: "jellyfish1",
	9: "jellyfish2",
	10: "border-tl",
	11: "border-bl",
	12: "border-tr",
	13: "border-br",
	14: "mouth",
	15: "slime",
	16: "snake-body",
	17: "snake-head",
}
const FRAMES := {
	0: 9,
	3: 4,
	4: 9,
	5: 4,
	6: 15,
	7: 4,
	8: 4,
	9: 4,
	10: 6,
	11: 6,
	12: 6,
	13: 6,
	14: 8,
	15: 9,
	16: 1,
	17: 5,
}
const HIT_STREAM := preload("res://sfx/hit.wav")
## Effect 6 runs 49 vblanks. That is 0.98 s, the length of hit.wav.
## The file is the retail playback, not a padded export. Stop 150 ms early.
const HIT_PLAY_SEC := 0.83
## One image per frame texture. Contact reads alpha; shots keep the box.
static var _frame_images: Dictionary = {}

var path_wave = null
var slot: int = 0

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var shape: CollisionShape2D = $CollisionShape2D


func attach(w, s: int) -> void:
	path_wave = w
	slot = s
	add_to_group("karnaugh_wave")


func _ready() -> void:
	collision_layer = 2
	collision_mask = 5
	sprite.centered = false
	sprite.pause()
	# kill.alien: a shot point in x-16..x+16 and y..y+24. This is that
	# 32x24 cell, centered on the bob. Ship contact does not use it.
	shape.position = Vector2(16, 12)
	z_index = 20 - slot
	sync_from_wave()


func _physics_process(_delta: float) -> void:
	velocity = Vector2.ZERO


func sync_from_wave() -> void:
	if path_wave == null:
		return
	var base: int = path_wave.bases[slot]
	var active: bool = path_wave.x_at(base) != 0
	var raw: int = path_wave.bget(base + 10)
	var sid: int = raw & 0x7F
	var flip: bool = (raw & 0x80) != 0
	if not active:
		visible = false
		shape.disabled = true
		return
	position = Vector2(path_wave.s16(path_wave.x_at(base)), path_wave.s16(path_wave.y_at(base)))
	sprite.flip_v = flip
	if sid == 0:
		visible = true
		_show_frame("explosion", path_wave.bget(base + 11), 9)
		shape.disabled = true
		return
	if sid == 1 or sid == 2 or not NAMES.has(sid):
		visible = false
		shape.disabled = true
		return
	visible = true
	shape.disabled = false
	_show_frame(NAMES[sid], path_wave.bget(base + 11), FRAMES[sid])


func _show_frame(anim_name: String, frame_i: int, count: int) -> void:
	if sprite.animation != anim_name:
		sprite.animation = anim_name
	var fr := frame_i
	if fr < 0:
		fr = 0
	if fr >= count:
		fr = count - 1
	sprite.frame = fr
	sprite.pause()


func hit() -> void:
	if path_wave == null:
		return
	var changed := false
	if slot >= 0 and slot < path_wave.bases.size():
		var base: int = path_wave.bases[slot]
		var before: int = path_wave.bget(base + 19)
		path_wave.damage(slot)
		changed = path_wave.bget(base + 19) != before
	else:
		path_wave.damage(slot)
	if changed:
		_play_damage_sound()
	var tree := get_tree()
	if tree == null:
		sync_from_wave()
		return
	for node in tree.get_nodes_in_group("karnaugh_wave"):
		if node.has_method("sync_from_wave"):
			node.sync_from_wave()


## Channel 1 in the retail player. A later hit restarts this one sound.
func _play_damage_sound() -> void:
	var tree := get_tree()
	if tree == null:
		return
	var host: Node = tree.current_scene
	if host == null:
		host = tree.root
	var player := host.get_node_or_null("AlienHit") as AudioStreamPlayer
	if player == null:
		player = AudioStreamPlayer.new()
		player.name = "AlienHit"
		player.stream = HIT_STREAM
		host.add_child(player)
	player.bus = "Sfx"
	player.play()
	var timer := host.get_node_or_null("AlienHitStop") as Timer
	if timer == null:
		timer = Timer.new()
		timer.name = "AlienHitStop"
		timer.one_shot = true
		host.add_child(timer)
		timer.timeout.connect(func() -> void:
			var playing := host.get_node_or_null("AlienHit") as AudioStreamPlayer
			if playing != null:
				playing.stop()
		)
	timer.start(HIT_PLAY_SEC)


## World point on an opaque texel of the frame currently shown.
## flip_v / flip_h mirror the sample so the test matches the sprite.
func contacts_point(world: Vector2) -> bool:
	var image: Image = _frame_image()
	if image == null or sprite == null:
		return false
	var size: Vector2 = Vector2(image.get_width(), image.get_height())
	var origin: Vector2 = _cell_origin(size)
	var x: int = int(floor(world.x - origin.x))
	var y: int = int(floor(world.y - origin.y))
	return _opaque_pixel(image, x, y)


## True when any opaque texel of this frame intersects area.
## area is the ship hull. A clear corner of the cell returns false.
func overlaps_rect(area: Rect2) -> bool:
	var image: Image = _frame_image()
	if image == null or sprite == null:
		return false
	if area.size.x <= 0.0 or area.size.y <= 0.0:
		return false
	var size: Vector2 = Vector2(image.get_width(), image.get_height())
	var origin: Vector2 = _cell_origin(size)
	var cell: Rect2 = Rect2(origin, size)
	if not cell.intersects(area):
		return false
	var region: Rect2 = cell.intersection(area)
	if region.size.x <= 0.0 or region.size.y <= 0.0:
		return false
	var x0: int = int(floor(region.position.x - origin.x))
	var y0: int = int(floor(region.position.y - origin.y))
	var x1: int = int(ceil(region.end.x - origin.x))
	var y1: int = int(ceil(region.end.y - origin.y))
	var w: int = image.get_width()
	var h: int = image.get_height()
	if x0 < 0:
		x0 = 0
	if y0 < 0:
		y0 = 0
	if x1 > w:
		x1 = w
	if y1 > h:
		y1 = h
	for y in range(y0, y1):
		for x in range(x0, x1):
			if _opaque_pixel(image, x, y):
				return true
	return false


func _cell_origin(size: Vector2) -> Vector2:
	var local: Vector2 = sprite.offset
	if sprite.centered:
		local -= size * 0.5
	return sprite.to_global(local)


func _opaque_pixel(image: Image, x: int, y: int) -> bool:
	var w: int = image.get_width()
	var h: int = image.get_height()
	if x < 0 or y < 0 or x >= w or y >= h:
		return false
	var sx: int = x
	var sy: int = y
	if sprite.flip_h:
		sx = w - 1 - x
	if sprite.flip_v:
		sy = h - 1 - y
	return image.get_pixel(sx, sy).a > 0.0


func _frame_image() -> Image:
	if sprite == null or sprite.sprite_frames == null:
		return null
	var frames: SpriteFrames = sprite.sprite_frames
	var anim: StringName = sprite.animation
	if not frames.has_animation(anim):
		return null
	var count: int = frames.get_frame_count(anim)
	if count <= 0:
		return null
	var idx: int = sprite.frame
	if idx < 0:
		idx = 0
	if idx >= count:
		idx = count - 1
	var tex: Texture2D = frames.get_frame_texture(anim, idx)
	return _image_for(tex)


func _image_for(tex: Texture2D) -> Image:
	if tex == null:
		return null
	var key: String = tex.resource_path
	if key == "":
		key = "id:%d" % tex.get_instance_id()
	if _frame_images.has(key):
		var cached: Variant = _frame_images[key]
		if cached is Image:
			return cached
	var image: Image = tex.get_image()
	if image == null or image.is_empty():
		if tex.resource_path.ends_with(".png"):
			image = Image.load_from_file(tex.resource_path)
	if image == null or image.is_empty():
		return null
	_frame_images[key] = image
	return image
