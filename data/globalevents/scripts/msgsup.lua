function onThink(interval, lastExecution)
  -- Configura��es
    local cor = 20 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[Suporte Info:
Para receber um supporte rapido...
Abra um Ticket em nosso site e resolva qualquer problema...
acesse www.alfa-baiak.com
]]
}

  -- Fim de Configura��es

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end