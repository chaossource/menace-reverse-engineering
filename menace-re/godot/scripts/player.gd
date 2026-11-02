extends CharacterBody2D
## Player ship. Movement stays as Samuel played it.
## Shooting matches $733F6 / initmissile $73596. The gap is 3/50 s.
## TURBO OFF, the default, is one shot per press. TURBO ON repeats
## shoot() on that timer only while fire is held. The flag is
## menace_turbo on the root. Pause, the death fade, and a dead ship
## skip the call.
## Contact with an alien uses the port's clxdat clock in check.collision:
## ship.count starts at $FFFF and shifts right 5 while the bodies overlap.
## When bit 4 is clear, ship.energy drops by 2 ($74AE6 bar, max 128).
## Overlap is the current frame's opaque pixels, not the empty part of
## the 32x24 bob. Resident check.collision (file 0x334, CLXDAT & $46)
## subtracts 2 from ship energy and does not touch hits.num. The shot
## test kill.alien (file 0x194C) is the path that decrements that byte.
## Landscape is the other hit. $72E74 masks CLXDAT with $46 and $72EB8
## keeps bits 1 and 2. That path does not read difficulty. The shift is
## (level >> 1) + 5, or 8 while the guardian is alive ($72EC8 moveq #3
## then addq #5). Carry clear spends 2 and reloads ship.count with $FFFF.
## On Sea of Karnaugh and Vanguard the shift is 5: three ticks do nothing
## and the fourth spends 2. Only opaque playfield pixels count, so the
## open middle (index 0) does not. A dead guardian (end script 2) returns
## the way $72EA4 does when last.path is 3.
## Energy 0 kills the ship. Controls stop and frames 00-08 play.
## The last frame is the outline. It stays up, fades, then the section
## restarts. $72FAA branches to the destroyed screen at $75138. That
## screen does not resume at the crash. Fire sets $1A1 at $7500C, $72C38
## enters $74C9A, and $74BCE recopies the init block: top-left ($70, $54),
## map pointer $0003B060, fine scroll $0F. $74C20 refills shield 128.
## Retail never flashes the ship for low energy. decrease.energy only
## shortens the panel bar. The colours+74 outline ($000f / $000c) is the
## force field in moveship. The port paints that outline blue and leaves
## the white and red hull. While this ship is alive and energy is at or
## under a quarter of the bar (32), the sprite pulses. Above 32, and when
## the ship dies, scale and modulate return to rest. Position is not moved
## by the pulse. The section restart is what places the new ship.

const SPEED = 150.0
const BULLET_SCENE = preload("res://scenes/bullet.tscn")
const PodScript = preload("res://scripts/weapon_pod.gd")
const ShipFrames = preload("res://scripts/ship_weapon.gd")
const SHIELD_MAX := 128
## Quarter of the bar. int(SHIELD_MAX / 4) is 32. Pulse only at or under this.
const LOW_SHIELD := 32
const LOW_PULSE_HZ := 4.0
const LOW_PULSE_SCALE := 0.08
const LOW_PULSE_FLASH := 0.85
const LOW_PULSE_HOT := Color(1.0, 0.28, 0.22)
## COLOR18. $000F is Amiga (0, 0, 15). $000C is (0, 0, 12), 12/15.
const FIELD_HI: Color = Color(0.0, 0.0, 1.0, 1.0)
const FIELD_LO: Color = Color(0.0, 0.0, 12.0 / 15.0, 1.0)
const CONTACT_STEP := 1.0 / 50.0
## moveship steps the outrider aim at 50 Hz. The template word at $46 is 3.
const MULT_STEP: float = 1.0 / 50.0
## $773E0. Index is mult.number - 1. Upper orb, then the lower pair at $773EA.
const MULT1_DX: Array[int] = [5, 5, 0, -5, -5]
const MULT1_DY: Array[int] = [0, -5, -5, -5, 0]
const MULT2_DX: Array[int] = [5, 5, 0, -5, -5]
const MULT2_DY: Array[int] = [0, 5, 5, 5, 0]
const EXPLODE_STEP := 4.0 / 50.0
## The outline is already on screen when this starts. It then fades out.
const FADE_SECS := 3.0
## Init table $77240, copied by $74BCE. Words $26 and $28. Top-left of the hull.
const SECTION_X := 112
const SECTION_Y := 84
const TURBO_META := "menace_turbo"
## $7314C tests $1A5(a5) and jsr $503A8. The low byte is negative, so
## $51230 branches to $51344. That masks $7F and reads a 10-byte row
## of the table at $512D6. $511E2 fills the table from the headers at
## $58CEA (length long, rate word, then signed PCM). The period word
## is $369E99 divided by the rate. $50920 is zero, so that period is
## what Paula plays. One collect uses the same id on channels 0-3.
## The wav rate is that period. Pod types follow the collect order.
const VOICE_FILES: Array[String] = [
	"res://sfx/voice-80-score.wav",
	"res://sfx/voice-81-cannon.wav",
	"res://sfx/voice-84-laser.wav",
	"res://sfx/voice-87-speed.wav",
	"res://sfx/voice-85-outrider.wav",
	"res://sfx/voice-83-field.wav",
	"res://sfx/voice-86-shield.wav",
]
const EXPLODE: Array[Texture2D] = [
	preload("res://sprites/level1/enemy-l0-explosion-00.png"),
	preload("res://sprites/level1/enemy-l0-explosion-01.png"),
	preload("res://sprites/level1/enemy-l0-explosion-02.png"),
	preload("res://sprites/level1/enemy-l0-explosion-03.png"),
	preload("res://sprites/level1/enemy-l0-explosion-04.png"),
	preload("res://sprites/level1/enemy-l0-explosion-05.png"),
	preload("res://sprites/level1/enemy-l0-explosion-06.png"),
	preload("res://sprites/level1/enemy-l0-explosion-07.png"),
	preload("res://sprites/level1/enemy-l0-explosion-08.png"),
]

@onready var shoot_timer = $ShootTimer
@onready var sprite = $Sprite2D
@onready var body_shape: CollisionShape2D = $CollisionShape2D

var can_shoot = true
var energy: int = SHIELD_MAX
var ship_count: int = 0xFFFF
var contact_acc: float = 0.0
var ship_dead: bool = false
var explode_i: int = 0
var explode_acc: float = 0.0
var fading: bool = false
var fade_acc: float = 0.0
var _low_phase: float = 0.0
var _low_on: bool = false
var pod = null
## $44(a5) starts at 1. $46(a5) starts at 3. Holding left or right walks 1..5.
var mult_number: int = 1
var mult_delay: int = 3
var mult_acc: float = 0.0
var orb_top: Sprite2D
var orb_bot: Sprite2D
var orb_top_frames: Array[Texture2D] = []
var orb_bot_frames: Array[Texture2D] = []
## $5E(a5). moveship subtracts one per vertical blank. 768 is about 15 s at 50 Hz.
var field_count: int = 0
var field_acc: float = 0.0
## Instance ids already added to the collision-exception list.
var _shot_box_ignored: Dictionary = {}
var _terrain_layer: TileMapLayer = null
var _terrain_pixels: Image = null
## Sprite instance id to the untouched texture, the outline copy, and the blue used.
var _field_base: Dictionary = {}
var _field_made: Dictionary = {}
var _field_color: Dictionary = {}


func _ready() -> void:
	collision_layer = 1
	collision_mask = 2
	z_index = 30
	shoot_timer.wait_time = 3.0 / 50.0
	shoot_timer.one_shot = true
	pod = PodScript.new()
	pod.name = "WeaponPod"
	add_child(pod)
	_make_orbs()
	_push_shield()


func _physics_process(delta: float) -> void:
	if ship_dead:
		_rest_low_shield()
		_explosion(delta)
		if ship_dead:
			return
	_sync_alien_bodies()
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	var speed_scale := 1.0
	if pod != null and pod.ship_speed > 0:
		speed_scale = float(pod.ship_speed) / 2.0
	velocity = direction * SPEED * speed_scale
	move_and_slide()
	# Keep the 32x44 ship inside the 320x192 playfield, above the HUD.
	position.x = clamp(position.x, 16, 304)
	position.y = clamp(position.y, 22, 170)
	# Aim updates before the shot, the same order as moveship then check.firekey.
	_tick_mult(delta)
	_sync_orbs()
	# OFF is one press. ON repeats on the 3/50 s timer while fire is held.
	if can_shoot and _shot_requested():
		shoot()
	_contact_clock(delta)
	if ship_dead:
		return
	_tick_field(delta)
	if field_count > 0:
		_rest_low_shield()
		_show_field()
	else:
		_low_shield_pulse(delta)


func _shot_requested() -> bool:
	if ship_dead or fading:
		return false
	var tree := get_tree()
	if tree == null or tree.paused:
		return false
	if _turbo_on():
		return Input.is_action_pressed("shoot")
	return Input.is_action_just_pressed("shoot")


func _turbo_on() -> bool:
	var tree := get_tree()
	if tree == null:
		return false
	var root := tree.root
	if root == null or not root.has_meta(TURBO_META):
		return false
	return bool(root.get_meta(TURBO_META))


func shoot() -> void:
	# The node is the ship center. Retail xpos/ypos are the top-left.
	# The missile blit origin is that corner plus (58, 24). $73596 always fires it.
	var top_left := position - Vector2(16, 22)
	_launch(0, top_left + Vector2(58, 24), 0)
	if pod != null and pod.canons_on and pod.canon_energy != 0:
		_launch(1, top_left + Vector2(53, 30), 0)
		pod.canon_energy -= 2
		if pod.canon_energy < 0:
			pod.canon_energy = 0
	if pod != null and pod.lasers_on and pod.laser_energy != 0:
		_launch(2, top_left + Vector2(42, 14), 0)
		pod.laser_energy -= 2
		if pod.laser_energy < 0:
			pod.laser_energy = 0
	# $735E2 and $7361A each spend 2, then decrease.energy redraws that bar.
	_push_weapons()
	# init.mult1 $73522 and init.mult2 $7355C. The picture is mult at $77F0E,
	# not the cannon at $77B86 and not the laser at $77B66.
	_sync_orbs()
	var aim: int = mult_number - 1
	if aim < 0:
		aim = 0
	if aim > 4:
		aim = 4
	if pod != null and pod.mult1:
		_launch(3, top_left + Vector2(38, 6), MULT1_DY[aim], MULT1_DX[aim], 186)
	if pod != null and pod.mult2:
		_launch(3, top_left + Vector2(38, 40), MULT2_DY[aim], MULT2_DX[aim], 184)
	var blast = get_node_or_null("ShootSound")
	if blast == null:
		blast = AudioStreamPlayer.new()
		blast.name = "ShootSound"
		blast.stream = preload("res://audio/shoot.ogg")
		add_child(blast)
	blast.bus = "Sfx"
	blast.play()
	can_shoot = false
	shoot_timer.start()


func _on_shoot_timer_timeout() -> void:
	can_shoot = true


func _launch(kind: int, at: Vector2, drift_y: int, drift_x: int = 5, y_limit: int = 186) -> void:
	var bullet = BULLET_SCENE.instantiate()
	bullet.kind = kind
	bullet.drift_y = drift_y
	bullet.drift_x = drift_x
	bullet.y_limit = y_limit
	bullet.position = at
	get_parent().add_child(bullet)


## Rear hardware sprite is the left 16 columns of the 32x44 ship.
## Top 11 lines and bottom 11 lines are the outrider pair. Frame 0 is empty.
func _make_orbs() -> void:
	if sprite == null:
		return
	for i in range(1, 6):
		orb_top_frames.append(_load_orb("res://sprites/ship/orb-top-%d.png" % i))
		orb_bot_frames.append(_load_orb("res://sprites/ship/orb-bottom-%d.png" % i))
	orb_top = Sprite2D.new()
	orb_top.name = "OrbTop"
	orb_top.centered = false
	orb_top.visible = false
	orb_top.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	orb_top.position = Vector2(-16, -22)
	sprite.add_child(orb_top)
	orb_bot = Sprite2D.new()
	orb_bot.name = "OrbBottom"
	orb_bot.centered = false
	orb_bot.visible = false
	orb_bot.texture_filter = CanvasItem.TEXTURE_FILTER_NEAREST
	orb_bot.position = Vector2(-16, 11)
	sprite.add_child(orb_bot)


func _load_orb(path: String) -> Texture2D:
	var image: Image = Image.new()
	var err: int = image.load_png_from_buffer(FileAccess.get_file_as_bytes(path))
	if err != OK:
		push_error("missing orb %s (%d)" % [path, err])
		return ImageTexture.create_from_image(Image.create(1, 1, false, Image.FORMAT_RGBA8))
	return ImageTexture.create_from_image(image)


## $73314 counts mult.delay down. No horizontal press reloads 4 first, so the
## frame stays put. Right adds 1, left subtracts 1, and the word stays in 1..5.
func _tick_mult(delta: float) -> void:
	var holding: int = 0
	if Input.is_action_pressed("move_right"):
		holding = 1
	elif Input.is_action_pressed("move_left"):
		holding = -1
	mult_acc += delta
	if mult_acc > MULT_STEP * 5.0:
		mult_acc = MULT_STEP * 5.0
	while mult_acc >= MULT_STEP:
		mult_acc -= MULT_STEP
		if holding == 0:
			mult_delay = 4
		mult_delay -= 1
		if mult_delay == 0:
			mult_delay = 4
			mult_number += holding
			if mult_number <= 0:
				mult_number = 1
			elif mult_number >= 6:
				mult_number = 5


## draw.outrider $73366. mult1 off forces frame 0. mult2 off draws the zero frame on the bottom.
func _sync_orbs() -> void:
	var show_top: bool = pod != null and pod.mult1 and not ship_dead
	var show_bot: bool = show_top and pod.mult2
	var frame: int = mult_number - 1
	if frame < 0:
		frame = 0
	if frame > 4:
		frame = 4
	if orb_top != null:
		orb_top.visible = show_top
		orb_top.position = Vector2(-16, -22)
		if frame < orb_top_frames.size() and orb_top_frames[frame] != null:
			orb_top.texture = orb_top_frames[frame]
	if orb_bot != null:
		orb_bot.visible = show_bot
		orb_bot.position = Vector2(-16, 11)
		if frame < orb_bot_frames.size() and orb_bot_frames[frame] != null:
			orb_bot.texture = orb_bot_frames[frame]


## Flying into the icon. $72FE4 applies bonus.num and clears bonus.mode.
func collect_bonus() -> void:
	if ship_dead or pod == null or pod.consumed:
		return
	var taken: int = pod.pod_type
	pod.collect()
	_speak_power(taken)
	_push_weapons()
	if taken == 0:
		var hud := _hud()
		if hud != null and hud.has_method("set_score"):
			hud.set_score(int(hud.score) + 1000)
	elif taken == 1 or taken == 2:
		if not pod.refilled and sprite != null:
			ShipFrames.apply(sprite, pod.weapon_level, "level")
	elif taken == 5:
		field_count = 768
		field_acc = 0.0
	elif taken == 6:
		energy = SHIELD_MAX
		_push_shield()


## Id $80 score, $81 cannon, $84 laser, $87 speed, $85 outrider,
## $83 force field, $86 shield. The wav rate is the table period.
func _speak_power(kind: int) -> void:
	if kind < 0 or kind >= VOICE_FILES.size():
		return
	var stream: AudioStreamWAV = _load_voice(VOICE_FILES[kind])
	if stream.data.is_empty():
		return
	var voice: AudioStreamPlayer = get_node_or_null("PowerVoice") as AudioStreamPlayer
	if voice == null:
		voice = AudioStreamPlayer.new()
		voice.name = "PowerVoice"
		add_child(voice)
	voice.bus = "Sfx"
	voice.stream = stream
	voice.play()


func _load_voice(path: String) -> AudioStreamWAV:
	var stream: AudioStreamWAV = AudioStreamWAV.new()
	stream.stereo = false
	stream.format = AudioStreamWAV.FORMAT_16_BITS
	stream.loop_mode = AudioStreamWAV.LOOP_DISABLED
	var bytes: PackedByteArray = FileAccess.get_file_as_bytes(path)
	var rate: int = 0
	var pcm: PackedByteArray = PackedByteArray()
	var i: int = 12
	while i + 8 <= bytes.size():
		var tag: String = bytes.slice(i, i + 4).get_string_from_ascii()
		var size: int = bytes.decode_u32(i + 4)
		if tag == "fmt ":
			rate = bytes.decode_u32(i + 12)
			stream.stereo = bytes.decode_u16(i + 10) == 2
			if bytes.decode_u16(i + 22) == 8:
				stream.format = AudioStreamWAV.FORMAT_8_BITS
			else:
				stream.format = AudioStreamWAV.FORMAT_16_BITS
		elif tag == "data":
			pcm = bytes.slice(i + 8, i + 8 + size)
			break
		var step: int = 8 + size
		if (size & 1) != 0:
			step += 1
		i += step
	stream.mix_rate = rate
	stream.data = pcm
	return stream


func hit() -> void:
	if ship_dead:
		return
	if field_count > 0:
		return
	energy -= 2
	ship_count = 0xFFFF
	if energy <= 0:
		energy = 0
		_push_shield()
		_rest_low_shield()
		_die()
		return
	_push_shield()


func _die() -> void:
	ship_dead = true
	fading = false
	fade_acc = 0.0
	field_count = 0
	_drop_outline()
	velocity = Vector2.ZERO
	can_shoot = false
	collision_layer = 0
	collision_mask = 0
	if body_shape != null:
		body_shape.disabled = true
	explode_i = 0
	explode_acc = 0.0
	if orb_top != null:
		orb_top.visible = false
	if orb_bot != null:
		orb_bot.visible = false
	if sprite != null and EXPLODE.size() > 0:
		sprite.texture = EXPLODE[0]
		sprite.centered = true
		sprite.visible = true
		sprite.modulate = Color.WHITE
		sprite.scale = Vector2.ONE


func _explosion(delta: float) -> void:
	velocity = Vector2.ZERO
	if fading:
		_fade_outline(delta)
		return
	explode_acc += delta
	if explode_acc < EXPLODE_STEP:
		return
	explode_acc -= EXPLODE_STEP
	if explode_i + 1 >= EXPLODE.size():
		if sprite != null and EXPLODE.size() > 0:
			sprite.texture = EXPLODE[EXPLODE.size() - 1]
			sprite.modulate.a = 1.0
		fading = true
		fade_acc = 0.0
		return
	explode_i += 1
	if sprite != null:
		sprite.texture = EXPLODE[explode_i]


func _fade_outline(delta: float) -> void:
	fade_acc += delta
	var t := fade_acc / FADE_SECS
	if t >= 1.0:
		_respawn()
		return
	if sprite != null:
		sprite.modulate.a = 1.0 - t


## $74C20 writes shield 128 and ship.count $FFFF. The hull top-left is the
## init-table pair, and this node is the center of the 32x44 ship.
func _respawn() -> void:
	ship_dead = false
	fading = false
	fade_acc = 0.0
	explode_i = 0
	explode_acc = 0.0
	energy = SHIELD_MAX
	ship_count = 0xFFFF
	contact_acc = 0.0
	can_shoot = true
	velocity = Vector2.ZERO
	collision_layer = 1
	collision_mask = 2
	field_count = 0
	field_acc = 0.0
	_drop_outline()
	_reset_loadout()
	if body_shape != null:
		body_shape.disabled = false
	if sprite != null:
		sprite.texture = ShipFrames.texture_for(0, "level")
		sprite.scale = Vector2.ONE
		sprite.modulate = Color.WHITE
		sprite.centered = true
		sprite.visible = true
	position = Vector2(SECTION_X + 16, SECTION_Y + 22)
	_push_shield()
	var host := get_parent()
	if host != null and host.has_method("restart_section"):
		host.restart_section()


## $1A0 is already clear, so the weapon-restore overlay is skipped.
## The init copy puts the loadout back at the section start.
func _reset_loadout() -> void:
	if pod == null:
		return
	pod.weapon_level = 0
	pod.canons_on = false
	pod.lasers_on = false
	pod.score = 0
	pod.pose = 0
	pod.pod_type = 0
	pod.bonus_count = 5
	pod.consumed = false
	pod.refilled = false
	pod.ship_speed = 2
	pod.canon_energy = 0
	pod.laser_energy = 0
	pod.mult1 = false
	pod.mult2 = false
	mult_number = 1
	mult_delay = 3
	mult_acc = 0.0
	_sync_orbs()
	pod.field_count = 0
	pod.shield_full = false


func _contact_clock(delta: float) -> void:
	contact_acc += delta
	if contact_acc > CONTACT_STEP * 5.0:
		contact_acc = CONTACT_STEP * 5.0
	var alien: bool = _touching_alien()
	var ground: bool = _touching_landscape()
	while contact_acc >= CONTACT_STEP and not ship_dead:
		contact_acc -= CONTACT_STEP
		if ground:
			_landscape_tick()
		elif alien:
			_shield_tick()


## $72EB2 reads the level, shifts it right once, then adds 5. A live
## guardian replaces that base with 3 before the add, so the shift is 8.
## -1 matches the $72EA4 return: guardian already dead, no spend.
func _landscape_shift() -> int:
	var host: Node = get_parent()
	if host != null and bool(host.get("boss_started")):
		if _guardian_dead(host):
			return -1
		return 8
	return (_loader_level() >> 1) + 5


func _loader_level() -> int:
	var host: Node = get_parent()
	if host == null:
		return 0
	var found: Variant = host.get("loader")
	if typeof(found) != TYPE_INT and typeof(found) != TYPE_FLOAT:
		return 0
	return int(found)


func _guardian_dead(host: Node) -> bool:
	for child in host.get_children():
		if not child.has_signal("fight_finished"):
			continue
		var script_n: Variant = child.get("end_script")
		if typeof(script_n) != TYPE_INT and typeof(script_n) != TYPE_FLOAT:
			continue
		if int(script_n) >= 2:
			return true
	return false


## lsr.w by the landscape shift, then bcc. The tested bit is the last
## bit shifted out. Set: store the shifted count. Clear: spend 2.
func _landscape_tick() -> void:
	if ship_dead or field_count > 0:
		return
	var shift: int = _landscape_shift()
	if shift < 1:
		return
	var count: int = ship_count & 0xFFFF
	var bit: int = (count >> (shift - 1)) & 1
	if bit != 0:
		var shifted: int = count
		var left: int = shift
		while left > 0:
			shifted = shifted >> 1
			left -= 1
		ship_count = shifted & 0xFFFF
		return
	hit()


func _touching_landscape() -> bool:
	if ship_dead:
		return false
	var layer: TileMapLayer = _landscape_layer()
	if layer == null:
		return false
	var image: Image = _read_terrain(layer)
	var origin: Vector2 = layer.to_local(global_position - Vector2(16, 22))
	var x0: int = int(floor(origin.x))
	var y0: int = int(floor(origin.y))
	var x1: int = x0 + 31
	var y1: int = y0 + 43
	var c0: int = _floor_tile(x0)
	var c1: int = _floor_tile(x1)
	var r0: int = _floor_tile(y0)
	var r1: int = _floor_tile(y1)
	for row in range(r0, r1 + 1):
		for col in range(c0, c1 + 1):
			if _cell_hits(layer, image, col, row, x0, y0, x1, y1):
				return true
	return false


func _cell_hits(layer: TileMapLayer, image: Image, col: int, row: int, x0: int, y0: int, x1: int, y1: int) -> bool:
	var atlas: Vector2i = layer.get_cell_atlas_coords(Vector2i(col, row))
	if atlas.x < 0 or atlas == Vector2i.ZERO:
		return false
	if image == null:
		return true
	var tile_x: int = col * 16
	var tile_y: int = row * 16
	var left: int = max(x0, tile_x)
	var right: int = min(x1, tile_x + 15)
	var top: int = max(y0, tile_y)
	var bottom: int = min(y1, tile_y + 15)
	for py in range(top, bottom + 1):
		for px in range(left, right + 1):
			var ix: int = atlas.x * 16 + (px - tile_x)
			var iy: int = atlas.y * 16 + (py - tile_y)
			if ix < 0 or iy < 0 or ix >= image.get_width() or iy >= image.get_height():
				continue
			if image.get_pixel(ix, iy).a > 0.0:
				return true
	return false


func _floor_tile(v: int) -> int:
	if v >= 0:
		return int(v / 16)
	return int((v - 15) / 16)


func _landscape_layer() -> TileMapLayer:
	if _terrain_layer != null and is_instance_valid(_terrain_layer):
		return _terrain_layer
	_terrain_layer = _find_tile_layer(get_parent())
	_terrain_pixels = null
	return _terrain_layer


func _find_tile_layer(node: Node) -> TileMapLayer:
	if node == null:
		return null
	if node is TileMapLayer:
		return node
	for child in node.get_children():
		var found: TileMapLayer = _find_tile_layer(child)
		if found != null:
			return found
	return null


func _read_terrain(layer: TileMapLayer) -> Image:
	if _terrain_pixels != null:
		return _terrain_pixels
	if layer.tile_set == null or layer.tile_set.get_source_count() == 0:
		return null
	var source_id: int = layer.tile_set.get_source_id(0)
	var source: TileSetAtlasSource = layer.tile_set.get_source(source_id) as TileSetAtlasSource
	if source == null or source.texture == null:
		return null
	_terrain_pixels = source.texture.get_image()
	return _terrain_pixels


## lsr.w #5 then bcc: bit 4 clear spends 2 shield. Bit 4 set only shifts the counter.
func _shield_tick() -> void:
	if ship_dead or field_count > 0:
		return
	var bit := (ship_count >> 4) & 1
	if bit != 0:
		ship_count = (ship_count >> 5) & 0xFFFF
		return
	hit()


## Shield contact. The 32x24 physics box is the shot target, so a slide
## or shape query against it is not a crash. Opaque pixels are.
func _touching_alien() -> bool:
	return _sprite_overlap()


## The shot box is updated here so a bullet still meets the alien where
## it was drawn. The hull is excluded from that body and can sit on the
## visible pixels. check.collision never pushes the ship back out.
func _sync_alien_bodies() -> void:
	var tree := get_tree()
	if tree == null:
		return
	for node in tree.get_nodes_in_group("karnaugh_wave"):
		if not node is CollisionObject2D:
			continue
		if not _is_alien(node):
			continue
		var body: CollisionObject2D = node as CollisionObject2D
		if body == null:
			continue
		_ignore_shot_box(body)
		if not node.visible:
			continue
		PhysicsServer2D.body_set_state(body.get_rid(), PhysicsServer2D.BODY_STATE_TRANSFORM, body.global_transform)


func _ignore_shot_box(body: CollisionObject2D) -> void:
	var id: int = body.get_instance_id()
	if _shot_box_ignored.has(id):
		return
	add_collision_exception_with(body)
	_shot_box_ignored[id] = true


## Current frame only. A clear texel in the 32x24 cell is not a hit,
## even when it sits inside the shot box.
func _sprite_overlap() -> bool:
	var mine: Rect2 = _body_rect(body_shape)
	if mine.size == Vector2.ZERO:
		return false
	var tree: SceneTree = get_tree()
	if tree == null:
		return false
	for node in tree.get_nodes_in_group("karnaugh_wave"):
		if not _is_alien(node):
			continue
		if not node.visible:
			continue
		var shape: CollisionShape2D = node.get_node_or_null("CollisionShape2D") as CollisionShape2D
		if shape == null or shape.disabled:
			continue
		if not node.has_method("overlaps_rect"):
			continue
		if bool(node.call("overlaps_rect", mine)):
			return true
	return false


func _body_rect(shape: CollisionShape2D) -> Rect2:
	if shape == null or shape.shape == null:
		return Rect2()
	var rect := shape.shape as RectangleShape2D
	if rect == null:
		return Rect2()
	var size := rect.size
	return Rect2(shape.global_position - size * 0.5, size)


func _is_alien(body: Object) -> bool:
	if body == null or body == self:
		return false
	if not body.has_method("hit"):
		return false
	return "slot" in body


## Alive and at or under LOW_SHIELD: breathe the sprite about its center.
## The scene sprite is centered, so scale stays on the texture center.
func _low_shield_pulse(delta: float) -> void:
	if energy > LOW_SHIELD:
		_rest_low_shield()
		return
	if sprite == null:
		return
	_low_on = true
	_low_phase = fmod(_low_phase + delta * LOW_PULSE_HZ * TAU, TAU)
	var wave := 0.5 - 0.5 * cos(_low_phase)
	var s := 1.0 + LOW_PULSE_SCALE * wave
	sprite.scale = Vector2(s, s)
	sprite.modulate = Color.WHITE.lerp(LOW_PULSE_HOT, LOW_PULSE_FLASH * wave)


## One restore. Later calls leave scale and modulate alone, so a death
## fade can own the sprite after the pulse has stopped.
func _rest_low_shield() -> void:
	_low_phase = 0.0
	if not _low_on:
		return
	_low_on = false
	if sprite == null:
		return
	sprite.scale = Vector2.ONE
	sprite.modulate = Color.WHITE


func _tick_field(delta: float) -> void:
	if field_count <= 0:
		return
	field_acc += delta
	if field_acc > CONTACT_STEP * 5.0:
		field_acc = CONTACT_STEP * 5.0
	while field_acc >= CONTACT_STEP and field_count > 0:
		field_acc -= CONTACT_STEP
		field_count -= 1
	if field_count == 0:
		if sprite != null:
			sprite.modulate = Color.WHITE
			sprite.scale = Vector2.ONE
		_restore_outline()


## $731B4 writes $000F to colours+74. $731D4 writes $000C while bit 1 of the
## low byte is set. That word is COLOR18, the black outline, not a tint of
## every pixel. Outrider orbs use the same hardware sprite colour. The orb
## sprites sit on the ship, and that same outline pass paints them.
func _show_field() -> void:
	if sprite != null:
		sprite.scale = Vector2.ONE
		sprite.modulate = Color.WHITE
	var blue: Color = FIELD_HI
	if (field_count & 2) != 0:
		blue = FIELD_LO
	var targets: Array[Sprite2D] = _field_targets()
	for target in targets:
		if target != sprite:
			target.modulate = Color.WHITE
		_apply_outline(target, blue)


func _field_targets() -> Array[Sprite2D]:
	var found: Array[Sprite2D] = []
	if sprite != null:
		found.append(sprite)
	_collect_field_orbs(self, found)
	return found


func _collect_field_orbs(node: Node, found: Array[Sprite2D]) -> void:
	for child in node.get_children():
		if child == pod:
			continue
		if _is_orb_sprite(child):
			found.append(child as Sprite2D)
		if child is Sprite2D and child != sprite:
			continue
		_collect_field_orbs(child, found)


func _is_orb_sprite(node: Node) -> bool:
	if not (node is Sprite2D) or node == sprite:
		return false
	var here: Node = node
	while here != null and here != self:
		var label: String = String(here.name).to_lower()
		if "orb" in label or "outrider" in label:
			return true
		here = here.get_parent()
	return false


## Opaque black is COLOR18 ($0000). The next hull colour is $0243.
func _is_ship_outline(px: Color) -> bool:
	return px.a > 0.5 and px.r < (1.0 / 255.0) and px.g < (1.0 / 255.0) and px.b < (1.0 / 255.0)


func _same_color(a: Color, b: Color) -> bool:
	return absf(a.r - b.r) < 0.001 and absf(a.g - b.g) < 0.001 and absf(a.b - b.b) < 0.001 and absf(a.a - b.a) < 0.001


func _recolor_outline(source: Image, blue: Color) -> Image:
	var image: Image = source.duplicate() as Image
	if image.get_format() != Image.FORMAT_RGBA8:
		image.convert(Image.FORMAT_RGBA8)
	var width: int = image.get_width()
	var height: int = image.get_height()
	for y in height:
		for x in width:
			var px: Color = image.get_pixel(x, y)
			if _is_ship_outline(px):
				image.set_pixel(x, y, blue)
	return image


func _apply_outline(target: Sprite2D, blue: Color) -> void:
	if target == null or target.texture == null:
		return
	var id: int = target.get_instance_id()
	var made: Texture2D = _field_made.get(id) as Texture2D
	if made == null or target.texture != made:
		_field_base[id] = target.texture
	var base: Texture2D = _field_base.get(id) as Texture2D
	if base == null:
		return
	var same: bool = false
	if _field_color.has(id):
		var painted: Color = _field_color[id]
		same = _same_color(painted, blue)
	if made != null and target.texture == made and same:
		return
	var source: Image = base.get_image()
	if source == null:
		return
	var image: Image = _recolor_outline(source, blue)
	var tex: ImageTexture = ImageTexture.create_from_image(image)
	_field_made[id] = tex
	_field_color[id] = blue
	target.texture = tex


func _restore_outline() -> void:
	for id in _field_base.keys():
		var node: Sprite2D = instance_from_id(int(id)) as Sprite2D
		var base: Texture2D = _field_base[id] as Texture2D
		var made: Texture2D = _field_made.get(id) as Texture2D
		if node != null and base != null and (made == null or node.texture == made):
			node.texture = base
			node.modulate = Color.WHITE
	_drop_outline()


func _drop_outline() -> void:
	_field_base.clear()
	_field_made.clear()
	_field_color.clear()


func _push_shield() -> void:
	var hud := _hud()
	if hud != null and hud.has_method("set_shield"):
		hud.set_shield(energy)
	_push_weapons()


func _push_weapons() -> void:
	var hud := _hud()
	if hud == null or pod == null:
		return
	if hud.has_method("set_canon"):
		hud.set_canon(int(pod.canon_energy))
	if hud.has_method("set_laser"):
		hud.set_laser(int(pod.laser_energy))


func _hud() -> Node:
	var here: Node = get_parent()
	while here != null:
		var found := here.get_node_or_null("Hud")
		if found != null:
			return found
		here = here.get_parent()
	return null
