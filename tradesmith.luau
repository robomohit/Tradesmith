-- Tradesmith
-- Downloads the script through tradesmith.pages.dev so each run is
-- counted (a timestamp and a country, nothing about you). If that site
-- does not answer, it falls back to the copy on GitHub, so the script
-- never fails to load because the counter is down.
-- If loading fails, it sends a one-line crash report - the error, your
-- executor's name and the size of the download - so it can be fixed.
-- Nothing about you or your account.
local SITE = "https://tradesmith.pages.dev"
local problems = {}

local function fetch(url)
    local ok, src = pcall(function() return game:HttpGet(url) end)
    if not ok then
        problems[#problems + 1] = "download failed: " .. tostring(src)
        return nil
    end
    if type(src) ~= "string" or #src < 1000 then
        problems[#problems + 1] = "download too small: "
            .. (type(src) == "string" and (#src .. " bytes") or type(src))
        return nil
    end
    local fn, err = loadstring(src)
    if not fn then
        problems[#problems + 1] = "loadstring failed on " .. #src .. " bytes: " .. tostring(err)
        return nil
    end
    return fn
end

local function report(where, msg)
    pcall(function()
        local hs = game:GetService("HttpService")
        local exec = "unknown"
        pcall(function()
            if identifyexecutor then exec = tostring((identifyexecutor())) end
        end)
        game:HttpGet(SITE .. "/api/error?src=" .. where
            .. "&msg=" .. hs:UrlEncode(tostring(msg):sub(1, 500))
            .. "&exec=" .. hs:UrlEncode(exec)
            .. "&place=" .. tostring(game.PlaceId)
            .. "&v=loader")
    end)
end

local run = fetch(SITE .. "/s.luau")
    or fetch("https://raw.githubusercontent.com/robomohit/tradesmith/main/tradesmith-full.luau")

if #problems > 0 then
    -- Worth knowing even when the fallback worked: it means this executor
    -- could not use the counted copy.
    report(run and "loader-fallback" or "loader", table.concat(problems, " | "))
end
if not run then
    warn("[Tradesmith] could not load: " .. tostring(problems[#problems]))
    return
end

local ok, res = pcall(run)
if not ok then
    report("run", res)
    warn("[Tradesmith] " .. tostring(res))
    return
end
return res
