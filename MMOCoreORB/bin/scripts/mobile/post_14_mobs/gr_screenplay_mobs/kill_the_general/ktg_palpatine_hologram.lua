ktg_palpatine_hologram = Creature:new {
	--objectName = "@mob/creature_names:ep3_palpatine_hologram",
	customName = "Emperor Palpatine Hologram",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 140000000,
	damageMax = 230000000,
	baseXp = 514,
	baseHAM = 3000000,
	baseHAMmax = 3300000,
	armor = 3,
	--resists = {100,25,25,25,25,25,25,25,25},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE, --AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = NONE, --KILLER + STALKER,
	optionsBitmask = 264,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/palpatine_hologram.iff"},
		
	lootGroups = {},
	weapons = {""},
	conversationTemplate = ""
	--attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(ktg_palpatine_hologram, "ktg_palpatine_hologram")
