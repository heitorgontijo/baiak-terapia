function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 119162) == -1 then
		doPlayerSetStorageValue(cid, 119162, 1)
		doPlayerAddItem(cid,7443,1)
		doBroadcastMessage(getCreatureName(cid).." Conseguiu finalizar a quest do Double Exp")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou o seu Double Exp")
	end
	return true
end