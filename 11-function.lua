#!/usr/bin/lua

--terminal: ./11-function.lua

function square(n)
	return n * n
end
print(square(2))

-- anonymous function assigned to variable (but also note that since the variable square is used again, this overwrites the previous function definition

local square = function(n)
	return n * n
end
print(square(4))

--local variables in a function are local to the function, as would be expected

function sub()
	local n = 4
	return n
end
sub()
print(n) --nil

-- an unusual feature of lua is the ability to return multiple values

function mixed(a, b)
	return b, a
end

c, d = mixed("Hello", "World")

-- named arguments - note the special syntax for function calls with named arguments

function item(arg)
	print(arg.first, arg.second)
end
item{first="new", second="fortune"}

-- variadic function

function list(...)
	return ... end

print(list("a", "b", "c"))

--recursive function

function recursive (n)
	if n > 0 then return recursive (n - 1) end
end
recursive(10)

