ESX.RegisterUsableItem(Config.itemname, function(playerId)
   local xPlayer = ESX.GetPlayerFromId(playerId)
   xPlayer.removeInventoryItem(Config.itemname, 1)
   teleport(playerId)
end)

function teleport(player)
   local respawncoords = Config.Location
   Wait(1500)
   SetEntityCoords(player, respawncoords.x, respawncoords.y, respawncoords.z)
end