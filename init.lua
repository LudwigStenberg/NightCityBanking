-- NightCityBanking Mod

-- Register the mod when the game initializes
registerForEvent("onInit", function()
    -- Print a message to the CET console to show the mod is loaded
    print("Night City Banking mod has been initialized")
    
    -- You'll see this message in the CET console (press the ~ key in game)
end)

-- Create a simple UI window - this will display in the game
registerForEvent("onDraw", function()
    -- Only show the UI if the CET overlay is visible
    if not ImGui.Begin("Night City Banking Test") then
        ImGui.End()
        return
    end
    
    -- Add a simple text display
    ImGui.Text("Welcome to Night City Banking")
    ImGui.Separator()
    
    -- Add a button that gives the player some money when clicked
    if ImGui.Button("Get 1000 eddies", ImGui.GetWindowWidth() - 30, 0) then
        -- This function adds money to the player
        Game.AddToInventory("Items.money", 1000)
        -- Display a notification
        Game.GetPlayer():SetWarningMessage("Received 1000 eddies!")
    end
    
    ImGui.End()
end)

-- Unregister events when the mod is unloaded
registerForEvent("onShutdown", function()
    print("Night City Banking mod has been shutdown")
end)