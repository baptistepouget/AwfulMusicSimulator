local socket = require "socket"
local udp = socket.udp()
udp:settimeout(0)
udp:setsockname('*', 12345)
local touche
local running = true
print "Beginning server loop."
while running do
	data=udp:receivefrom()