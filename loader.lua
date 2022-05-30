--//simple loader

if not isfile('agreetos.fraud') then 
    writefile('agreetos.fraud','false')
end
local supportedgames = {
    2788229376, --da hood
}
if table.find(supportedgames,game.PlaceId) then 
    if readfile('agreetos.fraud') == 'true' then 
        loadstring(game:HttpGet('https://raw.githubusercontent.com/fraudz/fraud/main/games/'..game.PlaceId..'/load.lua'))()
    else
        loadstring(game:HttpGet('https://raw.githubusercontent.com/fraudz/fraud/main/tos.lua'))()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/fraudz/fraud/main/games/'..game.PlaceId..'/load.lua'))()
    end
 else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "fraud",
        Text = "Game Unsupported\nWe're sorry :(",
        Duration = 10,
        Button1 = "Okay",
    })
end
