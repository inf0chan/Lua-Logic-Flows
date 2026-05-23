--[[When working with dictionary-style tables in Lua, you often need to access every key-value pair stored inside. The pairs() function makes this 
possible by allowing you to loop through all entries in a table, regardless of what type the keys are.]]

--The syntax for using pairs() in a for loop looks like this:

for key, value in pairs(myTable) do
    -- use key and value here
end

--During each iteration of the loop, pairs() provides both the key and its corresponding value. This means you can access and work with both pieces of information at the same time.

--Here's a practical example with a player's inventory:

local inventory = {
    sword = 1,
    potion = 5,
    gold = 150
}

for item, quantity in pairs(inventory) do
    print(item .. ": " .. quantity)
end

--This code will print each item name and its quantity. The pairs() function works with any key type, including strings, numbers, or even other tables.

--[[Write a function printInventory that takes an inventory table and returns a formatted string listing all items and their quantities.

Use pairs() to iterate through the inventory table and build a string where each line shows an item name followed by its quantity in the format item: quantity. Each item should be on a separate line.

To place each item on its own line, use the newline character "\n" between entries. For example, "apple: 5\nbanana: 3" will display as two separate lines. Be careful not to add a leading "\n" before the first item — only add it between items.

Parameters:

inventory (table): A dictionary-style table where keys are item names (strings) and values are quantities (numbers)
Returns: A string with each item and quantity on a separate line, separated by "\n". Example output for {apple=5, banana=3}:
apple: 5
banana: 3]]

function printInventory(inventory)
    local result = ""
    local first = true  -- Flag to track the first item

    for item, quantity in pairs(inventory) do
        if not first then
            result = result .. "\n"  -- Add a newline before the next item, but not before the first one
        end
        result = result .. item .. ": " .. quantity
        first = false  -- Set the flag to false after processing the first item
    end

    return result
end