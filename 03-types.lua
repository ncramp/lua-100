#!/usr/bin/lua

--terminal: ./3-types.lua

--[[
global - calling global before non-initialisation does not result in error, only nil
]]--

print(value) -- nil--
value = 25
print(value)


--[[
there are 8 basic types in Lua - nil, boolean, number, string, userdata, function, thread, table
type function is used to confirm the value
]]--

--nil
print(count, type(count))

--number
num = 12
print(num, type(num))
num = 0.0004
print(num, type(num))
num = 0000.4
print(num, type(num))

--string
print(type("Hello world"))
print(type('Hello world'))

-- boolean
state = false
print(type(state))
state = 1
print(type(state))

-- function
print("write function", type(write))

--table
t = {};
print(type(table))

--[[
long strings - no single or double quotes needed
]]--

xml = [[ <stock>
		<item>wheelbarrow</item>
		<item>space</item>
		<item>watering hose</item>
	</stock>
]]

print(xml);

