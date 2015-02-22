signalman = Creature:new {
	objectName = "@mob/creature_names:signalman",
	socialGroup = "imperial",
	faction = "imperial",
	level = 15,
	chanceHit = 0.31,
	damageMin = 160,
	damageMax = 170,
	baseXp = 831,
	baseHAM = 2400,
	baseHAMmax = 3000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_soldier_m.iff"},
	lootGroups = {},
	weapons = {"rebel_weapons_light"},
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(signalman, "signalman")
