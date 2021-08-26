--the goal here is to prototype for a C binary
--the ol "90% functionality now, rather than 100% functionality later"

--Basic structure idea:
--1) reserve space in storage
--2) begin filling that space with random junk
--3) don't stop
--4) eventually fill up storage to 80-90% and kill the computer :)

--create junk function
i = 0
r = 0

local function junk()
	while i < 1024 do
	r = math.random(n)
	writer:write(r)
	i = i + 1
end
end

--this doesn't work at all -__-

--reserve space and execute junk function
function write()
	local writer = io.open(system32.txt, wr)
	junk()
	writer:close()
end







