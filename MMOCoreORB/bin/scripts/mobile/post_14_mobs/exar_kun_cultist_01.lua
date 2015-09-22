exar_kun_cultist_01 = Creature:new {
	--objectName = "@mob/creature_names:exar_kun_cultist_01",
	customName = "Exar Kun Cultist",
	socialGroup = "KUN",
	pvpFaction = "KUN",
	faction = "",
	level = 300,
	chanceHit = 92.5,
<<<<<<< HEAD
	damageMin = 3100,
	damageMax = 4200,
	baseXp = 19884,
	baseHAM = 100000,
	baseHAMmax = 208000,
	armor = 3,
=======
	damageMin = 2800,
	damageMax = 4580,
	baseXp = 16884,
	baseHAM = 96000,
	baseHAMmax = 178000,
	armor = 2,
>>>>>>> origin/master
	resists = {130,145,155,155,145,30,30,30,-1},
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

	templates = {"object/mobile/exar_kun_cultist_01.iff"},
		
	lootGroups = {},
	--scale = 1.25,
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(exar_kun_cultist_01, "exar_kun_cultist_01")
