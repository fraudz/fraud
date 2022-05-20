--//Load fraud
local supportedgames = {
    2788229376, --da hood
}
if table.find(supportedgames,game.PlaceId) then 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/fraudz/fraud/main/games/'..game.PlaceId..'.lua'))()
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "fraud",
        Text = "Game Unsupported\nWe're sorry :(",
        Duration = 10,
        Button1 = "Okay",
    })
end
