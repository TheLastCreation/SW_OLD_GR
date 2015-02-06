me_dune_stalker_leader = Creature:new {
	objectName = "@mob/creature_names:dune_stalker_leader",
	socialGroup = "dune_stalker",
	pvpFaction = "",
	faction = "",
	level = 12,
	chanceHit = 0.32,
	damageMin = 100,
	damageMax = 130,
	baseXp = 200,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
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
								lootChance = 20000000
					},
					{
						groups = {
									{group = "pistols", chance = 3333333},
									{group = "rifles", chance = 3333333},
									{group = "carbines", chance = 3333334}
								},
								lootChance = 20000000
					}
				},
	weapons = {"tusken_weapons"},
	conversationTemplate = ""
	--attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(me_dune_stalker_leader, "me_dune_stalker_leader")
