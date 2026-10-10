#!/usr/bin/lua

--terminal: ./5-multiassign.lua

a, b = 0.4, 5, 8
print(a, b)

c, d = 500, "hello world"
print(c, d)

-- multiple assignment can be used to swap values

a, b = b, a
print(a, b)

-- unassigned variables are nil

e, f, g = "one", {}
print(e, f, g)

