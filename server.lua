-- edit by n0tst3
-- Pre-load the language
local Config = Config
local Languages = Languages
local lang = Languages[Config.language]

local function onDoCommand(source, args)
    local text = table.concat(args, " ")
    TriggerClientEvent('3ddo:shareDisplay', -1, text, source)
end

local function onMeCommand(source, args)
    local text = table.concat(args, " ")
    TriggerClientEvent('3dme:shareDisplay', -1, text, source)
end

-- Register the commands
RegisterCommand(lang.doCommandName, onDoCommand)

RegisterCommand(lang.meCommandName, onMeCommand)
