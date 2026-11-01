extends "res://scripts/boss_path.gd"
## VANGUARD WARZONE boss, loader level 1 (head 1 cylinder 15).
## Fight $3DB8E, death $3DD10, timeout $3DFB2.
## Same path machine as level 1. These bytes are this level's scripts at $3C898.
## Sheet is sprites/level2/enemy-l1-*.png.

const FIGHT: Array[String] = [
	"001c012a00520fff00160300020202000800001e04009529e0ff0000",
	"002201100030000000160501020203000004638003000117e002e6008817e1000000",
	"00240002002e000000160502020204000005638003000117e034e60088170117e1000000",
	"00220110003e00000016050202020300000463800300011fe00be600881fe1000000",
	"00240002003e00000016050002020400000563800300011fe030e600881f011fe1000000",
	"002200ea005600000016050102020300000463800300012be015e600752be1000000",
	"00240002005600000016050202020400000563800300012be037e600752b012be1000000",
	"00220110006e000000160502020203000004638003000137e016e6008837e1000000",
	"00240002006e000000160500020204000005638003000137e02fe60088370137e1000000",
	"002201100080000000160501020203000004638003000140e009e6008540e1000000",
	"002400020080000000160502020204000005638003000140e031e60088400140e1000000",
]

const DEATH: Array[String] = [
	"00380002000000000016040002020100000f038008000100e003e4000408e6007426e012e6007b30e012e600902be012e6000100e1000000",
	"00380002000000000016040002020100000f038008000100e005e4000408e6009f2ce012e600a222e012e600871ee012e6000100e1000000",
	"00380002000000000016040002020100000f038008000100e007e4000408e6007e25e012e6008727e012e6008f25e012e6000100e1000000",
	"00380002000000000016040002020100000f038008000100e009e4000408e600a728e012e600a21de012e6008516e012e6000100e1000000",
	"00380002000000000016040002020100000f038008000100e00be4000408e6008736e012e600a037e012e600863fe012e6000100e1000000",
	"00380002000000000016040002020100000f038008000100e00ce4000408e6008845e012e6009918e012e6009722e012e6000100e1000000",
	"00380002000000000016040002020100000f038008000100e00de4000408e600732ce012e600852ee012e6009b27e012e6000100e1000000",
	"00380002000000000016040002020100000f038008000100e00ee4000408e600a92ee012e6009a1ee012e6009117e012e6000100e1000000",
	"00380002000000000016040002020100000f038008000100e002e4000408e6007e2be012e6008e30e012e6009830e012e6000100e1000000",
	"00380002000000000016040002020100000f038008000100e004e4000408e600a232e012e6008f1ee012e6008b11e012e6000100e1000000",
	"00380002000000000016040002020100000f038008000100e006e4000408e6009436e012e6008e3ce012e6009241e012e6000100e1000000",
	"00000002000000000016040002020100000f038008000100e008e4000408e6008a19e012e600983ce012e600a737e012e6000100e1000000",
]

const TIMEOUT: Array[String] = [
	"002a012a00520fff00160300020202000800001404009529e001e900ff80e008e900ff80e006eb000000",
	"001a000000000000001603000202040020000003040000000000",
	"001a000000000000001603010202050020000003040000000000",
	"001a000000000000001603020202040020000003040000000000",
	"001a000000000000001603000202050020000003040000000000",
	"001a000000000000001603010202040020000003040000000000",
	"001a000000000000001603020202050020000003040000000000",
	"001a000000000000001603000202040020000003040000000000",
	"001a000000000000001603010202050020000003040000000000",
	"001a000000000000001603020202040020000003040000000000",
	"001a000000000000001603020202050020000003040000000000",
	"0000000000000000001603020202040020000003040000000000",
]

const SCREEN_DX := 52
## Same stop as Sea of Karnaugh: the 256-wide column picture lands at x 67.
const BODY_X := 67

var _eye_body: StaticBody2D
var _eye_shape: CollisionShape2D
var _dying := false
var _death_loaded := false
var _explosion_seen := false


func _ready() -> void:
	sprite_folder = "res://sprites/level2"
	enemy_prefix = "enemy-l1"
	fight_rows = FIGHT
	death_rows = DEATH
	timeout_rows = TIMEOUT
	screen_dx = SCREEN_DX
	_bind_eye()
	super._ready()
	_add_backdrop()
	_add_station()


func _add_backdrop() -> void:
	# Rear playfield, loader level 1. COLOR00-03 are $0027 $0000 $0005 $0016.
	var sprite := _still("res://sprites/level2/vanguard-back.png", "Backdrop")
	if sprite == null:
		return
	sprite.z_index = 0
	sprite.position = Vector2.ZERO


func _add_station() -> void:
	# $737E0 column picture at level offset $A988. Three planes, colors
	# COLOR08-15 for this level ($7BB86 + 16). Index 0 stays clear so the
	# diamond shows through the ring.
	var sprite := _still("res://sprites/level2/vanguard-station.png", "Station")
	if sprite == null:
		return
	sprite.z_index = 1
	sprite.position = Vector2(BODY_X, 0)


func _still(path: String, node_name: String) -> Sprite2D:
	var image := Image.new()
	var err := image.load_png_from_buffer(FileAccess.get_file_as_bytes(path))
	if err != OK:
		push_error("missing %s (%d)" % [path, err])
		return null
	var sprite := Sprite2D.new()
	sprite.name = node_name
	sprite.centered = false
	sprite.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	sprite.texture = ImageTexture.create_from_image(image)
	add_child(sprite)
	return sprite


func _sync() -> void:
	super._sync()
	if end_script == 2:
		for alien in _aliens:
			if alien.sprite() == 4 and alien.x() != 0:
				_explosion_seen = true
	_track_eye()


func _check_fight_finished() -> void:
	# The core holds on pause $FF, and the shots loop, so script 1 does not
	# end by itself. The level finishes when the death explosions clear.
	if _fight_done or end_script != 2 or not _explosion_seen:
		return
	for alien in _aliens:
		if alien.x() != 0:
			return
	_fight_done = true
	var station := get_node_or_null("Station")
	if station != null:
		station.visible = false
	if _eye_shape != null:
		_eye_shape.disabled = true
	fight_finished.emit()


func _bind_eye() -> void:
	var body := EyeHit.new()
	body.name = "EyeHit"
	body.collision_layer = 2
	body.collision_mask = 0
	var shape := CollisionShape2D.new()
	var rect := RectangleShape2D.new()
	rect.size = Vector2(32, 24)
	shape.shape = rect
	shape.position = Vector2(16, 12)
	shape.disabled = true
	body.add_child(shape)
	add_child(body)
	_eye_body = body
	_eye_shape = shape


func _track_eye() -> void:
	if _eye_body == null or _eye_shape == null:
		return
	var core: Object = _find_core()
	if core == null or end_script != 1 or _dying or _death_loaded or _fight_done:
		_eye_shape.disabled = true
		return
	_eye_body.position = Vector2(core.x() - screen_dx, core.y())
	_eye_shape.disabled = false


func _find_core() -> Object:
	for alien in _aliens:
		if alien.sprite() == 3 and alien.x() != 0:
			return alien
	return null


func damage_eye() -> void:
	if _dying or _fight_done or _death_loaded or end_script != 1:
		return
	var core: Object = _find_core()
	if core == null:
		return
	var left := int(core.hits())
	if left & 0x80:
		return
	left = (left - 1) & 0xFF
	core.hits_set(left)
	if left != 0:
		return
	_dying = true
	_death_loaded = true
	if _eye_shape != null:
		_eye_shape.set_deferred("disabled", true)
	end_script = 2
	_load_script(2)


class EyeHit extends StaticBody2D:
	func hit() -> void:
		var boss := get_parent()
		if boss != null and boss.has_method("damage_eye"):
			boss.damage_eye()
