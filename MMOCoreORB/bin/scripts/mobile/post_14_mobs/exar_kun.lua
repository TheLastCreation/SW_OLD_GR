exar_kun = Creature:new {
	--objectName = "@mob/creature_names:exar_kun",
	customName = "Exar Kun",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 152,
	chanceHit = 8.5,
	damageMin = 1100,
	damageMax = 2500,
	baseXp = 14314,
	baseHAM = 110000,
	baseHAMmax = 110000,
	armor = 0,
	resists = {25,25,25,25,25,25,25,-1,-1},
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

	templates = {"object/mobile/exar_kun.iff"},
		
	lootGroups = {
		{
			groups = {
				{group = "jedi_robes",   chance = 10000000},
			},
			lootChance = 9500000
		},
	--scale = 1.25,
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(exar_kun, "exar_kun")
