TaanabBattlefeildScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TaanabBattlefeild",

registerScreenPlay("TaanabBattlefeildScreenPlay", true)

}

function TaanabBattlefeildScreenPlay:start()
	if (isZoneEnabled("taanab")) then
		        self:spawnTaanabBattlefeild()
	end
end

function TaanabBattlefeildScreenPlay:spawnTaanabBattlefeild()
	--spawnSceneObject("taanab", "object/tangible/deed/player_house_deed/generic_house_medium_deed.iff", 1975, 46, 5463, 0, 1, 0, 0, 0)
	spawnSceneObject("taanab", "object/tangible/furniture/all/frn_all_toolchest_med_s01.iff", 1993.2, 45, 5507.2, 0, 1, 0, 0, 0)
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_gungan_wall_ruined_lg_s01.iff", 1983.2, 45, 5507.2, 0, 1, 0, 0, 0)
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/barracks/rebel_infantry_barracks.iff", 1983.2, 45, 5557.2, 0, 1, 0, 0, 0)
	spawnSceneObject("taanab", "oobject/installation/battlefield/destructible/barracks/storm_trooper_barracks.iff", 1933.2, 45, 5507.2, 0, 1, 0, 0, 0)
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_wall_impl_weak.iff", 1983.2, 45, 5407.2, 0, 1, 0, 0, 0)

	--The feild
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 2035.2, 45, 5602.2, 0, math.rad(90))--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/barracks/rebel_infantry_barracks.iff", 2035.2, 45, 5607.2, 0, math.rad(135))--TOWER
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 2030.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 2020.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 2010.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 2000.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 1990.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/barracks/rebel_infantry_barracks.iff", 1985.2, 45, 5607.2, 0, math.rad(90))--TOWER
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 1980.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 1970.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 1960.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 1950.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_wall_impl_weak.iff", 1949.5, 46.1, 5599, 0, math.rad(90))--Turret wall cover
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/imperial_gate_house.iff", 1945.2, 45, 5607.2, 0, 1, 0, 0, 0)--Command Tower
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 1950.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 1950.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 1950.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 1950.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	spawnSceneObject("taanab", "object/installation/battlefield/destructible/bfield_base_gate_impl.iff", 1950.2, 45, 5607.2, 0, 1, 0, 0, 0)--GATE
	--random
	--**note to self** can also spawn mobils here spawnMobile("taanab", "exar_kun_cultist_01", 200,  1989, 45, 5479, 19, 0)
end
