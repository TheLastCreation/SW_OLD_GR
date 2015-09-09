EndorVillageScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "EndorVillage",
}

registerScreenPlay("EndorVillageScreenPlay", true)

function EndorVillageScreenPlay:start()
	if (isZoneEnabled("endor")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function EndorVillageScreenPlay:spawnSceneObjects()
 
    

end

function EndorVillageScreenPlay:spawnMobiles()

    spawnMobile("endor", "yoda", 200, 84.6, 9.0, 19.9, 3, 0)
	
	
	
	
	
	
end
