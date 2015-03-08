cnet_auxilary_shuttle = ScreenPlay:new {
	numberOfActs = 1,
}

registerScreenPlay("cnet_auxilary_shuttle", true)

--------------------------------------
--   Initialize screenplay           -
--------------------------------------

function cnet_auxilary_shuttle:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

--spawn the Lambda shuttle & barker NPC

function cnet_auxilary_shuttle:spawnMobiles()

--	local pShuttle = spawnMobile("corellia", "lambda_shuttle", 1, -147.3, 28, -4781.8, 0, 0)
--  local shuttle = LuaCreatureObject(pShuttle)
--	shuttle:setOptionsBitmask(256)
--	shuttle:setPosture(PRONE)
	
--	local pBarker = spawnMobile("corellia", "shuttleloc_barker", 1, -164.0, 28.0, -4720.3, 88, 0)
--	local barker = LuaCreatureObject(pBarker)
--	barker:setOptionsBitmask(256)
--	self:barkShuttleLocation(pBarker)
	
end

--spawn the travel terminal players dbl click to travel

function cnet_auxilary_shuttle:spawnSceneObjects()

	local pCollector = spawnSceneObject("corellia", "object/tangible/furniture/imperial/data_terminal_s1.iff", -159, 28.0, -4783.1, 0, 1, 0, 0, 0)
	local collector = LuaSceneObject(pCollector)
	local col2creo = LuaCreatureObject(pCollector)
	col2creo:setOptionsBitmask(264)
	collector:setCustomObjectName("\\#ee3377Travel to Super Mall")
	createObserver(OBJECTRADIALUSED, "cnet_auxilary_shuttle", "teleportNaboo", pCollector)
	
end

--  shuttle location barker

function cnet_auxilary_shuttle:barkShuttleLocation(pBarker)
	if (pBarker ~= nil) then
		spatialChat(pBarker, "\\#881100Attention Citizens!\n\NEW SUPER MALL ON NABOO THIS WAY PLEASE")
	createEvent(15000, "cnet_auxilary_shuttle", "barkShuttleLocation", pBarker)
	end
end

function cnet_auxilary_shuttle:teleportNaboo(pCollector, pPlayer)
	local player = LuaSceneObject(pPlayer)
	player:switchZone("naboo", -4036.9, -195.6, 4627.1, 0)
end

    --Return from Super mall
	local pCollector3 = spawnSceneObject("naboo", "object/tangible/furniture/imperial/data_terminal_s1.iff", -4036.8, -195.6, 4627.1, 0, 1, 0, 0, 0)
	local collector3 = LuaSceneObject(pCollector3)
	local col3creo = LuaCreatureObject(pCollector3)
	col3creo:setOptionsBitmask(264)
	collector3:setCustomObjectName("\\#ee3377Travel to Coronet, Corellia")
	createObserver(OBJECTRADIALUSED, "cnet_auxilary_shuttle", "teleportCnet", pCollector3)
