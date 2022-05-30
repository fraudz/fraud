local sets = getgenv().sets

if sets == nil then
    getgenv().sets = {
        performance = false,
        version = 3,
    }
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "fraud";
        Text = "your settings were not found new loadstring copied";
        Duration = 5;
        Button1 = "Ok";
    })
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fraudz/fraud/main/games/2788229376/normal0.lua"))()
    setclipboard("getgenv().sets = {\nperformance = false, --only esp and silent aim\nversion = 3, --set to 0 to use newest version\n}\nloadstring(game:HttpGet('https://raw.githubusercontent.com/fraudz/fraud/main/loader.lua'))()")
end

if sets.performance == false then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fraudz/fraud/main/games/2788229376/normal"..tostring(sets.version)..".lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fraudz/fraud/main/games/2788229376/performace.lua"))()
end
