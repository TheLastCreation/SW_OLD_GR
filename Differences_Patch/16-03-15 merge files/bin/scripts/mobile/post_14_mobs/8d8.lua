8d8 = Creature:new {
	--objectName = "@mob/creature_names:8d8",
	customName = "8D8",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 8,
	chanceHit = 0.27,
	damageMin = 70,
	damageMax = 75,
	baseXp = 235,
	baseHAM = 405,
	baseHAMmax = 495,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE, -- + ATTACKABLE + ENEMY,
	creatureBitmask = NONE, --KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/8d8.iff"},
	lootGroups = {},
	weapons = {""},
	conversationTemplate = ""
	--attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(8d8, "8d8")
