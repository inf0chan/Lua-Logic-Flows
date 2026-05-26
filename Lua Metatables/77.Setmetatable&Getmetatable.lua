--Lua provides two essential functions for working with metatables:

--setmetatable() - Attaches a metatable to a table. Takes two arguments: the main table and the metatable to attach. Returns the main table.

local myTable = {name = "Alice"}
local myMetatable = {}

setmetatable(myTable, myMetatable)

--getmetatable() - Retrieves the metatable attached to a table. Returns the metatable if one is attached, or nil if the table has no metatable.

local retrievedMeta = getmetatable(myTable)
print(retrievedMeta == myMetatable)  -- Output: true

--Write a function attachMetatable that takes mainTable and metaTable and returns true if the metatable was successfully attached.

--Use setmetatable() to attach the metatable to the main table, then verify the attachment using getmetatable().

--Logic:

--[[Attach metaTable to mainTable using setmetatable()
Retrieve the attached metatable using getmetatable()
Compare the retrieved metatable with the original metaTable
Return true if they match, false otherwise]]

function attachMetatable(mainTable, metaTable)
    -- Write code here
    setmetatable(mainTable, metaTable)

    local retrivedMeta = getmetatable(mainTable)
    return retrivedMeta == metaTable
end