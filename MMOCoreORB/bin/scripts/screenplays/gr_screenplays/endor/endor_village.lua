endorvillageScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "endorvillage",

registerScreenPlay("endorvillageScreenPlay", true)

}

function endorvillageScreenPlay:start()
	if (isZoneEnabled("Endor")) then
		        self:spawnMobiles()
	end
end



function endorvillageScreenPlay:spawnMobiles()

	
	Ewok Village 
    spawnMobile("endor", "yoda", 200, 84.6, 9.0, 19.9, 3, 0)
	
	
	
	
	
	
end
