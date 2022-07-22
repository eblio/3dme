-- edit by n0tst3
-- Pre-load the language
local lang = Languages[Config.language]

-- @desc Handle /do command
local function onDoCommand(source, args)
    local text = "~b~* " .. lang.doPrefix .. table.concat(args, " ") .. " "
    TriggerClientEvent('3ddo:shareDisplay', -1, text, source)
end

local function onMeCommand(source, args)
    local text = "~r~** " .. lang.mePrefix .. table.concat(args, " ") .. " **"
    TriggerClientEvent('3dme:shareDisplay', -1, text, source)
end

-- Register the commands
RegisterCommand(lang.doCommandName, onDoCommand)

RegisterCommand(lang.meCommandName, onMeCommand)
