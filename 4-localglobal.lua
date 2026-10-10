#!/usr/bin/lua

--terminal: ./4-localglobal.lua

-- global variables are without the local keyword - the variable is available across the script file

status = true
print(status)

-- global - calling global before non-initialisation does not result in error, only nil

print(value) -- nil--
value = 25
print(value)

-- local is used to provide local variables: note that in immmediate mode Lua, this would not return true because of how Lua chunks work

local topic = true
print(topic)

-- within a function local variables are obviously only available in function

function boo()
	local ghost = true
end
print(ghost) --nil

-- local function at top scope, updated inside a function (variable gets updated only after calling the function

local ghoul = nil

function scream()
	ghoul = 4
end

print(ghoul) --nil
scream()
print(ghoul) --4
