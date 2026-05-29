--[[String patterns in Lua describe what kind of text you're looking for, rather than the exact text itself.

Lua provides special codes called character classes that match categories of characters:

%d  -- matches any digit (0-9)
%a  -- matches any letter (a-z, A-Z)
%s  -- matches any whitespace (space, tab, newline)
%w  -- matches any alphanumeric character (letters and digits)
%p  -- matches any punctuation character
You can use uppercase versions to match the opposite. For example, %D matches any character that is not a digit, and %A matches any character that is not a letter.

Using character classes with string.find():]]

local text = "Room 42 is available"
local position = string.find(text, "%d")
print(position)  -- Output: 6

--Write a function containsDigit that takes text and returns whether the text contains at least one digit.

--Use string.find() with the %d character class to check if any digit exists in the string.

function containsDigit(text)
    local position = string.find(text, "%d")
    return position ~= nil
end