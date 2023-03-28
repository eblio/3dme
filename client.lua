    -- edit by n0tst3
    local Config = Config
local Languages = Languages
local c, lang = Config, Languages[Config.language]

local peds = {}

local function draw3dText(coords, text)
    local camCoords = GetGameplayCamCoord()
    local dist = #(coords - camCoords)

    local scale = 200 / (GetGameplayCamFov() * dist)

    SetTextColour(c.color.r, c.color.g, c.color.b, c.color.a)
    SetTextScale(0.0, c.scale * scale)
    SetTextFont(c.font)
    SetTextDropshadow(0, 0, 0, 0, 55)
    SetTextDropShadow()
    SetTextCentre(true)

    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    SetDrawOrigin(coords, 0)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end

local function displayText(ped, text, yOffset)
    local playerPed = PlayerPedId()
    local playerPos = GetEntityCoords(playerPed)
    local targetPos = GetEntityCoords(ped)
    local dist = #(playerPos - targetPos)
    local los = HasEntityClearLosToEntity(playerPed, ped, 17)

    if dist <= c.dist and los then
        peds[ped] = {
            time = GetGameTimer() + c.time,
            text = text,
            yOffset = yOffset
        }

        if not peds[ped].exists then
            peds[ped].exists = true

            Citizen.CreateThread(function()
                while GetGameTimer() <= peds[ped].time do
                    local pos = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.0, peds[ped].yOffset)
                    draw3dText(pos, peds[ped].text)
                    Citizen.Wait(0)
                end

                peds[ped] = nil
            end)
        end
    end
end

local function onDoShareDisplay(text, target)
    local player = GetPlayerFromServerId(target)
    if player ~= -1 or target == GetPlayerServerId(PlayerId()) then
        local ped = GetPlayerPed(player)
        displayText(ped, "~b~* " .. lang.doPrefix .. text .. " ", 0.45)
    end
end

local function onMeShareDisplay(text, target)
    local player = GetPlayerFromServerId(target)
    if player ~= -1 or target == GetPlayerServerId(PlayerId()) then
        local ped = GetPlayerPed(player)
        displayText(ped, "~r~** " .. lang.mePrefix .. text .. " **", 0.7)
    end
end

-- Register the event
RegisterNetEvent('3ddo:shareDisplay', onDoShareDisplay)
RegisterNetEvent('3dme:shareDisplay', onMeShareDisplay)

-- Add the chat suggestion
TriggerEvent('chat:addSuggestion', '/' .. lang.doCommandName, lang.doCommandDescription, lang.doCommandSuggestion)
TriggerEvent('chat:addSuggestion', '/' .. lang.meCommandName, lang.meCommandDescription, lang.meCommandSuggestion)
