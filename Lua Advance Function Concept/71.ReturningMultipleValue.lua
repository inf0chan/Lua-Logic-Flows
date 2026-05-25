--Functions in Lua can return multiple values at once by separating them with commas:

function getCoordinates()
    return 10, 20
end

--Capture multiple return values by assigning them to multiple variables:

local x, y = getCoordinates()
print(x)  -- Output: 10
print(y)  -- Output: 20
--Example with division returning quotient and remainder:

function divide(a, b)
    local quotient = math.floor(a / b)
    local remainder = a % b
    return quotient, remainder
end

local q, r = divide(17, 5)
print(q)  -- Output: 3
print(r)  -- Output: 2

--If you assign to fewer variables than returned, extra values are discarded. If you assign to more variables than returned, extra variables become nil.