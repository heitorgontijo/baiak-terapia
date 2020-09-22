function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 98866) == -1 then
		doPlayerSetStorageValue(cid, 98866, 1)
		doPlayerAddItem(cid,2641,1)
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você já pegou a regeneration Boots!")
	end
	return true
end