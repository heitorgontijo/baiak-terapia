function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 927111) == -1 then
		doPlayerSetStorageValue(cid, 927111, 1)
		doPlayerAddItem(cid,8300,1)
		doBroadcastMessage(getCreatureName(cid).." Conseguiu finalizar a quest do OUTFIT VIP")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou o seu OUTFIT.")
	end
	return true
end