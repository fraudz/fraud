local ErrorPrompt = getrenv().require(game.CoreGui.RobloxGui.Modules.ErrorPrompt)
local prompt = ErrorPrompt.new("Default")
prompt._hideErrorCode = true

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.OnTopOfCoreBlur = true

game:GetService("RunService"):SetRobloxGuiFocused(true)

prompt:setParent(gui)
prompt:setErrorTitle("Fraudz Terms Of Service")
prompt:updateButtons({{
   Text = "I agree",
   Callback = function() prompt:_close() 
       pcall(function()
           game:GetService("RunService"):SetRobloxGuiFocused(false)
       end)
   end,
   Primary = true
}}, 'Default')
prompt:_open("1 - We are not responsible for any bans/kicks.\n2 - Do not attempt to crack the script.\n3 - That's literally it.")
