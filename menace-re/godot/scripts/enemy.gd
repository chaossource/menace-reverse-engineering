extends CharacterBody2D
## One slot of a retail attack wave. The node origin is the bob's top-left.
## Frames stay on sprites/level1/level1_aliens.tres. The path chooses the animation.

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

var path_wave = null
var slot: int = 0

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var shape: CollisionShape2D = $CollisionShape2D


func attach(w, s: int) -> void:
	path_wave = w
	slot = s
	add_to_group("karnaugh_wave")


func _ready() -> void:
	sprite.centered = false
	sprite.pause()
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
	if path_wave:
		path_wave.damage(slot)
