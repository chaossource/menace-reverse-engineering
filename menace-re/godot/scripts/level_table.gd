extends RefCounted
class_name LevelTable
## Scene paths for the six Menace levels. Game level = loader index + 1.
## Loader 0 and loader 4 maps already live in the game project.
## This table only names them. weapon_pod_scene is the in-play upgrade.

const WEAPON_POD_SCENE := "res://scenes/weapon_pod.tscn"

const LEVELS: Array[Dictionary] = [
	{
		"loader": 0,
		"name": "SEA OF KARNAUGH",
		"map_scene": "res://maps/sea-of-karnaugh/sea_of_karnaugh.tscn",
		"boss_scene": "res://scenes/level1_boss.tscn",
		"scroll_reversed": false,
		"ending_pattern": "",
	},
	{
		"loader": 1,
		"name": "VANGUARD WARZONE",
		"map_scene": "res://maps/vanguard-warzone/vanguard_warzone.tscn",
		"boss_scene": "res://scenes/vanguard_boss.tscn",
		"scroll_reversed": false,
		"ending_pattern": "",
	},
	{
		"loader": 2,
		"name": "CARNAGE RIFT",
		"map_scene": "res://maps/carnage-rift/carnage_rift.tscn",
		"boss_scene": "res://scenes/carnage_rift_boss.tscn",
		"scroll_reversed": false,
		"ending_pattern": "",
	},
	{
		"loader": 3,
		"name": "TROPICS OF MACE",
		"map_scene": "res://maps/tropics-of-mace/tropics_of_mace.tscn",
		"boss_scene": "res://scenes/tropics_of_mace_boss.tscn",
		"scroll_reversed": false,
		"ending_pattern": "",
	},
	{
		"loader": 4,
		"name": "RUINS OF KRUGER",
		"map_scene": "res://maps/ruins-of-kruger/ruins_of_kruger.tscn",
		"boss_scene": "res://scenes/ruins_of_kruger_boss.tscn",
		"scroll_reversed": false,
		"ending_pattern": "",
	},
	{
		"loader": 5,
		"name": "PLATEAUS OF DRACONIA",
		"map_scene": "res://maps/plateaus-of-draconia/plateaus_of_draconia.tscn",
		"boss_scene": "res://scenes/plateaus_of_draconia_boss.tscn",
		"scroll_reversed": true,
		"ending_pattern": "res://maps/plateaus-of-draconia/ending/globe-%02d.png",
	}
]

func scene_for(loader_index: int) -> Dictionary:
	return LEVELS[loader_index]
