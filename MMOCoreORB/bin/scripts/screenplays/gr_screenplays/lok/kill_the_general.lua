ktg_palpatine_hologram_missions =
{
	{
		missionType = "assassinate",
		primarySpawns =
		{
			{ npcTemplate = "ktg_battle_droid_02", planetName = "naboo", npcName = "Battle Droid Corporal" }
		},
		secondarySpawns =
		{
		},
		itemSpawns =
		{
			--{ itemTemplate = "object/tangible/mission/quest_item/singular_nak_q1_needed.iff", itemName = "" }
		},
		rewards =
		{
		}
	},
	{ 
		missionType = "assassinate", 
		primarySpawns = 
		{ 
			{ npcTemplate = "ktg_battle_droid_02", planetName = "naboo", npcName = "Battle Droid Corporal" } 
		}, 
		secondarySpawns = 
		{
		}, 
		itemSpawns = 
		{ 
			{ itemTemplate = "object/tangible/mission/quest_item/singular_nak_q2_needed.iff", itemName = "" }
		}, 
		rewards = 
		{ 
		}
	},
	{ 
		missionType = "escort", 
		primarySpawns = 
		{ 
			{ npcTemplate = "ktg_imperial_captain", planetName = "naboo", npcName = "Imperial Captain" } --SORT OUT BETTER NAME
		}, 
		secondarySpawns = 
		{
		}, 
		itemSpawns = 
		{ 
			--{ itemTemplate = "object/tangible/mission/quest_item/singular_nak_q1_needed.iff", itemName = "" }
		}, 
		rewards = 
		{ 
		}
	},
}

npcMapKillTheGeneral =
	{
		{
			spawnData = { planetName = "naboo", npcTemplate = "ktg_palpatine_hologram", x = 15.3334, z = -13.7584, y = -15.7758, direction = -8, cellID = 1260046, position = STAND },
			worldPosition = { x = 5386, y = 6405 },
			npcNumber = 1,
			stfFile = "@gr_themepark/ktg_emperor_palpatine",
			missions = ktg_palpatine_hologram_missions
		},
	}

KillTheGeneral = ThemeParkLogic:new {
	numberOfActs = 1,
	npcMap = npcMapKillTheGeneral,
	className = "KillTheGeneral",
	screenPlayState = "kill_the_general_quest",
	distance = 400
}

registerScreenPlay("KillTheGeneral", true)

kill_the_general_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = KillTheGeneral
}
kill_the_general_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = KillTheGeneral
}