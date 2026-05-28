--The error() function stops program execution and displays an error message:

error("Something went wrong!")

--Common use case - validating function inputs:

function calculateSquareRoot(num)
    if num < 0 then
        error("Cannot calculate square root of a negative number")
    end
    return math.sqrt(num)
end
print(calculateSquareRoot(4))   -- Output: 2
print(calculateSquareRoot(-1))  -- This will trigger the error and halt execution

--When error() is called, the program halts immediately and displays the custom error message.