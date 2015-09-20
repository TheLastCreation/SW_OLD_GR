palpatine_hologram = Creature:new {
	--objectName = "@mob/creature_names:ep3_palpatine_hologram",
	customName = "Palpatine_Hologram",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 92.5,
	damageMin = 3100,
	damageMax = 4200,
	baseXp = 19884,
	baseHAM = 100000,
	baseHAMmax = 208000,
	armor = 3,
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

	templates = {"object/mobile/ep3/palpatine_hologram.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_sith_house_loot_deed", chance = 5000000},
				{group = "crystal_named", chance = 5000000},
			},
			lootChance = 5000000
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(palpatine_hologram, "palpatine_hologram")
