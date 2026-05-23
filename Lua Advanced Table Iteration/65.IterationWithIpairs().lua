--[[While pairs() works with any table structure, Lua provides a specialized function called ipairs() specifically designed for list-style tables. 
This function iterates through tables in sequential order, starting from index 1 and continuing until it encounters a nil value.

The syntax for ipairs() is similar to pairs():]]

for index, value in ipairs(myList) do
    -- use index and value here
end

--Here's an example with a list of quest items:

local questItems = {"Map", "Compass", "Torch", "Rope"}

for i, item in ipairs(questItems) do
    print(i .. ". " .. item)
end

--[[This will print each item with its position number. The key difference from pairs() is that ipairs() stops immediately when it finds a nil value,
 even if there are more elements after it.

Write a function listTasks that takes a tasks table and returns a formatted string listing all tasks with their position numbers.

Use ipairs() to iterate through the tasks in sequential order and build a string where each line shows the task number followed by the task name in
the format number. task. Each task should be on a separate line.

To place each task on its own line, use the newline character "\n" between entries. For example, "1. Task One\n2. Task Two" will display as two separate lines. Be careful not to add a leading "\n" before the first task — only add it between tasks.
Parameters:
tasks (table): A list-style table where each entry is a task name (string)
Returns: A string with each task and its number on a separate line, separated by "\n". Example output for {"Task One", "Task Two"}:
1. Task One
2. Task Two]]

function listTasks(tasks)
    local result = ""
    local first = true  -- Flag to track the first task

    for i, task in ipairs(tasks) do
        if not first then
            result = result .. "\n"  -- Add a newline before the next task, but not before the first one
        end
        result = result .. i .. ". " .. task
        first = false  -- Set the flag to false after processing the first task
    end

    return result
end