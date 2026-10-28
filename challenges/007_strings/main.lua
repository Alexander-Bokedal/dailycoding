-- 007 - Strings
-- Write your code below.

local text = "The quick brown fox"

print(text)

print(#text)

print(string.upper(text))
print(string.lower(text))
print(string.sub(text, 1, 3))
print(string.sub(text, #text - 2, #text))

local function reverse(word)
    local reverseWord = ""
    for i = #word, 1, -1 do
        reverseWord = reverseWord .. string.sub(word, i, i)
    end
    return reverseWord
end

print(reverse("hello"))

local function countVowels(word)
    local _, nvow = string.gsub(word, "[AOUEIaouei]", "")
    return nvow
end

print(countVowels("hello world"))

local function isPalindrome(word)
    local newWord = reverse(word)
    return string.lower(newWord) == string.lower(word)
end

print(isPalindrome("Racecar"))
print(isPalindrome("hello"))

local function splitOnSpace(sentence, seperator)
    local returnTable = {}
    for word in string.gmatch(sentence, "[^" .. seperator .. "]+") do
        returnTable[#returnTable + 1] = word
    end
    return returnTable
end

local printer = splitOnSpace("Hello world", " ")

for i = 1, #printer do
    print(printer[i])
end

print(string.format("%s is %d years old", "Alexander", 33))
