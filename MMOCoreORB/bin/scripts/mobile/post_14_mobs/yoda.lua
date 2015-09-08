yoda = Creature:new {
	--objectName = "@mob/creature_names:yoda",
	customName = "Master_Yoda",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 30,
	damageMin = 2000,
	damageMax = 3500,
	baseXp = 19884,
	baseHAM = 100000,
	baseHAMmax = 208000,
	armor = 0,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/yoda.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "holocron_dark", chance = 600000},
				{group = "holocron_light", chance = 600000},
				{group = "crystals_premium", chance = 1900000},
				{group = "pistols", chance = 1300000},
				{group = "g_yoda_house_loot_deed", chance = 1300000},
				{group = "armor_attachments", chance = 1100000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "carbines", chance = 1300000},
				{group = "wearables_scarce", chance = 800000}				
			},
			lootChance = 8500000
		}
	},
	weapons = {"yoda_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(yoda, "yoda")
