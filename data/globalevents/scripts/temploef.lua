local config = {
positions = {
["DeuséFiel"] = { x = 153, y = 52, z = 7 },
["!flytemplo"] = { x = 4528, y = 994, z = 8 },
["NovasQuest"] = { x = 4468, y = 1176, z = 7 },
["HOTKEYS"] = { x = 156, y = 43, z = 7 },

}
}

function onThink(cid, interval, lastExecution)
for text, pos in pairs(config.positions) do
doSendAnimatedText(pos, text, 89)
doSendMagicEffect(pos, 35)
end

return TRUE
end