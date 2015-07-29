--This is to be used for static spawns that are NOT part of caves, cities, dungeons, poi's, or other large screenplays.
KaasStaticSpawnsScreenPlay = ScreenPlay:new 
{
	numberOfActs = 1,

	screenplayName = "KaasSpawnsScreenPlay",
}

registerScreenPlay("KaasStaticSpawnsScreenPlay", true)

function KaasStaticSpawnsScreenPlay:start()
	if (isZoneEnabled("kaas")) then
		self:spawnMobiles()
	end
end

function KaasStaticSpawnsScreenPlay:spawnMobiles()
	
	--Kass Temple
	spawnMobile("kaas", "exar_kun", 200,  -01, -37.3, 17.2, 0, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  39, -37.3, 14.7, 0, 35791397)
	
	
	
	
	
	
end
