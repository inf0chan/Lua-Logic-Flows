--An anonymous function is a function without a name, defined using the function keyword followed by parameters and body:

function(a, b)
    return a + b
end

--Anonymous functions are useful when passing functions as arguments, keeping logic inline where it's used:

local players = {
    {name = "Alice", score = 150},
    {name = "Bob", score = 200},
    {name = "Charlie", score = 175}
}

table.sort(players, function(a, b)
    return a.score > b.score
end)

--This creates the comparison function directly as an argument to table.sort(), making code more compact.

--Write a function filterByThreshold that takes numbers and threshold and returns a new table containing only numbers greater than the threshold.

--[[Use table.insert() with an anonymous function approach to filter the numbers. Create the filtering logic inline without defining a separate named 
function.]]

function filterByThreshold(numbers, threshold)
    local result = {}
    
    for i = 1, #numbers do
        local checkThreshold = function(num, thresh)
            return num > thresh
        end
        
        if checkThreshold(numbers[i], threshold) then
            table.insert(result, numbers[i])
        end
    end
    
    return result
end
