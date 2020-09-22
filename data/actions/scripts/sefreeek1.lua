function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 993817) == -1 then
		doPlayerSetStorageValue(cid, 993817, 1)
		doPlayerAddItem(cid,2496,1)
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou o seu Helmet ")
	end
	return true
end