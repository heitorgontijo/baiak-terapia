function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 229162) == -1 then
		doPlayerSetStorageValue(cid, 229162, 1)
		doPlayerAddItem(cid,2346,1)
		doBroadcastMessage(getCreatureName(cid).." Conseguiu finalizar a quest da Stamina Potion")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou a sua Stamina Potion.")
	end
	return true
end