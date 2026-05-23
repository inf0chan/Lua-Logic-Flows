--Now that you've learned both pairs() and ipairs(), it's important to understand when to use each one. The choice depends entirely on the structure of your table and what you're trying to accomplish.

--Use ipairs() when you have a list-style table with sequential integer keys starting from 1. It processes elements in order and stops at the first nil value, making it perfect for arrays where order matters.

--Use pairs() when your table has string keys, mixed key types, or when you need to access all entries regardless of gaps. It iterates through every key-value pair in the table without any specific order.

--Consider this mixed table:

local gameData = {
    "Level 1",
    "Level 2", 
    "Level 3",
    currentLevel = 2,
    playerName = "Hero"
}

--If you use ipairs(), you'll only see the three level strings. If you use pairs(), you'll see all five entries including the string keys.

--Write a function countSequentialItems that takes a data table and returns the count of sequential integer-keyed items.

--Use ipairs() to count how many items exist in the sequential portion of the table (starting from index 1 until the first nil). This will help you understand the difference between ipairs() and pairs() when working with mixed tables.

function countSequentialItems(data)
    local count = 0
    for _, _ in ipairs(data) do
        count = count + 1
    end
    return count
end