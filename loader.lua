local goaway = "https://raw.githubusercontent.com/BloxMan00/LinoriaLib/refs/heads/main/"
local please = "main.lua"
local function fetchScript(url)
    local ok, raw = pcall(game.HttpGet or game.HttpGetAsync, game, url)
    if not ok then
        error("Failed to load script!")
    end
    if not raw:find("Apoc 2 Shenanigans") then
        error("Script validation failed!")
    end
    return raw
end
local mainScript = fetchScript(goaway .. please)
loadstring(mainScript)()
