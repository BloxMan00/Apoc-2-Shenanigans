local url = "https://raw.githubusercontent.com/BloxMan00/Apoc-2-Shenanigans/refs/heads/main/main.lua"

local success, result = pcall(function()
    return game:HttpGet(url)
end)

if success and result then
    loadstring(result)()
else
    warn("Apoc 2 Shenanigans loader failed.")
end
