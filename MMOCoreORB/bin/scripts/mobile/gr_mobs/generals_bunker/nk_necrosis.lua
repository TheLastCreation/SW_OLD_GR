nk_necrosis = Creature:new {
	--objectName = "@mob/creature_names:ep3_general_grievous",
	customName = "General Grievous",
	socialGroup = "NK",
	pvpFaction = "NK",
	faction = "",
	level = 200,
	chanceHit = 0.28,
	damageMin = 900,
	damageMax = 1500,
	baseXp = 11514,
	baseHAM = 30000,
	baseHAMmax = 33000,
	armor = 0,
	resists = {40,40,40,40,40,40,40,-1,-1},
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

	templates = {"object/mobile/ep3/general_grievous.iff"},
		
	lootGroups = {
					{
						{group = "g_musty_house_loot_deed", chance = 10000000}
					},
				lootChance = 5500000
				},
	scale = 1.25,
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(nk_necrosis, "nk_necrosis")
