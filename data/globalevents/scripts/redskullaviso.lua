function onThink(interval, lastExecution)
  -- Configura��es
    local cor = 22 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[[REDSKULL INFO] N�o fique ca�ando dando UE,Voc� poder� pegar RedSkull e nossa equipe n�o se responsabiliza com items perdido.
--->
[Loteria System] A Cada 4 Horas ser� sorteado 2 premiums points para todos jogadores Online, quanto mais ativo voc� for, mais chance ter�!]]}

  -- Fim de Configura��es

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end