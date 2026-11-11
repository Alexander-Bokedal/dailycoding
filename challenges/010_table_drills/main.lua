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
    local returnChunk = {}
    for i = 1, #list do
        returnChunk[#returnChunk + 1] = list[i]
        if #returnChunk == size then
            returnData[#returnData + 1] = returnChunk
            returnChunk = {}
        end
    end
    return returnData
end

-- for index, value in ipairs(chunk({ 1, 2, 3, 4, 5 }, 2)) do
--     for i = 1, #value do
--         print(value[i])
--     end
-- end

-- ## Part B - Nested tables

-- Use this grid (a list of rows, each row a list):

--     local grid = {
--         {1, 2, 3},
--         {4, 5, 6},
--         {7, 8, 9},
--     }

-- 10. `printGrid(grid)` prints one line per row, with the numbers separated by spaces.
local grid = {
    { 1, 2, 3 },
    { 4, 5, 6 },
    { 7, 8, 9 },
}

local function printGrid(grid)
    for _, v in ipairs(grid) do
        local string = ""
        for i = 1, #v do
            string = string .. v[i] .. " "
        end
        print(string)
    end
end

printGrid(grid)

-- 11. `sumGrid(grid)` returns the sum of every number.

local function sumGrid(grid)
    local returnData = 0
    for _, v in ipairs(grid) do
        returnData = returnData + reduce(v, sumData, 0)
    end
    return returnData
end

print(sumGrid(grid))

-- 12. `getColumn(grid, n)` returns column n as a list. `getColumn(grid, 2)` gives `{2, 5, 8}`.

local function getColumn(grid, n)
    local returnData = {}
    for _, v in ipairs(grid) do
        returnData[#returnData + 1] = v[n]
    end
    return returnData
end

-- 13. `transpose(grid)` returns a NEW grid where rows and columns are swapped.
local function transpose(grid)
    local returnData = {}
    local counter = 1
    for i = 1, #grid[1] do
        returnData[i] = {}
    end
    for index, value in ipairs(grid) do
        for i = 1, #value do
            returnData[i][#returnData[i]+1] = value[i]
        end
    end
    return returnData
end

printGrid(transpose(grid))

-- 14. `flatten(nested)` turns `{{1,2},{3},{4,5}}` into `{1,2,3,4,5}`.

local differentGrid = { { 1, 2 }, { 3 }, { 4, 5 } }

local function flatten(grid)
    local returnData = {}
    for _, v in ipairs(grid) do
        for i = 1, #v do
            returnData[#returnData + 1] = v[i]
        end
    end
    return returnData
end

-- for _, value in ipairs(flatten(differentGrid)) do
--     print(value)
-- end

-- ## Part C - Lists of records


-- 16. `groupByTag(people)` returns a table where each key is a tag and each value is a list of names. `result.dev` should be `{"Anna", "Clara"}`.
-- 17. `sortBy(list, key)` returns the list sorted by a field, lowest first. Do it yourself with a loop (don't use `table.sort`).

local people = {

        {name = "Anna",  age = 31, tags = {"dev", "lead"}},
        {name = "Ben",   age = 24, tags = {"design"}},
        {name = "Clara", age = 45, tags = {"dev", "ops", "lead"}},
    }
-- 15. `pluck(list, key)` returns a list of one field from every record. `pluck(people, "age")` gives `{31, 24, 45}`.