function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 993818) == -1 then
		doPlayerSetStorageValue(cid, 993818, 1)
		doPlayerAddItem(cid,8883,1)
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou o seu Armor")
	end
	return true
end