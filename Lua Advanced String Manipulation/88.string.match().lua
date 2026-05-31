--Use string.match() to extract text that matches a pattern:

local text = "Player score: 100"
local number = string.match(text, "%d+")
print(number)  -- Output: 100

--The + modifier matches one or more of the preceding character class:

%d+  -- one or more digits
%a+  -- one or more letters

==Use parentheses () to create captures that extract specific parts of a pattern:

local message = "User: Alice sent a message"
local username = string.match(message, "User: (%a+)")
print(username)  -- Output: Alice

--Multiple captures return separate values:

local var1, var2 = string.match(text, "(pattern1)(pattern2)")

--[[Write a function extractPrice that takes text and returns the price value found in the string.

Use string.match() with a capture pattern to extract the numeric price that appears after the dollar sign. The pattern should capture one or more digits using %d+.

Parameters:

text (string): A string containing a price in the format "Price: $XX"
Returns: The numeric price as a string (string)]]

function extractPrice(text)
    local price = string.match(text, "Price: %$(%d+)")
    return price
end