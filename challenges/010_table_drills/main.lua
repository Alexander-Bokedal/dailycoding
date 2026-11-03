-- 010 - Table Drills
-- Write your code below.

--## Part A - Lists (1D)
--
--1. `map(list, fn)` returns a NEW list where each item is `fn(item)`. Test: doubling `{1, 2, 3}`.
--2. `filter(list, fn)` returns a NEW list with only the items where `fn(item)` is true. Test: keep the even numbers.
--3. `reduce(list, fn, start)` combines all items into one value. Test: sum, then product.
--4. `indexOf(list, value)` returns the position of the value, or `nil`.
--5. `includes(list, value)` returns true/false. (Reuse `indexOf`.)
--6. `reverseList(list)` returns a NEW reversed list.
--7. `unique(list)` returns a NEW list with duplicates removed, keeping the first of each. Test: `{1, 2, 2, 3, 1}` gives `{1, 2, 3}`.
--8. `concat(a, b)` returns a NEW list with all of `a` followed by all of `b`.
--9. `chunk(list, size)` splits a list into a list of lists. `chunk({1,2,3,4,5}, 2)` gives `{{1,2},{3,4},{5}}`.
--

local function map(arr, func)
    local returnData = {}
    for k, v in ipairs(arr) do
        returnData[k] = func(arr[v])
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
