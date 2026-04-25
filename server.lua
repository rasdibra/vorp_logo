-- Kur player hyn, shfaq logon
AddEventHandler("playerJoining", function()
    local src = source
    TriggerClientEvent("vorp_logo:show", src)
end)

