outbreak_undead_deathtrooper_03_m = Creature:new {
	--objectName = "@mob/creature_names:outbreak_undead_deathtrooper_03_m",
	customName = "Deathtrooper",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 150,
	chanceHit = 5.0,
	damageMin = 400,
	damageMax = 990,
	baseXp = 11514,
	baseHAM = 14000,
	baseHAMmax = 15500,
	armor = 1,
	resists = {25,25,25,25,25,25,25,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/outbreak_undead_deathtrooper_03_m.iff"},
		
	lootGroups = {},
	--scale = 1.25,
	weapons = {"deathtrooper_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(outbreak_undead_deathtrooper_03_m, "outbreak_undead_deathtrooper_03_m")
