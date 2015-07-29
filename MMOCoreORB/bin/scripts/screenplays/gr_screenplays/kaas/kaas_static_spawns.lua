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
	
	--Inside Temple
	spawnMobile("kaas", "exar_kun", 200,  -0.2, -37.2, -23.0, 0, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  4.1, -37.3, -16.6, 1, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -4.9, -37.3, -16.8, -1, 35791397)
	
	
	
	
	
	
end
