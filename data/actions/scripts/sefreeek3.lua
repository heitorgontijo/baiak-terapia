function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 923171) == -1 then
		doPlayerSetStorageValue(cid, 923171, 1)
		doPlayerAddItem(cid,2477,1)
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você ja pegou a sua Legs")
	end
	return true
end