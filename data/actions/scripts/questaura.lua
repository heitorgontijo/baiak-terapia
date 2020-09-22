function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 777111) == -1 then
		doPlayerSetStorageValue(cid, 777111, 1)
		doPlayerAddItem(cid,11253,1)
		doBroadcastMessage(getCreatureName(cid).." Finalizou a Aura Quest")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você já pegou sua aura!")
	end
	return true
end