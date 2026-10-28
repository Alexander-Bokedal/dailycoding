# 005 - Functions

Edit `main.lua` in this folder. Type it by hand!

1. Write a function `greet(name)` that prints `Hello, <name>!`. Call it with two different names.
2. Write a function `add(a, b)` that **returns** the sum. Print the result of `add(2, 3)`.
3. Write a function `isEven(n)` that returns `true` if n is even, otherwise `false`. Test it with a few numbers.
4. Write a function `max(a, b)` that returns the larger of two numbers. (Don't use `math.max`.)
5. Write a function `sumList(list)` that takes a table of numbers and returns their total. Test with `{1, 2, 3, 4}` (should be 10).
6. Write a function `minMax(list)` that returns **two** values: the smallest and the largest number in the list. Print both, like `min: 1, max: 4`.
7. Write the same greeting function as an anonymous function stored in a variable: `local shout = function(text) ... end` that prints the text in uppercase.

Hints (optional):
- Syntax: `local function name(a, b) ... end`
- `return x` sends a value back to the caller. Code after `return` doesn't run.
- Printing inside a function is NOT the same as returning from it.
- Functions can return several values: `return a, b`, received with `local x, y = f()`.
- Uppercase a string with `string.upper(s)` or `s:upper()`.
- Define a function before the line that calls it.
