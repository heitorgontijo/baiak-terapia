--[[

				Real Castle Event
	Desenvolvido por Vítor Bertolucci (Killua)

]]

function onUse(cid, item, frompos, item2, topos)
	if item.uid == 61469 then
		local guild = getGlobalStorageValue(realCastle.guild_storage) > 1 and "a guild "..getGuildNameByID(getGlobalStorageValue(realCastle.guild_storage)).." possui o domínio" or "nenhuma guild possui o domínio do castelo"
		local sto = realCastle.date_storages
		local gsto = getGlobalStorageValue
		local time = gsto(sto[1]).."/"..gsto(sto[2]).."/"..gsto(sto[3])
		local domain = realCastle.isOpen() and "as guilds estão batalhando pelo domínio do castelo" or guild
		local msg = " -----[Hotkeys para Mining]-----\n\n\Para minerar use --> auto 900 useongrounditem 4872 5635 | useongrounditem 3456 5631 | useongrounditem 3456 4464 | useongrounditem 3456 4464 | useongrounditem 3456 4464 Para dropar Items use --> auto 1 dropitems 3039 3041 675 3036 3037 3038 3030 3033 3028 677 3029 678 3330 676  3061 3492 3492 3061 3114 1781 3032 3027 3029  3026"
		doShowTextDialog(cid,8977,msg)
		return true
	end
	if not realCastle.isOpen() then 
		doTeleportThing(cid,getTownTemplePosition(1)) 
		return true 
	end
	if not realCastle.isDominating(cid) then
		realCastle.domain(cid)
		doSendMagicEffect(getThingPos(cid), CONST_ME_CRAPS)
	else
		doPlayerSendCancel(cid,"Sua guild já está com o domínio do castelo.")
	end
	return true
end
