local input = io.read()
local a, b = input:match("(%d+)%s+(%d+)")
print(tonumber(a) + tonumber(b))