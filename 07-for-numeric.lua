#!/usr/bin/lua

--terminal: ./7-for-numeric.lua

-- for loop - from, to, step

count = 1
for i = 1, 100, 50 do
	count = count * 50
end
print(count)
