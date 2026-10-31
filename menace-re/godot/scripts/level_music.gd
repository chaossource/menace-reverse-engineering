extends RefCounted
class_name LevelMusic
## Selects menace.ogg or a Whittaker subsong.
## menace.ogg stays the title track and the level-1 track.
## The file is not deleted, replaced, or stopped from shipping.
##
## Retail jsr $50370 sets D0 to the subsong:
##   title at $74CB6 uses D0 = 1
##   level play at $72C7E, the level card at $7502E, and the
##   destroyed screen at $75148 use D0 = 2
##   the boss fight at $74A9A uses D0 = 0
## The port title and level 1 keep res://music/menace.ogg.
## Later levels use the in-game subsong (D0 = 2).
## A boss uses subsong 0. Subsong 1 remains the retail title.

const TITLE_AND_LEVEL1 := "res://music/menace.ogg"
const SUBSONG := [
	"res://music/menace_sub0.ogg",
	"res://music/menace_sub1.ogg",
	"res://music/menace_sub2.ogg",
]


static func stream_path_for_title() -> String:
	return TITLE_AND_LEVEL1


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
		return TITLE_AND_LEVEL1
	return SUBSONG[2]


static func play_on(player: AudioStreamPlayer, level: int, boss: bool = false) -> void:
	if player == null:
		return
	var path := stream_path(level, boss)
	var next: AudioStream = load(path)
	if next == null:
		return
	if player.stream == next:
		if not player.playing:
			player.play()
		return
	player.stop()
	player.stream = next
	player.play()
