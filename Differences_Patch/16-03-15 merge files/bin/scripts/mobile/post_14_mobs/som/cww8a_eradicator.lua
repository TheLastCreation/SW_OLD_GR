cww8a_eradicator = Creature:new {
	--objectName = "@mob/creature_names:som_cww8a_eradicator",
	customName = "Cww8a Eradicator",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 50,
	chanceHit = 0.28,
	damageMin = 90,
	damageMax = 110,
	baseXp = 1514,
	baseHAM = 5000,
	baseHAMmax = 6630,
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
	ferocity = 0,
	pvpBitmask = ATTACKABLE, -- + ATTACKABLE + ENEMY,
	creatureBitmask = NONE, --KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/som/cww8a_eradicator.iff"},
		
	lootGroups = {},
	--scale = 1.25,
	weapons = {""},
	conversationTemplate = "",
	--attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(cww8a_eradicator, "cww8a_eradicator")
