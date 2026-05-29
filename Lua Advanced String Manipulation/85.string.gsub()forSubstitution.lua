--The string.gsub() function performs global substitution by finding all occurrences of a pattern and replacing them:

--local result = string.gsub(originalString, pattern, replacement)
--Example replacing spaces with underscores:

local text = "hello world from lua"
local cleaned = string.gsub(text, " ", "_")
print(cleaned)  -- Output: hello_world_from_lua

--The function returns two values: the modified string and the number of replacements made:

local result, count = string.gsub("foo bar foo", "foo", "baz")
print(result)  -- Output: baz bar baz
print(count)   -- Output: 2

--string.gsub() replaces every occurrence by default, not just the first match.

--[[Write a function cleanText that takes text and returns a cleaned version with all spaces replaced by underscores.

Use string.gsub() to replace every space character in the text with an underscore character.]]

function cleanText(text)
    local result = string.gsub(text, " ", "_")
    return result
end
