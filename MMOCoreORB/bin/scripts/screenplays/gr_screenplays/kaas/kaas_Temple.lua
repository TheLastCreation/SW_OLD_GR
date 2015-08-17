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
 
	--Outside Temple
    --spawnSceneObject("kaas", "object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", -5096.0, 81.3, -2385.5, 19, 0)   --THIS DOESNT WORK. WHY? -NICKWILL
	-- Temple
    spawnSceneObject("kaas", "object/tangible/furniture/all/frn_all_tiki_torch_s1.iff", -4.9, -37.3, -16.8, -1, 35791397)   

end

function KaasTempleScreenPlay:spawnMobiles()
	
	--Outside Temple
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -5096.6, 81.3, -2385.5, 19, 0)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -5104.6, 81.3, -2382.3, 7, 0)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -5114.7, 81.3, -2381.8, 1, 0)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -5127.7, 82.8, -2382.0, -4, 0)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -5137.2, 81.3, -2382.9, -2, 0)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -5151.3, 81.3, -2392.0, -2, 0)
	--Entrance
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -5127.6, 81.3, -2408.3, -7, 0)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -5114.0, 81.3, -2407.8, -1, 0)

	--Inside Temple
	spawnMobile("kaas", "dark_jedi_knight", 200,  -0.1, -1.3, -2418.4, 1, 35791396)--The guy running around like a fool
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  21, -1.3, 11.1, -90, 35791397)--Starting from left door  
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  20.6, -1.3, -0.2, -93, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  21, -1.3, -11.1, -88, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  10.9, -1.3, -21.5, -1, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -0.1, -1.3, -21.4, -1, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -11.0, -1.3, -21.5, 2, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -21.1, -1.3, -10.9, -90, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -10.9, -1.3, 21.3, -179, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  0.2, -1.3, 21.0, -178, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  11.2, -1.3, 21.3, -177, 35791397)

	--Ramp going to basement
	spawnMobile("kaas", "dark_jedi_knight", 200,  -16.4, -11.3, -16.9, -39, 35791397)
	spawnMobile("kaas", "dark_jedi_master", 200,  17.8, -21.3, -16.4, -123, 35791397)
	spawnMobile("kaas", "dark_jedi_master", 200,  17.5, -30.3, 16.6, 153, 35791397)

	--Basement
	spawnMobile("kaas", "exar_kun", 200,  -0.2, -37.2, -23.0, 0, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  4.1, -37.3, -16.6, 1, 35791397)
	spawnMobile("kaas", "exar_kun_cultist_01", 200,  -4.9, -37.3, -16.8, -1, 35791397)
	
	
	
	
	
	
end
