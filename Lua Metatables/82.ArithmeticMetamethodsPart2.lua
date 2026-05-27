--The __mul and __div metamethods define multiplication and division behavior for tables, responding to the * and / operators.

--The __mul metamethod is useful for scaling table values. When multiplying a vector by a scalar, check which operand is the number and which is the table to allow both vector * 2 and 2 * vector:

local vector = {x = 3, y = 4}

local meta = {
    __mul = function(a, b)
        local scalar = type(a) == "number" and a or b
        local vec = type(a) == "table" and a or b
        return {x = vec.x * scalar, y = vec.y * scalar}
    end
}

setmetatable(vector, meta)

local scaled = vector * 2
print(scaled.x, scaled.y)  -- Output: 6  8

--The __div metamethod works similarly for division:

local meta = {
    __div = function(a, b)
        return {x = a.x / b, y = a.y / b}
    end
}

setmetatable(vector, meta)

local divided = vector / 2
print(divided.x, divided.y)  -- Output: 1.5  2

--[[Write a function scaleVector that takes x, y, and scalar and returns the scaled vector as a formatted string.

Create a vector table with the given coordinates, attach a metatable with the __mul metamethod to enable scalar multiplication, multiply the vector by the scalar using the * operator, and return the result.

Logic:

Create a vector table with keys x and y set to the provided coordinates
Create a metatable with __mul that handles multiplication between a vector and a scalar
The __mul function should check which operand is the number and which is the table
Return a new table with x = vec.x * scalar and y = vec.y * scalar
Attach the metatable to the vector table using setmetatable()
Multiply the vector by the scalar using vector * scalar
Return the result as a string in the format "x y" (the x and y values separated by a space)]]

function scaleVector(x, y, scalar)
    local vector = {x = x, y = y}
    
    local meta = {
        __mul = function(a, b)
            local scalarValue = type(a) == "number" and a or b
            local vec = type(a) == "table" and a or b
            return {x = vec.x * scalarValue, y = vec.y * scalarValue}
        end
    }
    
    setmetatable(vector, meta)
    
    local scaled = vector * scalar
    
    return scaled.x .. " " .. scaled.y
end