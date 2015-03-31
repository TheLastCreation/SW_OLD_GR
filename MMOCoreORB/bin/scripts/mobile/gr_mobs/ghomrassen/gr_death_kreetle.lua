gr_death_kreetle = Creature:new {
	customName = "Death Kreetle”,
	socialGroup = "kreetle",
	faction = "",
	level = 90,
	chanceHit = 4,
	damageMin = 380,
	damageMax = 540,
	baseXp = 356,
	baseHAM = 12500,
	baseHAMmax = 16000,
	armor = 0,
	resists = {25,25,25,25,25,25,25,-1,-1},
	meatType = "meat_insect",
	meatAmount = 188,
	hideType = "hide_scaley",
	hideAmount = 188,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = CARNIVORE,

	templates = {"object/mobile/kreetle.iff"},
	scale = 2.8,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_death_kreetle, "gr_death_kreetle")
