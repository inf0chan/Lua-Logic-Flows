--Sometimes you need to combine all the elements in a list-style table into a single string. Lua provides the table.concat() function specifically for this purpose, making it easy to join table elements with a separator of your choice.

--The basic syntax looks like this:

local result = table.concat(myTable, separator)

--Here's a simple example with a list of words:

local words = {"Hello", "from", "Lua"}
local sentence = table.concat(words, " ")
print(sentence)  -- Output: Hello from Lua

--You can also control which portion of the table to join by providing start and end positions as additional arguments. This is useful when you only want to combine specific elements:

local numbers = {"1", "2", "3", "4", "5"}
local partial = table.concat(numbers, "-", 2, 4)
print(partial)  -- Output: 2-3-4
--The table.concat() function works exclusively with list-style tables and converts each element to a string before joining them.

--Write a function buildPath that takes a folders table and a separator string, and returns a single path string with all folders joined by the separator.

--Use table.concat() to combine all folder names into a single path string.

--Parameters:

--[[folders (table): A list-style table containing folder names as strings
separator (string): The character or string to use between folder names (e.g., "/" or "\\")
Returns: A single string with all folders joined by the separator (string)]]

function buildPath(folders, separator)
    return table.concat(folders, separator)
end