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
	spawnMobile("yavin4", "alert_droideka", 200, -66.3, 2.0, 72.1, -2, 3465354)
	spawnMobile("yavin4", "acklay", 200, 12.3, 2.0, 52.8, -94, 3465355)
	spawnMobile("yavin4", "acklay", 200, 21.7, 2.0, 87.1, 179, 3465355)
	spawnMobile("yavin4", "enhanced_gaping_spider", 200, -83.6, 2.0, 65.7, 0, 3465354)
	spawnMobile("yavin4", "enhanced_kwi", 200, -84.0, 12.0, 42.8, 0, 3465356)
	spawnMobile("yavin4", "death_watch_battle_droid", 200, -39.9, 32.0, 42.6, -90, 3465357)
	spawnMobile("yavin4", "cavern_spider_hunter", 200, -32.0, 32.0, 74.9, -92, 3465357)
	spawnMobile("yavin4", "nightsister_protector", 200, 12.4, 57.0, 75.0, -90, 3465360)
	spawnMobile("yavin4", "death_watch_wraith", 200, 6.6, 57.0, 70.5, 179, 3465361)
	spawnMobile("yavin4", "force_crystal_hunter", 200, -33.2, 32.0, 55.8, -94, 3465358)
	spawnMobile("yavin4", "force_sensitive_crypt_crawler", 200, -18.6, 32.0, 30.7, -93, 3465357)
	spawnMobile("yavin4", "force_sensitive_crypt_crawler", 200, -55.4, 3.0, 52.2, 0, 3465355)
	spawnMobile("yavin4", "acklay", 200,  -30.2, 2.0, 89.0, 113, 3465355)
	spawnMobile("yavin4", "rancor", 200,  -23.0, 2.2, 12.4, 0, 3465355)
	spawnMobile("yavin4", "super_durni", 200,  23.2, 2.2, 12.3, -2, 3465355)
	
	--Outside
	spawnMobile("yavin4", "nightsister_enraged_bull_rancor", 200, -3149.5, 72.0, -3031.0, -156, 0)
	spawnMobile("yavin4", "nightsister_enraged_bull_rancor", 200, -3122.1, 72.0, -3051.0, -138, 0)
	spawnMobile("yavin4", "force_sensitive_crypt_crawler", 200, -3140, 72.0, -3059.3, -160, 0)
	spawnMobile("yavin4", "outbreak_undead_deathtrooper_01_m", 200, -3186.6, 69.6, -3145.7, 7, 0)
	spawnMobile("yavin4", "outbreak_undead_deathtrooper_02_m", 200, -3191.3, 69.8, -3135.5, -44, 0)
	
	
	
	
	
end
