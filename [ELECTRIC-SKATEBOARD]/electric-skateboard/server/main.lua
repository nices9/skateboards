local ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
end)

ESX.RegisterUsableItem('skateboard', function(source)	
	local xPlayer = ESX.GetPlayerFromId(source)
	local skate = xPlayer.getInventoryItem('skateboard').count
	
		if skate == 1 then
			xPlayer.removeInventoryItem('skateboard', 1)
            TriggerClientEvent('skateboard:Spawn', source)			
		end
end)

RegisterServerEvent('skateboard:pick')
AddEventHandler('skateboard:pick', function()
	
	local xPlayer = ESX.GetPlayerFromId(source)
	local skate = xPlayer.getInventoryItem('skateboard').count
		if skate == 0 then
			xPlayer.addInventoryItem('skateboard', 1)
		end
end)