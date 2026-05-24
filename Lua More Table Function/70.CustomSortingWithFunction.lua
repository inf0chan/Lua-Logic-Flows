--[[While table.sort() works great for simple lists of numbers or strings, real-world data is often more complex. You might have a table of player records, inventory items, or game scores where each entry is itself a table with multiple fields.

To sort these complex structures, you need to tell table.sort() exactly how to compare two entries. This is where custom comparison functions become essential. A comparison function takes two elements and returns true if the first should come before the second in the sorted order.

Here's an example with a table of player records:]]

local players = {
    {name = "Alice", score = 150},
    {name = "Bob", score = 200},
    {name = "Charlie", score = 175}
}

table.sort(players, function(a, b)
    return a.score > b.score
end)

--[[After sorting, the players table will be ordered by score in descending order, with Bob first (200), Charlie second (175), and Alice third (150). The comparison function accesses the score field of each player table to determine their order.

You can sort by any field you want—names alphabetically, levels numerically, or even combine multiple criteria.]]