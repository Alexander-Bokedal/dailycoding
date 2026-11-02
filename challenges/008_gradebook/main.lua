-- 008 - Gradebook
-- Write your code below.

-- # 008 - Gradebook (mixed challenge, no hints)

-- Edit `main.lua` in this folder. Type it by hand!

-- You are building a small report for a class.

-- Start with this data, as a list of tables:

--     Anna  : 95, 88, 92
--     Ben   : 72, 65, 80
--     Clara : 58, 49, 63
--     David : 85, 90, 78

-- 1. Store the students in a table. Each student has a `name` and a `scores` list.
-- 2. Write `average(scores)` that returns the average of a list of numbers.
-- 3. Write `letterGrade(avg)` that returns:
--    - `"A"` for 90 or more, `"B"` for 80 or more, `"C"` for 70 or more, `"F"` otherwise.
-- 4. Write `highest(scores)` that returns the highest score in a list (don't use `math.max`).
-- 5. Loop over the students and print one line each, formatted like:

--        Anna     avg 91.7  best 95  grade A

--    (name padded so the columns line up, average with one decimal)
-- 6. Print how many students passed (grade C or better) and how many failed. (no this was boring)
-- 8. Write `findStudent(name)` that returns the student's table, or `nil` if not found. Print Clara's average, and print a message for a student who doesn't exist.
local function round(num)
    return math.floor(num * 10) / 10
end

local studentScores = {
    Anna = { 95, 88, 92 },
    Ben = { 72, 65, 80 },
    Clara = { 58, 49, 63 },
    David = { 85, 90, 78 },
}

local function average(scores)
    local totalScore = 0
    for i = 1, #scores do
        totalScore = totalScore + scores[i]
    end
    return totalScore / #scores
end

print(average(studentScores["Anna"]))

local function grade(avg)
    if avg >= 90 then
        return "A"
    elseif avg >= 80 then
        return "B"
    elseif avg >= 70 then
        return "C"
    else
        return "F"
    end
end

print(grade(average(studentScores["Anna"])))

local function highScore(table)
    local highest = table[1]
    for i = 1, #table do
        if table[i] >= highest then
            highest = table[i]
        end
    end
    return highest
end
local function padNames(arr)
    local longest = 0
    for name, _ in pairs(arr) do
        if #name > longest then
            longest = #name
        end
    end
    -- local returnedString = ""
    -- for i = 1, longestName do
    --     returnedString = returnedString + " "
    -- end
    -- return returnedString
    return longest
end
local function printStudent(table)
    local studentInfo = ""
    for key, _ in pairs(table) do
        print(
            string.format(
                "%-8s avg %.1f best %d grade %s",
                key,
                average(table[key]),
                highScore(table[key]),
                grade(average(table[key]))
            )
        )
    end
    return studentInfo
end

print(printStudent(studentScores))

-- 7. Write `addStudent(name, scoreString)` that takes a string like `"70,80,90"`, splits it on commas, converts the pieces to numbers, and adds a new student to the table. Add `"Eva"` with `"100,95,98"` and print the report again.

local function split(sentence, seperator)
    local returnTable = {}
    for word in string.gmatch(sentence, "[^" .. seperator .. "]+") do
        returnTable[#returnTable + 1] = word
    end
    return returnTable
end

local function addStudent(name, scoreString)
    local scores = split(scoreString, ",")
    for i = 1, #scores do
        scores[i] = tonumber(scores[i])
    end
    studentScores[name] = scores
end
local score = "70,80,90"
addStudent("Eva", score)

print(printStudent(studentScores))

-- 8. Write `findStudent(name)` that returns the student's table, or `nil` if not found. Print Clara's average, and print a message for a student who doesn't exist.

local function findStudent(name, array)
    if array[name] then
        print(name .. " is present")
        print(string.format("Their average score is %.1f ", average(studentScores[name])))
    else
        print("Cant find student named " .. name)
    end
end

findStudent("Clara", studentScores)
findStudent("Alexander", studentScores)

-- 9. Print the name of the student with the best average, in UPPERCASE.

local function highestAverage(array)
    local newScore = 0
    local bestName = nil
    for k, v in pairs(array) do
        local avg = average(v)
        if avg >= newScore then
            newScore = avg
            bestName = k
        end
    end
print(string.format("%s has the best average score of %.1f", bestName, newScore))
end

highestAverage(studentScores)
