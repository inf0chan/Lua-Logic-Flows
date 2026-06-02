--[[A coroutine is a special function that can pause itself during execution and resume later from the exact same point, unlike regular functions that run from start to finish without stopping.

Coroutines enable cooperative multitasking, where tasks voluntarily switch control between each other rather than running simultaneously. One coroutine runs, pauses itself, another takes over, and the cycle continues.

Coroutines are useful for breaking up long-running operations, managing turn-based systems, or creating sequences that need to remember their state between calls.]]