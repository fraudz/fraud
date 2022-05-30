local sets = getgenv().sets

if sets == nil then
    getgenv().sets = {
        performance = false,
        version = 3,
    }
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "fraud";
        Text = "your settings were not found please re-execute";
        Duration = 5;
        Button1 = "Yes";
    })
end

if sets.performace == false then 
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fraudz/fraud/main/games/2788229376/normal"..sets.version..".lua"))()
else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/fraudz/fraud/main/games/2788229376/performace.lua"))()
end
