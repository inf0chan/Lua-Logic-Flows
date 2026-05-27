--Metatables can define what happens when you use arithmetic operators like + and - on tables. This is called operator overloading.

--The __add metamethod controls addition behavior with the + operator:

local v1 = {x = 3, y = 4}
local v2 = {x = 1, y = 2}

local meta = {
    __add = function(a, b)
        return {x = a.x + b.x, y = a.y + b.y}
    end
}

setmetatable(v1, meta)
setmetatable(v2, meta)

local v3 = v1 + v2
print(v3.x, v3.y)  -- Output: 4  6
--The __add function receives two arguments: the left operand and the right operand.

--The __sub metamethod controls subtraction with the - operator:

local meta = {
    __sub = function(a, b)
        return {x = a.x - b.x, y = a.y - b.y}
    end
}

setmetatable(v1, meta)
setmetatable(v2, meta)

local v3 = v1 - v2
print(v3.x, v3.y)  -- Output: 2  2

--[[Write a function addVectors that takes x1, y1, x2, and y2 and returns the result of adding two vectors together.

Create two vector tables with the given coordinates, attach a metatable with the __add metamethod to enable vector addition, add them using the + operator, and return the result as a formatted string.

Logic:

Create the first vector table with keys x = x1 and y = y1
Create the second vector table with keys x = x2 and y = y2
Create a metatable with __add that takes two vectors and returns a new table with x = a.x + b.x and y = a.y + b.y
Attach the metatable to both vector tables using setmetatable()
Add the two vectors using v1 + v2
Return the result as a string in the format "x y" (the x and y values separated by a space)]]

function addVectors(x1, y1, x2, y2)
    local v1 = {x = x1, y = y1}
    local v2 = {x = x2, y = y2}
    
    local meta = {
        __add = function(a, b)
            return {x = a.x + b.x, y = a.y + b.y}
        end
    }
    
    setmetatable(v1, meta)
    setmetatable(v2, meta)
    
    local result = v1 + v2
    
    return result.x .. " " .. result.y
end