-- 010 - Table Drills
-- Write your code below.

--## Part A - Lists (1D)
--
--1. `map(list, fn)` returns a NEW list where each item is `fn(item)`. Test: doubling `{1, 2, 3}`.
--

local function map(arr, fn)
    local returnData = {}
    for k, v in ipairs(arr) do
        returnData[k] = fn(arr[v])
    end
    return returnData
end

local function doubleInteger(item)
    return item * 2
end

local listToDouble = { 1, 2, 3 }

-- for _, value in ipairs(map(listToDouble, doubleInteger)) do
--     print(value)
-- end

--2. `filter(list, fn)` returns a NEW list with only the items where `fn(item)` is true. Test: keep the even numbers.

local function filter(arr, fn)
    local returnData = {}
    for _, v in ipairs(arr) do
        if fn(arr[v]) then
            returnData[#returnData + 1] = arr[v]
        end
    end

    return returnData
end

local function isEven(item)
    if item % 2 == 0 then
        return true
    else
        return false
    end
end
local evenNumbers = { 1, 2, 3, 4, 5, 6 }

-- for _, value in ipairs(filter(evenNumbers, isEven)) do
--     print(value)
-- end

--3. `reduce(list, fn, start)` combines all items into one value. Test: sum, then product.

local function reduce(arr, fn, start)
    local returnData = start
    for _, v in ipairs(arr) do
        returnData = fn(v, returnData)
    end
    return returnData
end

local function sumData(a, b)
    return a + b
end

local function productData(a, b)
    return a * b
end

local reduceNumber = { 10, 20, 3, 4, 5 }

-- print(reduce(reduceNumber, sumData, 0))
-- print(reduce(reduceNumber, productData, 1))

--4. `indexOf(list, value)` returns the position of the value, or `nil`.

local function indexOf(list, value)
    local returnData = nil
    for k, v in ipairs(list) do
        if v == value then
            returnData = k
        end
    end
    return returnData
end

local indexList = {
    30,
    "string",
    false,
}

-- print(indexOf(indexList, false))

-- print(indexOf(indexList, 1))
-- print(indexOf(indexList, 30))
-- print(indexOf(indexList, "string"))

--5. `includes(list, value)` returns true/false. (Reuse `indexOf`.)

local function includes(list, value)
    local returnData = false
    for _, v in ipairs(list) do
        if v == value then
            returnData = true
        end
    end
    return returnData
end
-- print(includes(indexList, false))

-- print(includes(indexList, 1))
-- print(includes(indexList, 30))
-- print(includes(indexList, "string"))

--6. `reverseList(list)` returns a NEW reversed list.

local function reverseList(list)
    local returnData = {}
    for i = #list, 1, -1 do
        returnData[#returnData + 1] = list[i]
    end
    return returnData
end

-- for _, v in pairs(reverseList(indexList)) do
--     print(v)
-- end

--7. `unique(list)` returns a NEW list with duplicates removed, keeping the first of each. Test: `{1, 2, 2, 3, 1}` gives `{1, 2, 3}`.

local function unique(list)
    local seen = {}
    local returnData = {}
    for k, v in ipairs(list) do
        if not seen[v] then
            seen[v] = true
            returnData[#returnData + 1] = v
        end
    end
    return returnData
end

local makeUnique = { 1, 2, 2, 3, 1 }

-- for index, value in ipairs(unique(makeUnique)) do
--     print(value)
-- end

--8. `concat(a, b)` returns a NEW list with all of `a` followed by all of `b`.

local function concat(a, b)
    local returnData = {}
    for _, v in ipairs(a) do
        returnData[#returnData + 1] = v
    end

    for _, v in ipairs(b) do
        returnData[#returnData + 1] = v
    end
    return returnData
end
local a = { "hello", "beautiful" }
local b = { "you", "look", "great" }
for _, v in ipairs(concat({}, b)) do
    print(v)
end

--9. `chunk(list, size)` splits a list into a list of lists. `chunk({1,2,3,4,5}, 2)` gives `{{1,2},{3,4},{5}}`.

local function chunk(list, size)
    local returnData = {}
    for i = 1, #list, size do
        local returnChunk = {}
        for index = i, size do
            if list[index] then
                returnChunk[#returnChunk + 1] = list[index]
            end
        end
        returnData[#returnData + 1] = returnChunk
    end
    return returnData
end



for index, value in ipairs(chunk({ 1, 2, 3, 4, 5 }, 2)) do
    print(value)
    for i = 1, #value do
        print(value[i])
    end
end
