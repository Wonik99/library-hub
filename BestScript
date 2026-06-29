local PlaceId = game.PlaceId
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local supportedGames = {
    [920587237] = {name = "Adopt Me", url = "https://raw.githubusercontent.com/Wonik99/library-hub/refs/heads/main/adoptme"},
    [109983668079237] = {name = "Steal a Brainrot", url = "https://raw.githubusercontent.com/Wonik99/library-hub/refs/heads/main/stealabrainrot"},
    [142823291] = {name = "Murder Mystery 2", url = "https://raw.githubusercontent.com/Wonik99/library-hub/refs/heads/main/murdermystery2"},
    [97598239454123] = {name = "Grow a Garden 2", url = "https://raw.githubusercontent.com/Wonik99/library-hub/refs/heads/main/growagarden2"}
}

local function showWarning()
    local msg = "⚠️ NO SCRIPT SUPPORTED FOR THIS GAME ⚠️\n\n"
    msg = msg .. "Supported Games:\n"
    msg = msg .. "• Adopt Me\n"
    msg = msg .. "• Steal a Brainrot\n"
    msg = msg .. "• Murder Mystery 2\n"
    msg = msg .. "• Grow a Garden 2\n\n"
    msg = msg .. "You will be kicked in 5 seconds..."

    warn(msg)
    print(msg)
    
    local StarterGui = game:GetService("StarterGui")
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "Game Hub Loader",
            Text = "This game is not supported!\n\nOnly works on: Adopt Me, Steal a Brainrot, MM2, Grow a Garden 2",
            Duration = 10,
        })
    end)
end

local function kickPlayer()
    local kickMessage = "⚠️ NO SCRIPT SUPPORTED FOR THIS GAME ⚠️\n\n"
    kickMessage = kickMessage .. "Supported Games:\n"
    kickMessage = kickMessage .. "• Adopt Me\n"
    kickMessage = kickMessage .. "• Steal a Brainrot\n"
    kickMessage = kickMessage .. "• Murder Mystery 2\n"
    kickMessage = kickMessage .. "• Grow a Garden 2\n\n"
    kickMessage = kickMessage .. "This script only works on the games listed above."

    if LocalPlayer then
        LocalPlayer:Kick(kickMessage)
    end
end

print("Game Hub Loader Initialized | PlaceId: " .. PlaceId)

if supportedGames[PlaceId] then
    local gameData = supportedGames[PlaceId]
    print(gameData.name .. " Detected! Loading script...")
    loadstring(game:HttpGet(gameData.url))()
else
    showWarning()
    wait(5)
    kickPlayer()
end
