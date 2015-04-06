me_dune_stalker_leader = Creature:new {
	objectName = "@mob/creature_names:dune_stalker_leader",
	socialGroup = "dune_stalker",
	pvpFaction = "",
	faction = "",
	level = 14,
	chanceHit = 0.32,
	damageMin = 113,
	damageMax = 180,
	baseXp = 150,
	baseHAM = 670,
	baseHAMmax = 900,
	armor = 0,
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
	pvpBitmask = ATTACKABLE, --AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK, -- + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_tatooine_dune_stalker_leader.iff"},
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
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(me_dune_stalker_leader, "me_dune_stalker_leader")
