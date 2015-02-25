GeneralsBunkerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "GeneralsBunkerScreenPlay",

registerScreenPlay("GeneralsBunkerScreenPlay", true)

}

function GeneralsBunkerScreenPlay:start()
	if (isZoneEnabled("lok")) then
                self:spawnMobiles()
                --self:initializeLootContainers()
        end
end

function GeneralsBunkerScreenPlay:spawnMobiles()

--Outside


	spawnMobile("lok", "nk_droideka",200,3740.1,12.0,-3080,-72,0)
	spawnMobile("lok", "nk_droideka",200,3742.9,12.0,-3072.3,-72,0)
	




--Inside

	spawnMobile("lok", "nk_droideka", 200,  -10.6, -17.0, 75.8, 179, 9686007)
	spawnMobile("lok", "nk_s_battle_droid_01",200, 7.7, -9.0, 28.9, 176, 9686003)
	spawnMobile("lok", "nk_s_battle_droid_01",200, -1.0, -9.0, 29.0, 176, 9686003)



--TEST Space

--	spawnMobile("lok", "nk_droideka",200, -26.3, -9.0, 25.0, 0, 9686004)
--	spawnMobile("lok", "nk_adv_droideka",200, -29.0, -9.0, 25.0, 0, 9686004)
--	spawnMobile("lok", "nk_battle_droid_01",200, -30.5, -9.0, 25.0, 0, 9686004)
--	spawnMobile("lok", "nk_battle_droid_02",200, -32.0, -9.0, 25.0, 0, 9686004)
--	spawnMobile("lok", "nk_battle_droid_03",200, -33.5, -9.0, 25.0, 0, 9686004)
--	spawnMobile("lok", "nk_s_battle_droid_01",200, -35.0, -9.0, 25.0, 0, 9686004)
--	spawnMobile("lok", "nk_s_battle_droid_02",200, -36.5, -9.0, 25.0, 0, 9686004)
--	spawnMobile("lok", "nk_s_battle_droid_03",200, -37.5, -9.0, 25.0, 0, 9686004)
--	spawnMobile("lok", "nk_necrosis",200, -38.4, -9.0, 25.0, 0, 9686004)

end
