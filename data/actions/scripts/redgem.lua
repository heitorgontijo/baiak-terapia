function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 927277) == -1 then
		doPlayerSetStorageValue(cid, 927277, 1)
		doPlayerAddItem(cid,2156,1)
		doBroadcastMessage(getCreatureName(cid).." Conseguiu finalizar a quest da Red Gem")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Voc� ja pegou a sua Gema.")
	end
	return true
end