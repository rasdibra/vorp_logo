local isVisible = false

RegisterNetEvent("vorp_logo:show")
AddEventHandler("vorp_logo:show", function()
    if not isVisible then
        SendNUIMessage({
            action = "show",
            position = Config.Position,
            size = Config.LogoSize
        })
        isVisible = true
    end
end)

RegisterNetEvent("vorp_logo:hide")
AddEventHandler("vorp_logo:hide", function()
    SendNUIMessage({ action = "hide" })
    isVisible = false
end)


-- Auto start
CreateThread(function()
    Wait(2000)
    if Config.EnableLogo then
        TriggerEvent("vorp_logo:show")
    end
end)