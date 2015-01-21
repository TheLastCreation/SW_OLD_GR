tusken_warlord = Creature:new {
	objectName = "@mob/creature_names:tusken_warlord",
	socialGroup = "tusken_raider",
	pvpFaction = "tusken_raider",
	faction = "tusken_raider",
	level = 62,
	chanceHit = 0.62,
	damageMin = 455,
	damageMax = 620,
	baseXp = 6013,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {45,25,15,80,-1,40,-1,15,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "pistols", chance = 3333333},
				{group = "rifles", chance = 3333333},
				{group = "carbines", chance = 3333334},
			},
			lootChance = 70000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 9000000
		},	
		{
			groups = {
				{group = "jetpack_parts", chance = 1000000},				
				{group = "bounty_hunter_armor", chance = 3250000},
				{group = "color_crystals", chance = 1500000},
				{group = "jetpack_base", chance = 500000}
			},
			lootChance = 9500000
		},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_warlord, "tusken_warlord")
