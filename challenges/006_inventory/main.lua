-- 006 - Inventory
-- Write your code below.
local inventorySlots = {
    maxSlots = 16,
    filledSlots = 0,
}
local inventory = {
    apples = 10,
    water = 10,
    criminalRecords = 1000,
}

local function totalItems(arr)
    local sum = 0
    for k, v in pairs(arr) do
        sum = sum + v
    end
    return sum
end

local function printItems(arr)
    if next(arr) == nil then
        print("Inventory empty")
    else
        for k, v in pairs(arr) do
            print(k .. " x" .. v)
        end
    end
end
printItems(inventory)

local function addItem(item, amount)
    if inventory[item] == nil then
        if inventorySlots.filledSlots >= inventorySlots.maxSlots then
            print("Inventory full")
            return
        else
            inventory[item] = amount
            inventorySlots.filledSlots = inventorySlots.filledSlots + 1
            return
        end
    end

    inventory[item] = inventory[item] + amount
end

local function removeItem(item, amount)
    if inventory[item] == nil then
        print("That item doesn't exist")
        return
    end
    if inventory[item] < amount then
        print("You dont have enough items")
        return
    end

    if inventory[item] - amount == 0 then
        inventory[item] = nil
        inventorySlots.filledSlots = inventorySlots.filledSlots - 1
    else
        inventory[item] = inventory[item] - amount
    end
end

local function countItems(name)
    if inventory[name] then
        print("You have " .. inventory[name] .. " " .. name)
    else
        print("You have 0 " .. name)
    end
end

countItems("water")
countItems("hearthstone")
countItems("bababooi")

addItem("coins", 20)

countItems("coins")

removeItem("coins", 10)

countItems("coins")

printItems(inventory)

print(totalItems(inventory))
