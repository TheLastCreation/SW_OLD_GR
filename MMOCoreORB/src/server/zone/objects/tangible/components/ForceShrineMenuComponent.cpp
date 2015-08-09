/*
 * ForceShrinenMenuComponent.cpp
 *
 *  Created on: 01/23/2012
 *      Author: Valkyra
 */

#include "ForceShrineMenuComponent.h"

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/creature/CreatureManager.h"

#include "server/zone/ZoneServer.h"

void ForceShrineMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player){

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
	menuResponse->addRadialMenuItem(213, 3, "@jedi_trials:meditate"); // Meditate
	
	if (player->hasSkill("force_title_jedi_rank_02")) {
		if (ghost->getJediState() == 2) {
			menuResponse->addRadialMenuItem(214, 3, "Dark Rank");
			menuResponse->addRadialMenuItem(215, 3, "Light Rank");
		}
	}
}

int ForceShrineMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) {

	ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

	if (ghost == NULL)
		return 0;

	
	if (selectedID == 213) {
		if (creature->getPosture() != CreaturePosture::CROUCHED){
			creature->sendSystemMessage("@jedi_trials:show_respect"); // Must show respect
		}
		if (creature->getScreenPlayState("VillageJediProgression") == 1 && !creature->hasSkill("force_title_jedi_rank_02")) {

			int unlocked = 1;
			if (unlocked == 1) {
				//If not a Jedi already.
				if (!creature->hasSkill("force_title_jedi_rank_02")) {
					ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
					box->setPromptTitle("@jedi_trials:padawan_trials_title"); // Jedi Trials
					box->setPromptText("@jedi_trials:padawan_trials_completed");
					ghost->addSuiBox(box);
					creature->sendMessage(box->generateMessage());
					SkillManager::instance()->awardSkill("force_title_jedi_rank_02", creature, true, true, true);
					creature->playEffect("clienteffect/entertainer_dazzle_level_3.cef", ""); // Not sure if it's the right one for this.
					PlayMusicMessage* pmm = new PlayMusicMessage("sound/intro.snd");
					creature->sendMessage(pmm);
					ghost->setJediState(2);

					/* Trainer number. Pick a random trainer, there are at least 600 in the galaxy. */

					ZoneServer* zoneServer = ghost->getZoneServer();
					int randomZone = System::random(zoneServer->getZoneCount() - 1);

					ManagedReference<Zone*> zone = zoneServer->getZone(randomZone);
					Vector3 randomTrainer = zone->getCreatureManager()->getRandomJediTrainer();

					if ((randomTrainer.getX() == 0) || (randomTrainer.getY() == 0)) { // No trainers on the zone.
						ManagedReference<Zone*> zone = zoneServer->getZone(0);
						Vector3 randomTrainer = zone->getCreatureManager()->getRandomJediTrainer();
					}
					Vector3 trainerPositionFinal(randomTrainer.getX(), randomTrainer.getY(), 0);
					String zoneName = zone->getZoneName();
					ghost->setTrainerCoordinates(trainerPositionFinal);
					ghost->setTrainerZoneName(zoneName); // For the Waypoint. 
					ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
					//Check if inventory is full.
					if (inventory->hasFullContainerObjects()) {
						creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); //	You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
						return 0;
					}
					ZoneServer* zserv = creature->getZoneServer();
					String PadawanRobe = "object/tangible/wearables/robe/robe_jedi_padawan.iff";
					ManagedReference<SceneObject*> padawanRobe = zserv->createObject(PadawanRobe.hashCode(), 1);
					inventory->transferObject(padawanRobe, -1);
					inventory->broadcastObject(padawanRobe, true);
				} else {
					ManagedReference<SceneObject*> inventory1 = creature->getSlottedObject("inventory");
					//Check if inventory is full.
					if (inventory1->hasFullContainerObjects()) {
						creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); //	You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
						return 0;
					}
					ZoneServer* zserv = creature->getZoneServer();
					String PadawanRobe1 = "object/tangible/wearables/robe/robe_jedi_padawan.iff";
					ManagedReference<SceneObject*> padawanRobe1 = zserv->createObject(PadawanRobe1.hashCode(), 1);
					inventory1->transferObject(padawanRobe1, -1);
					inventory1->broadcastObject(padawanRobe1, true);
				}
			}
		}
	}
			

	if (selectedID == 214) {
		if (!creature->hasSkill("force_rank_dark_novice")) {
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Dark Ranks"); // Jedi Trials
			box->setPromptText("Welcome to the Dark Ranks!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			SkillManager::instance()->awardSkill("force_rank_dark_novice", creature, true, true, true);
			creature->playEffect("clienteffect/entertainer_dazzle_level_3.cef", ""); // Not sure if it's the right one for this.
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/intro.snd");
			creature->sendMessage(pmm);
			ghost->setJediState(8);
			//Check if inventory is full.
			ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
			if (inventory->hasFullContainerObjects()) {
				creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); //	You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
				return 0;
			}
			ZoneServer* zserv = creature->getZoneServer();
			String DarkRobe = "object/tangible/wearables/robe/robe_jedi_dark_s04.iff";
			ManagedReference<SceneObject*> darkRobe = zserv->createObject(DarkRobe.hashCode(), 1);
			inventory->transferObject(darkRobe, -1);
			inventory->broadcastObject(darkRobe, true);
			} else {
				ManagedReference<SceneObject*> inventory1 = creature->getSlottedObject("inventory");
				//Check if inventory is full.
				if (inventory1->hasFullContainerObjects()) {
				creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); //	You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
				return 0;
				}
				ZoneServer* zserv = creature->getZoneServer();
				String DarkRobe1 = "object/tangible/wearables/robe/robe_jedi_dark_s04.iff";
				ManagedReference<SceneObject*> darkRobe1 = zserv->createObject(DarkRobe1.hashCode(), 1);
				inventory1->transferObject(darkRobe1, -1);
				inventory1->broadcastObject(darkRobe1, true);
			}
	}
	
	if (selectedID == 215) {
		if (!creature->hasSkill("force_rank_light_novice")) {
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Light Ranks"); // Jedi Trials
			box->setPromptText("Welcome to the Light Ranks!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			SkillManager::instance()->awardSkill("force_rank_light_novice", creature, true, true, true);
			creature->playEffect("clienteffect/entertainer_dazzle_level_3.cef", ""); // Not sure if it's the right one for this.
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/intro.snd");
			creature->sendMessage(pmm);
			ghost->setJediState(4);
			//Check if inventory is full.
			ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
			if (inventory->hasFullContainerObjects()) {
				creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); //	You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
				return 0;
			}
			ZoneServer* zserv = creature->getZoneServer();
			String LightRobe = "object/tangible/wearables/robe/robe_jedi_light_s04.iff";
			ManagedReference<SceneObject*> lightRobe = zserv->createObject(LightRobe.hashCode(), 1);
			inventory->transferObject(lightRobe, -1);
			inventory->broadcastObject(lightRobe, true);
			} else {
				ManagedReference<SceneObject*> inventory1 = creature->getSlottedObject("inventory");
				//Check if inventory is full.
				if (inventory1->hasFullContainerObjects()) {
				creature->sendSystemMessage("@jedi_spam:inventory_full_jedi_robe"); //	You have too many items in your inventory. In order to get your Padawan Robe you must clear out at least one free slot.
				return 0;
				}
				ZoneServer* zserv = creature->getZoneServer();
				String LightRobe1 = "object/tangible/wearables/robe/robe_jedi_light_s04.iff";
				ManagedReference<SceneObject*> lightRobe1 = zserv->createObject(LightRobe1.hashCode(), 1);
				inventory1->transferObject(lightRobe1, -1);
				inventory1->broadcastObject(lightRobe1, true);
			}
	}
	
	return 0;


}
