local ObjectManager = require("managers.object.object_manager")
RaceTrack = require("screenplays.racetracks.racetrackengine")


mosrassen_racetrack_screenplay = RaceTrack:new {
	trackConfig={
	  debugMode=1, -- 0 = off, 1 = print debug messages
		planetName = "ghomrassen", -- The planet the Track is on
		badgeToAward=BDG_RACING_MOSRASSEN_HILLS,  -- Badge to be awarded for best daily time-bdg_racing_mosrassen_hills
		trackName="MRHRT",  -- Internal trackname , should be unique to the track
		className="mosrassen_racetrack_screenplay", -- Class name of this class
		trackCheckpoint="@theme_park/racing/racing:mosrassen_waypoint_name_checkpoint", --Waypoint names
		trackLaptime="@theme_park/racing/racing:mosrassen_laptime_checkpoint", -- System message sent at each waypoint
		timeResolution=2, -- number of decimal places to use for the laptimes 0 = none, 1 = well 1 etc
		expiryTime = (1*3600), --Amount of time in seconds that a player will be expired from the track (stops silly times over this limit)
    resetTime = (22*3600)+(10*60), --Time of day in seconds that track resets High Scores
		waypointRadius=10, -- size of the waypoint observer
		raceCoordinator = {x=-3377,y=-5297,z=0.0}, -- Location of the race coordinator. Note the Z coord is VERY important or conversations break
		waypoints = { {x = -3860, y = -5343}, -- The coords of the waypoints
					  {x = -4378, y = -5372},
					  {x = -4499, y = -4903},
					  {x = -4260, y = -4675},
					  {x = -3936, y = -4611},
					  {x = -3386, y = -4644},
					  {x = -3191, y = -4399},
					  {x = -3006, y = -4340},
					  {x = -2855, y = -4550},
					  {x = -2649, y = -4624},
					  {x = -2574, y = -4861},
					  {x = -2516, y = -5106},
					  {x = -2604, y = -5335},
					  {x = -2734, y = -5451},
					  {x = -2956, y = -5521},
					  {x = -3121, y = -5090},
					  {x = -3373, y = -5044},
					  {x = -3225, y = -5279}
					}
		}
}

registerScreenPlay("mosrassen_racetrack_screenplay", true)

--------------------------------------
--   Initialize screenplay           -
--------------------------------------
function mosrassen_racetrack_screenplay:start()
	if (isZoneEnabled(self.trackConfig.planetName)) then
		self:spawnMobiles()
		self:createRaceTrack()
	end
end

function mosrassen_racetrack_screenplay:spawnMobiles()
	local pCoord = spawnMobile(self.trackConfig.planetName, "mosrassen_race_coordinator", 1, self.trackConfig.raceCoordinator.x, self.trackConfig.raceCoordinator.z, self.trackConfig.raceCoordinator.y, 35, 0)
end

function mosrassen_racetrack_screenplay:enteredWaypoint(pActiveArea, pObject)
	return self:processWaypoint(pActiveArea, pObject)
end

mosrassen_racetrack_convo_handler = Object:new {}

function mosrassen_racetrack_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	return ObjectManager.withCreatureObject(conversingPlayer, function(creatureObject)
		local convosession = creatureObject:getConversationSession()
		local lastConversationScreen = nil
		local conversation = LuaConversationTemplate(conversationTemplate)
		local nextConversationScreen
		if ( conversation ~= nil ) then
			-- checking to see if we have a next screen
			if ( convosession ~= nil ) then
				 local session = LuaConversationSession(convosession)
				 if ( session ~= nil ) then
				 	lastConversationScreen = session:getLastConversationScreen()
				 else
				 	print("session was not good in getNextScreen")
				 end
			end
			if ( lastConversationScreen == nil ) then
			 	nextConversationScreen = conversation:getInitialScreen()
			else
				local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
				local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)
				nextConversationScreen = conversation:getScreen(optionLink)
			end
		end
		return nextConversationScreen
	end)
end

function mosrassen_racetrack_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	local screen = LuaConversationScreen(conversationScreen)
	local screenID = screen:getScreenID()
	if ( screenID == "cs_jsPlumb_1_116" ) then
		mosrassen_racetrack_screenplay:startRacing(conversingPlayer)
	elseif ( screenID == "cs_jsPlumb_1_181" ) then -- Personal Best
		mosrassen_racetrack_screenplay:displayPersonalBestTime(conversingPlayer)
	elseif ( screenID == "cs_jsPlumb_1_207" ) then -- Track Best
		mosrassen_racetrack_screenplay:displayTrackBestTime(conversingPlayer)
	end
	return conversationScreen
end
