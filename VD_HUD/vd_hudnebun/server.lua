local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vd_hudmajestic")

RegisterServerEvent("vD:updateHud", function()
    source = source
    local user_id = vRP.getUserId({source})
    
    local m = vRP.formatMoney({vRP.getMoney({user_id})})
    local b = vRP.formatMoney({vRP.getBankMoney({user_id})})
    local c = vRP.formatMoney({vRP.getDPoints({user_id})})

    TriggerClientEvent("vD:updateHudClient", source, m, b, c, user_id)
end)