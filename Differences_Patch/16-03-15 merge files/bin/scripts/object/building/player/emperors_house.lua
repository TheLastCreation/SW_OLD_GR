object_building_player_emperors_house = object_building_player_shared_emperors_house:new {
	lotSize = 2,
	baseMaintenanceRate = 10,
	allowedZones = {"corellia", "dantooine", "lok", "naboo", "rori", "talus", "tatooine", "taanab", "dathomir"},
	constructionMarker = "object/building/player/construction/construction_player_house_corellia_large_style_01.iff",
	length = 1,
	width = 1,
	publicStructure = 0,
	skillMods = {
		{"private_medical_rating", 100},
		{"private_buff_mind", 100},
		{"private_med_battle_fatigue", 15}
	},
	childObjects = {
--			{templateFile = "object/tangible/sign/player/house_address.iff", x = 4.34, z = 3.4, y = 18.40, ox = 0, oy = 0.707107, oz = 0, ow = 0.707107, cellid = -1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_player_structure.iff", x = -3.10695, z = 26.9024, y = 0.0246964, ow = 0.707106, ox = 0, oz = 0, oy = -0.707107, cellid = 2, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_up.iff", x = -0.0312929, z = 0.961812, y = -0.912701, ow = -1, ox = 0, oz = 0, oy = -8.74228e-08, cellid = 1, containmentType = -1},
			{templateFile = "object/tangible/terminal/terminal_elevator_down.iff", x = 0.00970683, z = 26.9023, y = -0.96178, ow = 1, ox = 0, oz = 0, oy = 0, cellid = 1, containmentType = -1}
	}
}

ObjectTemplates:addTemplate(object_building_player_emperors_house, "object/building/player/emperors_house.iff")
