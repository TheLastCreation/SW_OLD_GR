battlefeild1rebelnpcs1ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("battlefeild1rebelnpcs1ScreenPlay", true)

function battlefeild1rebelnpcs1ScreenPlay:start()
	if (isZoneEnabled("taanab")) then
		self:spawnMobiles()
	end
end

function battlefeild1rebelnpcs1ScreenPlay:spawnMobiles()
	--Inside
	spawnMobile("taanab", "rebel_army_captain", 30,1989.2, 45, 5507.2,-93,0)
end
