local userInputService = game:GetService("UserInputService")

if userInputService.TouchEnabled then
    print("Compatibility version loading")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gigimoose23/firebase/main/barrygui_tabletcompatibiliity.lua", true))()
else
    print("Computer Version loading")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gigimoose23/firebase/main/barrygui.lua", true))()
end
