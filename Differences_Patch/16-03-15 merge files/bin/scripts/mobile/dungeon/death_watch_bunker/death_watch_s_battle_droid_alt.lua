death_watch_s_battle_droid_alt = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	socialGroup = "death_watch",
	faction = "",
	level = 200,
	chanceHit = 18,
	damageMin = 1200,
	damageMax = 2100,
	baseXp = 19000,
	baseHAM = 50000,
	baseHAMmax = 50000,
	armor = 2,
	resists = {40,95,100,60,100,25,40,85,-1},
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
	diet = NONE,

	templates = {
		"object/mobile/death_watch_s_battle_droid.iff",
		"object/mobile/death_watch_s_battle_droid_02.iff",
		"object/mobile/death_watch_s_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystals_premium", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 8000000},
				{group = "armor_attachments", chance = 2000000}
			},
			lootChance = 10000000
		},
		
},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(death_watch_s_battle_droid_alt, "death_watch_s_battle_droid_alt")
