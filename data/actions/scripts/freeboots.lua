function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 92666) == -1 then
		doPlayerSetStorageValue(cid, 92666, 1)
		doPlayerAddItem(cid,2641,1)
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Voc� j� pegou a regeneration Boots!")
	end
	return true
end