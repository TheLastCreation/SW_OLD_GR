/*
 * CreatureAttackData.cpp
 *
 *  Created on: Sep 28, 2010
 *      Author: dannuic
 */

#include "CreatureAttackData.h"
#include "server/zone/objects/creature/commands/CombatQueueCommand.h"

CreatureAttackData::CreatureAttackData(const UnicodeString& dataString, const CombatQueueCommand* base) {
	baseCommand = base;
	fillFromBase();

	StringTokenizer data(dataString.toString());
	data.setDelimeter(";");

	while (data.hasMoreTokens()) {
		String varString;
		data.getStringToken(varString);

		int pos = varString.indexOf("=");

		if (pos == -1)
			continue;

		String key = varString.subString(0,pos);
		String value = varString.subString(pos + 1, varString.length());

		setVariable(key, value);
	}
}

CreatureAttackData::CreatureAttackData(const CreatureAttackData& data) {
	baseCommand = data.baseCommand;

	damageMultiplier = data.damageMultiplier;
	healthDamageMultiplier = data.healthDamageMultiplier;
	actionDamageMultiplier = data.actionDamageMultiplier;
	mindDamageMultiplier = data.mindDamageMultiplier;
	damage = data.damage;
	accuracyBonus = data.accuracyBonus;
	speedMultiplier = data.speedMultiplier;
	poolsToDamage = data.poolsToDamage;

	healthCostMultiplier = data.healthCostMultiplier;
	actionCostMultiplier = data.actionCostMultiplier;
	mindCostMultiplier = data.mindCostMultiplier;
	forceCostMultiplier = data.forceCostMultiplier;

	stateEffects = data.stateEffects;
	dotEffects = data.dotEffects;

	range = data.range;
	coneAngle = data.coneAngle;
	areaRange = data.areaRange;

	animationCRC = data.animationCRC;

	attackType= data.attackType;
	trails = data.trails;

	combatSpam = data.combatSpam;
}

void CreatureAttackData::fillFromBase() {
	damageMultiplier = baseCommand->getDamageMultiplier();
	damage = baseCommand->getDamage();
	accuracyBonus = baseCommand->getAccuracyBonus();
	speedMultiplier = baseCommand->getSpeedMultiplier();
	healthCostMultiplier = baseCommand->getHealthCostMultiplier();
	actionCostMultiplier = baseCommand->getActionCostMultiplier();
	mindCostMultiplier = baseCommand->getMindCostMultiplier();
	forceCostMultiplier = baseCommand->getForceCostMultiplier();
	poolsToDamage = baseCommand->getPoolsToDamage();
	stateEffects = baseCommand->getStateEffects();
	dotEffects = baseCommand->getDotEffects();
	coneAngle = baseCommand->getConeAngle();
	range = baseCommand->getRange();
	areaRange = baseCommand->getAreaRange();
	animationCRC = baseCommand->getAnimationCRC();
	attackType = baseCommand->getAttackType();
	trails = baseCommand->getTrails();
	combatSpam = baseCommand->getCombatSpam();

	healthDamageMultiplier = 1.f;
	actionDamageMultiplier = 1.f;
	mindDamageMultiplier = 1.f;
}

void CreatureAttackData::setVariable(const String& var, const String& val) {
	uint32 crc = var.hashCode();
	switch(crc) {
	case 0x9E64852D: // String("damage").hashCode():
		damage = Float::valueOf(val);
		break;
	case 0xA82FB287: // String("damageMultiplier").hashCode():
		damageMultiplier = Float::valueOf(val);
		break;
	case 0xC60F1652: // String("healthDamageMultiplier").hashCode():
		healthDamageMultiplier = Float::valueOf(val);
		break;
	case 0x77139783: // String("actionDamageMultiplier").hashCode():
		actionDamageMultiplier = Float::valueOf(val);
		break;
	case 0xD7D06F99: // String("mindDamageMultiplier").hashCode():
		mindDamageMultiplier = Float::valueOf(val);
		break;
	case 0xC33D0A1B: // String("accuracyBonus").hashcode()
		accuracyBonus = Integer::valueOf(val);
		break;
	case 0x7CA69F2E: // String("speedMultiplier").hashCode()
		speedMultiplier = Float::valueOf(val);
		break;
	case 0x3A1C0159: // String("healthCostMultiplier").hashCode()
		healthCostMultiplier = Float::valueOf(val);
		break;
	case 0x5FFD87F5: // String("actionCostMultiplier").hashCode()
		actionCostMultiplier = Float::valueOf(val);
		break;
	case 0xDF28A3E4: // String("mindCostMultiplier").hashCode()
		mindCostMultiplier = Float::valueOf(val);
		break;
	case 0xA3CB47C4: // String("forceCostMultiplier").hashCode()
		forceCostMultiplier = Float::valueOf(val);
		break;
	case 0xBF4C6ADB: // String("poolsToDamage").hashCode()
		poolsToDamage = Integer::valueOf(val);
		break;
	case 0xD2C29953: // String("coneAngle").hashCode()
		coneAngle = Integer::valueOf(val);
		break;
	case 0xE17D7C71: // String("range").hashCode()
		range = Integer::valueOf(val);
		break;
	case 0xFEC2FA79: // String("areaRange").hashCode()
		areaRange = Integer::valueOf(val);
		break;
	case 0x244FB60D: // String("animationCRC").hashCode()
		animationCRC = Integer::valueOf(val);
		break;
	case 0x708615B8: // String("attackType").hashCode()
		attackType = Integer::valueOf(val);
		break;
	case 0x550ED3F5: // String("trails").hashCode()
		trails = Integer::valueOf(val);
		break;
	case 0xFAFA1475: // String("combatSpam").hashCode()
		combatSpam = val;
		break;
	default:
		break;
	}
}

String CreatureAttackData::getCommandName() const {
	return baseCommand->getQueueCommandName();
}

uint32 CreatureAttackData::getCommandCRC() const {
	return baseCommand->getNameCRC();
}
