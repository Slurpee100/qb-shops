RegisterServerEvent('qb-shops:server:UpdateShopItems')
AddEventHandler('qb-shops:server:UpdateShopItems', function(shop, itemData, amount)
    Config.Locations[shop]["products"][itemData.slot].amount =  Config.Locations[shop]["products"][itemData.slot].amount - amount
    if Config.Locations[shop]["products"][itemData.slot].amount <= 0 then 
        Config.Locations[shop]["products"][itemData.slot].amount = 0
    end
    TriggerClientEvent('qb-shops:client:SetShopItems', -1, shop, Config.Locations[shop]["products"])
end)

RegisterServerEvent('qb-shops:server:RestockShopItems')
AddEventHandler('qb-shops:server:RestockShopItems', function(shop)
    if Config.Locations[shop]["products"] ~= nil then 
        local randAmount = math.random(10, 50)
        for k, v in pairs(Config.Locations[shop]["products"]) do 
            Config.Locations[shop]["products"][k].amount = Config.Locations[shop]["products"][k].amount + randAmount
        end
        TriggerClientEvent('qb-shops:client:RestockShopItems', -1, shop, randAmount)
    end
end)

QBCore.Functions.CreateCallback('qb-shops:server:getLicenseStatus', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local licenseTable = Player.PlayerData.metadata["licences"]

    if licenseTable.weapon then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent('Slurpee:Getitem')
AddEventHandler('Slurpee:Getitem', function(listKey)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("slurpee", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["slurpee"], "add")
    Player.Functions.RemoveMoney('cash', 10, "cash-removed"..Player.PlayerData.citizenid)


end)

RegisterServerEvent('Chip:Getitem')
AddEventHandler('Chip:Getitem', function(listKey)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("dorito_chips", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["dorito_chips"], "add")
    Player.Functions.RemoveMoney('cash', 10, "cash-removed"..Player.PlayerData.citizenid)


end)

RegisterServerEvent('Coke:Getitem')
AddEventHandler('Coke:Getitem', function(listKey)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("2litercoke", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["2litercoke"], "add")
    Player.Functions.RemoveMoney('cash', 10, "cash-removed"..Player.PlayerData.citizenid)


end)

RegisterServerEvent('Sprite:Getitem')
AddEventHandler('Sprite:Getitem', function(listKey)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("sprite", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["sprite"], "add")
    Player.Functions.RemoveMoney('cash', 10, "cash-removed"..Player.PlayerData.citizenid)


end)

RegisterServerEvent('Donut:Getitem')
AddEventHandler('Donut:Getitem', function(listKey)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("donut", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["donut"], "add")
    Player.Functions.RemoveMoney('cash', 10, "cash-removed"..Player.PlayerData.citizenid)


end)

RegisterServerEvent('Stand:Getitem')
AddEventHandler('Stand:Getitem', function(listKey)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("hotdog", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["hotdog"], "add")
    Player.Functions.RemoveMoney('cash', 10, "cash-removed"..Player.PlayerData.citizenid)


end)

RegisterServerEvent('Stand2:Getitem')
AddEventHandler('Stand2:Getitem', function(listKey)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.AddItem("burger-bleeder", 1)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["burger-bleeder"], "add")
    Player.Functions.RemoveMoney('cash', 10, "cash-removed"..Player.PlayerData.citizenid)


end)


RegisterServerEvent('SmallCoke:Getitem')
AddEventHandler('SmallCoke:Getitem', function(listKey)
    local src = source 
    local Player = QBCore.Functions.GetPlayer(src)
    local random = math.random(1,10)
    print(random)
    if random <= 5 then
        Player.Functions.AddItem("kurkakola", 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["kurkakola"], "add")
        Player.Functions.RemoveMoney('cash', 10, "cash-removed"..Player.PlayerData.citizenid)
   else
    Player.Functions.AddItem("cokebaggy", 1)
    Player.Functions.RemoveMoney('cash', 10, "cash-removed"..Player.PlayerData.citizenid)
   end


end)
