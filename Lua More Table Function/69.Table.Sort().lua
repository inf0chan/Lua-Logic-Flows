--When working with list-style tables, you'll often need to organize the data in a specific order. Lua provides the table.sort() function to arrange table elements in place, meaning it modifies the original table rather than creating a new one.

--The basic syntax is straightforward:

table.sort(myTable)

--By default, table.sort() arranges numbers in ascending order and strings alphabetically. Here's an example with a list of scores:

local scores = {85, 42, 91, 67, 55}
table.sort(scores)
-- scores is now {42, 55, 67, 85, 91}

--For strings, the sorting follows alphabetical order:

local names = {"Charlie", "Alice", "Bob"}
table.sort(names)
-- names is now {"Alice", "Bob", "Charlie"}

--Sometimes the default sorting isn't what you need. You can provide a custom comparison function as a second argument to control how elements are compared. This function takes two elements and returns true if the first should come before the second:

local numbers = {5, 2, 8, 1}
table.sort(numbers, function(a, b)
    return a > b  -- Sort in descending order
end)
-- numbers is now {8, 5, 2, 1}

--The table.sort() function only works with list-style tables that have sequential integer keys starting from 1. It's a powerful tool for organizing data before displaying it or processing it in a specific order.


--[[Write a function sortScoresDescending that takes a scores table and returns a formatted string of the sorted scores in descending order.

Use table.sort() with a custom comparison function to arrange the scores from highest to lowest, then use table.concat() to join them into a single string separated by commas.

Parameters:

scores (table): A list-style table containing numeric scores
Returns: A string with scores sorted from highest to lowest, separated by commas. Format: 95,87,76,54]]

function sortScoresDescending(scores)
    -- Sort the scores in descending order using a custom comparison function
    table.sort(scores, function(a, b)
        return a > b  -- Sort in descending order
    end)
    
    -- Convert the sorted scores to strings and concatenate them with commas
    local scoreStrings = {}
    for i, score in ipairs(scores) do
        scoreStrings[i] = tostring(score)
    end
    
    return table.concat(scoreStrings, ",")
end