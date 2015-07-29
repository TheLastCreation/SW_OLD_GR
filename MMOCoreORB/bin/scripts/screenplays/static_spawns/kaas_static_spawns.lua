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
	
	--
	
	
	
	
	
	
end
