function onThink(interval, lastExecution)
  -- Configurações
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[[REDSKULL INFO] Não fique caçando dando UE,Você poderá pegar RedSkull e nossa equipe não se responsabiliza com items perdido.
--->
[Loteria System] A Cada 4 Horas será sorteado 2 premiums points para todos jogadores Online, quanto mais ativo você for, mais chance terá!]]}

  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end