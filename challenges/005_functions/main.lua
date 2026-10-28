-- -- 005 - Functions
-- -- Write your code below.

-- local function greet(name)
--     print("Hello, " .. name .. "!")
-- end

-- greet("Alexander")
-- greet("Helena")

-- local function add(a, b)
--     return a + b
-- end

-- print(add(2, 3))

-- local function isEven(n)
--     if type(n) ~= "number" then
--         print("Not a number")
--         return
--     end
--     if n % 2 == 0 then
--         return true
--     else
--         return false
--     end
-- end

-- print(isEven(5))
-- isEven("yo")
-- print(isEven(10))

-- local function larger(a, b)
--     if a > b then
--         return a
--     else
--         return b
--     end
-- end

-- print(larger(1, 2))
-- print(larger(200, 100))

local function sumOf(arr)
    local sum = 0
    for i = 1, #arr do
        sum = sum + arr[i]
    end
    return sum
end

local testTable = {
    1,
    2,
    3,
    4,
}

print(sumOf(testTable))

local function minMax(arr)
    local min
    local max

    for i = 1, #arr do
        if type(min) == "nil" then
            min = arr[i]
        elseif arr[i] < min then
            min = arr[i]
        end

        if type(max) == "nil" then
            max = arr[i]
        elseif arr[i] > max then
            max = arr[i]
        end
    end
    return min, max
end

local minmaxers = {
    1,
    2,
    3,
    4,
}

local minminers = {
    1,
    1,
    1,
}

local maxmaxers = {
    20,
    19,
    18,
}

local lone = {
    100,
}

print(minMax(minmaxers))

print(minMax(minminers))

print(minMax(maxmaxers))

print(minMax(lone))

local shout = function(text)
    return "Greetings, " .. text .. "!"
end

print(shout("Alexander"))

print(string.upper(shout("Alexander")))
