# 006 - Inventory

Edit `main.lua` in this folder. Type it by hand!

Build a tiny inventory using a table and functions. The inventory is a table where each key is an item name and each value is the quantity, e.g. `{apple = 3, sword = 1}`.

1. Create `local inventory = {}`.
2. Write `addItem(name, amount)`: adds `amount` of the item. If the item is already there, increase its quantity. If not, create it.
3. Write `removeItem(name, amount)`: reduces the quantity.
   - If the item doesn't exist, print `You don't have <name>` and do nothing.
   - If you try to remove more than you have, print `Not enough <name>` and do nothing.
   - If the quantity reaches 0, remove the item from the table entirely (set it to `nil`).
4. Write `countItem(name)`: returns the quantity, or 0 if you don't have it.
5. Write `printInventory()`: prints each item as `<name> x<quantity>`. If the inventory is empty, print `Inventory is empty`.
6. Test it: add some items, add more of one, remove some, try the error cases, remove an item completely, and print the inventory after each step.

Bonus (only if you feel like it):
- Write `totalItems()` that returns the total number of items across all stacks.

Hints (optional):
- Check if a key exists with `if inventory[name] == nil then` or `if inventory[name] then`.
- Setting a table entry to `nil` deletes it: `inventory[name] = nil`.
- A missing key reads as `nil`, and `nil or 0` gives `0`. So `inventory[name] or 0` is a handy default.
- You can't use `#inventory` to count a table with string keys, so to detect "empty", loop with `pairs` and track whether you saw anything, or use `next(inventory) == nil`.
- Functions can use a table defined above them, as long as it's declared before the function is *called*.
