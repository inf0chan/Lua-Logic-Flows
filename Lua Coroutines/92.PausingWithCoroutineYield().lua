--The coroutine.yield() function allows a coroutine to pause execution and return control to the caller. When coroutine.resume() is called again, the coroutine continues from right after the yield() call.

--Basic usage of coroutine.yield():

function countToThree()
    print("One")
    coroutine.yield()
    print("Two")
    coroutine.yield()
    print("Three")
end

local co = coroutine.create(countToThree)
coroutine.resume(co)  -- Prints "One", then pauses
coroutine.resume(co)  -- Prints "Two", then pauses
coroutine.resume(co)  -- Prints "Three", then finishes

--Passing values with coroutine.yield():

function giveNumbers()
    coroutine.yield(10)
    coroutine.yield(20)
end

local co = coroutine.create(giveNumbers)
local status, value = coroutine.resume(co)
print(value)  -- Prints: 10

status, value = coroutine.resume(co)
print(value)  -- Prints: 20

--[[Arguments passed to coroutine.yield() become the return values of coroutine.resume(). The coroutine preserves all local variables and execution state between yields.

Write a function createYieldingCoroutine that takes count and returns a string showing the output from a coroutine that yields values multiple times.

Create a coroutine that yields the string "Step X" for each step from 1 to count, then prints "Done" when finished. Resume the coroutine count + 1 times to get all yielded values and the final completion. Return all the yielded values concatenated with newlines.

Logic:

Create a function that uses a loop to yield "Step 1", "Step 2", etc., up to count
After all yields, the function should complete (no final yield for "Done")
Wrap this function in a coroutine using coroutine.create()
Resume the coroutine count times, collecting each yielded value
Concatenate all yielded values with newline characters between them
Return the concatenated string]]

function createYieldingCoroutine(count)
    local function yieldingFunction()
        for i = 1, count do
            coroutine.yield("Step " .. i)
        end
    end
    
    local co = coroutine.create(yieldingFunction)
    local results = {}
    
    for i = 1, count do
        local status, value = coroutine.resume(co)
        if value then
            table.insert(results, value)
        end
    end
    
    return table.concat(results, "\n")
end