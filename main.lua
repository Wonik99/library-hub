local Games = {
    [142823291] = "https://raw.githubusercontent.com/Wonik99/library-hub/refs/heads/main/murdermystery2",
    [109983668079237] = "https://raw.githubusercontent.com/Wonik99/library-hub/refs/heads/main/stealabrainrot",
    [920587237] = "https://raw.githubusercontent.com/Wonik99/library-hub/refs/heads/main/adoptme"
}

local MainHub = "https://raw.githubusercontent.com/Wonik99/library-hub/refs/heads/main/mainhub"

local id = game.GameId

if Games[id] then
    loadstring(game:HttpGet(Games[id]))()
else
    loadstring(game:HttpGet(MainHub))()
end
