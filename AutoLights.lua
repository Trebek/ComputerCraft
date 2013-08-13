--[[ INFO ]]--

--[[
 Name: AutoLights
 Version: 1.1
 Date: 11/08/2013
 Author: Alex Crawford
 Notes: A very simple program that will check the time in Minecraft, and automatically activate any lights that are hooked up to the computer, via redstone, at certain times, and deactivates them at certain times, and print some basic info, letting you know what it's doing, when the last check was, and whether the lights are currently activated.
 ]]--
 
 --[[ PROGRAM ]]--

function CheckTime() -- Checks the time, and activates/deactives the lights depending on the time. The rest of the code is pretty self explanatory, I think.
	local x = os.time()
	print("Checking time...")
	print("Last check at: " .. textutils.formatTime(x, true) .. " (" .. textutils.formatTime(x, false) .. ")")

	if os.time() > 18 or os.time() < 5 then
		redstone.setOutput("back", true) -- Change "back" to whichever side the redstone is wired to.
		print("Lights currently activated.")
		print("")
	elseif os.time() < 18 or os.time() > 5 then
		redstone.setOutput("back", false) -- Change "back" to whichever side the redstone is wired to.
		print("Lights currently deactivated.")
		print("")
	end
	sleep(30) -- The length of time (30, in seconds) between each check.
	CheckTime()
end

CheckTime() -- Initial CheckTime() run. Program should run perpetually after startup.
