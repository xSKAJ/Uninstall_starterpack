-- xSKA#7104
-- xSKA#7104
-- xSKA#7104
-- xSKA#7104
-- xSKA#7104

RegisterCommand('starterpack', function(source, args)
    local xPlayer = ESX.GetPlayerFromId(source)
    if (xPlayer.group == 'best' or xPlayer.group == 'superadmin' or xPlayer.group == 'admin' or xPlayer.group == 'moderator' or xPlayer.group == 'support' or xPlayer.group == 'trialsupport') then
        if args[1] ~= nil then
            if GetPlayerName(tonumber(args[1])) ~= nil then
				xPlayer.addInventoryItem('bread', 1)
                TriggerClientEvent('esx:showNotification', tonumber(args[1]), 'Otrzymałeś starterpack do ekwipunku!')
                    -- Polecam zrobic sobie pod to logi
			else
				TriggerClientEvent('esx:showNotification', source, 'Gracz jest offline!')
            end
        else
            TriggerClientEvent('esx:showNotification', source, 'Wpisz ID!')
        end
    else
        TriggerClientEvent('esx:showNotification', source, 'Nie masz permisji!')
    end
end, false)

-- xSKA#7104
-- xSKA#7104
-- xSKA#7104
-- xSKA#7104
-- xSKA#7104
-- xSKA#7104
-- xSKA#7104
