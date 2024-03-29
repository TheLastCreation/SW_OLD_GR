outbreak_undead_deathtrooper_02_m = Creature:new {
	--objectName = "@mob/creature_names:outbreak_undead_deathtrooper_02_m",
	customName = "Deathtrooper",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 1400,
	damageMax = 2300,
	baseXp = 16884,
	baseHAM = 96000,
	baseHAMmax = 178000,
	armor = 3,
	resists = {30,35,30,30,30,30,30,-1,-1},
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

	templates = {"object/mobile/outbreak_undead_deathtrooper_02_m.iff"},
		
	lootGroups = {
	    {
			groups = {
				{group = "clothing_attachments", chance = 4500000},
				{group = "armor_attachments", chance = 2000000},
				{group = "nyms_common", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "tailor_components", chance = 500000}
			},
			lootChance = 9000000
		}
	},
	--scale = 1.25,
	weapons = {"deathtrooper_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(outbreak_undead_deathtrooper_02_m, "outbreak_undead_deathtrooper_02_m")
