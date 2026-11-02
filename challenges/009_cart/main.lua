-- 009 - Shopping Cart
-- Write your code below.

--# 009 - Shopping Cart (short)

--Edit `main.lua` in this folder. Type it by hand!

--Start with this cart, a list of tables:

--apple  : price 2,  qty 5
--bread  : price 4,  qty 1
--cheese : price 12, qty 2
--wine   : price 20, qty 3

--1. Store the cart as a list of tables. Each item has `name`, `price` and `qty`.
--2. Write `cartTotal(cart)` that returns the total cost (sum of price x qty). Print it.
--3. Write `applyDiscount(total)` that returns the total with a 10% discount if it is over 100, otherwise the same total. Print the result.

--Hints (optional):
--- The cart is a list, so `ipairs` and `#` work here.
--- For step 5, `table.remove(cart, index)` removes an item by position, so you need to find the position first.
--- If you remove while looping forwards, positions shift. Stop the loop once you've removed it.

local cart = {
    { item = "apple", price = 2, qty = 5 },
    { item = "bread", price = 4, qty = 1 },
    { item = "cheese", price = 12, qty = 2 },
    { item = "wine", price = 20, qty = 5 },
}

local function cartTotal(arr)
    local totalSum = 0
    for _, v in ipairs(arr) do
        totalSum = totalSum + v["qty"] * v["price"]
    end
    return totalSum
end

print(cartTotal(cart))

local function applyDiscount(arr)
    local total = cartTotal(arr)
    if total >= 100 then
        total = total * 0.9
    end
    return math.floor(total)
end

print(applyDiscount(cart))

--4. Write `mostExpensive(cart)` that returns the item with the highest *price* (the whole item, not just the number). Print its name.

local function highestPrice(arr)
    local highestPrice = 0
    local expensiveItem = nil
    for k, v in ipairs(arr) do
        if v["price"] > highestPrice then
            highestPrice = v["price"]
            expensiveItem = arr[k]
        end
    end
    return expensiveItem
end

print(highestPrice(cart)["item"])

--5. Write `removeItem(cart, name)` that removes the item with that name from the cart. Print the total again afterwards.

local function removeItem(arr, name)
    print(cartTotal(arr))
    for k, v in ipairs(arr) do
        if v["item"] == name then
            print(v["item"])
            table.remove(arr, k)
            break
        end
    end
    print(cartTotal(arr))
end

removeItem(cart, "bread")
