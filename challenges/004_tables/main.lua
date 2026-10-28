-- -- 004 - Tables
-- -- Write your code below.

-- local fruits = { "banana", "apple", "kiwi", "orange" }

-- print(fruits[1])
-- print(fruits[#fruits])
-- print(#fruits)

-- fruits[#fruits + 1] = "pear"
-- print(fruits[#fruits])

-- for i = 1, #fruits do
--     print(i .. ": " .. fruits[i])
-- end

local player = {
    name = "Bob",
    health = 100,
    level = 1,
}

player.health = player.health - 10

player.level = player.level + 1

print(player.name)
print(player.health .. "\n" .. player.level)

player["gold"] = 0

for k, v in pairs(player) do
    print(k .. " = " .. v)
end
