ktg_battle_droid_02 = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_battle_droid",
	customName = "Battle Droid Corporal",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 10,
	chanceHit = 4,
	damageMin = 89,
	damageMax = 140,
	baseXp = 2912,
	baseHAM = 1110,
	baseHAMmax = 1500,
	armor = 2,
	resists = {55,55,55,55,55,55,55,55,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE, --+ ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {"object/mobile/death_watch_battle_droid_02.iff"},

	lootGroups = {},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "kill_the_general_mission_target_convotemplate",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ktg_battle_droid_02, "ktg_battle_droid_02")
