--The __newindex metamethod is triggered when you attempt to assign a value to a key that doesn't exist in a table, allowing you to intercept and control modifications.

--Basic example preventing new keys:

local readOnly = {}
local meta = {
    __newindex = function(table, key, value)
        print("Cannot add key: " .. key)
    end
}

setmetatable(readOnly, meta)

readOnly.name = "Alice"  -- Output: Cannot add key: name
print(readOnly.name)     -- Output: nil

--The __newindex function receives three arguments: the table itself, the key being set, and the value being assigned.

--Validating data with __newindex:

local player = {}
local meta = {
    __newindex = function(t, key, value)
        if key == "health" and type(value) ~= "number" then
            print("Health must be a number!")
        else
            rawset(t, key, value)
        end
    end
}

setmetatable(player, meta)

player.health = "high"  -- Output: Health must be a number!
player.health = 100     -- Allowed

--[[Use rawset(t, key, value) to bypass the metatable and directly set values in the table. This prevents infinite loops when setting values inside __newindex.

Write a function createValidatedTable that takes key and value and returns a table that only accepts string values for new keys.
Create an empty table and attach a metatable with __newindex that validates the value type. If someone tries to add a non-string value, use rawset() to store the string "invalid" instead. For string values, store them normally using rawset().

Logic:

Create an empty table
Create a metatable with __newindex that receives the table, key, and value
Inside __newindex, check if the value is a string using type(value) == "string"
If it's a string, use rawset(t, key, value) to store it
If it's not a string, use rawset(t, key, "invalid") to store "invalid" instead
Attach the metatable to the table using setmetatable()
Use rawset() to add the initial key-value pair to the table (bypassing the metatable)
Return the table]]

function createValidatedTable(key, value)
    local t = {}
    
    local meta = {
        __newindex = function(t, key, value)
            if type(value) == "string" then
                rawset(t, key, value)
            else
                rawset(t, key, "invalid")
            end
        end
    }
    
    setmetatable(t, meta)
    rawset(t, key, value)
    
    return t
end