extends Area2D
## Weapon pictures from the 72-byte block at $77B66.
## Kind 0 is the level-0 missile at $77B76 (16 bytes), the shot fired when weapon index is 0.
## Kind 1 cannon $77B86 (40 bytes, step 8, range 12). Kind 2 laser $77B66 (16 bytes, step 16, range 32).
## Kind 3 is the separate multiple at $77F0E (24 bytes). Weapon 0 does not fire it.
## Update is $7420E: subtract the range word first, then move. A zero range dies with no move.
## Missile range starts at 16, so it travels 15 steps of 10 px. X >= 360 ($168) also kills it.

const TEX_MISSILE := "res://sprites/shot-missile.png"
const TEX_CANNON := "res://sprites/shot-cannon.png"
const TEX_LASER := "res://sprites/shot-laser.png"
const TEX_MULTIPLE := "res://sprites/shot-multiple.png"

@export var kind: int = 0
var life: int = 16
var px_step: int = 10
var acc: float = 0.0

@onready var sprite: Sprite2D = $Sprite2D
@onready var col: CollisionShape2D = $CollisionShape2D


func _ready() -> void:
	z_index = 28
	var path := TEX_MISSILE
	px_step = 10
	life = 16
	if kind == 1:
		path = TEX_CANNON
		px_step = 8
		life = 12
	elif kind == 2:
		path = TEX_LASER
		px_step = 16
		life = 32
	elif kind == 3:
		path = TEX_MULTIPLE
		px_step = 10
		life = 16
	var tex: Texture2D = load(path)
	if tex == null:
		push_error("Missing shot texture")
		return
	sprite.texture = tex
	sprite.centered = false
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	var w := int(tex.get_width())
	var h := int(tex.get_height())
	var shape := RectangleShape2D.new()
	shape.size = Vector2(w, h)
	col.shape = shape
	col.position = Vector2(float(w) * 0.5, float(h) * 0.5)


func _physics_process(delta: float) -> void:
	acc += delta
	var tick := 1.0 / 25.0
	while acc >= tick:
		acc -= tick
		_retail_step()


func _retail_step() -> void:
	life -= 1
	if life <= 0:
		queue_free()
		return
	position.x += px_step
	if position.x >= 360.0:
		queue_free()


func _on_body_entered(body: Node) -> void:
	if body.has_method("hit"):
		body.hit()
	queue_free()
