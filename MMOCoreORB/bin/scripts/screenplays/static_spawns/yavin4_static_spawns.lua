--This is to be used for static spawns that are NOT part of caves, cities, dungeons, poi's, or other large screenplays.
Yavin4StaticSpawnsScreenPlay = ScreenPlay:new 
{
	numberOfActs = 1,

	screenplayName = "Yavin4StaticSpawnsScreenPlay",
}

registerScreenPlay("Yavin4StaticSpawnsScreenPlay", true)

function Yavin4StaticSpawnsScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
	end
end

function Yavin4StaticSpawnsScreenPlay:spawnMobiles()
	
	-- Light Jedi Enclave (-5575, 4910)
	spawnMobile("yavin4", "light_jedi_sentinel", 1800, -5579.0, 87.7, 4908.5, -179, 0)
	spawnMobile("yavin4", "light_jedi_sentinel", 1800, -5572.6, 87.7, 4908.2, -179, 0)

	-- Dark Jedi Enclave (5068, 310)
	spawnMobile("yavin4", "dark_jedi_sentinel", 1800, 5074.2, 78.8, 313.9, 90, 0)
	spawnMobile("yavin4", "dark_jedi_sentinel", 1800, 5074.3, 79.2, 306.4, 90, 0)

	-- Yavin4 Ruins (-6299 -1502)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-6299.1,24.7,-1502,0,0)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-6299.1,25.6,-1506.4,179,0)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-6302.1,24.9,-1504.2,-90,0)
	spawnMobile("yavin4", "crazed_geonosian_guard",300,-6296.0,25.3,-1504.2,90,0)	
	
	-- The Great Massassi Temple (-2998 -2958)

	-- Inside
	spawnMobile("yavin4", "acklay_elder", 200,  0.1, 55.0, -35.7, -1, 3465362)
	spawnMobile("yavin4", "acklay", 200,  -0.1, 55.0, 2.4, 0, 3465362)
	spawnMobile("yavin4", "nk_droideka", 200, 0.1, 57.0, 59.8, -2,  3465362)
	
	
end
