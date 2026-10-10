#!/usr/bin/lua

--terminal: ./10-while.lua

i = 1
while i < 10  do
	print(i)
	i = i + 1
end

--[[ 

the below will run - note the parentheses

i = 1
while (i < 10) do
	print(i)
	i = i + 1
end

the below will not run - the usual C-based 'i++' does not exist in Lua - this may catch you out

i = 1
while( i < 10 ) do
	print(i)
	i++
end

]]--

