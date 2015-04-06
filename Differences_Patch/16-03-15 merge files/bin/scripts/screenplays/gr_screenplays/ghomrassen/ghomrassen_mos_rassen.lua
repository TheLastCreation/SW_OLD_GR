GhomrassenMosRassenScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "GhomrassenMosRassenScreenPlay"
}

registerScreenPlay("GhomrassenMosRassenScreenPlay", true)

function GhomrassenMosRassenScreenPlay:start()
	if (isZoneEnabled("ghomrassen")) then
		self:spawnMobiles()
	end
end

function GhomrassenMosRassenScreenPlay:spawnMobiles()

	spawnMobile("ghomrassen", "commoner",60,-3302,0,-5148.5,103,0)


	
	
	
	
	
	
	

end
