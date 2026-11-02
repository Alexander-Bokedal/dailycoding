# 009 - Shopping Cart (short)

Edit `main.lua` in this folder. Type it by hand!

Start with this cart, a list of tables:

    apple  : price 2,  qty 5
    bread  : price 4,  qty 1
    cheese : price 12, qty 2
    wine   : price 20, qty 3

1. Store the cart as a list of tables. Each item has `name`, `price` and `qty`.
2. Write `cartTotal(cart)` that returns the total cost (sum of price x qty). Print it.
3. Write `applyDiscount(total)` that returns the total with a 10% discount if it is over 100, otherwise the same total. Print the result.
4. Write `mostExpensive(cart)` that returns the item with the highest *price* (the whole item, not just the number). Print its name.
5. Write `removeItem(cart, name)` that removes the item with that name from the cart. Print the total again afterwards.

Hints (optional):
- The cart is a list, so `ipairs` and `#` work here.
- For step 5, `table.remove(cart, index)` removes an item by position, so you need to find the position first.
- If you remove while looping forwards, positions shift. Stop the loop once you've removed it.
