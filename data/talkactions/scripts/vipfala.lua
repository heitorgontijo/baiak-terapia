function onSay(cid, words, param, channel)
	timePassed = 5 * 60
	message = getCreatureName(cid) .. " [" .. getPlayerLevel(cid) .. "]: " .. param
 
	if param == '' then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Digite sua mensagem.")
	return true
	end

	if vip.hasVip(cid) == FALSE then
		doPlayerSendCancel(cid, "Voc� n�o � um jogador VIP, para obter acesse www.baiakinho-ot.com")
	else
		if getPlayerStorageValue(cid, 56349) - os.time() <= 0 then
			doBroadcastMessage(message, MESSAGE_EVENT_ADVANCE)
			setPlayerStorageValue(cid, 56349, os.time() + timePassed)
		else
			doPlayerSendCancel(cid, "Voc� enviou uma mensagem a menos de 5 minutos!")
		end
	end
   return true
end