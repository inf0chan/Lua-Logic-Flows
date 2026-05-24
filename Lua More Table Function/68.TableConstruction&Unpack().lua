--Lua provides a complementary pair of techniques for working with multiple values: table construction and unpack(). These are particularly useful when working with functions that need flexible argument handling.

--You can capture multiple values into a list-style table using table constructor syntax with curly braces. This collects all the values into a single table structure.

local args = {10, 20, 30}
print(args[1])  -- Output: 10
print(#args)    -- Output: 3

--The unpack() function does the opposite—it takes a list-style table and returns all its elements as separate values. This allows you to pass table contents as individual arguments to a function.

local numbers = {5, 10, 15}
print(unpack(numbers))  -- Output: 5    10    15

--These techniques work together seamlessly. You can collect values into a table, manipulate the table, and then unpack it back into individual values.

--[[Write a function forwardArguments that takes three numbers a, b, and c, and returns their sum by using table construction and unpack().

Create a table containing the three arguments using {a, b, c} syntax, then unpack them and pass them to another function that calculates their sum.

Logic:

Use {a, b, c} to create a table containing all three arguments
Create a separate function called sum that takes three parameters and returns their sum
Use unpack() to pass the table values to the sum function
Return the result from the sum function
Parameters:

a (number): First number
b (number): Second number
c (number): Third number
Returns: The sum of all three numbers (number)]]

function forwardArguments(a, b, c)
    -- Create a separate function that calculates the sum
    local function sum(x, y, z)
        return x + y + z
    end
    
    -- Create a table containing all three arguments
    local args = {a, b, c}
    
    -- Unpack the table and pass values to the sum function
    return sum(unpack(args))
end