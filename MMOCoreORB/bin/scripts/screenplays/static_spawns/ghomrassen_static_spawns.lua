GhomrassenStaticSpawnsScreenPlay = ScreenPlay:new 
{
	numberOfActs = 1,

	screenplayName = "GhomrassenStaticSpawnsScreenPlay",
}

registerScreenPlay("GhomrassenStaticSpawnsScreenPlay", true)

function GhomrassenStaticSpawnsScreenPlay:start()
	if (isZoneEnabled("ghomrassen")) then
		self:spawnMobiles()
	end
end

function GhomrassenStaticSpawnsScreenPlay:spawnMobiles()

	--spawnMobile("corellia", "rebel_army_captain", 360,5.2,0.1,-3.6,-93,6036092)
	

	--Blacksun Bunker
	spawnSceneObject("ghomrassen", "object/tangible/terminal/terminal_elevator_down.iff", -8.469,-12,59.018,9995602,-0.707107,0,-0.707107,0)
	spawnSceneObject("ghomrassen", "object/tangible/terminal/terminal_elevator_up.iff", -8.469,-20,59.018,9995602,-0.707107,0,-0.707107,0)
	spawnSceneObject("ghomrassen", "object/tangible/terminal/terminal_elevator_down.iff", 75.4599,-20,58.9928,9995627,0.707107,0,-0.707107,0)
	spawnSceneObject("ghomrassen", "object/tangible/terminal/terminal_elevator_up.iff", 75.4599,-50,58.9928,9995627,0.707107,0,-0.707107,0)






	--spawnSceneObject("corellia", "object/tangible/furniture/all/frn_all_toolchest_lg_s01.iff", -1415.72, 85.2822, 1987.44, 0, -0.2, 0, 0.9, 0 )
	--spawnSceneObject("corellia", "object/tangible/furniture/all/frn_all_toolchest_med_s01.iff", -1414.63, 85.2822, 1986.44, 0, -0.4, 0, 0.9, 0 )
	--spawnSceneObject("corellia", "object/tangible/camp/campfire_logs_smoldering.iff", -1424.5, 85.2822, 1978.57, 0, 1, 0, 0, 0 )	
	--spawnSceneObject("corellia", "object/tangible/camp/camp_light_s2.iff", -1419.5, 85.2822, 1981.3, 0, 1, 0, 0, 0 )
	--spawnSceneObject("corellia", "object/tangible/camp/camp_light_s2.iff", -1423.3, 85.2822, 1981.3, 0, 1, 0, 0, 0 )
	--spawnSceneObject("corellia", "object/tangible/camp/camp_stool_tall.iff", -1419.5, 85.2822, 1978.6, 0, 1, 0, 0, 0 )
	--spawnSceneObject("corellia", "object/tangible/camp/camp_stool_tall.iff", -1420.0, 85.2822, 1976.9, 0, 1, 0, 0, 0 )
	
	
end
