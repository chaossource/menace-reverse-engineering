extends Node
class_name MusicVolume
## Music bus level for the pause options screen.
## set_linear and get_linear are the only controls. There is no key shortcut.
## user://menace-volume.cfg stores volume/music. volume/sfx is left as it is.

const BUS_NAME := "Music"
const CFG_PATH := "user://menace-volume.cfg"
const CFG_SECTION := "volume"
const CFG_KEY := "music"

static var linear: float = 1.0
static var loaded: bool = false


func _ready() -> void:
	_load()
	_apply()


static func get_linear() -> float:
	_load()
	return linear


static func set_linear(v: float) -> void:
	_load()
	var next := v
	if is_nan(next) or is_inf(next):
		next = 1.0
	if next < 0.0:
		next = 0.0
	if next > 1.0:
		next = 1.0
	linear = next
	_apply()
	_save()


static func ensure_bus() -> int:
	var idx := AudioServer.get_bus_index(BUS_NAME)
	if idx >= 0:
		return idx
	AudioServer.add_bus()
	idx = AudioServer.bus_count - 1
	AudioServer.set_bus_name(idx, BUS_NAME)
	AudioServer.set_bus_send(idx, "Master")
	return idx


static func attach(player: AudioStreamPlayer) -> void:
	if player == null:
		return
	_load()
	ensure_bus()
	_apply()
	player.bus = BUS_NAME


static func _load() -> void:
	if loaded:
		return
	loaded = true
	linear = 1.0
	if not FileAccess.file_exists(CFG_PATH):
		return
	var cfg := ConfigFile.new()
	if cfg.load(CFG_PATH) != OK:
		return
	if not cfg.has_section_key(CFG_SECTION, CFG_KEY):
		return
	var raw = cfg.get_value(CFG_SECTION, CFG_KEY)
	if raw is String:
		return
	var gain := float(raw)
	if is_nan(gain) or is_inf(gain):
		return
	if gain < 0.0:
		gain = 0.0
	if gain > 1.0:
		gain = 1.0
	linear = gain


static func _apply() -> void:
	var idx := ensure_bus()
	if linear <= 0.0:
		AudioServer.set_bus_volume_db(idx, -80.0)
	else:
		AudioServer.set_bus_volume_db(idx, linear_to_db(linear))


static func _save() -> void:
	var cfg := ConfigFile.new()
	if FileAccess.file_exists(CFG_PATH):
		var err := cfg.load(CFG_PATH)
		if err != OK:
			push_warning("Music volume left the existing cfg unread")
			return
	cfg.set_value(CFG_SECTION, CFG_KEY, linear)
	cfg.save(CFG_PATH)
