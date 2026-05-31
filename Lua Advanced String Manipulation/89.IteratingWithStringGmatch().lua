--The string.gmatch() function returns an iterator that finds all occurrences of a pattern in a string, allowing you to process each match in a for loop.

--Basic syntax:

for match in string.gmatch(text, pattern) do
    -- process each match
end

--Example finding all numbers:

local text = "I have 3 apples and 5 oranges"
for number in string.gmatch(text, "%d+") do
    print(number)
end
-- Output:
-- 3
-- 5
--Example extracting all words:

local sentence = "Lua is a powerful language"
for word in string.gmatch(sentence, "%a+") do
    print(word)
end
-- Output:
-- Lua
-- is
-- a
-- powerful
-- language

--[[Write a function extractHashtags that takes text and returns all hashtags found in the text, each on a separate line.

Use string.gmatch() to find all hashtags in the text. A hashtag starts with # followed by one or more letters.

Logic:

Use string.gmatch() with the pattern "#%a+" to find all hashtags
Iterate through each match and collect them
Join all hashtags with newline characters (\n)
If no hashtags are found, return an empty string
Parameters:

text (string): The text to search for hashtags
Returns: All hashtags found, each on a separate line. If no hashtags exist, return an empty string (string)]]

function extractHashtags(text)
    local hashtags = {}
    for hashtag in string.gmatch(text, "#%a+") do
        table.insert(hashtags, hashtag)
    end
    return table.concat(hashtags, "\n")
end