function onStepIn(cid, item, position, fromPosition)

local tileConfig = {
	kickPos = fromPosition, kickEffect = CONST_ME_POFF,
	kickMsg = "Você não e um player VIP FOUR, faça a quest para acessar!",
	enterMsg = "Bem Vindo a area VIP FOUR!",
	enterEffect = CONST_ME_MAGIC_RED,
}

if isPlayer(cid) == true then
if getPlayerStorageValue(cid,49777) < 1 then 
		doTeleportThing(cid, tileConfig.kickPos)
		doSendMagicEffect(tileConfig.kickPos, tileConfig.kickEffect)
		doPlayerSendCancel(cid, tileConfig.kickMsg)
		return
	end
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, tileConfig.enterMsg)
		doSendMagicEffect(position, tileConfig.enterEffect)
		return true
end
end