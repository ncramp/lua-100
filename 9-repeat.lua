#!/usr/bin/lua

--terminal: ./9-repeat.lua

-- difference between repeat and while is that repeat tests the condition after executing the body, to a repeat loop runs at least once

i = 1
repeat 
	i = i + 1
until i > 10
print(i)

--[[ 

i = 1
repeat 
	i = i + 1
until i > 10

]]--
