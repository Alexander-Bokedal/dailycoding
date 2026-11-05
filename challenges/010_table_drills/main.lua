-- 010 - Table Drills
-- Write your code below.

--## Part A - Lists (1D)
--
--1. `map(list, fn)` returns a NEW list where each item is `fn(item)`. Test: doubling `{1, 2, 3}`.
--4. `indexOf(list, value)` returns the position of the value, or `nil`.
--5. `includes(list, value)` returns true/false. (Reuse `indexOf`.)
--6. `reverseList(list)` returns a NEW reversed list.
--7. `unique(list)` returns a NEW list with duplicates removed, keeping the first of each. Test: `{1, 2, 2, 3, 1}` gives `{1, 2, 3}`.
--8. `concat(a, b)` returns a NEW list with all of `a` followed by all of `b`.
--9. `chunk(list, size)` splits a list into a list of lists. `chunk({1,2,3,4,5}, 2)` gives `{{1,2},{3,4},{5}}`.
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

for _, value in ipairs(map(listToDouble, doubleInteger)) do
    print(value)
end

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
print(isEven(2))
local evenNumbers = { 1, 2, 3, 4, 5, 6 }

for _, value in ipairs(filter(evenNumbers, isEven)) do
    print(value)
end

--3. `reduce(list, fn, start)` combines all items into one value. Test: sum, then product.

local function reduce(arr, fn, start)
    local returnData = start
    for _, v in ipairs(arr) do
        returnData = fn(v, returnData)
    end
    return returnData
end

local function sumData(a, b)
    print(a .. " plus " .. b .. " = " .. a + b)
    return a + b
end

local function productData(a, b)
    print(a .. " times" .. b .. " = " .. a * b)
    return a * b
end

local reduceNumber = { 10, 20, 3, 4, 5 }

print(reduce(reduceNumber, sumData, 0))
print(reduce(reduceNumber, productData, 1))
