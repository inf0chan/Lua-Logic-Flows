--A closure occurs when a nested function "remembers" the local variables from its enclosing function, even after that outer function has finished executing.

--The inner function carries its environment with it, preserving the state between calls:

function createCounter()
    local count = 0
    
    return function()
        count = count + 1
        return count
    end
end

local counter = createCounter()
print(counter())  -- Output: 1
print(counter())  -- Output: 2
print(counter())  -- Output: 3

--[[When createCounter() is called, it creates a local variable count and returns an anonymous function. The returned function still has access to count—it "closes over" that variable, even after the outer function finishes executing.

Write a function createMultiplier that creates a multiplier function with a specific factor, then immediately uses it to multiply a given number.

Logic:

Create a nested function inside createMultiplier that takes a number parameter
The nested function should multiply its parameter by the factor from the outer function
The nested function will form a closure, remembering the factor value
Call the multiplier function with the number parameter and return the result]]

function createMultiplier(factor, number)
    local multiply = function(x)
        return x * factor
    end
    
    return multiply(number)
end
