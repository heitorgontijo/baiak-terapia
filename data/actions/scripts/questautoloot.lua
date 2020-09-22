function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 622221) == -1 then
		doPlayerSetStorageValue(cid, 622221, 1)
		doPlayerAddItem(cid,11249,1)
		doBroadcastMessage(getCreatureName(cid).." Finalizou a quest do AutoLoot Booster.")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você já pegou seu AutoLoot!")
	end
	return true
end