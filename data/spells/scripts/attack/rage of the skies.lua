local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_BIGCLOUDS)
setAttackFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 5, 5, 6, 12)

local area = createCombatArea(AREA_CROSS6X6)
setCombatArea(combat, area)

function onCastSpell(cid, var)
if isSpellBlocked(cid, {2,3}) then return false end
if isMonster(cid) then
        doCreatureSay(cid, "exevo gran mas vis", TALKTYPE_MONSTER)
    end
	return doCombat(cid, combat, var)
end
