function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid, 920006) == -1 then
		doPlayerSetStorageValue(cid, 920006, 1)
		doPlayerAddItem(cid,2179,1)
		doSendMagicEffect(getThingPos(cid), 28)
	else
		doPlayerSendCancel(cid, "Você já pegou o seu Ring")
	end
	return true
end