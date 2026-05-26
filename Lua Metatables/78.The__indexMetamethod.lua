--The __index metamethod controls what happens when you try to access a key that doesn't exist in a table.

--When a table has a metatable with an __index field pointing to another table, Lua will look for missing keys in that table:

local defaults = {
    health = 100,
    speed = 10
}

local player = {name = "Alice"}
local meta = {__index = defaults}

setmetatable(player, meta)

print(player.name)    -- Output: Alice
print(player.health)  -- Output: 100

--[[This creates a fallback mechanism where one table can provide default values for another. The original table keeps its own values, but any missing keys are automatically looked up in the fallback table.

Write a function createCharacterWithDefaults that takes name and level and returns a character table with default stat values.

Create a character table with the provided name and level. Use a metatable with __index to provide default values for any missing stats (health, mana, strength).

Logic:

Create a defaults table with keys: health = 100, mana = 50, strength = 10
Create a character table with keys: name (the provided name) and level (the provided level)
Create a metatable with __index pointing to the defaults table
Attach the metatable to the character table using setmetatable()
Return the character table]]

function createCharacterWithDefaults(name, level)
    local defaults = {
        health = 100,
        mana = 50,
        strength = 10
    }
    
    local character = {
        name = name,
        level = level
    }
    
    local meta = {__index = defaults}
    
    setmetatable(character, meta)
    
    return character
end