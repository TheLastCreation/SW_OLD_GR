light_jedi_sentinel = Creature:new {
	objectName = "@mob/creature_names:light_jedi_sentinel",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "rebel",
	faction = "rebel",
	level = 301,
	chanceHit = 30,
	damageMin = 2645,
	damageMax = 5000,
	baseXp = 26845,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_jedi_trainer_old_human_male_01.iff",
		"object/mobile/dressed_jedi_trainer_chiss_male_01.iff",
		"object/mobile/dressed_jedi_trainer_nikto_male_01.iff",
		"object/mobile/dressed_jedi_trainer_twilek_female_01.iff",
		"object/mobile/dressed_tiberus_anderlock.iff",
		"object/mobile/dressed_neja_bertolo.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystal_named", chance = 10000000}
			},
			lootChance = 10000000
		},
	},
	weapons = {"light_jedi_weapons"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(light_jedi_sentinel, "light_jedi_sentinel")
