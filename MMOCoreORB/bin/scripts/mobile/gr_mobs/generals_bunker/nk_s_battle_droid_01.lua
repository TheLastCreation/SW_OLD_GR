nk_s_battle_droid_01 = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_super_battle_droid",
	customName = "NK-Super Battle Droid",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 200,
	chanceHit = 18,
	damageMin = 800,
	damageMax = 1800,
	baseXp = 1900,
	baseHAM = 2300,
	baseHAMmax = 2300,
	armor = 2,
	resists = {25,25,25,25,25,25,25,25,-1},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
		"object/mobile/death_watch_s_battle_droid.iff"},
		--"object/mobile/death_watch_s_battle_droid_02.iff",
		--"object/mobile/death_watch_s_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
			},
			lootChance = 900000
		},
	},
	conversationTemplate = "",
	scale = 1.25,
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(nk_s_battle_droid_01, "nk_s_battle_droid_01")
