function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 299277) == -1 then
		doPlayerSetStorageValue(cid, 299277, 1)
		doPlayerAddItem(cid,2153,1)
		doBroadcastMessage(getCreatureName(cid).." Conseguiu finalizar a quest da Violet Gem")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou a sua Gema.")
	end
	return true
end