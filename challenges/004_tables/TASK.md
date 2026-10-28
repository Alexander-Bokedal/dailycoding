# 004 - Tables

Edit `main.lua` in this folder. Type it by hand!

Tables are Lua's only data structure. They work as lists AND as key/value stores.

Part A - Lists
1. Make a table `fruits` with at least 4 fruit names (strings).
2. Print the first fruit and the last fruit.
3. Print how many fruits there are.
4. Add a new fruit to the end of the list.
5. Loop over the list and print each fruit with its position, like `1: apple`.

Part B - Key/value
6. Make a table `player` with the keys `name`, `health` and `level`.
7. Print the player's name.
8. Reduce health by 10 and increase level by 1, then print both.
9. Add a new key `gold` with the value 0 after the table is created.
10. Loop over every key and value in `player` and print them as `key = value`.

Hints (optional):
- List: `local t = {"a", "b", "c"}`. Indexes start at **1**, not 0!
- Length: `#t` gives the number of items in a list.
- Append: `t[#t + 1] = "d"` or `table.insert(t, "d")`.
- Loop a list in order: `for i, v in ipairs(t) do ... end`
- Key/value: `local p = {name = "Bob", health = 100}`
- Access: `p.name` or `p["name"]`. Assign the same way: `p.gold = 0`
- Loop all keys: `for k, v in pairs(p) do ... end` (order is not guaranteed)
