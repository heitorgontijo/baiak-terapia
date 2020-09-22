function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 999162) == -1 then
		doPlayerSetStorageValue(cid, 999162, 1)
		doPlayerAddItem(cid,2527,1)
		doBroadcastMessage(getCreatureName(cid).." Conseguiu finalizar a quest do Ultra Shield")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou o seu Ultra Shield")
	end
	return true
end