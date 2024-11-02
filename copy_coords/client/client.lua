-- Notification
ShowNotification = function(message)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandThefeedPostTicker(0, 1)
end

--CMD 1

RegisterCommand('copycoords', function()
    local coords= GetEntityCoords(PlayerPedId())
    lib.setClipboard('' .. vector3(coords.x, coords.y, coords.z))
    ShowNotification('Koordinaten Kopiert!')
end)

--CMD 2

RegisterCommand('copycoords2', function()
    local coords,heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
    lib.setClipboard('' .. vector3(coords.x, coords.y, coords.z) .. ' heading = ' .. heading)
    ShowNotification('Koordinaten Kopiert!')
 end)

--CMD 3

RegisterCommand('copycoords3', function()
    local coords,heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
    lib.setClipboard('{ x = '.. coords.x ..', y = '..coords.y..', z = '.. coords.z ..'}')
    ShowNotification('Koordinaten Kopiert!')
end)

--CMD 4

RegisterCommand('copycoords4', function()
    local coords,heading = GetEntityCoords(PlayerPedId()), GetEntityHeading(PlayerPedId())
    lib.setClipboard('{ x = '.. coords.x ..', y = '..coords.y..', z = '.. coords.z ..', rot = '.. heading ..'}')
    ShowNotification('Koordinaten Kopiert!')
end)

--CMD 5

RegisterCommand('copycoords5', function()
    local coords= GetEntityCoords(PlayerPedId())
    lib.setClipboard('{coords = vector3(' .. coords.x .. ', ' .. coords.y .. ', ' .. coords.z.. ')},')
    ShowNotification('Koordinaten Kopiert!')
end)
