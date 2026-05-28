--The pcall() function (protected call) allows you to safely execute code that might fail without crashing your program.

--Basic syntax:

local status, result = pcall(functionName, arg1, arg2)
pcall() returns two values:

--status: true if the function succeeded, false if an error occurred
--result: The function's return value if successful, or the error message if an error occurred

Example:

function divide(a, b)
    if b == 0 then
        error("Cannot divide by zero")
    end
    return a / b
end

local success, result = pcall(divide, 10, 0)

if success then
    print("Result: " .. result)
else
    print("Error caught: " .. result)
end

--[[This catches the error instead of crashing, allowing the program to continue and handle the error gracefully.

Write a function safeCalculate that takes operation, a, and b and returns the result of the calculation or an error message.
The function should use pcall() to safely perform the requested mathematical operation. Create an inner function that performs the calculation based on the operation string, then wrap it with pcall() to catch any errors.

Logic:

Create an inner function that checks the operation type and performs the calculation
For "add", return a + b
For "subtract", return a - b
For "multiply", return a * b
For "divide", check if b is 0 and call error("Division by zero") if true, otherwise return a / b
For any other operation, call error("Invalid operation")
Use pcall() to execute the inner function
If successful, return "Result: " followed by the result
If an error occurs, return "Error: " followed by the error message]]

function safeCalculate(operation, a, b)
    local function calculate()
        if operation == "add" then
            return a + b
        elseif operation == "subtract" then
            return a - b
        elseif operation == "multiply" then
            return a * b
        elseif operation == "divide" then
            if b == 0 then
                error("Division by zero")
            end
            return a / b
        else
            error("Invalid operation")
        end
    end
    
    local success, result = pcall(calculate)
    
    if success then
        return "Result: " .. result
    else
        return "Error: " .. result
    end
end
