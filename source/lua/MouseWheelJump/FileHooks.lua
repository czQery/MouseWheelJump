if Client then
    ModLoader.SetupFileHook("lua/menu2/NavBar/Screens/Options/Mods/ModsMenuData.lua", "lua/MouseWheelJump/ModsMenuData.lua", "post")
    ModLoader.SetupFileHook("lua/Player.lua", "lua/MouseWheelJump/Player.lua", "post")
end
