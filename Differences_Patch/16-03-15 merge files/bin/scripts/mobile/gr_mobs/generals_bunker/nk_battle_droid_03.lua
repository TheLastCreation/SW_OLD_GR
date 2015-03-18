nk_battle_droid_03 = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_battle_droid",
	customName = "NK-Advanced Battle Droid",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 70,
	chanceHit = 4,
	damageMin = 995,
	damageMax = 1500,
	baseXp = 13512,
	baseHAM = 13100,
	baseHAMmax = 16000,
	armor = 2,
	resists = {60,60,60,60,60,60,60,60,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		--"object/mobile/death_watch_battle_droid.iff",
		--"object/mobile/death_watch_battle_droid_02.iff"},
		"object/mobile/death_watch_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 4500000},
				{group = "death_watch_bunker_commoners", chance = 1000000},
				{group = "clothing_attachments", chance = 4500000}
			},
			lootChance = 9000000
		},
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(nk_battle_droid_03, "nk_battle_droid_03")
