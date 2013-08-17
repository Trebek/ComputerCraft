--[[INFO]]--

-- Name: MusiCraft Master
-- Version: 0.1.2
-- Date: 16/08/2013
-- Author: Alex Crawford
-- Notes: Far from complete. Probably never will be complete, to be honest, as it is probably far too ambitious for my coding skills. So far though, it kind of works.

term.clear()
term.setCursorPos(1, 1) 

modem = peripheral.wrap("top") -- Replace "top" with the location of the wireless modem on the computer.

rednet.open("top") -- Replace "top" with the location of the wireless modem on the computer.

local PortStatus = tostring(rednet.isOpen("top")) -- Replace "top" with the location of the wireless modem on the computer.
 
if PortStatus == "true" then -- Prints the current status of the port.
	local PortStatus = "Open"
	print("Port status: " .. PortStatus .. "\n")
elseif PortStatus == "false" then
	local PortStatus = "Closed"
	print("Port status: " .. PortStatus .. "\n")
end

print("What song would you like to play?\n") -- Asks user which song they'd like to play.
InputSong = tostring(read())

local fileHandle   = fs.open (InputSong, 'r') -- Reads the song file.
Song            = textutils.unserialize (fileHandle.readAll())
fileHandle.close()

print("\nNow Playing: " .. InputSong .. "\n") -- Prints the filename of the currently playing song.

local i = 0 -- Sets 'i' to 0, for the function SongIterator.

function SongIterator() -- Iterates through the song, sending signals to the other relevant computers.
	i = i + 1
	local y = Song[i][1]
	print(Song[i][1]) -- Prints out the ID of the computer being sent the signal.
	rednet.send(y, "Received signal from MusiCraft Master")
	sleep(Song[i][2])
end

local RepTime = 0 -- Sets 'RepTime' to 0.

repeat -- Repeats SongIterator until it reaches the end of the song file.
SongIterator()
RepTime = RepTime + 1
until RepTime == #Song

local i = 0 -- Resets 'i' to 0, just because.
