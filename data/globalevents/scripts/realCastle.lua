local function announce(message, times)
	if times == 0 then return true end
	doBroadcastMessage(message)
	addEvent(announce,5*60000,message,times - 1)
end

--[[function onTime()
	if not realCastle.isOpen() then
		announce("[Alfa Castle] O acesso � �rea de dominar do castelo est� liberado at� as 20:00. Boa sorte a todas as guilds!",11)
		for i = 1,4 do
			addEvent(doBroadcastMessage,60000 * i,"[Alfa Castle] O acesso � �rea de dominar do castelo est� liberado at� as 23:00. Boa sorte a todas as guilds!")
		end
		realCastle.open()
	else
		realCastle.close()
	end
    return true
end]]

function onTime()
	if realCastle.isOpen() then
		realCastle.close()
	else
		if isInArray(realCastle.open_days, os.date("%A")) then
			announce("[Alfa Castle] O acesso � �rea de dominar do castelo est� liberado at� as 23:00. Boa sorte a todas as guilds!",11)
			for i = 1,4 do
				addEvent(doBroadcastMessage,60000 * i,"[Alfa Castle] O acesso � �rea de dominar do castelo est� liberado at� as 23:00. Boa sorte a todas as guilds!")
			end
			realCastle.open()
		else
			doBroadcastMessage("[Alfa Castle] O castelo foi fechado para os plebeus poderem prepar�-lo para a pr�xima batalha, que ocorrer� amanh� �s 22:00!")
			realCastle.release()
		end
	end
	return true
end
