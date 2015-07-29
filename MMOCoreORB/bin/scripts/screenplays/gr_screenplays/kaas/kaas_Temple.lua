KaasTempleScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "KaasTemple",

registerScreenPlay("KaasTempleScreenPlay", true)

}

function KaasTempleScreenPlay:start()
	if (isZoneEnabled("kaas")) then
		        self:spawnMobiles()
	end
end

function KaasTempleScreenPlay:spawnSceneObjects()
 
	-- Temple
    spawnSceneObject("kaas", "object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", -4.9, -37.3, -16.8, -1, 35791397)   

end

function KaasTempleScreenPlay:spawnMobiles()
	
	--Inside Temple
	spawnMobile("kaas", "exar_kun", 200,  -0.2, -37.2, -23.0, 0, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  4.1, -37.3, -16.6, 1, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -4.9, -37.3, -16.8, -1, 35791397)
	
	
	
	
	
	
end
