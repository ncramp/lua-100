#!/usr/bin/lua

--terminal: ./14-multiarray.lua

-- multimatrix 4x4 

matrix = {}
for i = 1, 4 do
	matrix[i] = {}
	for j = 1, 4 do
		matrix[i][j] = 0
	end
end

for i = 1, 4 do
	for j = 1, 4 do
		print(matrix[i][j])
	end
end

-- the C way

alt = {}
for i = 1, 4 do
	for j = 1, 4 do
		alt[(i-1) * 5+j] = 0
	end
end

for i = 1, 4 do
	for j = 1, 4 do
		print(matrix[i][j])
	end
end


