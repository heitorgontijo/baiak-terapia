function onThink(interval, lastExecution)
  -- Configurações
    local cor = 20 -- Defina a cor da mensagem (22 = branco)
    local mensagens ={
[[Alfa Baiak:
Red Skull = 100 frags no dia
Black Skull = Sem limites
Autoloot = Para saber como funciona digite !autoloot
Para comprar Dodge ou Critical vá no Stones Seller.
Site = www.alfa-baiak.com
Digite /mute NomeDoPlayer para mutar divulgadores.
Curta nossa pagina do facebook www.facebook.com/alfabaiak/
]]
}

  -- Fim de Configurações

  doBroadcastMessage(mensagens[math.random(1,table.maxn(mensagens))], cor)
return TRUE
end