GhomrassenStaticSpawnsScreenPlay = ScreenPlay:new 
{
	numberOfActs = 1,

	screenplayName = "GhomrassenStaticSpawnsScreenPlay",
}

registerScreenPlay("GhomrassenStaticSpawnsScreenPlay", true)

function GhomrassenStaticSpawnsScreenPlay:start()
	if (isZoneEnabled("ghomrassen")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function GhomrassenStaticSpawnsScreenPlay:spawnSceneObjects()
 
	--Blacksun Bunker
	spawnSceneObject("ghomrassen", "object/tangible/terminal/terminal_elevator_down.iff", -8.469,-12,59.018,9995602,-0.707107,0,-0.707107,0)
	spawnSceneObject("ghomrassen", "object/tangible/terminal/terminal_elevator_up.iff", -8.469,-20,59.018,9995602,-0.707107,0,-0.707107,0)
	spawnSceneObject("ghomrassen", "object/tangible/terminal/terminal_elevator_down.iff", 75.4599,-20,58.9928,9995627,0.707107,0,-0.707107,0)
	spawnSceneObject("ghomrassen", "object/tangible/terminal/terminal_elevator_up.iff", 75.4599,-50,58.9928,9995627,0.707107,0,-0.707107,0) 

end

function GhomrassenStaticSpawnsScreenPlay:spawnMobiles()

	spawnMobile("ghomrassen", "ghom_tusken_sniper", 300,-6197,39.7,-5917.6,-170,0)
	spawnMobile("ghomrassen", "ghom_tusken_warrior", 300,-6208.7,40.0,-5912.5,124,0)	
	spawnMobile("ghomrassen", "ghom_tusken_warrior", 300,-6227.1,41.6,-5906.3,132,0)
	
	spawnMobile("ghomrassen", "ghom_smuggler", 300,-6897.6,227.9,-3860.4,157,0)	
	spawnMobile("ghomrassen", "ghom_smuggler", 300,-6874.5,224.0,-3833.8,179,0)
	
	spawnMobile("ghomrassen", "ghom_smuggler", 300,-3166.5,4.7,-4265.7,-135,0)
	spawnMobile("ghomrassen", "ghom_smuggler", 300,-3174.7,4.7,-4261.0,-156,0)
	spawnMobile("ghomrassen", "ghom_smuggler", 300,-3171.9,5.0,-4258.8,-128,0)
	
	
	
	
	--spawnSceneObject("corellia", "object/tangible/furniture/all/frn_all_toolchest_lg_s01.iff", -1415.72, 85.2822, 1987.44, 0, -0.2, 0, 0.9, 0 )
	--spawnSceneObject("corellia", "object/tangible/furniture/all/frn_all_toolchest_med_s01.iff", -1414.63, 85.2822, 1986.44, 0, -0.4, 0, 0.9, 0 )
	--spawnSceneObject("corellia", "object/tangible/camp/campfire_logs_smoldering.iff", -1424.5, 85.2822, 1978.57, 0, 1, 0, 0, 0 )	
	--spawnSceneObject("corellia", "object/tangible/camp/camp_light_s2.iff", -1419.5, 85.2822, 1981.3, 0, 1, 0, 0, 0 )
	--spawnSceneObject("corellia", "object/tangible/camp/camp_light_s2.iff", -1423.3, 85.2822, 1981.3, 0, 1, 0, 0, 0 )
	--spawnSceneObject("corellia", "object/tangible/camp/camp_stool_tall.iff", -1419.5, 85.2822, 1978.6, 0, 1, 0, 0, 0 )
	--spawnSceneObject("corellia", "object/tangible/camp/camp_stool_tall.iff", -1420.0, 85.2822, 1976.9, 0, 1, 0, 0, 0 )
	
	
end
