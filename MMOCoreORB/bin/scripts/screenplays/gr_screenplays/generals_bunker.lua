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




end
