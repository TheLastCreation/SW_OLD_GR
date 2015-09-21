super_durni = Creature:new {
	objectName = "",
	customName = "Super Durni",
	socialGroup = "durni",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 0.26,
	damageMin = 1855,
	damageMax = 2565,
	baseXp = 12147,
	baseHAM = 30000,
	baseHAMmax = 31000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 100,
	hideType = "hide_wooly",
	hideAmount = 100,
	boneType = "bone_mammal",
	boneAmount = 100,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/durni.iff"},
	scale = 10,
	controlDeviceTemplate = "",
	lootGroups = {
	   {
			groups = {
				{group = "ns_clothing", chance = 25000},
				{group = "crystals_select", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "nightsister_common", chance = 2275000},
				{group = "armor_attachments", chance = 350000},
				{group = "clothing_attachments", chance = 350000},
				{group = "melee_weapons", chance = 2000000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "wearables_all", chance = 1000000},
			},
			lootChance = 9000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","postureDownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(super_durni, "super_durni")