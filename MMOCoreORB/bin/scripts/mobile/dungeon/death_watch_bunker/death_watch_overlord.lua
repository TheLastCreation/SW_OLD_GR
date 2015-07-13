death_watch_overlord = Creature:new {
	objectName = "",
	customName = "Drartih Oure (a Death Watch Overlord)",
	socialGroup = "death_watch",
	faction = "",
	level = 221,
	chanceHit = 19,
	damageMin = 1245,
	damageMax = 2200,
	baseXp = 20948,
	baseHAM = 350000,
	baseHAMmax = 350000,
	armor = 3,
	resists = {80,80,90,80,45,45,100,70,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		 {
			groups = {
				{group = "pod_racer_one_deed_group", chance = 1000000},
				{group = "pod_racer_two_deed_group", chance = 500000},
				{group = "landspeeder_desert_skiff_deed_group", chance = 500000},
				{group = "barc_speeder_imperial_deed_group", chance = 2275000},
				{group = "barc_speeder_rebel_deed_group", chance = 350000},
				{group = "barc_speeder_deed_group", chance = 350000},
				{group = "jetpack_loot_deed_group", chance = 2000000},
				{group = "landspeeder_av21_deed_group", chance = 25000},
				{group = "speederbike_deed_group", chance = 1000000},
				{group = "speederbike_flash_deed_group", chance = 1000000},
				{group = "speederbike_swoop_deed_group", chance = 1000000},
			},
			lootChance = 9000000
		}
	},
		{
			groups = {
				{group = "death_watch_bunker_overlord_shared", chance =  500000},
				{group = "death_watch_bunker_overlord_quest", chance  = 9500000}
			},
			lootChance = 5000000
		},
		{
	        groups = {
				{group = "clothing_attachments", chance = 10000000},			
			},
			lootChance = 9500000
		},
		{
	        groups = {
				{group = "armor_attachments", chance = 10000000},			
			},
			lootChance = 9500000
		}
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,fencermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(death_watch_overlord, "death_watch_overlord")
