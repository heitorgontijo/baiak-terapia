function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 277288) == -1 then
		doPlayerSetStorageValue(cid, 277288, 1)
		doPlayerAddItem(cid,2154,1)
		doBroadcastMessage(getCreatureName(cid).." Conseguiu finalizar a quest da Yellow Gem")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou a sua Gema.")
	end
	return true
end