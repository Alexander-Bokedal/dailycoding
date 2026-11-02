# 010 - Table Drills

Edit `main.lua` in this folder. Type it by hand!

Lua has no built-in `map`, `filter`, `reduce`, `includes` or `indexOf` like TypeScript does. You build them with loops. Every function here is small. Write each one, then test it with a couple of inputs (including an empty list).

## Part A - Lists (1D)

1. `map(list, fn)` returns a NEW list where each item is `fn(item)`. Test: doubling `{1, 2, 3}`.
2. `filter(list, fn)` returns a NEW list with only the items where `fn(item)` is true. Test: keep the even numbers.
3. `reduce(list, fn, start)` combines all items into one value. Test: sum, then product.
4. `indexOf(list, value)` returns the position of the value, or `nil`.
5. `includes(list, value)` returns true/false. (Reuse `indexOf`.)
6. `reverseList(list)` returns a NEW reversed list.
7. `unique(list)` returns a NEW list with duplicates removed, keeping the first of each. Test: `{1, 2, 2, 3, 1}` gives `{1, 2, 3}`.
8. `concat(a, b)` returns a NEW list with all of `a` followed by all of `b`.
9. `chunk(list, size)` splits a list into a list of lists. `chunk({1,2,3,4,5}, 2)` gives `{{1,2},{3,4},{5}}`.

## Part B - Nested tables

Use this grid (a list of rows, each row a list):

    local grid = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9},
    }

10. `printGrid(grid)` prints one line per row, with the numbers separated by spaces.
11. `sumGrid(grid)` returns the sum of every number.
12. `getColumn(grid, n)` returns column n as a list. `getColumn(grid, 2)` gives `{2, 5, 8}`.
13. `transpose(grid)` returns a NEW grid where rows and columns are swapped.
14. `flatten(nested)` turns `{{1,2},{3},{4,5}}` into `{1,2,3,4,5}`.

## Part C - Lists of records

    local people = {
        {name = "Anna",  age = 31, tags = {"dev", "lead"}},
        {name = "Ben",   age = 24, tags = {"design"}},
        {name = "Clara", age = 45, tags = {"dev", "ops", "lead"}},
    }

15. `pluck(list, key)` returns a list of one field from every record. `pluck(people, "age")` gives `{31, 24, 45}`.
16. `groupByTag(people)` returns a table where each key is a tag and each value is a list of names. `result.dev` should be `{"Anna", "Clara"}`.
17. `sortBy(list, key)` returns the list sorted by a field, lowest first. Do it yourself with a loop (don't use `table.sort`).

Hints (optional):
- A function can be passed as an argument: `map({1,2,3}, function(x) return x * 2 end)`.
- Build a new list with `result[#result + 1] = value`.
- A nested table is just a table whose items are tables: `grid[2][3]` is row 2, column 3 (6). Rows first!
- For nested data you usually need a loop inside a loop.
- `groupByTag`: if `groups[tag]` is `nil`, create it as `{}` before adding to it.
- Compared to TS: arrays start at 1, `#t` is `.length`, `nil` is `undefined`, and there is no spread (`...`) or destructuring. You write out the loop.
