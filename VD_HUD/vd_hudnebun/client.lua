local display = true
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if display then
            TriggerServerEvent("vD:updateHud")
        end
    end
end)
RegisterNetEvent("vD:updateHudClient", function(cash,bank,coins,id)
    SendNUIMessage({type="updateHud",cash=cash,bank=bank,coins=coins, myId=id, health= GetEntityHealth(PlayerPedId())-100, armour = GetPedArmour(PlayerPedId())})
end)