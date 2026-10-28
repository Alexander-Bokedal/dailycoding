-- 003 - Loops
-- Write your code below.

for i = 1, 10 do
    print(i)
end

for i = 1, 20 do
    if i % 2 == 0 then
        print(i)
    end
end

for i = 10, 0, -1 do
    if i > 0 then
        print(i)
    else
        print("Liftoff!")
    end
end

local w = 1
while w < 1000 do
    w = w * 2
    print(w)
end

local sum = 0
for i = 1, 100 do
    sum = sum + i
end
print(sum)
