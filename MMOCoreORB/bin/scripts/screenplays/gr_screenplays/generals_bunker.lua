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


	spawnMobile("lok", "nk_droideka", 200, 3766.7, 12.1, -3069.7, 66, 0)
	spawnMobile("lok", "nk_droideka", 200, 3769.6, 12.1, -3080.5, 70, 0)
	




--Inside

	spawnMobile("lok", "nk_droideka", 200,  -10.6, -17.0, 75.8, 179, 9686007)
	spawnMobile("lok", "nk_s_battle_droid_01", 200, 7.7, -9.0, 28.9, 176, 9686003)
	spawnMobile("lok", "nk_s_battle_droid_01", 200, -1.0, -9.0, 29.0, 176, 9686003)
	spawnMobile("lok", "nk_battle_droid_01", 200, -10.5, -9.0, 34.7, 179, 9686007)
	spawnMobile("lok", "nk_battle_droid_01", 200, -5.5, -17.0, 63.1, -89, 9686007)
	spawnMobile("lok", "nk_battle_droid_01", 200, -38.5, -19.0, 82.6, 178, 9686008)
	spawnMobile("lok", "nk_battle_droid_02", 200, -42.9, -23.0, 103.1, 85, 9686008)
	spawnMobile("lok", "nk_battle_droid_03", 200, 15.0, -23.0, 103.7, -91, 9686008)
	spawnMobile("lok", "nk_battle_droid_03", 200, 9.5, -19.0, 81.6, 177, 9686008)
	spawnMobile("lok", "nk_s_battle_droid_02", 200, 37.2, -21.0, 133.3, 178, 9686009)
	spawnMobile("lok", "nk_s_battle_droid_03", 200, 37.5, -21.0, 153.1, 179, 9686009)
	spawnMobile("lok", "nk_necrosis", 200, 3.2, -23.0, 282.0, -179, 9686015)
	spawnMobile("lok", "outbreak_undead_deathtrooper_01_m", 200, -33.2, -9.0, 27.6, 90, 9686004)
	spawnMobile("lok", "outbreak_undead_deathtrooper_02_m", 200, 23.6, -17.0, 63.3, -90, 9686006)
	spawnMobile("lok", "outbreak_undead_deathtrooper_03_m", 200, 9.2, -23.0, 125.1, 178, 9686008)
	spawnMobile("lok", "outbreak_undead_deathtrooper_04_m", 200, -38.4, -23.0, 121.7, 179, 9686008)
	spawnMobile("lok", "outbreak_undead_deathtrooper_01_m", 200, -37.8, -23.0, 158.3, 179, 9686008)
	spawnMobile("lok", "outbreak_undead_deathtrooper_02_m", 200, -38.1, -23.0, 199.0, 179, 9686008)
	spawnMobile("lok", "outbreak_undead_deathtrooper_05_m", 200, -11.2, -23.0, 198.8, 177, 9686008)
	spawnMobile("lok", "outbreak_undead_deathtrooper_01_m", 200, 9.5, -23.0, 199.8, 175, 9686008)
	spawnMobile("lok", "outbreak_undead_deathtrooper_03_m", 200, 9.8, -23.0, 153.7, 178, 9686008)
	
	
	
	
	



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
