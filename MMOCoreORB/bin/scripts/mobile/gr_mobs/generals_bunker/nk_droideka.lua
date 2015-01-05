nk_droideka = Creature:new {
	--objectName = "@mob/creature_names:nym_droideka_strong",
	customName = "NK-Droideka",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 45,
	chanceHit = 0.47,
	damageMin = 560,
	damageMax = 730,
	baseXp = 790,
	baseHAM = 5900,
	baseHAMmax = 6100,
	armor = 1,
	resists = {10,10,10,10,10,10,10,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,
	scale = 0.75,

	templates = {"object/mobile/droideka.iff"},
	lootGroups = {
	    {
			groups = {
				{group = "junk", chance = 4500000},
				{group = "wearables_uncommon", chance = 2000000},
				{group = "nyms_common", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "tailor_components", chance = 500000}
			},
			lootChance = 9000000
		},
	},
	defaultAttack = "creaturerangedattack",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(nk_droideka, "nk_droideka")
