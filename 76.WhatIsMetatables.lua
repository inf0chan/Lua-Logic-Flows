--[[A metatable is a regular Lua table that can be attached to another table to change its behavior for certain operations.

Metatables use special functions called metamethods with names starting with two underscores:

__add - defines addition behavior
__index - defines behavior for looking up missing keys
When an operation is performed on a table with a metatable, Lua checks for the corresponding metamethod and uses it to determine the behavior.

Metatables enable:

Creating custom data types with specific behaviors
Implementing object-oriented patterns
Protecting tables from unwanted modifications]]