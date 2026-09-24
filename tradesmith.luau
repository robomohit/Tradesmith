-- Tradesmith
-- Downloads the script through tradesmith.pages.dev so each run is
-- counted (a timestamp and a country, nothing about you). If that site
-- does not answer, it falls back to the copy on GitHub, so the script
-- never fails to load because the counter is down.
local function fetch(url)
    local ok, src = pcall(function() return game:HttpGet(url) end)
    if ok and type(src) == "string" and #src > 1000 then
        local fn = loadstring(src)
        if fn then return fn end
    end
end
local run = fetch("https://tradesmith.pages.dev/s.luau")
    or fetch("https://raw.githubusercontent.com/robomohit/tradesmith/main/tradesmith-full.luau")
if run then return run() end
warn("[Tradesmith] could not download the script - try again in a minute")
