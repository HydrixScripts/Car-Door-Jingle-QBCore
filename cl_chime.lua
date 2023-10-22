                        --// Door Chime2.0// --
 --// Made By Chezza and ImTorchedBud --//--QBCORE EDIT BY IMTORCHEDBUD//

local QBCore = exports['qb-core']:GetCoreObject()
local volume = 0.5
local bones = door_dside_f, door_dside_r, door_pside_f, door_pside_r
local setdooropen
local setdoorclosed
setdooropen = false
local ped = GetPlayerPed(-1)
local veh = GetVehiclePedIsUsing(ped) or GetLastDrivenVehicle() or QBCore.Functions.GetPlayerData() or QBCore.Functions.GetVehicles()

Citizen.CreateThread(function()
    if setdooropen then GetIsTaskActive(ped, 160)
        elseif GetIsTaskActive(ped, 2) then setdooropen = false
    end
end)

Citizen.CreateThread(function()
    if setdooropen(true)
        then Citizen.Wait(0)
    end
end)

QBCore.Functions.GetVehicles()
            if DoesEntityExist(ped) and not IsEntityDead(ped) then 
                if IsPedInAnyVehicle(ped, false) and GetEntityModel(veh) then
                    if GetIsTaskActive(ped, 160) then
                        TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 'chime2', volume)
                        Citizen.Wait(900)
                    elseif GetIsTaskActive(ped, 2) then 
                        TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 'chime2', volume)
                        Citizen.Wait(900)
                 end
             end
        end
end)
