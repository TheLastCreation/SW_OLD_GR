fugue = Creature:new {
	objectName = "",
	socialGroup = "thug",
	faction = "thug",
	level = 6,
	chanceHit = 0.250000,
	damageMin = 50,
	damageMax = 55,
	baseXp = 113,
	baseHAM = 180,
	baseHAMmax = 220,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = STALKER,
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_criminal_pirate_human_male_01.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "noren_krast_mission_target_convotemplate",
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(fugue, "fugue")