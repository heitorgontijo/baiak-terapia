function onLogout(cid)
    if getPlayerStorageValue(cid, 888123) > os.time() then
        doPlayerSendCancel(cid, "Voc� n�o pode logar enquanto esta em war! Espere "..getPlayerStorageValue(cid, 888123) - os.time().." segundos.")
        return false
    end
    return true
end