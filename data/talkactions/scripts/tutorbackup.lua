local blockedLinks = {'bug', 'bugado', 'pick', 'cave exclusiva', 'addon', 'mining', 'donate', 'doa��o', 'points', 'exclusiva', 'minera', 'minera��o', 'hunt exclusiva', 'staff', 'adm', 'admin', 'task', 'miss�o', 'site', 'stamina', 'update', 'castle', 'element', 'elementos', 'elemento', 'refine', 'refinar', 'red', 'skull', 'magia', 'magias', 'autoloot', 'ip', 'site', 'enforced', 'hardcore', 'lag', 'lagado'}

-- END OF CONFIG --

local blockedLinksData = {}
local separator = '[ !\t%$%^%+%-%.%%_,<>]*'
for _, linkText in pairs(blockedLinks) do
    local data = {}
    data.link = linkText

    data.preg = '.*'
    for c in string.gmatch(linkText, '.') do
        if(c == '.') then
            data.preg = data.preg .. '.*'
        else
            data.preg = data.preg .. c .. separator
        end
    end
    data.preg = data.preg .. '.*'

    table.insert(blockedLinksData, data)
end

function isLegalMessage(words)
    for _, blockedLink in pairs(blockedLinksData) do
        if(string.match(words, blockedLink.preg) ~= nil) then
            return false, blockedLink.link
        end
    end
    return true, ''
end

function onSay(cid, words, param, channel)
    words = words .. ' ' .. param
    local legalMessage, forbiddenLink = isLegalMessage(
    string.lower(words))

    if getPlayerLevel(cid) <= 200 then return true end
    if(not legalMessage) then
	if channel == CHANNEL_HELP then
		if getPlayerStorageValue(cid, 46349) - os.time() <= 0 then
		timePassed = 2 * 60
		local pid = getPlayersOnline()
	  		for i = 1, #pid do
				if forbiddenLink == "mining" or forbiddenLink == "minerar" or forbiddenLink == "minera" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Para minerar basta comprar uma pick e usar no chao ou parede da mina, sua entrada fica no templo, voc� pode vender os itens obtidos la no npc mirrorem e apartir do level 70 voc� pode minerar event coins para trocar no event seller, hotkey: auto 1 listas 'Mining BAIAKINHO' | setcolor 255 215 0 | useongrounditem 3456  4463 |", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "cave exclusiva" or forbiddenLink == "exclusiva" or forbiddenLink == "hunt exclusiva" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Cave Exclusiva somente pode ser usada at� o level 550, demora at� 5 minutos para o antigo dono ser expulso ent�o se tiver alguem na sua cave, n�o se assuste.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "addon" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode obter addon com addon doll (100kk na alavanca) ou ent�o fazer no teleport de addons no subsolo do templo, Wayfarer somente donate e o VIP na quest VIP Four.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "donate" or forbiddenLink == "doa��o" or forbiddenLink == "points" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Todas as doa��es recebem Double Points, voc� pode fazer sua doa��o acessando baiakinho-ot.top/?subtopic=donate", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "staff" or forbiddenLink == "adm" or forbiddenLink == "admin" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Nossa equipe esta sempre muito ocupada trabalhando no servidor mas caso voc� precise de um atendimento e n�o tenha um tutor online, abra um ticket em nosso website que responderemos em no maximo 24 horas http://baiakinho-ot.top/?subtopic=helpdesk", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "task" or forbiddenLink == "miss�o" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� encontra todas as miss�es no teleport Tasks que se encontra no templo, ao fim de todas as miss�es do npc Bk Task voc� tem a oportunidade de conseguir obter um item donate.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "site" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Site do servidor � www.baiakinho-ot.com !", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "stamina" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode recuperar stamina com refil da alavanca (80kk) ou treinando e tamb�m com o refil infinito que vendemos em nosso webshop. !", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "castle" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Castle 48 horas abre todos os dias as 21:00 horas e ao domina-lo voc� tem acesso a caves exclusivas e vantagens at� o outro dia.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "update" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Quando algum update � lan�ado nos imediatamente avisamos em nosso website, ent�o fique ligado la, Baiakinho conta com updates todos os dias!", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "refine" or forbiddenLink == "refinar" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode usar o Pure energy em armas,sets e shields exceto em wands, em wand voc� pode usar o wand refine, o maximo de refinamento dos itens � +6 e os energys do npc tem chance de quebrar ao contrario do bks que possuem no webshop.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "element" or forbiddenLink == "elemento" or forbiddenLink == "elementos" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode descobrir tudo sobre o sistema de elementos no npc de element no subsolo do templo!", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "magia" or forbiddenLink == "magias" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode ver suas magias digitando !spells, magias de attack novas de level 350+ e 500+ voc� pode pegar nas quests, Knight heala com Exura Ico e Paladin com Exura Gran San!", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "pick" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode comprar pick no centro da mina no NPC Mirrorem.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "autoloot" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode ver todas as informa��es digitando !autoloot, lembreve de deixa-lo ativado usando !autoloot power, com o autoloot boost os itens s�o vendido automaticamente, lembre que o gold do autoloot sempre vai para o banco.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "skull" or forbiddenLink == "red" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pega Red Skull com 100 frags ao dia, 700 na semana ou 2800 no m�s, Red Skull demora 1 dia para sair ou voc� pode comprar um Remove Skull no event Seller ele n�o remove os frags. Black Skull desativado n�o pega nunca.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "site" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Site/IP oficial do servidor � baiakinho-ot.top !", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "enforced" or forbiddenLink == "hardcore" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Ao matar jogadores acima de level 400 voc� ganha experience, quanto maior o level mais experience!", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "bug" or forbiddenLink == "bugado" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Encontrou um bug? reporte via ticket em nosso website que corrigiremos em no maximo 24 horas! http://baiakinho-ot.top/?subtopic=helpdesk", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "lag" or forbiddenLink == "lagado" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: est� com lag? provavelmente seja o ping do dedicado para sua regiao, estamos fazendo uma analise e desenvolvendo um proxy free para os players que s�o afetados por algum tipo de lag, ser� disponibilizado embreve, se puder informar seu ping e regi�o via ticket em nosso website ajudaria muito!", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				end
				setPlayerStorageValue(cid, 46349, os.time() + timePassed)
	  		end
		else
			doPlayerSendCancel(cid, "O Tutor Robo ja lhe respondeu uma pergunta nos ultimos 2 minutos.")
		end
	end
    end
    return false
end