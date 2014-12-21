event_cavern_spider_queen = Creature:new {
	objectName = "",
	customName = "Swggr Mega Spider",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 24.07,
	damageMin = 1000,
	damageMax = 2100,
	baseXp = 45520,
	baseHAM = 30000,
	baseHAMmax = 32000,
	armor = 1,
	resists = {60,60,40,25,30,-1,30,30,-1},
	meatType = "meat_insect",
	meatAmount = 40,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 9,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_queen.iff"},
	scale = 4,
	lootGroups = {
	   {
			groups = {
				{group = "treasure_map_group", chance = 5000000},
				{group = "holocron_light", chance = 5000000}
			},
			lootChance = 9000000
		}
    },
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","knockdownChance=50"},
		{"mediumpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(event_cavern_spider_queen, "event_cavern_spider_queen")
