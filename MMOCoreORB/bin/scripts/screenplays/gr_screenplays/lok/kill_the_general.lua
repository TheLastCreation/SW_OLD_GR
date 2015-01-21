kill_the_general_missions =
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
			{ itemTemplate = "object/tangible/mission/quest_item/singular_nak_q1_needed.iff", itemName = "" }
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
			stfFile = "@gr_themepark/test_convo.stf",
			missions = kill_the_general_missions
		},
		--[[{
			spawnData = { planetName = "tatooine", npcTemplate = "ree_yees", x = 5.97, z = 0.299998, y = 116.1, direction = 248.813, cellID = 1177466, position = STAND },
			worldPosition = { x = -5892.3, y = -6230.8 },
			npcNumber = 2,
			stfFile = "@theme_park_jabba/ree_yees",
			missions = ree_yees_missions
		},
		{
			spawnData = { planetName = "tatooine", npcTemplate = "ephant_mon", x = -6, z = 5.85, y = 84, direction = 277.481, cellID = 1177469, position = STAND },
			worldPosition = { x = -5924.4, y = -6242.4 },
			npcNumber = 4,
			stfFile = "@theme_park_jabba/ephant_mon",
			missions = ephant_mon_missions
		},
		{
			spawnData = { planetName = "tatooine", npcTemplate = "porcellus", x = -43, z = 3, y = 64, direction = 306.623, cellID = 1177477, position = STAND },
			worldPosition = { x = -5963.5, y = -6226.9 },
			npcNumber = 8,
			stfFile = "@theme_park_jabba/porcellus",
			missions = porcellus_missions
		},
		{
			spawnData = { planetName = "tatooine", npcTemplate = "barada", x = 30.57, z = 0.199999, y = -1.05, direction = 164.173, cellID = 1177499, position = STAND },
			worldPosition = { x = -5965.8, y = -6325.1 },
			npcNumber = 16,
			stfFile = "@theme_park_jabba/barada",
			missions = barada_missions
		},]]--


	}

KillTheGeneral = ThemeParkLogic:new {
	numberOfActs = 1,
	npcMap = npcMapKillTheGeneral,
	className = "KillTheGeneral",
	screenPlayState = "kill_the_general_quest",
	distance = 300
}

registerScreenPlay("KillTheGeneral", true)

kill_the_general_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = KillTheGeneral
}
kill_the_general_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = KillTheGeneral
}
