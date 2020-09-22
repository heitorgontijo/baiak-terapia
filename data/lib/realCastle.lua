realCastle = {
	
	open_storage = 722374,
	guild_storage = 722375,
	date_storages = {722376,722377,722378},
	open_days = {"Sunday","Monday","Tuesday","Wednesday","Thursday","Wednesday","Saturday"},
	frompos = {x = 3166, y = 260, z = 7},
	topos = {x = 3293, y = 337, z = 7}

}

realCastle.removePlayers = function()
	local first_cave = getPlayersInArea({x = 2829, y = 7, z = 7},{x = 3118, y = 467, z = 7})
	local second_cave = getPlayersInArea({x = 2902, y = 340, z = 7},{x = 3445, y = 585, z = 7})
	local fifith_cave = getPlayersInArea({x = 3304, y = 192, z = 7},{x = 3687, y = 340, z = 7})
	local sixth_cave = getPlayersInArea({x = 3595, y = 260, z = 8},{x = 3689, y = 338, z = 8})
	local seventh_cave = getPlayersInArea({x = 3616, y = 270, z = 9},{x = 3680, y = 341, z = 9})
	local eight_cave = getPlayersInArea({x = 3445, y = 175, z = 6},{x = 3515, y = 241, z = 6})
	local ninth_cave = getPlayersInArea({x = 3445, y = 175, z = 5},{x = 3515, y = 241, z = 5})
	local tenth_cave = getPlayersInArea({x = 3445, y = 175, z = 4},{x = 3515, y = 241, z = 4})
	local eleventh_cave = getPlayersInArea({x = 3143, y = 342, z = 8},{x = 3246, y = 423, z = 8})
	local castle_area = getPlayersInArea(realCastle.frompos,realCastle.topos)
	if first_cave then
		for _, pid in pairs(first_cave) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if second_cave then
		for _, pid in pairs(second_cave) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if third_cave then
		for _, pid in pairs(third_cave) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if fourth_cave then
		for _, pid in pairs(fourth_cave) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	for _, tid in pairs(getPlayersOnline()) do
		local pos = getThingPos(tid)
		if pos.x >= 2288 and pos.x <= 2364 and pos.y >= 433 and pos.y <= 509 then
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(tid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	for _, tid in pairs(getPlayersOnline()) do
		local pos = getThingPos(tid)
		if pos.x >= 2148 and pos.x <= 2189 and pos.y >= 641 and pos.y <= 679 then
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(tid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	for _, tid in pairs(getPlayersOnline()) do
		local pos = getThingPos(tid)
		if pos.x >= 2229 and pos.x <= 622 and pos.y >= 2320 and pos.y <= 704 then
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(tid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if fifith_cave then
		for _, pid in pairs(fifith_cave) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if sixth_cave then
		for _, pid in pairs(sixth_cave) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if area10 then
		for _, pid in pairs(area10) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if area11 then
		for _, pid in pairs(area11) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if area12 then
		for _, pid in pairs(area12) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if area13 then
		for _, pid in pairs(area13) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if area14 then
		for _, pid in pairs(area14) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if area15 then
		for _, pid in pairs(area15) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if area16 then
		for _, pid in pairs(area16) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if area17 then
		for _, pid in pairs(area17) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
	if area18 then
		for _, pid in pairs(area18) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end

	if castle_area then
		for _, pid in pairs(castle_area) do
			doTeleportThing(pid,getTownTemplePosition(1))
			doPlayerPopupFYI(pid,"O domínio de sua guild sob o castelo acabou e uma nova batalha está se iniciando.")
		end
	end
end

realCastle.open = function()
	setGlobalStorageValue(realCastle.open_storage,1)
	setGlobalStorageValue(realCastle.guild_storage,-1)
	realCastle.removePlayers()
end

realCastle.release = function()
	setGlobalStorageValue(realCastle.guild_storage,-1)
	realCastle.removePlayers()
end

realCastle.close = function()
	setGlobalStorageValue(realCastle.open_storage,-1)
	local tomorrow = getTomorrowsDate(getTomorrowsDate()[1])
	for i = 1,3 do
		setGlobalStorageValue(realCastle.date_storages[i],tomorrow[i])
	end
	local players = getPlayersInArea(realCastle.frompos, realCastle.topos)
	if players then
		for _, pid in pairs(players) do
			doTeleportThing(pid,getTownTemplePosition(1))
		end
	end
	if getGlobalStorageValue(realCastle.guild_storage) == -1 then
		doBroadcastMessage("[Alfa Castle] A batalha terminou e nenhuma guild conseguiu dominar o castelo! Amanhã às 22:00 vocês podem tentar novamente!")
	else
		doBroadcastMessage("[Alfa Castle] A batalha terminou e a guild vencedora foi "..getGuildNameByID(getGlobalStorageValue(realCastle.guild_storage)).."! Todos os jogadores dessa guild agora podem aproveitar o castelo até amanhâ às 22:00!")
	end
	doSaveServer()
end

realCastle.broadcast = function(message)
	local players = getPlayersInArea(realCastle.frompos, realCastle.topos)
	if players then
		for _, pid in pairs(players) do
			doPlayerSendTextMessage(pid,MESSAGE_STATUS_WARNING,message)
		end
	end
end

realCastle.domain = function(cid)
	local guild_id = getPlayerGuildId(cid)
	setGlobalStorageValue(realCastle.guild_storage,guild_id)
	realCastle.broadcast("[Alfa Castle] O jogador "..getPlayerName(cid).." da guild "..getPlayerGuildName(cid).." dominou o castelo! As outras guilds têm até às 23:00 para conseguir tirar o domínio deles, não desistam!")
end

realCastle.isDominating = function(cid)
	local guild_id = getPlayerGuildId(cid)
	return guild_id == getGlobalStorageValue(realCastle.guild_storage)
end

realCastle.isOpen = function()
	return getGlobalStorageValue(realCastle.open_storage) == 1
end