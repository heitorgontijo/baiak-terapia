local blockedLinks = {'bug', 'bugado', 'pick', 'cave exclusiva', 'addon', 'mining', 'donate', 'doa��o', 'points', 'exclusiva', 'minera', 'minera��o', 'hunt exclusiva', 'staff', 'adm', 'admin', 'task', 'miss�o', 'site', 'stamina', 'update', 'castle', 'element', 'elementos', 'elemento', 'refine', 'refinar', 'red', 'skull', 'magia', 'magias', 'autoloot', 'ip', 'site', 'enforced', 'hardcore', 'dodge', 'critical', 'troco', 'vendo', 'sell', 'buy', 'compro', 'wand energy', 'pure energy'}

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
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Para minerar basta comprar uma pick e usar no chao ou parede da mina, sua entrada fica no templo, voc� pode vender os itens obtidos la no npc mirrorem e apartir do level 70 voc� pode minerar event coins para trocar no event seller, hotkey: auto 1 listas 'Mining Alfa Baiak' | setcolor 255 215 0 | useongrounditem 3456  4463 |", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "cave exclusiva" or forbiddenLink == "exclusiva" or forbiddenLink == "hunt exclusiva" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Cave Exclusiva somente pode ser usada at� o level 620, demora at� 5 minutos para o antigo dono ser expulso ent�o se tiver alguem na sua cave, n�o se assuste.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "addon" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode obter addon com addon doll (150kk na alavanca) ou ent�o fazer no teleport de addons no subsolo do templo, Wayfarer somente donate e o VIP na quest VIP Four.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "donate" or forbiddenLink == "doa��o" or forbiddenLink == "points" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Doa��es acima de R$20 Double Points, acima de R$100 Receba 50 pontos extras,voc� pode fazer sua doa��o acessando Alfa-baiak.com/?subtopic=donate", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "staff" or forbiddenLink == "adm" or forbiddenLink == "admin" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Atualmente nossa equipe est� offline ou ocupado, voc� pode solicitar Suporte pelo Whatsapp (22)998843528 ou se preferir abra um ticket em nosso site http://Alfa-baiak.com/?subtopic=helpdesk", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "task" or forbiddenLink == "miss�o" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� encontra todas as miss�es no teleport Tasks que se encontra no templo, ao fim de todas as miss�es do npc Alfa Task voc� tem a oportunidade de conseguir obter um item donate.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "site" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Site do servidor � www.Alfa-baiak.com !", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "stamina" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode recuperar stamina com refil da alavanca (50kk) ou treinando e tamb�m com o refil infinito que vendemos em nosso webshop. !", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "castle" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Alfa Castle horas abre todos os dias as 22:00 horas e ao domina-lo voc� tem acesso a caves exclusivas e vantagens at� o outro dia.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "update" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Quando algum update � lan�ado nos imediatamente avisamos em nosso website, ent�o fique ligado la, Alfa-baiak.com conta com updates todos os dias!", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "refine" or forbiddenLink == "refinar" or forbiddenLink == "wand energy" or forbiddenLink == "pure energy" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode usar o Pure energy em armas,sets e shields exceto em wands, o maximo de refinamento dos itens � +6 e os energys das alavancas tem chance de quebrar ao contrario do Alfa's energy que possuem no webshop.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "element" or forbiddenLink == "elemento" or forbiddenLink == "elementos" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Para trocar o elemento da sua Super Alfa Staff voc� precisa dizer por exemplo !wand energy ou seja !wand e o elemento desejado.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "magia" or forbiddenLink == "magias" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode ver suas magias digitando !spells, magias de attack novas de level 350+ e 500+ voc� pode pegar nas quests, Knight heala com Exura Ico e Paladin com Exura Gran San!", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "pick" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode comprar pick no centro da mina no NPC Mirrorem.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "autoloot" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pode ver todas as informa��es digitando !autoloot, lembreve de deixa-lo ativado usando !autoloot power, com o autoloot boost os itens s�o vendido automaticamente, lembre que o gold do autoloot sempre vai para o banco.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "skull" or forbiddenLink == "red" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Voc� pega Red Skull com 100 frags ao dia, 700 na semana ou 2800 no m�s, Red Skull demora 1 dia para sair ou voc� pode comprar um Remove Skull no event Seller ele n�o remove os frags. Black Skull desativado n�o pega nunca.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "site" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Site/IP oficial do servidor � Alfa-baiak.com !", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "enforced" or forbiddenLink == "hardcore" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Ao matar jogadores acima de level 400 voc� ganha experience, quanto maior o level mais experience!", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "bug" or forbiddenLink == "bugado" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Encontrou um bug? reporte via Whatsapp (22)998843528 ou abra um ticket em nosso website que corrigiremos em no maximo 24 horas! http://Alfa-baiak.com/?subtopic=helpdesk", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "compro" or forbiddenLink == "vendo" or forbiddenLink == "sell" or forbiddenLink == "buy" or forbiddenLink == "troco" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Por favor, para comercio use o chat TRADE e mantenha este chat limpo para melhor suporte.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
				elseif forbiddenLink == "dodge" or forbiddenLink == "critical" then
					doPlayerSendChannelMessage(pid[i], "", "TUTOR ROBO: Dodge � um sistema de bloquear ataques do inimigo e critical dobrar o seu ataque no inimigo, voc� pode comprar dodge ou critical no npc Stones Seller, por favor n�o possua muito dinheiro em sua backpack o limite maximo de venda � 30 por vez.", TALKTYPE_CHANNEL_O, CHANNEL_HELP)
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
