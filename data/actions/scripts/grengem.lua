function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 277277) == -1 then
		doPlayerSetStorageValue(cid, 277277, 1)
		doPlayerAddItem(cid,2155,1)
		doBroadcastMessage(getCreatureName(cid).." Conseguiu finalizar a quest da Gren Gem")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou a sua Gema.")
	end
	return true
end