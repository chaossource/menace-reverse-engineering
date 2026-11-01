extends "res://scripts/enemy.gd"
## One slot of a Vanguard attack wave. Same hit path as Sea of Karnaugh.
## The 91 frames in sprites/level2 differ from sprites/level1, so this
## node does not use level1_aliens.tres. $740F0 adds anim * $180 to the
## sprite base with no per-bob clamp, and the sheet is packed in pointer
## order. A nanim past that bob's own cels continues into the next picture.

const FOLDER := "res://sprites/level2"
const PREFIX := "enemy-l1"
const ORDER: Array = [
	["explosion", 9],
	["guardian-eye", 4],
	["tadpole", 4],
	["eye", 15],
	["bubble", 4],
	["jellyfish1", 4],
	["jellyfish2", 4],
	["border-tl", 6],
	["border-bl", 6],
	["border-tr", 6],
	["border-br", 6],
	["mouth", 8],
	["slime", 9],
	["snake-body", 1],
	["snake-head", 5],
]
## Sprite 4 is the second explosion pointer, the same base as sprite 0.
const BASE := {
	"explosion": 0,
	"guardian-eye": 9,
	"tadpole": 13,
	"eye": 17,
	"bubble": 32,
	"jellyfish1": 36,
	"jellyfish2": 40,
	"border-tl": 44,
	"border-bl": 50,
	"border-tr": 56,
	"border-br": 62,
	"mouth": 68,
	"slime": 76,
	"snake-body": 85,
	"snake-head": 86,
}

static var _sheet: SpriteFrames


static func sheet() -> SpriteFrames:
	if _sheet != null:
		return _sheet
	var built := SpriteFrames.new()
	built.add_animation("sheet")
	built.set_animation_speed("sheet", 0.0)
	for spec in ORDER:
		var stem := str(spec[0])
		var count := int(spec[1])
		for i in count:
			var path := "%s/%s-%s-%02d.png" % [FOLDER, PREFIX, stem, i]
			var image := Image.new()
			var err := image.load_png_from_buffer(FileAccess.get_file_as_bytes(path))
			if err != OK:
				push_error("missing level 2 frame %s" % path)
				continue
			built.add_frame("sheet", ImageTexture.create_from_image(image))
	if built.has_animation("default"):
		built.remove_animation("default")
	_sheet = built
	return _sheet


func _ready() -> void:
	sprite.sprite_frames = sheet()
	sprite.animation = "sheet"
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	super._ready()


## The bullet's body_entered signal runs inside the physics flush.
## Disabling the shape there is rejected. Damage still uses the parent
## path. The picture updates on the next idle frame, and the 25 Hz
## sync in the level does it again outside that callback.
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
			node.call_deferred("sync_from_wave")


func _show_frame(anim_name: String, frame_i: int, _count: int) -> void:
	var base := 0
	if BASE.has(anim_name):
		base = int(BASE[anim_name])
	var frames := sheet()
	if sprite.sprite_frames != frames:
		sprite.sprite_frames = frames
	var last := frames.get_frame_count("sheet") - 1
	if last < 0:
		return
	var idx := base + frame_i
	if idx < 0:
		idx = 0
	if idx > last:
		idx = last
	if sprite.animation != "sheet":
		sprite.animation = "sheet"
	sprite.frame = idx
	sprite.pause()
