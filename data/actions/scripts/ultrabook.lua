function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 977769) == -1 then
		doPlayerSetStorageValue(cid, 977769, 1)
		doPlayerAddItem(cid,8903,1)
		doBroadcastMessage(getCreatureName(cid).." Conseguiu finalizar a quest do Ultra Spellbook")
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou o seu Ultra Spellbook")
	end
	return true
end