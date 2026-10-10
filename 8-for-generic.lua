#!/usr/bin/lua

--terminal: ./8-for-generic.lua

--manual lookup

components = {["capacitor"] = 1, ["resistor"] = 2, ["inductor"] = 3, ["LED"] = 4}

item = "inductor"
print(components[item])

--generate index table - ipairs provides index and value for a given table

components = {"capacitor","resistor", "inductor", "LED"}
index = {}
for i, v in ipairs(components) do
	index[v] = i
end
item = "inductor"
print(index[item])
