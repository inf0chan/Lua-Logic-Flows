--You can send values into a coroutine when resuming it by passing additional arguments to coroutine.resume(). These arguments become the return values of the coroutine.yield() call that paused the coroutine.

function receiver()
    local value = coroutine.yield()  -- Pauses and waits for input
    print("Received: " .. value)
end

local co = coroutine.create(receiver)
coroutine.resume(co)           -- Starts coroutine, pauses at yield
coroutine.resume(co, "Hello")  -- Passes "Hello" into the coroutine

--[[When the coroutine resumes the second time, "Hello" is passed in and becomes the return value of coroutine.yield(), which gets stored in the value variable.

Write a function createEchoCoroutine that takes initialMessage and returns a string showing the two-way communication between the main code and a coroutine.

Create a coroutine that first yields the initialMessage, then receives a response when resumed, and finally yields that response back. The function should demonstrate passing values both out of and into the coroutine.

Logic:

Create a function that yields initialMessage and stores the return value from that yield
After receiving the value, yield it back out
Wrap this function in a coroutine using coroutine.create()
Resume the coroutine the first time to get the initial message
Resume the coroutine a second time, passing in "Response"
Capture the value yielded from the second resume
Return a string in the format: First: [first_yield]\nSecond: [second_yield]]

function createEchoCoroutine(initialMessage)
    local function echoFunc()
        local received = coroutine.yield(initialMessage)
        coroutine.yield(received)
    end
    
    local co = coroutine.create(echoFunc)
    local _, firstYield = coroutine.resume(co)
    local _, secondYield = coroutine.resume(co, "Response")
    
    return "First: " .. firstYield .. "\nSecond: " .. secondYield
end