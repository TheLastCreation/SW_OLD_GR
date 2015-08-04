dark_jedi_sentinel = Creature:new {
	objectName = "@mob/creature_names:dark_jedi_sentinel",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 30,
	damageMin = 2645,
	damageMax = 5000,
	baseXp = 28532,
	baseHAM = 1106000,
	baseHAMmax = 1352000,
	armor = 1,
	resists = {30,30,30,30,30,30,30,30,-1},
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
	creatureBitmask = PACK + HERD + KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystal_named", chance = 10000000}
			},
			lootChance = 10000000
		},
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(dark_jedi_sentinel, "dark_jedi_sentinel")
