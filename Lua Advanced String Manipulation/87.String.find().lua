--Use string.find() with character classes to search for patterns in strings. It returns the position where the pattern first matches:

local text = "User123"
local position = string.find(text, "%d")
print(position)  -- Output: 5

--Uppercase character classes match the opposite (non-matching characters):

local code = "ABC123"
local position = string.find(code, "%D")
print(position)  -- Output: 1

--Use the anchor ^ at the beginning of a pattern to match only at the start of the string:

local username = "player42"
local startsWithLetter = string.find(username, "^%a")

if startsWithLetter then
    print("Valid username")
else
    print("Username must start with a letter")
end

--[[Write a function startsWithLetter that takes text and returns whether the string starts with a letter.

Use string.find() with the anchor ^ and the %a character class to check if the string begins with a letter.

Parameters:

text (string): The string to validate
Returns: true if the string starts with a letter, false otherwise (boolean)]]

function startsWithLetter(text)
    local position = string.find(text, "^%a")
    if position then
        return true
    else
        return false
    end
end