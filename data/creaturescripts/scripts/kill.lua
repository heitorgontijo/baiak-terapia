local aloot_boost = {[2406] = 36, [2537] = 4800, [2377] = 480, [2663] = 600, [2472] = 195000, [2398] = 36, [2475] = 7200, [2519] = 6500, [2497] = 10700, [2523] = 180000, [2494] = 325000, [2400] = 144000, [2491] = 6000, [2421] = 325000, [2646] = 260000, [2477] = 7200, [2413] = 84, [2656] = 18000, [2498] = 52000, [2647] = 600, [2534] = 32500, [7402] = 19500, [2466] = 26000, [2465] = 240, [2408] = 120000, [2518] = 1800, [2500] = 3000, [2376] = 30, [2470] = 91000, [2388] = 24, [2645] = 26000, [2434] = 2400, [2463] = 480, [2536] = 11700, [2387] = 240, [2396] = 4800, [2381] = 240, [2528] = 4800, [2409] = 1800, [2414] = 12000, [2427] = 9000, [2407] = 7200, [2458] = 42, [2383] = 960, [2392] = 3600, [2488] = 18000, [2525] = 120, [2423] = 240, [7382] = 13000, [2462] = 1300, [2520] = 39000, [2390] = 180000, [2417] = 72, [2436] = 1200, [5741] = 52000, [2378] = 120, [2487] = 24000, [2476] = 6500, [8891] = 36000, [2459] = 36, [2195] = 52000, [2391] = 7200, [2464] = 120, [8889] = 72000, [2432] = 13000, [2431] = 108000, [2492] = 52000, [2515] = 240, [2430] = 2400, [2393] = 13000, [7419] = 36000, [2522] = 130000, [2514] = 65000}

local function getPlayerStorageZero(cid, storage) -- By Killua
    local sto = getPlayerStorageValue(cid, storage)
    if tonumber(sto) then
        return tonumber(sto) > tonumber(0) and tonumber(sto) or tonumber(0)
    end
    return tonumber(0)
end

local tabela = {}

local function getPlayerList(cid)
	local tab = {}
	if getPlayerStorageValue(cid, 04420021) ~= -1 then
		table.insert(tab, getPlayerStorageValue(cid, 04420021))
	end
	if getPlayerStorageValue(cid, 04420031) ~= -1 then
		table.insert(tab, getPlayerStorageValue(cid, 04420031))
	end
	if getPlayerStorageValue(cid, 04420041) ~= -1 then
		table.insert(tab, getPlayerStorageValue(cid, 04420041))
	end
	if getPlayerStorageValue(cid, 04420051) ~= -1 then
		table.insert(tab, getPlayerStorageValue(cid, 04420051))
	end
	if #tab > 0 then
		return tab
	end
	return {}
end

local function boost(cid)
	return tonumber(getPlayerStorageValue(cid,722381)) >= os.time()
end

local function autoLoot(cid, pos)
	if not isPlayer(cid) then return end
	local check = false
	local str = ""
	local position = {}
	for i = 1, 255 do
		pos.stackpos = i
		if getThingFromPos(pos).uid and getThingFromPos(pos).uid > 0 and isContainer(getThingFromPos(pos).uid) then
			position = pos
			check = true
			break
		end
	end
	if check then
		local corpse = getContainerItemsInfo(getThingFromPos(position).uid)		
		if corpse then
			for index, info in pairs(corpse) do
				if index < countTable(corpse) then
					if info.uid and info.itemid then
						if isContainer(info.uid) then
							local bag = getContainerItemsInfo(info.uid)
							for i = 1, countTable(bag) do
								if isInArray(getPlayerList(cid), bag[i].itemid) then
									if bag[i].quant > 1 then
										doRemoveItem(bag[i].uid, bag[i].quant)
										doPlayerAddItem(cid, bag[i].itemid, bag[i].quant)
										str = str.." "..bag[i].quant.." "..getItemNameById(bag[i].itemid).." +"
									else
										doRemoveItem(bag[i].uid)
										if boost(cid) then
											if aloot_boost[bag[i].itemid] then
												doPlayerSetBalance(cid,getPlayerBalance(cid) + aloot_boost[bag[i].itemid])
												str = str.." 1 "..getItemNameById(bag[i].itemid).." ("..aloot_boost[bag[i].itemid].."gp no banco) +"
											else
												doPlayerAddItem(cid, bag[i].itemid, 1)
												str = str.." 1 "..getItemNameById(bag[i].itemid).." +"
											end
										else
											doPlayerAddItem(cid, bag[i].itemid, 1)
											str = str.." 1 "..getItemNameById(bag[i].itemid).." +"
										end
									end
								end
							end
						end
					end
				end
				if isInArray(getPlayerList(cid), info.itemid) then
					if info.quant > 1 then
						doRemoveItem(info.uid, info.quant)
						doPlayerAddItem(cid, info.itemid, info.quant)
						str = str.." "..info.quant.." "..getItemNameById(info.itemid).." +"
					else
						doRemoveItem(info.uid)
						if boost(cid) then
							if aloot_boost[info.itemid] then
								doPlayerSetBalance(cid,getPlayerBalance(cid) + aloot_boost[info.itemid])
								str = str.." 1 "..getItemNameById(info.itemid).." ("..aloot_boost[info.itemid].."gps no banco) +"
							else
								doPlayerAddItem(cid, info.itemid, 1)
								str = str.." 1 "..getItemNameById(info.itemid).." +"
							end
						else
							doPlayerAddItem(cid, info.itemid, 1)
							str = str.." 1 "..getItemNameById(info.itemid).." +"
						end
					end
				end
			end
		end
	end
	setPlayerTableStorage(cid,822564,{[1] = str, [2] = 0})
end

local function autoGold(cid, pos)
	if not isPlayer(cid) then return end
	local check = false
	local total = 0
	local position = {}
	for i = 1, 255 do
		pos.stackpos = i
		if getThingFromPos(pos).uid and getThingFromPos(pos).uid > 0 and isContainer(getThingFromPos(pos).uid) then
			position = pos
			check = true
			break
		end
	end
	if check then
		local corpse = getContainerItemsInfo(getThingFromPos(position).uid)
		if corpse then
			for index, info in pairs(corpse) do
				if info.uid and info.itemid then
					if index < countTable(corpse) then
						if isContainer(info.uid) then
							local bag = getContainerItemsInfo(info.uid)
							for i = 1, countTable(bag) do
								if isInArray({2148, 2152, 2160}, bag[i].itemid) then
									local multiplie = 1
									if bag[i].itemid == 2148 then
										multiplie = 1
									elseif bag[i].itemid == 2152 then
										multiplie = 100
									elseif bag[i].itemid == 2160 then
										multiplie = 10000
									end
									doRemoveItem(bag[i].uid, bag[i].quant)
									doPlayerSetBalance(cid, getPlayerBalance(cid) + tonumber(bag[i].quant) * multiplie)
									total = total + bag[i].quant * multiplie
									doPlayerSetStorageValue(cid, 04421021, tonumber(getPlayerStorageZero(cid, 04421021)) + tonumber(info.quant) * tonumber(multiplie))
								end
							end
						end
					end
					if isInArray({2148, 2152, 2160}, info.itemid) then
						local multiplie = 1
						if info.itemid == 2148 then
							multiplie = 1
						elseif info.itemid == 2152 then
							multiplie = 100
						elseif info.itemid == 2160 then
							multiplie = 10000
						end
						doRemoveItem(info.uid, info.quant)
						doPlayerSetBalance(cid, getPlayerBalance(cid) + info.quant * multiplie)
						doPlayerSetStorageValue(cid, 04421021, tonumber(getPlayerStorageZero(cid, 04421021)) + tonumber(info.quant) * tonumber(multiplie))
						total = total + info.quant * multiplie
					end
				end
			end
		end
	end
	if total > 0 then
		total = total - (total * 0.2) 
		total = math.ceil(total)
		doPlayerSetBalance(cid,getPlayerBalance(cid) + total)
		local tab = getPlayerTableStorage(cid,822564)
		tab[2] = total
		setPlayerTableStorage(cid,822564,tab)
	end
end

local function sendMsg(cid)
	if not isPlayer(cid) then return end
	local tab = getPlayerTableStorage(cid,822564)
	if countTable(tab) >= 1 then
		if tab[1] then
			if tab[2] and tab[2] > 0 then
				doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "[Auto Loot System] Coletados: ".. tab[1] .." ".. tab[2] .." gold coins.")
			else
				if type(tab[1]) == "string" and string.len(tab[1]) > 1 then
					doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "[Auto Loot System] Coletados: "..tab[1])
				end
			end
		elseif not tab[1] then
			if tab[2] then
				doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "[Auto Loot System] Coletados: "..tab[2].." gold coins.")
			end
		end
	end
	doPlayerSetStorageValue(cid,822564,-1)
end

local bosses = {
    ["Striker Cyclope"] = {
        {itemid = 9971, count = {min = 5, max = 15}},
	{itemid = 12396, count = {min = 1, max = 1}},
	{itemid = 2346, count = {min = 0, max = 1}},
        {itemid = 12575, count = {min = 1, max = 1}}
    },
    ["Bk Ferumbras"] = {
        {itemid = 8305, count = {min = 1, max = 2}},
	{itemid = 8981, count = {min = 1, max = 1}},
	{itemid = 9971, count = {min = 50, max = 80}},
	{itemid = 12396, count = {min = 3, max = 5}},
        {itemid = 12575, count = {min = 3, max = 5}}
    },
}

local wzUmBoss = {
    ["Gonka"] = {
        {itemid = 9971, count = {min = 5, max = 15}},
	{itemid = 12396, count = {min = 1, max = 1}},
	{itemid = 2346, count = {min = 0, max = 1}},
        {itemid = 12575, count = {min = 1, max = 1}}
    }
}

local wzDoisBoss = {
    ["Jabuti"] = {
        {itemid = 9971, count = {min = 5, max = 15}},
	{itemid = 12396, count = {min = 1, max = 1}},
	{itemid = 2346, count = {min = 0, max = 1}},
        {itemid = 12575, count = {min = 1, max = 1}}
    }
}

function getRotate(uid)
    local pos = getCreaturePosition(uid)
    return
    {
        {x = pos.x, y = pos.y-1, z = pos.z},
        {x = pos.x, y = pos.y+1, z = pos.z},
        {x = pos.x-1, y = pos.y, z = pos.z},
        {x = pos.x+1, y = pos.y, z = pos.z}
    }
end

function getRotateUm(uid)
    local pos = getCreaturePosition(uid)
    return
    {
        {x = pos.x-1, y = pos.y-1, z = pos.z},
        {x = pos.x+1, y = pos.y+1, z = pos.z},
        {x = pos.x+1, y = pos.y-1, z = pos.z},
        {x = pos.x-1, y = pos.y+1, z = pos.z}
    }
end

function getRotateDois(uid)
    local pos = getCreaturePosition(uid)
    return
    {
        {x = pos.x, y = pos.y-1, z = pos.z},
        {x = pos.x, y = pos.y+1, z = pos.z},
        {x = pos.x-1, y = pos.y, z = pos.z},
        {x = pos.x+1, y = pos.y, z = pos.z}
    }
end

function DelTp()
	posWzDois = {x = 132, y = 138, z = 15}
        local t = getTileItemById(posWzDois, 1387)
        if t then
                doRemoveItem(t.uid, 1)
                doSendMagicEffect(posWzDois, CONST_ME_POFF)
        end
end

function DelTpWz()
	posWzUm = {x = 153, y = 278, z = 14}
        local t = getTileItemById(posWzUm, 1387)
        if t then
                doRemoveItem(t.uid, 1)
                doSendMagicEffect(posWzUm, CONST_ME_POFF)
        end
end

function onKill(cid, target, lastHit)
    local bid = bosses[getCreatureName(target)]
    local wzUm = wzUmBoss[getCreatureName(target)]
    local wzDois = wzDoisBoss[getCreatureName(target)]
    local level = 400
    local item,count = 5925,1
    local monster = getCreatureName(target)
    local room = getArenaMonsterIdByName(monster)

    if room > 0 then
	setPlayerStorageValue(cid, room, 1)
	doPlayerSendTextMessage(cid,MESSAGE_EVENT_DEFAULT,'Voce pode ir para a proxima sala!')
    end

    if isPlayer(target) and isPlayer(cid) then
        local pid = getPlayersOnline()
        for i = 1, #pid do
            doPlayerSendChannelMessage(pid[i], "", "O jogador ".. getCreatureName(cid) .." [".. getPlayerLevel(cid) .."]  acabou de matar o noob " .. getCreatureName(target) .. " [".. getPlayerLevel(target) .."]!", TALKTYPE_CHANNEL_HIGHLIGHT, 8)
        end

	if getPlayerLevel(target) >= 400 then
            if getPlayerIp(cid) ~= getPlayerIp(target) then
	    	if getPlayerLevel(target) >= 400 and getPlayerLevel(target) <= 449 then
	    		exppg = getExperienceStage(getPlayerLevel(cid))
	    		doPlayerAddExp(cid, 22000 * exppg)
	    		doSendAnimatedText(getThingPos(cid), 12000 * exppg, 210)
	    	elseif getPlayerLevel(target) >= 450 and getPlayerLevel(target) <= 499 then
	    		exppg = getExperienceStage(getPlayerLevel(cid))
	    		doPlayerAddExp(cid, 26000 * exppg)
	    		doSendAnimatedText(getThingPos(cid), 12000 * exppg, 210)
	    	elseif getPlayerLevel(target) >= 500 and getPlayerLevel(target) <= 549 then
	    		exppg = getExperienceStage(getPlayerLevel(cid))
	    		doPlayerAddExp(cid, 32000 * exppg)
	    		doSendAnimatedText(getThingPos(cid), 15000 * exppg, 210)
	    	elseif getPlayerLevel(target) >= 550 then
	    		exppg = getExperienceStage(getPlayerLevel(cid))
	    		doPlayerAddExp(cid, 36000 * exppg)
	    		doSendAnimatedText(getThingPos(cid), 20000 * exppg, 210)
            	end
		if getPlayerStorageValue(cid,22867) >= 1 and getPlayerStorageValue(cid,34765) <= 30 then
			setPlayerStorageValue(cid, 34765, getPlayerStorageValue(cid, 34765) + 1)
		end
            end
	end
    end

    if isPlayer(cid) and isPlayer(target) and getPlayerIp(target) ~= getPlayerIp(cid) then
	doPlayerAddItem(cid, item, count)
    end

    if isPlayer(cid) and isMonster(target) then
	if getPlayerStorageValue(cid, 04421001) == 1 and #getPlayerList(cid) > 0 then
		local pos = getCreaturePosition(target)
		addEvent(autoLoot, 500, cid, pos)
	end
	if getPlayerStorageValue(cid, 04421011) == 1 then
		local pos = getCreaturePosition(target)
		addEvent(autoGold, 540, cid, pos)
	end
	if getPlayerStorageValue(cid, 04421001) == 1 or getPlayerStorageValue(cid, 04421011) == 1 then
		addEvent(sendMsg, 560, cid)
	end
    end

    if isMonster(target) and bid and getStorage(33999) <= os.time() then
        doCreatureSetDropLoot(target, nil)
        for _, v in ipairs(bid) do
            doCreateItem(v.itemid, math.random(v.count.min, v.count.max), getRotate(target)[_])
	    doCreateItem(v.itemid, math.random(v.count.min, v.count.max), getRotateUm(target)[_])
	    doCreateItem(v.itemid, math.random(v.count.min, v.count.max), getRotateDois(target)[_])
            doSendMagicEffect(getRotate(target)[_], 6)
        end
        doSetStorage(33999, os.time() + 5)
    end

    if isMonster(target) and wzUm then
	doCreateTeleport(1387, {x=204, y=179, z=15}, {x=153, y=278, z=14})
	setPlayerStorageValue(cid, 45698, 1)
	addEvent(DelTpWz, 60 * 1000)
    end

    if isMonster(target) and wzDois then
	doCreateTeleport(1387, {x=204, y=179, z=15}, {x=132,y=138,z=15})
	setPlayerStorageValue(cid, 45699, 1)
	addEvent(DelTp, 60 * 1000)
    end
    return true
end