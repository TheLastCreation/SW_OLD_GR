local ObjectManager = require("managers.object.object_manager")

battlefeild1rebelturrets1ScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "battlefeild1rebelturrets1ScreenPlay",

	turrets = {
		{ template = "object/installation/turret/turret_tower_large.iff", x = 2038.2, z = 44.9, y = 5602.6 },
		{ template = "object/installation/turret/turret_tower_large.iff", x = 1942.4, z = 46.3, y = 5600.5 },
		--{ template = "object/installation/turret/turret_tower_large.iff", x = -6510.0, z = 404, y = 5931.7 },
		--{ template = "object/installation/turret/turret_tower_large.iff", x = -6474.8, z = 404, y = 5938.6 },
		--{ template = "object/installation/turret/turret_tower_large.iff", x = -6443.1, z = 404, y = 5999.0 },
		--{ template = "object/installation/turret/turret_tower_large.iff", x = -6457.1, z = 404, y = 6031.5 },
	},

}

registerScreenPlay("battlefeild1rebelturrets1ScreenPlay", true)

function battlefeild1rebelturrets1ScreenPlay:start()
	if (isZoneEnabled("taanab")) then
		--self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function battlefeild1rebelturrets1ScreenPlay:spawnSceneObjects()
	for i = 1, 2, 1 do
		local turretData = self.turrets[i]
		local pTurret = spawnSceneObject("taanab", turretData.template, turretData.x, turretData.z, turretData.y, 0, 0.707107, 0, 0.707107, 0)

		if pTurret ~= nil then
			local turret = TangibleObject(pTurret)
			turret:setFaction(FACTIONREBEL)
			turret:setPvpStatusBitmask(1)
		end

		writeData(SceneObject(pTurret):getObjectID() .. ":rebel_turrets:turrets_index", i)
		createObserver(OBJECTDESTRUCTION, "battlefeild1rebelturrets1ScreenPlay", "notifyTurretDestroyed", pTurret)
	end
	
end

function battlefeild1rebelturrets1ScreenPlay:notifyTurretDestroyed(pTurret, pPlayer)
	ObjectManager.withSceneObject(pTurret, function(turret)
		local turretData = self.turrets[readData(turret:getObjectID() .. ":rebel_turrets:turret_index")]
		turret:destroyObjectFromWorld()
		createEvent(1800000, "battlefeild1rebelturrets1ScreenPlay", "respawnTurret", pTurret)
	end)
	CreatureObject(pPlayer):clearCombatState(1)
	return 0
end

function battlefeild1rebelturrets1ScreenPlay:respawnTurret(pTurret)
	if pTurret == nil then return end

	TangibleObject(pTurret):setConditionDamage(0, false)
	local turretData = self.turrets[readData(SceneObject(pTurret):getObjectID() .. ":rebel_turrets:turret_index")]
	local pZone = getZoneByName("taanab")

	if pZone == nil then return end

	SceneObject(pZone):transferObject(pTurret, -1, true)
end

--function RebelHideoutScreenPlay:spawnMobiles()
	--spawnMobile("corellia", "rebel_first_lieutenant", 300, -6565.580, 405.006, 5923.700, 143.563, 0)
--end

