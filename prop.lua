RegisterNetEvent('police:addentity:barrier');
AddEventHandler('police:addentity:barrier', function()
	local ped = PlayerPedId();
	local hed = GetEntityHeading(ped);
	local cod = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.5, 0.0);
	local ecod = GetEntityCoords(ped)

	RequestModel('prop_barrier_work05');
	while not HasModelLoaded('prop_barrier_work05') do
		Citizen.Wait(1);
	end;

	local closest = GetClosestObjectOfType(ecod.x, ecod.y, ecod.z, 1.2, 'prop_barrier_work05', true, true, true);

	if closest <= 0 then
		object = CreateObject('prop_barrier_work05', cod.x, cod.y, cod.z, true, true);
		local network = NetworkGetNetworkIdFromEntity(object);
		SetNetworkIdCanMigrate(network, true);
		SetEntityHeading(object, hed);
		FreezeEntityPosition(object, true)
		PlaceObjectOnGroundProperly(object);
	else
		DeleteEntity(object); DeleteEntity(closest);
	end;
end)

RegisterCommand('+barrier', function(source)
	TriggerEvent('police:addentity:barrier', source)
end)

RegisterKeyMapping('+barrier', 'Bariera politie', 'keyboard', 'F9')

RegisterNetEvent('police:addentity:cone');
AddEventHandler('police:addentity:cone', function()
	local ped = PlayerPedId();
	local hed = GetEntityHeading(ped);
	local cod = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.5, 0.0);
	local ecod = GetEntityCoords(ped)

	RequestModel('prop_mp_cone_01');
	while not HasModelLoaded('prop_mp_cone_01') do
		Citizen.Wait(1);
	end;

	local closest = GetClosestObjectOfType(ecod.x, ecod.y, ecod.z, 1.2, 'prop_mp_cone_01', true, true, true);

	if closest <= 0 then
		object = CreateObject('prop_mp_cone_01', cod.x, cod.y, cod.z, true, true);
		local network = NetworkGetNetworkIdFromEntity(object);
		SetNetworkIdCanMigrate(network, true);
		SetEntityHeading(object, hed);
		FreezeEntityPosition(object, true)
		PlaceObjectOnGroundProperly(object);
	else
		DeleteEntity(object); DeleteEntity(closest);
	end;
end)

RegisterCommand('+cone', function(source)
	TriggerEvent('police:addentity:cone', source)
end)

RegisterKeyMapping('+cone', 'Con politie', 'keyboard', 'F10')

RegisterNetEvent('police:addentity:tents');
AddEventHandler('police:addentity:tents', function()
	local ped = PlayerPedId();
	local hed = GetEntityHeading(ped);
	local cod = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.5, 0.0);
	local ecod = GetEntityCoords(ped)

	RequestModel('prop_gazebo_02');
	while not HasModelLoaded('prop_gazebo_02') do
		Citizen.Wait(1);
	end;

	local closest = GetClosestObjectOfType(ecod.x, ecod.y, ecod.z, 1.2, 'prop_gazebo_02', true, true, true);

	if closest <= 0 then
		object = CreateObject('prop_gazebo_02', cod.x, cod.y, cod.z, true, true);
		local network = NetworkGetNetworkIdFromEntity(object);
		SetNetworkIdCanMigrate(network, true);
		SetEntityHeading(object, hed);
		FreezeEntityPosition(object, true)
		PlaceObjectOnGroundProperly(object);
	else
		DeleteEntity(object); DeleteEntity(closest);
	end;
end)

RegisterCommand('+tents', function(source)
	TriggerEvent('police:addentity:tents', source)
end)

RegisterKeyMapping('+tents', 'Cort politie', 'keyboard', 'F11')

RegisterNetEvent('police:addentity:desk');
AddEventHandler('police:addentity:desk', function()
	local ped = PlayerPedId();
	local hed = GetEntityHeading(ped);
	local cod = GetOffsetFromEntityInWorldCoords(ped, 0.0, 0.5, 0.0);
	local ecod = GetEntityCoords(ped)

	RequestModel('prop_table_03b_cs');
	while not HasModelLoaded('prop_table_03b_cs') do
		Citizen.Wait(1);
	end;

	local closest = GetClosestObjectOfType(ecod.x, ecod.y, ecod.z, 1.2, 'prop_table_03b_cs', true, true, true);

	if closest <= 0 then
		object = CreateObject('prop_table_03b_cs', cod.x, cod.y, cod.z, true, true);
		local network = NetworkGetNetworkIdFromEntity(object);
		SetNetworkIdCanMigrate(network, true);
		SetEntityHeading(object, hed);
		FreezeEntityPosition(object, true)
		PlaceObjectOnGroundProperly(object);
	else
		DeleteEntity(object); DeleteEntity(closest);
	end;
end)

RegisterCommand('+desk', function(source)
	TriggerEvent('police:addentity:desk', source)
end)

RegisterKeyMapping('+desk', 'Masa politie', 'keyboard', 'F12')
