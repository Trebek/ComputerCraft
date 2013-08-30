--[[ INFO ]] --

-- Name: Tales from the Funhouse
-- Version: 0.3.2
-- Date: 25/08/2013
-- Author: Alex Crawford
-- Notes: N/A

--[[ 
TABLE OF CONTENTS

S1 - Tables
	S1.1 - Error Message Table
	S1.2 - Room Table
	S1.3 - Player Table
		S1.3.1 - Inventory Table
	S1.4 - Action Table
S2 - 'Core' Functions
	S2.1 - Print Title
	S2.2 - Print Story
	S2.3 - Print Menu
	S2.4 - Print Room Info
	S2.5 - Check Inventory
	S2.6 - Print Player Info
	S2.7 - Get User Input
	S2.8 - 'Passive' Functions
		S2.8.1 - Look Conditions
			S2.8.1.1 - Inventory Look Conditions
		S2.8.2 - Get Conditions
		S2.8.3 - Misc Conditions
		S2.8.4 - Help Conditions
	S2.9 - Quit Function
	S2.10 - Save/Load Functions
		S2.10.1 - Save Function
		S2.10.2 - Load Function
	S2.11 - Score Check Function
S3 - Room Functions
	S3.1 - Room 1 (Your Bedroom)
		S3.1.1 - Room 1 Look Conditions
		S3.1.2 - Room 1 Get Conditions
		S3.1.3 - Room 1 Path Conditions 
	S3.2 - Room 2 (Your Bathroom)
	  S3.2.1 - Room 2 Look Conditions
	  S3.2.2 - Room 2 Get Conditions
	  S3.2.3 - Room 2 Open Conditions
	  S3.2.4 - Room 2 Close Conditions
		S3.2.5 - Room 2 Path Conditions
	S3.3 - Room 3 (Upstaris Hall of Your House)
S4 - Loops
	S4.1 - Room 1 (Your Bedroom) Loop
	S4.2 - Room 2 (Your Bathroom) Loop
	S4.3 - Room 3 (Upstairs Hall in Your House) Loop
]]--

--[[ S1 - TABLES ]]--

--[[ S1.1 - Error Message Table ]]--

local ErrMess_Table = {
	NoPath = "Invalid path.",
}

--[[ S1.2 - Room Table ]]--

local Room_Table = {
	[1] = {
		Name = "Your Bedroom",
		Descrip = "You are standing in your bedroom. It is, like most teenager's rooms, a mess. There are posters all over the walls, and clothes all over the floor. Against the west wall is your (unmade) bed, and against the east wall, under a window, is a messy desk, and chair." .. "\n\n" .. "There is a door to the upstairs hall to the north, and a door to your bathroom to the south",
		Obj = {
			Obj_Desk = {
				[1] = false,
				[2] = "You look at the desk. It is cluttered. There appears to be a book under some of the papers.\n",
				[3] = "You look at the desk. It is cluttered. There are papers all over the place.\n",
			},
			Obj_Papers = {
				[1] = false,
				[2] = "Just some papers. Mostly school work. Nothing of interest.\n",
				},
			Obj_Walls = {
				[1] = false,
				[2] = "The walls are a little grungy, and covered in posters. You can't remember the last time they were cleaned, or repainted.\n",
			},
			Obj_Floor = {
				[1] = false,
				[2] = "The floor is carpeted, and could really use a vacuuming. There is dirty laundry strewn about, and one large pile at the foot of your bed.\n",
			},
			Obj_Posters = {
				[1] = false,
				[2] = "There are posters for various horror, sci-fi, and action movies covering the wall (A Bad Dream on Elk Street, Escape from New Jersey, 2013: A Spaced Odyssey, etc.). There are also some band posters as well (Megaded, AD/BC, Rawmones, etc.).\n",
			},
			Obj_Chair = {
				[1] = false,
				[2] = "It's just a run-of-the-mill office chair. There is a nice butt groove in it, from years of use.\n",
			},
			Obj_Laundry = {
				[1] = false,
				[2] = "Just some dirty (and smelly) laundry.\n",
			},
		},
	},
	[2] = {
		Name = "Your Bathroom",
		Descrip = "Your bathroom is only slightly cleaner than your bedroom. There is a toilet in the southeast corner, and a sink to the left of the toilet. Above the sink is a mirror/medicine cabinet.",
		Obj = {
			Obj_Toilet = {
				[1] = false,
				[2] = "Yuck. When was the last time you cleaned your toilet? You can't recall. Maybe never? At least you flushed last time.\n",
			},
			Obj_Sink = {
				[1] = false,
				[2] = "The faucet drips slowly. There appears to be a bit of toothpaste scum in the sink.\n",
			},
			Obj_MedCab = {
				[1] = false,
				[2] = "You look into the mirror on the cabinet. Mirror mirror on the wall, who's the raddest of them all?\n",
				[3] = "Your medicine cabinet contains toothpaste, a toothbrush, hair gel, and some acne medication.\n",
			},
			Obj_MedCabOpen = {
				[1] = false,
				[2] = "You look into the mirror on the cabinet. Mirror mirror on the wall, who's the raddest of them all?\n",
				[3] = "Your medicine cabinet contains toothpaste, a toothbrush, hair gel, and some acne medication.\n",
			},
			Obj_Toothpaste = {
				[1] = false,
				[2] = "A half squeezed tube of toothpaste. Good for keeping your chompers clean. Maybe you should use it more often?\n",
			},
			Obj_Toothbrush = {
				[1] = false,
				[2] = "A tool for brushing your teeth. Amazing.\n",
			},
			Obj_AcneMed = {
				[1] = false,
				[2] = "An old tube of acne cream. Luckily your acne is starting to subside.\n",
			},
		},
	},
	[3] = {
		Name = "Upstairs Hall of Your House",
		Descrip = "This is the description for Room Two.",
	},
}

--[[ S1.3 - Player Table ]]--

local Player_Table = {
	Location = Room_Table[1]["Name"],
	Score = 0,
}

--[[ S1.3.1 - Inventory Table ]]--

local Inv_Table = {
	[1] = {
		[1] = "Journal",
		[2] = "A journal. It is a bit ratty looking.\n",
		[3] = false,
	},
	[2] = {
		[1] = "Key",
		[2] = "A key.",
		[3] = false,
	},
	[3] = {
		[1] = "Item Three",
		[2] = "An item.",
		[3] = false,
	},
	[4] = {
		[1] = "Item Four",
		[2] = "Another item.",
		[3] = false,
	},
}

--[[ S1.4 - Action Table ]]--

local Act_Table = {
	[1] = {
		[1] = "close",
		[2] = "Closes a specified object." .. "\n\n" .. "Usage: close <OBJECT>" .. "\n",
	},
	[2] = {
		[1] = "get",
		[2] = "If possible, picks up the specified object, and adds it to your inventory." .. "\n\n" .. "Usage: get <OBJECT>" .. "\n",
	},
	[3] = {
		[1] = "give",
		[2] = "Gives a specified object to a specified person" .. "\n\n" .. "Usage: give <OBJECT> <PERSON>" .. "\n",
	},
	[4] = {
		[1] = "go",
		[2] = "Move in a specified direction, usually out of the current room." .. "\n\n" .. "Usage: go <DIRECTION>" .. "\n",
	},
	[5] = {
		[1] = "help",
		[2] = "Displays some helpful information." .. "\n\n" .. "Usage: \"help\", or \"help <ACTION/COMMAND>\"" .. "\n",
	},
	[6] = {
		[1] = "info",
		[2] = "Displays your location, score, and inventory." .. "\n\n" .. "Usage: info" .. "\n",
	},
	[7] = {
		[1] = "look",
		[2] = "Look at a specified object, whether held or in the world." .. "\n\n" .. "Usage: look <OBJECT>" .. "\n",
	},
	[8] = {
		[1] = "open",
		[2] = "Opens a specified object." .. "\n\n" .. "Usage: open <OBJECT>" .. "\n",
	},
	[9] = {
		[1] = "pull",
		[2] = "Pull a specified object." .. "\n\n" .. "Usage: pull <OBJECT>" .. "\n",
	},
	[10] = {
		[1] = "push",
		[2] = "Push a specified object." .. "\n\n" .. "Usage: push <OBJECT>" .. "\n",
	},
	[11] = {
		[1] = "read",
		[2] = "Read a specified object." .. "\n\n" .. "." .. "\n" .. "Usage: read <OBJECT>" .. "\n",
	},
	[12] = {
		[1] = "save",
		[2] = "Save your current game." .. "\n\n" .. "Usage: save" .. "\n",
	},
	[13] = {
		[1] = "talk",
		[2] = "Talk to a specified person, or thing." .. "\n\n" .. "Usage: close <OBJECT>" .. "\n",
	},
	[14] = {
		[1] = "quit",
		[2] = "Quit the game." .. "\n\n" .. "Usage: \"quit\", or \"exit\"" .. "\n",
	},
	[15] = {
		[1] = "use",
		[2] = "Use a specified object you are carrying, or an object in the world." .. "\n\n" .. "Usage: \"use <OBJECT>\", or \"use <OBJECT> with <OBJECT>\"" .."\n",
	},
}

--[[ S2 - 'CORE' FUNCTIONS ]]--

--[[ S2.1 - Print Title ]]--

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

--[[ S2.2 - Print Story ]]--

function PrintStory()
	term.clear()
	term.setCursorPos(1,1)
	print("You are Jack. You are a relatively regular teenager, living a relatively regular life, in a relatively regular little town, where not much ever happens.\n\nOne day, while strolling down the street, on the way to meet your friends at the mall, a poster on a telephone poll catches your eye. It's for a fair coming through the town. You figure it might be a good time, or at the very least better than sitting around at home. You tear the poster from the pole, stuff it in your pocket, where you promptly forget about it, and contiue on your way.\n\nThat evening you rediscover the crumpled up poster in your pocket, and decide to call up a couple of friends, and to meet up at the fair, after dinner.")
	os.pullEvent()	
end

--[[ S2.3 - Print Menu ]]--

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

--[[ S2.4 - Print Room Info ]]--

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

--[[ S2.5 - Check Inventory ]]--

function GetInv()
	write("Inventory:\n")
	term.setTextColor(colors.lightGray)
	if Inv_Table[1][3] == true then
	print(Inv_Table[1][1])
	end
	if Inv_Table[2][3] == true then
	print(tostring(Inv_Table[2][1]))
	end
	if Inv_Table[3][3] == true then
	print(Inv_Table[3][1])
	end
	if Inv_Table[4][3] == true then
	print(Inv_Table[4][1])
	end
	print()
	term.setTextColor(colors.white)
end

--[[ S2.6 - Print Player Info ]]--

function PlayerInfo()
	local UserLoc = Player_Table.Location
	local UserScore = Player_Table.Score
	write("Location: ")
	term.setTextColor(colors.lightGray)
	write(UserLoc .. "\n")
	term.setTextColor(colors.white)
	write("Score: ")
	term.setTextColor(colors.lightGray)
	write(UserScore .. "\n\n")
	term.setTextColor(colors.white)
	GetInv()
end

--[[ S2.7 - Get User Input ]]--

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

--[[ S2.8 - 'Passive' Functions ]]--

function PassiveFunc(Input)

	local UserLoc = Player_Table.Location
	 
	--[[ S2.8.1 - Look Conditions ]]--
	
	--[[ S2.8.1.1 - Inventory Look Conditions ]]--
	
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
	
	if string.find(Input, Act_Table[9][1]) then
		if string.find(Input, "journal") and Inv_Table[1][3] == true then
			print("You read the journal.\n")
			print("18/08/1990")
			print("The password is 'password'. Great password, I know.\n")
		elseif string.find(Input, "journal") and Inv_Table[1][3] == false then
			print("\nYou don't have a journal.\n\n")
		end
	end
	
	if Input == "look" then
		for i, v in ipairs(Room_Table) do
			if UserLoc == Room_Table[i]["Name"] then
				write(Room_Table[i]["Descrip"] .. "\n\n")
			end
		end
	end
	
	--[[ S2.8.2 - Get Conditions ]]--
	
	if string.find(Input, Act_Table[2][1]) then
		if Input == "get" then
			write("Get what?\n\n")
		end
	end
	
	--[[ S2.8.3 - Misc Conditions ]]--
	
	if Input == "info" then
		PlayerInfo()
	end
	if string.find(Input, "fuck") or string.find(Input, "shit") or string.find(Input, "cunt") then
		print("There is no need for that kind of language.\n")
	end	
	if Input == "die" then
		Player_Table.Location = "dead"
	end
	if Input == "save" then
		SaveMode = true
	end
	
	--[[ S2.8.4 - Help Conditions ]]--
	
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
			if Input == "help " .. Act_Table[i][1] or Input == "? " .. Act_Table[i][1]then
				print(Act_Table[i][2])
			end
		end
	end
		
end

--[[ S2.9 - Quit Function ]]--

function QuitGame(Input)
	if Input == "exit" or Input == "quit" then
		print("Hope you enjoyed playing Tales from the Funhouse! Goodbye!\n")
		error()
	end
end

--[[ S2.10 - Save/Load Functions ]]--

--[[ S2.10.1 - Save Function ]]--

function SaveGame()
	write("\nWhat would you like to name the save file?\n\n")
	local FileName = string.lower(read())

	local file = fs.open(FileName, "w")
	for k, v in pairs(Room_Table[1]["Obj"]) do	
		file.writeLine(textutils.serialize(Room_Table[1]["Obj"][k][1]))
	end
	for i, v in ipairs(Inv_Table) do	
		file.writeLine(textutils.serialize(Inv_Table[i][3]))
	end
	for k, v in pairs(Player_Table) do	
		file.writeLine(textutils.serialize(Player_Table[k]))
	end	
	file.close()

	print("\n" .. "File " .. "\"" .. FileName .. "\"" .. " saved." .. "\n\n")
	
	SaveMode = false
end

--[[ S2.10.2 - Load Function ]]--

function LoadGame()
	write("\nWhat save file would you like to load?\n\n")
	local FileName = string.lower(read())

		local file = fs.open(FileName, "r")
		for k, v in pairs(Room_Table[1]["Obj"]) do
			local RoomData = file.readLine()
			Room_Table[1]["Obj"][k][1] = textutils.unserialize(RoomData)
		end
		for i, v in ipairs(Inv_Table) do
			local InvData = file.readLine()
			Inv_Table[i][3] = textutils.unserialize(InvData)
		end
		for k, v in pairs(Player_Table) do
			local PlayerData = file.readLine()
			Player_Table[k] = textutils.unserialize(PlayerData)
		end
		file.close()
		
		print("\n" .. "File " .. "\"" .. FileName .. "\"" .. " loaded." .. "\n\n")
		
		FirstPlay = false
end

--[[ S2.11 - Score Check Function ]]--

function ScoreCheck()
	if Player_Table.Score > 22 then
		print("Cheater! That score is too damn high.\n")
		error()
	end
end

--[[ S3 - ROOM FUNCTIONS ]]--

--[[ S3.1 - Room 1 (Your Bedroom) ]]--

function Room1_Func(Input)
	
	--[[ S3.1.1 - Room 1 Look Conditions ]]--
	
	if string.find(Input, Act_Table[7][1]) then -- If "look" then
		if string.find(Input, "room") then -- If "look room" then
			print(Room_Table[1]["Descrip"] .. "\n")
		elseif string.find(Input, "desk") and Inv_Table[1][3] == true then -- If "look desk", and have Journal then
			print(Room_Table[1]["Obj"]["Obj_Desk"][3])
			if Room_Table[1]["Obj"]["Obj_Desk"][1] == false then -- If haven't looked then
				Player_Table.Score = Player_Table.Score + 2
				Room_Table[1]["Obj"]["Obj_Desk"][1] = true
			end
		elseif string.find(Input, "desk") and Inv_Table[1][3] == false then  -- If "look desk", and no Journal then
			print(Room_Table[1]["Obj"]["Obj_Desk"][2])
			if Room_Table[1]["Obj"]["Obj_Desk"][1] == false then -- If haven't looked then
				Player_Table.Score = Player_Table.Score + 2
				Room_Table[1]["Obj"]["Obj_Desk"][1] = true
			end
		elseif string.find(Input, "papers")or string.find(Input, "paper") then
			print(Room_Table[1]["Obj"]["Obj_Papers"][2])
			if Room_Table[1]["Obj"]["Obj_Papers"][1] == false then
				Player_Table.Score = Player_Table.Score + 2
				Room_Table[1]["Obj"]["Obj_Papers"][1] = true
			end
		elseif string.find(Input, "walls") or string.find(Input, "wall") then
			print(Room_Table[1]["Obj"]["Obj_Walls"][2])
			if Room_Table[1]["Obj"]["Obj_Walls"][1] == false then
				Player_Table.Score = Player_Table.Score + 2
				Room_Table[1]["Obj"]["Obj_Walls"][1] = true
			end
		elseif string.find(Input, "floor") or string.find(Input, "floors") then
			print(Room_Table[1]["Obj"]["Obj_Floor"][2])
			if Room_Table[1]["Obj"]["Obj_Floor"][1] == false then
				Player_Table.Score = Player_Table.Score + 2
				Room_Table[1]["Obj"]["Obj_Floor"][1] = true
			end
		elseif string.find(Input, "poster") or string.find(Input, "posters") then
			print(Room_Table[1]["Obj"]["Obj_Posters"][2])
			if Room_Table[1]["Obj"]["Obj_Posters"][1] == false then
				Player_Table.Score = Player_Table.Score + 2
				Room_Table[1]["Obj"]["Obj_Posters"][1] = true
			end
		elseif string.find(Input, "chair") then
			print(Room_Table[1]["Obj"]["Obj_Chair"][2])
			if Room_Table[1]["Obj"]["Obj_Chair"][1] == false then
				Player_Table.Score = Player_Table.Score + 2
				Room_Table[1]["Obj"]["Obj_Chair"][1] = true
			end
		elseif string.find(Input, "clothes") or string.find(Input, "laundry") then
			print(Room_Table[1]["Obj"]["Obj_Laundry"][2])
			if Room_Table[1]["Obj"]["Obj_Laundry"][1] == false then
				Player_Table.Score = Player_Table.Score + 2
				Room_Table[1]["Obj"]["Obj_Laundry"][1] = true
			end
		elseif string.find(Input, "book") or string.find(Input, "journal") then
			print(Inv_Table[1][2])
		end
	end
	
	--[[ S3.1.2 - Room 1 Get Conditions ]]--
	
	if string.find(Input, Act_Table[2][1]) then
		if string.find(Input, "journal") or string.find(Input, "notebook") or string.find(Input, "book") then 
			if Inv_Table[1][3] == true then
				print("You already have the journal.\n")			
			elseif Inv_Table[1][3] == false then
				print("You take the journal. Maybe it contains some useful information.\n")
				Inv_Table[1][3] = true
				Player_Table.Score = Player_Table.Score + 8
			end
		end
	end
	
	--[[ S3.1.3 - Room 1 Path Conditions ]]--
	
	if string.find(Input, Act_Table[4][1]) then
		if Input == "go north" or Input == "go n" then
			write("What is the password?\n\n")
			local Input = string.lower(GetInput())
			if Input == "password" then
				Player_Table.Location = Room_Table[3]["Name"]
			else
				write("Wrong password.\n\n")
			end
		elseif Input == "go south" or Input == "go s" then
			Player_Table.Location = Room_Table[2]["Name"]
		end
	end

end

--[[ S3.2 - Room 2 (Your Bathroom) ]]--

function Room2_Func(Input)
	
	--[[ S3.2.1 - Room 2 Look Conditions ]]--

	if string.find(Input, Act_Table[7][1]) then
		if string.find(Input, "room") then
			print(Room_Table[2]["Descrip"] .. "\n")
		elseif string.find(Input, "toilet") then
			print(Room_Table[2]["Obj"]["Obj_Toilet"][2])
			if Room_Table[2]["Obj"]["Obj_Toilet"][1] == false then
				Player_Table.Score = Player_Table.Score + 2
				Room_Table[2]["Obj"]["Obj_Toilet"][1] = true
			end
		elseif string.find(Input, "sink") then
			print(Room_Table[2]["Obj"]["Obj_Sink"][2])
			if Room_Table[2]["Obj"]["Obj_Sink"][1] == false then
				Player_Table.Score = Player_Table.Score + 2
				Room_Table[2]["Obj"]["Obj_Sink"][1] = true
			end
		elseif string.find(Input, "cabinet") or string.find(Input, "mirror") then
			if Obj_MedCab_State == false then
				print(Room_Table[2]["Obj"]["Obj_MedCab"][2])
				if Room_Table[2]["Obj"]["Obj_MedCab"][1] == false then
					Player_Table.Score = Player_Table.Score + 2
					Room_Table[2]["Obj"]["Obj_MedCab"][1] = true
				end
			elseif Obj_MedCab_State == true then
				print(Room_Table[2]["Obj"]["Obj_MedCab"][3])
				if Room_Table[2]["Obj"]["Obj_MedCab"][1] == false then
					Player_Table.Score = Player_Table.Score + 2
					Room_Table[2]["Obj"]["Obj_MedCab"][1] = true
				end
			end		
		elseif string.find(Input, "toothpaste") or string.find(Input, "paste") then
			if Obj_MedCab_State == false then
				return
			elseif Obj_MedCab_State == true then
				print(Room_Table[2]["Obj"]["Obj_Toothpaste"][2])
				if Room_Table[2]["Obj"]["Obj_Toothpaste"][1] == false then
					Player_Table.Score = Player_Table.Score + 2
					Room_Table[2]["Obj"]["Obj_Toothpaste"][1] = true
				end
			end
		end
	end
	
	--[[ S3.2.2 - Room 2 Get Conditions ]]--
	
	--[[ S3.2.3 - Room 2 Open Conditions ]]--
	
	if string.find(Input, Act_Table[8][1]) then
		if string.find(Input, "cabinet") then
			if Obj_MedCab_State == false then
				Obj_MedCab_State = true
				print("You open the medicine cabinet." .. "\n")
				return
			elseif Obj_MedCab_State == true then
				print("The medicine cabinet is already open." .. "\n")
			end
		end
	end
	
	--[[ S3.2.4 - Room 2 Close Conditions ]]--

	--[[ S3.2.5 - Room 2 Path Conditions ]]--
	
	if string.find(Input, Act_Table[4][1]) then
		if Input == "go north" or Input == "go n" then
			Player_Table.Location = Room_Table[1]["Name"]
		end
	end
	
end

--[[ S4 - LOOPS ]]--

GameRun = true
FirstPlay = true
InMenu = true
SaveMode = false

Obj_MedCab_State = false

while GameRun == true do

	while InMenu == true do
		PrintTitle()
		PrintMenu()
		InMenu = false
	end

	while FirstPlay == true do
		PrintStory()
		FirstPlay = false	
	end
	
	while FirstPlay == false do

		--[[ S4.1 - Room 1 (Your Bedroom) Loop ]]--

		if Player_Table.Location == Room_Table[1]["Name"] then
		
			term.clear()
			term.setCursorPos(1,1)
		
			PrintRoomInfo()

			repeat
				local CoPassiveFunc = coroutine.create(PassiveFunc)
				local Input = GetInput()
				coroutine.resume(CoPassiveFunc, Input)
				Room1_Func(Input)
				while SaveMode == true do
					SaveGame()
				end
				QuitGame(Input)
				ScoreCheck()
			until Player_Table.Location ~= Room_Table[1]["Name"]
			
		end
		
		--[[ S4.2 - Room 2 (Your Bathroom) Loop ]]--
		
		if Player_Table.Location == Room_Table[2]["Name"] then
		
			term.clear()
			term.setCursorPos(1,1)
			
			PrintRoomInfo()
			
			repeat
				local CoPassiveFunc = coroutine.create(PassiveFunc)
				local Input = GetInput()
				coroutine.resume(CoPassiveFunc, Input)
				Room2_Func(Input)
				while SaveMode == true do
					SaveGame()
				end
				QuitGame(Input)
				ScoreCheck()
				until Player_Table.Location ~= Room_Table[2]["Name"]
			end
		
		if Player_Table.Location == "dead" then
			GameRun = false
		end
	
	end

end

while GameRun == false do

print("You died! How unfortunate. Be sure to try again though!\n")
error()

end
