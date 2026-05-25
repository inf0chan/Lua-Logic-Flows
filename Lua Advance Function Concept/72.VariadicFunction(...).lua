--Lua supports variadic functions that can accept any number of arguments using the three dots syntax ...:

function sum(...)
    -- Function body
end

--Inside a variadic function, pack the arguments into a table using {...}:

function sum(...)
    local args = {...}
    local total = 0
    for i = 1, #args do
        total = total + args[i]
    end
    return total
end

print(sum(5, 10, 15))  -- Output: 30
print(sum(1, 2, 3, 4, 5))  -- Output: 15

--The expression {...} creates a table containing all arguments. You can iterate through it using the length operator # or ipairs().

--Write a function calculateAverage that accepts any number of numeric arguments and returns their average.

--Use the variadic syntax ... to accept a flexible number of arguments, pack them into a table, calculate their sum, and divide by the count.

--[[Note: The starter code (marked "Don't touch this code") reads numbers from input, converts each one from text to a number using tonumber(), and 
stores them in a table called numbers. At the end, it calls your function using unpack(numbers), which spreads the table's values as individual 
arguments — so your function receives them as .... You do not need to modify or understand this code in detail; just focus on writing calculateAverage.]]

    --Don't touch this code
local numbers = {}
for line in io.lines() do
    local num = tonumber(line)
    if num then
        table.insert(numbers, num)
    else
        break
    end
end

function calculateAverage(...)
    local args = {...}
    local total = 0
    for i = 1, #args do
        total = total + args[i]
    end
    return total / #args
end
print(calculateAverage(unpack(numbers)))
print(calculateAverage(10, 20, 30))  -- Output: 20