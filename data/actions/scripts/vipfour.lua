function onUse(cid, item, fromPosition, itemEx, toPosition)
	if getPlayerStorageValue(cid,49777) < 1 then               
         	setPlayerStorageValue(cid, 49777, 1)
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_HOLYDAMAGE)
		doPlayerSendTextMessage(cid,25,"Parabens agora voc� � um jogador VIP FOUR!") 
	else
		doPlayerSendTextMessage(cid,22,"voc� ja � um player VIP FOUR.")
	end
	return true
end