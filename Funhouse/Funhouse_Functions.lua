--[[ 'CORE' FUNCTIONS ]]--

--[[ Print Title ]]--

function PrintTitle()
	term.clear()
	term.setCursorPos(10,4)
	write("--------------------------------")
	term.setCursorPos(14,6)
	print("TALES FROM THE FUNHOUSE")
	term.setCursorPos(10,8)
	write("--------------------------------")
	term.setCursorPos(21,10)
	write("A GAME BY")
	term.setCursorPos(19,11)
	write("ALEX CRAWFORD")
	os.pullEvent()
end

--[[ Print Story ]]--

function PrintStory()
	term.clear()
	term.setCursorPos(1,1)
	print("You are Jack. You are a relatively regular teenager, living a relatively regular life, in a relatively regular little town, where not much ever happens.\n\nOne day, while strolling down the street, on the way to meet your friends at the mall, a poster on a telephone poll catches your eye. It's for a fair coming through the town. You figure it might be a good time, or at the very least better than sitting around at home. You tear the poster from the pole, stuff it in your pocket, where you promptly forget about it, and contiue on your way.\n\nThat evening you rediscover the crumpled up poster in your pocket, and decide to call up a couple of friends, and to meet up at the fair, after dinner.")
	os.pullEvent()	
end

--[[ Print Menu ]]--

function PrintMenu()
	term.clear()
	term.setCursorPos(1,1)
	term.setTextColor(colors.lightGray)
	write("--------------------------------\n")
	term.setTextColor(colors.white)
	write("Main Menu\n")
	term.setTextColor(colors.lightGray)
	write("--------------------------------\n\n")
	term.setTextColor(colors.white)
	write("1. New Game" .. "\n")
	write("2. Load Game" .. "\n")
	write("3. Credits" .. "\n\n")
	
	write("4. Quit" .. "\n")
	
	local event, param = os.pullEvent("char")	
	
	if param == "1" then
		return
	elseif param == "2"  then
		LoadGame()
	elseif param == "3"  then
		return
	elseif param == "4"  then
		term.clear()
		term.setCursorPos(1,1)
		error()
	else
		return
	end	
end

--[[ Print Room Info ]]--

function PrintRoomInfo()

	local UserLoc = Player_Table.Location
	local UserLocDescrip = Player_Table.Location
	term.setTextColor(colors.lightGray)
	write("--------------------------------\n")
	term.setTextColor(colors.white)
	write(UserLoc .. "\n")
	term.setTextColor(colors.lightGray)
	write("--------------------------------\n\n")
	term.setTextColor(colors.white)
	for i, v in ipairs(Room_Table) do
		if UserLoc == Room_Table[i]["Name"] then
			write(Room_Table[i]["Descrip"] .. "\n\n")
		end
	end

end

--[[ Print Inventory ]]--

function PrintInv()
	term.setTextColor(colors.lightGray)
	for i, v in ipairs(Inv_Table) do
		if Inv_Table[i]["held"] == true then
			print(Inv_Table[i]["name"])
		end
	end
	term.setTextColor(colors.white)
end

--[[ Print Player Info ]]--

function PlayerInfo()
	write("Location: ")
	term.setTextColor(colors.lightGray)
	write(Player_Table.Location .. "\n")
	term.setTextColor(colors.white)
	write("Score: ")
	term.setTextColor(colors.lightGray)
	write(Player_Table.Score .. "\n\n")
	term.setTextColor(colors.white)
	write("Inventory:" .. "\n")
	PrintInv()
end

--[[ Get User Input ]]--

function GetInput()
	term.setTextColor(colors.lightGray)
	write("--------------------------------\n")
	print()
	term.setTextColor(colors.green)
	write("-> ")
	term.setTextColor(colors.white)
	local Input = string.lower(read())
	print()
	return Input
end

--[[ Score Check Function ]]--

function ScoreCheck()
	if Player_Table.Score > 22 then
		print("Cheater! That score is too damn high.\n")
		error()
	end
end

--[[ Save/Load Functions ]]--

--[[ Save Function ]]--

function SaveGame()

	write("\nWhat would you like to name the save file?\n\n")
	local FileName = string.lower(read())

	local file = fs.open(FileName, "w")
	for i, v in ipairs(Room_Table) do
		for k, v in pairs(Room_Table[i]["features"]) do	
			file.writeLine(textutils.serialize(Room_Table[i]["features"][k]["seen"]))
			if Room_Table[i]["features"][k]["isopen"] ~= nil then
				file.writeLine(textutils.serialize(Room_Table[i]["features"][k]["isopen"]))
			end
		end
	end
	for i, v in ipairs(Inv_Table) do	
		file.writeLine(textutils.serialize(Inv_Table[i]["held"]))
		if Inv_Table[i]["isopen"] ~= nil then
			file.writeLine(textutils.serialize(Inv_Table[i]["isopen"]))
		end
	end
	file.writeLine(textutils.serialize(Player_Table["location"]))
	file.writeLine(textutils.serialize(Player_Table["score"]))
		
	file.close()

	print("\n" .. "File " .. "\"" .. FileName .. "\"" .. " saved." .. "\n\n")
	
	SaveMode = false
	
end

--[[ Load Function ]]--

function LoadGame()

	write("\nWhat save file would you like to load?\n\n")
	local FileName = string.lower(read())

		local file = fs.open(FileName, "r")
		for i, v in ipairs(Room_Table) do
			for k, v in pairs(Room_Table[i]["features"]) do
				local RoomData = file.readLine()
				Room_Table[i]["features"][k]["seen"] = textutils.unserialize(RoomData)
				if Room_Table[i]["features"][k]["isopen"] ~= nil then
					local RoomData = file.readLine()
					Room_Table[i]["features"][k]["isopen"] = textutils.unserialize(RoomData)
				end
			end
		end
		for i, v in ipairs(Inv_Table) do
			local InvData = file.readLine()
			Inv_Table[i]["held"] = textutils.unserialize(InvData)
			if Inv_Table[i]["isopen"] ~= nil then
				local InvData = file.readLine()
				Inv_Table[i]["isopen"] = textutils.unserialize(InvData)
			end
		end
			local PlayerData = file.readLine()
			Player_Table["loaction"] = textutils.unserialize(PlayerData)
			local PlayerData = file.readLine()
			Player_Table["score"] = textutils.unserialize(PlayerData)
			
		file.close()
		
		print("\n" .. "File " .. "\"" .. FileName .. "\"" .. " loaded." .. "\n\n")
		
		FirstPlay = false
		
end

--[[ Quit Function ]]--

function QuitGame(Input)
	if Input == "exit" or Input == "quit" then
		print("Hope you enjoyed playing Tales from the Funhouse! Goodbye!\n")
		error()
	end
end

--[[ ROOM FUNCTIONS ]]--

--[[ General Room Functions ]]--

function GenRoomFunc(Input)

	local UserLoc = Player_Table.Location
	 
	--[[ General Room - Inventory Look Conditions ]]--
	
	--[[ Combined Inventory / Room Feature Look Handling Conditions ]]--
 
	if string.find(Input, "look") then
		for i, v in ipairs(Inv_Table) do
			if Player_Table["location"] == Inv_Table[i]["room"] or Inv_Table[i]["held"] == true then
				if string.find(Input, string.lower(Inv_Table[i]["name"])) then
					print(Inv_Table[i]["descrip"])
				end
			else
				return
			end
		end
		for i, v in ipairs(Room_Table) do
			if Player_Table["location"] == Room_Table[i]["name"] then
				for k, v in pairs(Room_Table[i]["feature"]) do
					if string.find(Input, string.lower(Room_Table[i]["feature"][k]["name"])) then
						print(Room_Table[i]["feature"][k]["descrip"])
					end
				end
			else
				return
			end
		end
	end
	
	--[[ Obsolete Journal Look Conditions
	if Player_Table.Location ~= Room_Table[1] then
		if string.find(Input, Act_Table[7][1]) then
			if string.find(Input, "journal") then
				if Inv_Table[1][3] == true then
					print(Inv_Table[1][2])
				elseif Inv_Table[1][3] == false then
					print("\nYou don't have a journal.\n\n")
				end
			end
		end
	end
	]]--
	
	--[[ Read Conditions ]]--
	
	if string.find(Input, Act_Table[11][1]) then
		if string.find(Input, "journal") and Inv_Table[1]["held"] == true then
			print("You read the journal.\n")
			print("18/08/1990")
			print("The password is 'password'. Great password, I know.\n")
		elseif string.find(Input, "journal") and Inv_Table[1]["held"] == false then
			print("\nYou don't have a journal.\n\n")
		end
	end
	
	--[[ General Room - Look Conditions ]]--
	
	if Input == "look" then
		for i, v in ipairs(Room_Table) do
			if UserLoc == Room_Table[i]["Name"] then
				write(Room_Table[i]["Descrip"] .. "\n\n")
			end
		end
	end
	
	--[[ General Room - Get Conditions ]]--
	
	if string.find(Input, Act_Table[2][1]) then
		if Input == "get" then
			write("Get what?\n\n")
		end
	end
	
	--[[ General Room - Misc Conditions ]]--
	
	if Input == "info" then
		PlayerInfo()
	end
	if string.find(Input, "fuck") or string.find(Input, "shit") or string.find(Input, "cunt") then
		print("There is no need for that kind of language.\n")
	end	
	if Input == "die" then
		Player_Table.alive = false
	end
	if Input == "save" then
		SaveMode = true
	end
	
	--[[ General Room - Help Conditions ]]--
	
	if string.find(Input, "help") or string.find(Input, "?") then
		if Input == "help" or Input == "?" then
			print("Actions:")
			term.setTextColor(colors.lightGray)
			write("Close Get Give Go Look Open\n")
			write("Pull Push Read Talk Use\n\n")
			term.setTextColor(colors.white)
			print("Misc. Actions:")
			term.setTextColor(colors.lightGray)
			write("Help Info Save Quit\n\n")
			term.setTextColor(colors.white)
			write("Type 'Help <ACTION>' to see action descriptions, and usage instructions.\n\n")	
		end
		for i, v in ipairs(Act_Table) do
			if Input == "help " .. Act_Table[i]["name"] or Input == "? " .. Act_Table[i]["name"]then
				print(Act_Table[i]["usage"])
			end
		end 		
	end
	
	--[[ General Room - Path Conditions ]]--
	
	if string.find(Input, "go") then
		for i, v in ipairs(Path_Table) do
			if Player_Table["location"] == Path_Table[i]["room"] then
				if Input == "go n" or Input == "go north" then
					if Path_Table[i]["N"] ~= nil then
						Player_Table["location"] = Player_Table[i]["N"]
					else
						return
					end
				elseif Input == "go ne" or Input == "go northeast" then
					if Path_Table[i]["NE"] ~= nil then
						Player_Table["location"] = Player_Table[i]["NE"]
					else
						return
					end
				elseif Input == "go e" or Input == "go east" then
					if Path_Table[i]["E"] ~= nil then
						Player_Table["location"] = Player_Table[i]["E"]
					else
						return
					end
				elseif Input == "go se" or Input == "go southeast" then
					if Path_Table[i]["SE"] ~= nil then
						Player_Table["location"] = Player_Table[i]["SE"]
					else
						return
					end
				elseif Input == "go s" or Input == "go south" then
					if Path_Table[i]["S"] ~= nil then
						Player_Table["location"] = Player_Table[i]["S"]
					else
						return
					end
				elseif Input == "go sw" or Input == "go southwest" then
					if Path_Table[i]["SW"] ~= nil then
						Player_Table["location"] = Player_Table[i]["SW"]
					else
						return
					end
				elseif Input == "go w" or Input == "go west" then
					if Path_Table[i]["W"] ~= nil then
						Player_Table["location"] = Player_Table[i]["W"]
					else
						return
					end
				elseif Input == "go nw" or Input == "go northwest" then
					if Path_Table[i]["NW"] ~= nil then
						Player_Table["location"] = Player_Table[i]["NW"]
					else
						return
					end
				end
			end
		end
	end
	
end
