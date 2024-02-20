local allProps = {
    ['barrier'] = {'Bariera Politie', 'F9', 'prop_barrier_work05'},
    ['cone'] = {'Con Politie', 'F10', 'prop_mp_cone_01'},
    ['tents'] = {'Cort  Politie', 'F11', 'prop_gazebo_02'},
    ['desk'] = {'Masa Politie', 'F12', 'prop_table_03b_cs'},

    --['id'] = {'command name', 'command key', 'prop to place'},
}

RegisterNetEvent('police:addentity');
AddEventHandler('police:addentity', function(what)
    if not allProps[what] then return end
    local prop = allProps[what][3]
    
    RequestModel(prop);
    while not HasModelLoaded(prop) do
        Citizen.Wait(500);
    end;

    local playerPed = PlayerPedId();
    local playerCoords = GetEntityCoords(playerPed)
    local nearProp = GetClosestObjectOfType(playerCoords.x, playerCoords.y, playerCoords.z, 1.2, prop, true, true, true);

    if nearProp and (nearProp > 0) then
        DeleteEntity(nearProp);
        return
    end;

    local wCoords = GetOffsetFromEntityInWorldCoords(playerPed, 0.0, 0.5, 0.0);
    local playerHeading = GetEntityHeading(playerPed);

    local object = CreateObject(prop, wCoords.x, wCoords.y, wCoords.z, true, true);
    local network = NetworkGetNetworkIdFromEntity(object);
    SetNetworkIdCanMigrate(network, true);
    SetEntityHeading(object, playerHeading);
    FreezeEntityPosition(object, true)
    PlaceObjectOnGroundProperly(object);
end)

for what, data in pairs(allProps) do
    RegisterCommand('police_'..what, function()
        TriggerEvent('police:addentity', what)
    end)
    
    RegisterKeyMapping('police_'..what, data[1], 'keyboard', data[2])
end
