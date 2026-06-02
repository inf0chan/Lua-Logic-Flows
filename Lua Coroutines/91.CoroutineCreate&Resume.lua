--To create a coroutine, use coroutine.create() with a function as its argument:

function myTask()
    print("Hello from coroutine!")
end

local co = coroutine.create(myTask)

--To start or continue a coroutine's execution, use coroutine.resume():

coroutine.resume(co)
Complete example:

function greet()
    print("Starting...")
    print("Finishing!")
end

local co = coroutine.create(greet)
coroutine.resume(co)  -- Prints both messages

--[[When resume() is called for the first time, the coroutine starts executing from the beginning. If it runs to completion without pausing, it cannot be resumed again.

Write a function runSimpleCoroutine that takes a message and returns the output from a coroutine that prints that message.

Create a coroutine using coroutine.create() that wraps a function which prints the provided message. Then use coroutine.resume() to execute the coroutine. The function should return the message that was printed.

Logic:

Define a function that prints the message parameter
Create a coroutine from that function using coroutine.create()
Resume the coroutine using coroutine.resume()
Return the message that was printed.]]

function runSimpleCoroutine(message)
    -- Write code here
     local co = coroutine.create(function()
        print(message)
    end)

    coroutine.resume(co)

    return message
end