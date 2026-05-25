--In Lua, functions are first-class values that can be stored in variables, passed as arguments, and returned from other functions.

--Store a function in a variable:

local greet = function()
    print("Hello!")
end

greet()  -- Output: Hello!

--Pass a function as an argument:

function executeAction(action)
    action()
end

local sayHello = function()
    print("Hello from a function!")
end

executeAction(sayHello)  -- Output: Hello from a function!

--Return a function from another function:

function createMultiplier(factor)
    return function(number)
        return number * factor
    end
end

local double = createMultiplier(2)
print(double(5))  -- Output: 10

--Write a function applyOperation that takes a, b, and operation and returns the result of applying the operation function to the two numbers.

--The operation parameter is a table containing a function that will be called with a and b as arguments.

function applyOperation(a, b, operation)
    local func = operation["func"]
    return func(a, b)
end