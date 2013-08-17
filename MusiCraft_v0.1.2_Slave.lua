--[[INFO]]--

-- Name: MusiCraft Module
-- Version: 0.1.2
-- Date: 16/08/2013
-- Author: Alex Crawford
-- Notes: This program needs to be installed on each Note Block control computer.

term.clear()
term.setCursorPos(1, 1)

modem = peripheral.wrap("top") -- Replace "top" with the location of the wireless modem on the computer.

rednet.open("top") -- Replace "top" with the location of the wireless modem on the computer.

-- Replace "top" with the location of the wireless modem on the computer.

local PortStatus = tostring(rednet.isOpen("top"))
 
if PortStatus == "true" then -- Prints the current status of the port.
	local PortStatus = "Open"
	print("Port status: " .. PortStatus .. "\n")
elseif PortStatus == "false" then
	local PortStatus = "Closed"
	print("Port status: " .. PortStatus .. "\n")
end

repeat

function PlayNote() -- Sends a redstone pulse to the Note Block hooked up to the computer.
	redstone.setOutput("back", true)
	sleep(0)
	redstone.setOutput("back", false)
	sleep(0)
end

id, message = rednet.receive() -- Stores any received messages, and the ID of the sender.

print(message .. " (ID:" .. id .. ")") -- Prints any received messages, and the ID of the sender.

PlayNote() -- Runs the function 'PlayNote'.

until os.pullEvent == "key"
