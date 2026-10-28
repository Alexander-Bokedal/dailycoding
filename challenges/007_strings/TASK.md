# 007 - Strings

Edit `main.lua` in this folder. Type it by hand!

1. Make a variable `text = "The quick brown fox"`. Print its length.
2. Print the text in uppercase and then in lowercase.
3. Print the first 3 characters, then the last 3 characters.
4. Write a function `reverse(s)` that returns the string reversed, built with a loop (don't use `string.reverse`). Test with `"hello"` -> `"olleh"`.
5. Write a function `countVowels(s)` that returns how many vowels (a, e, i, o, u) are in a string. Test with `"Hello World"` (should be 3).
6. Write a function `isPalindrome(s)` that returns `true` if the string reads the same forwards and backwards. Test with `"racecar"` (true) and `"hello"` (false). You may use your `reverse`.
7. Write a function `split(s, separator)` that splits a string on a single-character separator and returns a table of the pieces. `split("a,b,c", ",")` should give `{"a", "b", "c"}`. Print each piece.
8. Use `string.format` to print `Alexander is 33 years old` from a name and an age variable.

Hints (optional):
- Length: `#s` or `string.len(s)`.
- Upper/lower: `string.upper(s)`, `string.lower(s)` (also `s:upper()`).
- Substring: `string.sub(s, 1, 3)` gives characters 1 to 3. Negative numbers count from the end: `string.sub(s, -3)` gives the last 3.
- One character: `string.sub(s, i, i)`.
- Loop over each character: `for i = 1, #s do local c = string.sub(s, i, i) ... end`.
- Build a string by joining in a loop: `result = result .. c`.
- Check if a character is in a set: put the vowels in a string and use `string.find("aeiou", c, 1, true)`, or in a table with `true` values.
- For palindromes, think about uppercase letters. Do you want `"Racecar"` to count?
- Format: `string.format("%s is %d years old", name, age)`. `%s` is a string, `%d` is an integer.
