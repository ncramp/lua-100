#!/usr/bin/lua

--terminal: ./13-iterators.lua

--ipairs - index and value of array
--pairs - key and value from table. pairs does not guarantee order of iteration

-- ipairs on array - remember that arrays in Lua start from 1 not 0

array = {12,5,78,23,56,89}
for i, v in ipairs(array) do
	print(i, v)
end

--counting values

array = {12,5,78,23,56,89}
sum = 0
for i, v in ipairs(array) do
	sum = sum + v
end
print("Total sum:" .. sum)

-- using ipairs for a map function

function map(f, a)
	ret = {}
	for i, x in ipairs(a) do
		ret[i] = f(x)
	end
	return ret
end

array = {12,5,78,23,56,89}
m = map(function (x) return x * x end, array)

-- using ipairs for filter

function filter(p, a)
	ret = {}
	for _, x in ipairs(a) do
		if p(x) then
			ret[#ret+1] = x
		end
	end
	return ret
end

array = {12,5,78,23,56,89}
m = filter(function (x) return x < 30 end, array)
print(m[1], m[2], m[3], m[4], m[5], m[6]) --elements over 30 are nil

--pairs on table - does not matter if the table has mixed values, but the key is numeric if the value is string, table or number, if a bool is included then the key is the name of the bool

table = { "Sam", status = true, 45, {} }
for k, v in pairs(table) do
	print(k, v)
end



