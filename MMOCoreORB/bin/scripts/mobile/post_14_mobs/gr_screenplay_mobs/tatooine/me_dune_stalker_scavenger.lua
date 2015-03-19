me_dune_stalker_scavenger = Creature:new {
	objectName = "@mob/creature_names:dune_stalker_avenger",
	socialGroup = "dune_stalker",
	pvpFaction = "",
	faction = "",
	level = 12,
	chanceHit = 0.32,
	damageMin = 100,
	damageMax = 130,
	baseXp = 150,
	baseHAM = 670,
	baseHAMmax = 900,
	armor = 0,
	resists = {0,0,0,10,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE, --AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK, -- + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_dune_stalker.iff"},
	lootGroups = {
					{
						groups = {
									{group = "clothing_attachments", chance = 2000000},
									{group = "armor_attachments", chance = 2000000},
									{group = "melee_weapons", chance = 2000000},
									{group = "rifles", chance = 1500000},
									{group = "carbines", chance = 1500000},
									{group = "pistols", chance = 1000000}
								},
								lootChance = 10000000
					}
				},
	weapons = {"ranged_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(me_dune_stalker_scavenger, "me_dune_stalker_scavenger")
