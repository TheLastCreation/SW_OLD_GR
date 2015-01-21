exar_kun = Creature:new {
	--objectName = "@mob/creature_names:exar_kun",
	customName = "Exar Kun",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 20,
	chanceHit = 0.28,
	damageMin = 90,
	damageMax = 110,
	baseXp = 1514,
	baseHAM = 300,
	baseHAMmax = 330,
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
	pvpBitmask = ATTACKABLE, -- + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun.iff"},
		
	lootGroups = {},
	--scale = 1.25,
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(exar_kun, "exar_kun")
