--[[The __tostring metamethod allows you to customize how a table is displayed when converted to a string. By default, printing a table shows a memory address like table: 0x5f8a20.

When Lua converts a table to a string (such as with print()), it checks if the table has a metatable with a __tostring field. If present, Lua calls that function and uses its return value.

The __tostring function receives the table as its argument and must return a string:]]

local vector = {x = 3, y = 4}
local meta = {
    __tostring = function(t)
        return "Vector(" .. t.x .. ", " .. t.y .. ")"
    end
}

setmetatable(vector, meta)

print(vector)  -- Output: Vector(3, 4)

--[[You can also explicitly convert a table to a string using tostring(), which will invoke the __tostring metamethod if defined.

Write a function createPoint that takes x and y coordinates and returns a point table with a custom string representation.

Create a table with x and y fields, attach a metatable with the __tostring metamethod, and return the result of converting the table to a string using tostring().

Logic:

Create a table with keys x and y set to the provided coordinates
Create a metatable with __tostring that returns a string in the format "Point(x, y)"
Attach the metatable to the point table using setmetatable()
Return tostring(point) to get the custom string representation]]

function createPoint(x, y)
    local point = {x = x, y = y}
    local meta = {
        __tostring = function(t)
            return "Point(" .. t.x .. ", " .. t.y .. ")"
        end
    }
    setmetatable(point, meta)
    return tostring(point)
end