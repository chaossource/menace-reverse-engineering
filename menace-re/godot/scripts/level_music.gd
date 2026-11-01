extends RefCounted
class_name LevelMusic
## Plays the Whittaker arrangement already rendered in the ogg.
## menace.ogg stays on the pause TRACK row.
## The file is not deleted, replaced, or stopped from shipping.
## The title and a new game both start on menace_sub1.ogg, the TRACK label SUB 1.
##
## Retail jsr $50370 is init. D0 picks a 10-byte row at $50B60.
##   title at $74CB6 uses D0 = 1, and skips init when $1A3(a5) is set
##   level play at $72C7E does the same with D0 = 2
##   the level card at $7502E and the destroyed screen at $75148 use D0 = 2
##   the boss fight at $74A9A uses D0 = 0
## The vertical blank at $75BCA calls jsr $5037E, which walks each channel.
## Command $80 steps that channel's order list. A zero word loops to the
## start of the current list. Init is the only full restart.
## The port title and level 1 start on subsong 1 (menace_sub1.ogg).
## Later levels use the in-game subsong (D0 = 2).
## A boss uses subsong 0.

const SUBSONG := [
	"res://music/menace_sub0.ogg",
	"res://music/menace_sub1.ogg",
	"res://music/menace_sub2.ogg",
]
const MusicVolumeScript = preload("res://scripts/music_volume.gd")
const PATH_META := "menace_music_path"

static var _streams: Dictionary = {}


static func stream_path_for_title() -> String:
	return SUBSONG[1]


static func retail_subsong(d0: int) -> String:
	if d0 <= 0:
		return SUBSONG[0]
	if d0 == 1:
		return SUBSONG[1]
	return SUBSONG[2]


static func stream_path(level: int, boss: bool = false) -> String:
	if boss:
		return SUBSONG[0]
	if level <= 1:
		return SUBSONG[1]
	return SUBSONG[2]


static func play_on(player: AudioStreamPlayer, level: int, boss: bool = false) -> void:
	if player == null:
		return
	# Bus only. The stream chosen below is the same song as before.
	MusicVolumeScript.attach(player)
	var path := stream_path(level, boss)
	# Same file already playing: leave the playback position alone.
	# load() is a different object on a cache miss, and comparing those
	# objects used to stop() and play() in the middle of the arrangement.
	if _is_current(player, path):
		_arm_full_file(player.stream)
		player.set_meta(PATH_META, path)
		if not player.playing:
			player.play()
		return
	var next := _load_stream(path)
	if next == null:
		return
	_arm_full_file(next)
	player.stop()
	player.stream = next
	player.set_meta(PATH_META, path)
	player.play()


static func _is_current(player: AudioStreamPlayer, path: String) -> bool:
	if player.stream == null:
		return false
	# The live file wins. A pause-menu pick changes the stream without
	# updating this meta, and a stale meta must not hide that.
	var live := str(player.stream.resource_path)
	if live != "":
		return live == path
	if player.has_meta(PATH_META):
		return str(player.get_meta(PATH_META)) == path
	return false


static func _load_stream(path: String) -> AudioStream:
	if _streams.has(path):
		var cached: AudioStream = _streams[path]
		if cached != null:
			return cached
	var loaded: AudioStream = load(path)
	if loaded != null:
		_streams[path] = loaded
	return loaded


static func _arm_full_file(stream: AudioStream) -> void:
	var ogg := stream as AudioStreamOggVorbis
	if ogg == null:
		return
	# Loop the whole render. loop_offset 0 is the start of the file.
	# bpm and beat_count stay 0 so the engine does not end the song
	# on a beat count. The ogg bytes are not rewritten.
	ogg.loop = true
	ogg.loop_offset = 0.0
	ogg.bpm = 0.0
	ogg.beat_count = 0
