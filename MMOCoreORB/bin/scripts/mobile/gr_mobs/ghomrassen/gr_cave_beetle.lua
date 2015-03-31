gr_cave_beetle = Creature:new {
	customName = "Cave Beetle",
	socialGroup = "beetle",
	faction = "",
	level = 80,
	chanceHit = 4,
	damageMin = 360,
	damageMax = 500,
	baseXp = 1200,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 0,
	resists = {25,25,25,25,25,25,25,25,-1},
	meatType = "meat_insect",
	meatAmount = 188,
	hideType = "hide_scaley",
	hideAmount = 188,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/rock_beetle.iff"},
	controlDeviceTemplate = "object/intangible/pet/rock_mite_hue.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"mediumpoison",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_cave_beetle, "gr_cave_beetle")
