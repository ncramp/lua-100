#!/usr/bin/lua

--terminal: ./12-array.lua

-- there are no array type in Lua, 'arrays' are tables without nil values

a = {}
for i = 1, 100000 do
	a[i] = i
end

-- the length operator (#) provides the length of the array

a = {12,34,8,6777,29}
for i = 1, #a do
	print(a[i])
end

-- what happens if you just print a table?
print(a) -- you get table:reference of table

-- common error - Lua arrays start from 1 not 0 (like C) so this will result in a nil
print(a[0]) -- nil

-- string array is easy
str = {"One", "Thing", "At", "A", "Time"}

-- the length operator can be used to remove the last element of the array
len = #a
a[len] = nil
print(a[len]) -- nil

-- add a new element to the end of the array

a[len + 1] = 45
print(a[#a]) -- new length of array

-- another way is to use the table.insert
-- table.insert(table, position, value)

table.insert(a, 2, 15) -- insert 15 in position 2
table.remove(a, 3) -- remove element from position 3

-- table.sort

sorted = table.sort(str)
print(sorted) -- nil

-- concat - simple alphabetic sorting if used on strings

result = table.concat(str, ",")
print(result, type(result))
