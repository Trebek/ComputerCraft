--[[ INFO ]]--

-- Name: Tales from the Funhouse
-- Version: 0.4.1
-- Date: 30/08/2013
-- Author: Alex Crawford
-- Notes: https://github.com/Trebek/ComputerCraft/wiki/Tales-from-the-Funhouse

-- [[ TABLES ]] --

--[[ Room Table ]]--

Room_Table = {
    [1] = {
		name = "Your Bedroom",
		descripstate = 1,
		description = "You are standing in your bedroom. It is, like most teenager's rooms, a mess. There are posters all over the walls, and clothes all over the floor. Against the west wall is your bed, and against the east wall, under a window, is a messy desk, and chair." .. "\n\n" .. "There is a door to the upstairs hall to the north, and a door to your bathroom to the south.",
		feature = {
			[1] = {
				name = {[1] = "Bed",},
				description = "Your bed. As usual, it hasn't been made.",
				seen = false,
				isopen = nil,
                hasitem = nil,
			},
			[2] = {
				name = {[1] = "Ceiling", [2] = "Roof",},
				description = "The ceiling of your bedroom is pretty uninteresting, except for a few unexplained stains here and there. Hey! That one looks like John A. Macdonald!",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[3] = {
				name = {[1] = "Chair",},
				description = "It's just a run-of-the-mill office chair. There is a nice butt groove in it, from years of use.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[4] = {
				name = {[1] = "Desk",},
				description = "You look at the desk. It's a simple writing desk, with one wide drawer underneath the tabletop. It is cluttered. There appears to be a flower sitting on the desk.",
				description2 = "You look at the desk. It's a simple writing desk, with a one wide drawer underneath the tabletop. It is cluttered. There are papers strewn about.",
				seen = false,
				isopen = nil,
				hasitem = true,
			},
			[5] = {
				name = {[1] = "Drawer", [2] = "Drawers",},
				description = "A closed desk drawer.",
				description2 = "An open desk drawer. The drawer is empty.",
				description3 = "An open desk drawer. There appears to be a camera inside.",
				seen = false,
				isopen = false,
				hasitem = true,
			},
			[6] = {
				name = {[1] = "Floor",},
				description = "The floor is carpeted, and could really use a vacuuming. There is dirty laundry strewn about, and one large pile at the foot of your bed.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[7] = {
				name = {[1] = "Laptop", [2] = "Computer",},
				description = "It's your laptop. You think about sitting down and playing a game, but then decide against it, on account of you have more important things to do (like going to the fair).",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[8] = {
				name = {[1] = "Laundry", [2] = "Clothes",},
				description = "Just some dirty (and smelly) laundry. As you try to gather your laundry into one heaping, smelly pile, you can hear some change clinking around inside some of the pockets.",
				description2 = "Just some dirty (and smelly) laundry.",
				seen = false,
				isopen = nil,
				hasitem = true,
			},
			[9] = {
				name = {[1] = "North Door", [2] = "N Door",},
				description = "The door to the upstairs hallway of your home.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[10] = {
				name = {[1] = "Paper", [2] = "Papers",},
				description = "Just some papers. Mostly school work. Nothing of interest.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[11] = {
				name = {[1] = "Poster", [2] = "Posters",},
				description = "There are posters for various horror, sci-fi, and action movies covering the wall (A Bad Dream on Elk Street, Escape from New Jersey, 2013: A Spaced Odyssey, etc.). There are also some band posters as well (Megaded, AD/BC, Rawmones, etc.).",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[12] = {
				name = {[1] = "South Door", [2] = "S Door",},
				description = "The door to your bathroom.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[13] = {
				name = {[1] = "Wall", [2] = "Walls",},
				description = "The walls are a little grungy, and covered in posters. You can't remember the last time they were cleaned, or repainted.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[14] = {
				name = {[1] = "Window", [2] = "Windows",},
				description = "You look out the window. It looks like a nice summer evening. Should be nice weather for the fair.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
		},
	},
	[2] = {
		name = "Your Bathroom",
		descripstate = 1,
		description = "Your bathroom is only slightly cleaner than your bedroom. There is a toilet in the southeast corner, and a sink to the left of the toilet. Above the sink is a mirror/medicine cabinet.",
		feature = {
			[1] = {
				name = {[1] = "Acne Medication", [2] = "Medication", [3] = "Acne Meds",},
				description = "An old tube of acne cream. Luckily your acne is starting to subside.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[2] = {
				name = {[1] = "Medicine Cabinet", [2] = "Cabinet", [3] = "Med Cabinet",},
				description = "You look into the mirror on the medicine cabinet. Mirror mirror on the wall, who's the raddest of them all?",
				description2 = "Your medicine cabinet is empty.",
				description3 = "Your medicine cabinet contains toothpaste, a toothbrush, hair gel, and some acne medication.",
				seen = false,
				isopen = false,
				hasitem = true,
			},
			[3] = {
				name = {[1] = "Sink",},
				description = "The faucet drips slowly. There appears to be a bit of toothpaste scum in the sink.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[4] = {
				name = {[1] = "Toilet", [2] = "Crapper", [3] = "Potty",},
				description = "Yuck. When was the last time you cleaned your toilet? You can't recall. Maybe never? At least you flushed last time.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[5] = {
				name = {[1] = "Toothbrush", [2] = "Brush",},
				description = "A tool for brushing your chompers. Chompers is the medical term for teeth, in case you didn't know.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
			[6] = {
				name = {[1] = "Toothpaste", [2] = "Paste",},
				description = "A half squeezed tube of toothpaste. Like the toothbrush, it helps keep your pearly whites white (or at least sort of off-white).",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
		},
	},
	[3] = {
		name = "Upstairs Hallway of your Home",
		descripstate = 1,
		description = "The upstairs hallway of your home. Normally you would have safe passage, but your older brother, Biff, blocks your way." .. "\n\n" .. "\"Hey, you little puke! You're late paying your puke tax. Pay up, or get beat.",
		description2 = "The upstairs hallway of your home. It appears your brother is in his room. Thank god.",
		feature = {
			[1] = {
				name = {[1] = "Biff", [2] = "Brother", [3] = "Jerk",},
				description = "Your older brother, AKA The biggest dick on planet Earth.",
				seen = false,
				isopen = nil,
				hasitem = nil,
				giveitem = "Change"
			},
			[2] = {
				name = {[1] = "Stuff",},
				description = "An old tube of acne cream. Luckily your acne is starting to subside.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
		},
	},
	[4] = {
		name = "Living Room of your Home",
		descripstate = 1,
		description = "You are standing in the living room of your home. Blah blah blah.",
		feature = {
			[1] = {
				name = {[1] = "Stuff",},
				description = "Just some stuff.",
				seen = false,
				isopen = nil,
				hasitem = nil,
			},
		},
	},
}

--[[ Room Path Table ]]--

local Path_Table = {
	[1] = {
		room = Room_Table[1]["name"],
		N = Room_Table[3]["name"],
		NE = nil,
		E = nil,
		SE = nil,
		S = Room_Table[2]["name"],
		SW = nil,
		W = nil,
		NW = nil,
		U = nil,
		D = nil,
	},
	[2] = {
		room = Room_Table[2]["name"],
		N = Room_Table[1]["name"],
		NE = nil,
		E = nil,
		SE = nil,
		S = nil,
		SW = nil,
		W = nil,
		NW = nil,
		U = nil,
		D = nil,
	},
	[3] = {
		room = Room_Table[3]["name"],
		N = nil,
		NE = nil,
		E = nil,
		SE = nil,
		S = Room_Table[1]["name"],
		SW = nil,
		W = nil,
		NW = nil,
		U = nil,
		D = nil,
	},
	[4] = {
		room = Room_Table[4]["name"],
		N = nil,
		NE = nil,
		E = nil,
		SE = nil,
		S = Room_Table[1]["name"],
		SW = nil,
		W = nil,
		NW = nil,
		U = Room_Table[3]["name"],
		D = nil,
	},
}

--[[ Inventory Table ]]--

local Inv_Table = {
	[1] = {
		room = Room_Table[1]["name"],
		feature = Room_Table[1]["feature"][5],
		name = {[1] = "Camera", [2] = "Cam",},
		description = "Your trusty little point-and-shoot digital camera. Never leave home without it.\n",
		held = false,
		hidden = true,
		isopen = nil,
		used = nil,
	},
	[2] = {
		room = Room_Table[1]["name"],
		feature = Room_Table[1]["feature"][4],
		name = {[1] = "Flower",},
		description = "A beautiful flower. Perhaps your mother would like it.\n",
		held = false,
		hidden = false,
		isopen = nil,
		used = false,
	},
	[3] = {
		room = Room_Table[1]["name"],
		feature = Room_Table[1]["feature"][8],
		name = {[1] = "Change", [2] = "Money", [3] = "Loot", [4] = "Cash",},
		description = "Some loose change. Will probably come in handy.\n",
		held = false,
		hidden = false,
		isopen = nil,
		used = false,
	},
}

--[[ Action Table ]]--

local Act_Table = {
	[1] = {
		name = "Close",
		usage = "Closes a specified object." .. "\n\n" .. "Usage: close <OBJECT>" .. "\n",
	},
	[2] = {
		name = "Get",
		usage = "If possible, picks up the specified object, and adds it to your inventory." .. "\n\n" .. "Usage: get <OBJECT>" .. "\n",
	},
	[3] = {
		name = "Give",
		usage = "Gives a specified object to a specified person" .. "\n\n" .. "Usage: give <OBJECT> <PERSON>" .. "\n",
	},
	[4] = {
		name = "Go",
		usage = "Move in a specified direction, usually out of the current room." .. "\n\n" .. "Usage: go <DIRECTION>" .. "\n",
	},
	[5] = {
		name = "Help",
		usage = "Displays some helpful information." .. "\n\n" .. "Usage: \"help\", or \"help <ACTION/COMMAND>\"" .. "\n",
	},
	[6] = {
		name = "Info",
		usage = "Displays your location, score, and inventory." .. "\n\n" .. "Usage: info" .. "\n",
	},
	[7] = {
		name = "Look",
		usage = "Look at a specified object, whether held or in the room." .. "\n\n" .. "Usage: look <OBJECT>" .. "\n",
	},
	[8] = {
		name = "Open",
		usage = "Opens a specified object." .. "\n\n" .. "Usage: open <OBJECT>" .. "\n",
	},
	[9] = {
		name = "Pull",
		usage = "Pull a specified object." .. "\n\n" .. "Usage: pull <OBJECT>" .. "\n",
	},
	[10] = {
		name = "Push",
		usage = "Push a specified object." .. "\n\n" .. "Usage: push <OBJECT>" .. "\n",
	},
	[11] = {
		name = "Read",
		usage = "Read a specified object." .. "\n\n" .. "." .. "\n" .. "Usage: read <OBJECT>" .. "\n",
	},
	[12] = {
		name = "Save",
		usage = "Save your current game." .. "\n\n" .. "Usage: save" .. "\n",
	},
	[13] = {
		name = "Talk",
		usage = "Talk to a specified person, or thing." .. "\n\n" .. "Usage: close <OBJECT>" .. "\n",
	},
	[14] = {
		name = "Quit",
		usage = "Quit the game." .. "\n\n" .. "Usage: \"quit\", or \"exit\"" .. "\n",
	},
	[15] = {
		name = "Use",
		usage = "Use a specified object you are carrying, or an object in the world." .. "\n\n" .. "Usage: \"use <OBJECT>\", or \"use <OBJECT> with <OBJECT>\"" .."\n",
	},
}

--[[ Player Table ]]--

local Player_Table = {
	name = "Jack",
	description = "Jack description.",
	location = Room_Table[1]["name"],
	score = 0,
	alive = true,
}

--[[ 'CORE' FUNCTIONS ]]--

--[[ Print Horizontal Rule ]]--

function PrintHR()
	local termw, termh = term.getSize()
	for HR = 1, termw do
		write("-")
	end
	print(HR)
end

--[[ Print Title ]]--

function PrintTitle()
	term.clear()
	term.setCursorPos(1,4)
	term.setTextColor(colors.lightGray)
	PrintHR()
	term.setTextColor(colors.white)
	term.setCursorPos(14,6)
	print("TALES FROM THE FUNHOUSE")
	term.setCursorPos(1,8)
	term.setTextColor(colors.lightGray)
	PrintHR()
	term.setTextColor(colors.white)
	term.setCursorPos(14,11)
	write("A GAME BY ALEX CRAWFORD")
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
	term.setCursorPos(1,4)
	term.setTextColor(colors.lightGray)
	PrintHR()
	term.setTextColor(colors.white)
	term.setCursorPos(21,5)
	print("MAIN MENU")
	term.setTextColor(colors.lightGray)
	PrintHR()
	print()
	term.setTextColor(colors.white)
	term.setCursorPos(20,8)
	print("1. New Game")
	term.setCursorPos(20,9)
	print("2. Load Game")
	term.setCursorPos(20,10)
	print("3. Credits")
	term.setCursorPos(20,12)
	print("4. Quit")
	
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

	term.setTextColor(colors.lightGray)
	PrintHR()
	term.setTextColor(colors.white)
	print(string.upper(Player_Table["location"]))
	term.setTextColor(colors.lightGray)
	PrintHR()
	term.setTextColor(colors.white)
	print()
	for i, v in ipairs(Room_Table) do
		if Room_Table[i]["name"] == Player_Table["location"] then
			if Room_Table[i]["descripstate"] == 1 then
				write(Room_Table[i]["description"] .. "\n")
			elseif Room_Table[i]["descripstate"] == 2 then
				write(Room_Table[i]["description2"] .. "\n")
			elseif Room_Table[i]["descripstate"] == 3 then
				write(Room_Table[i]["description3"] .. "\n")
			end
		end
	end

end

--[[ Print Room Description ]]--

function RoomDescrip()
	
	for i, v in ipairs(Room_Table) do
		if Room_Table[i]["name"] == Player_Table["location"] then
            print(Room_Table[i]["name"] .. "\n")
            if Room_Table[i]["descripstate"] == 1 then
			    print(Room_Table[i]["description"] .. "\n")
            elseif Room_Table[i]["descripstate"] == 2 then
                print(Room_Table[i]["description2"] .. "\n")
            end
		end
	end
	
end

--[[ Print Inventory ]]--

function PrintInv()
	term.setTextColor(colors.lightGray)
	for i, v in ipairs(Inv_Table) do
		if Inv_Table[i]["held"] == true then
			if Inv_Table[i]["used"] == false or Inv_Table[i]["used"] == nil then
				print(Inv_Table[i]["name"][1])
			end
		end
	end
	term.setTextColor(colors.white)
end

--[[ Print Player Info ]]--

function PlayerInfo()
	write("Location: ")
	term.setTextColor(colors.lightGray)
	write(Player_Table["location"] .. "\n")
	term.setTextColor(colors.white)
	write("Score: ")
	term.setTextColor(colors.lightGray)
	write(Player_Table["score"] .. "\n\n")
	term.setTextColor(colors.white)
	write("Inventory:" .. "\n")
	PrintInv()
end

--[[ Get User Input ]]--

function GetInput()
	term.setTextColor(colors.lightGray)
	print()
	PrintHR()
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
	if Player_Table["score"] > 50 then
		print("Cheater! That score is too damn high.\n")
		error()
	end
end

--[[ Save/Load Functions ]]--

--[[ Save Function ]]--

function SaveGame()

	local PlayerLoc = tostring(Player_Table["location"])
	
	write("\nWhat would you like to name the save file?\n\n")
	local FileName = GetInput()

	local file = fs.open(FileName, "w")
	for i, v in ipairs(Room_Table) do
		file.writeLine(textutils.serialize(Room_Table[i]["descripstate"]))
		for i2, v in pairs(Room_Table[i]["feature"]) do	
			file.writeLine(textutils.serialize(Room_Table[i]["feature"][i2]["seen"]))
			if Room_Table[i]["feature"][i2]["isopen"] ~= nil then
				file.writeLine(textutils.serialize(Room_Table[i]["feature"][i2]["isopen"]))
			end
			file.writeLine(textutils.serialize(Room_Table[i]["feature"][i2]["hasitem"]))
		end
	end
	for i, v in ipairs(Inv_Table) do	
		file.writeLine(textutils.serialize(Inv_Table[i]["held"]))
		if Inv_Table[i]["isopen"] ~= nil then
			file.writeLine(textutils.serialize(Inv_Table[i]["isopen"]))
		end
		if Inv_Table[i]["used"] ~= nil then
			file.writeLine(textutils.serialize(Inv_Table[i]["used"]))
		end
	end
	
	for k, v in pairs(Path_Table) do
		file.writeLine(textutils.serialize(Path_Table[k]))
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
	local FileName = GetInput()

		local file = fs.open(FileName, "r")
		for i, v in ipairs(Room_Table) do
			local RoomData = file.readLine()
			Room_Table[i]["descripstate"] = textutils.unserialize(RoomData)
			for i2, v in pairs(Room_Table[i]["feature"]) do
				local RoomData = file.readLine()
				Room_Table[i]["feature"][i2]["seen"] = textutils.unserialize(RoomData)
				if Room_Table[i]["feature"][i2]["isopen"] ~= nil then
					local RoomData = file.readLine()
					Room_Table[i]["feature"][i2]["isopen"] = textutils.unserialize(RoomData)
				end
				local RoomData = file.readLine()
				Room_Table[i]["feature"][i2]["hasitem"] = textutils.unserialize(RoomData)
			end
		end
		for i, v in ipairs(Inv_Table) do
			local InvData = file.readLine()
			Inv_Table[i]["held"] = textutils.unserialize(InvData)
			if Inv_Table[i]["isopen"] ~= nil then
				local InvData = file.readLine()
				Inv_Table[i]["isopen"] = textutils.unserialize(InvData)
			end
			if Inv_Table[i]["used"] ~= nil then
				local InvData = file.readLine()
				Inv_Table[i]["used"] = textutils.unserialize(InvData)
			end
		end
		for k, v in pairs(Path_Table) do
			local PathData = file.readLine()
			Path_Table[k] = textutils.unserialize(PathData)
		end
			local PlayerData = file.readLine()
			Player_Table["location"] = textutils.unserialize(PlayerData)
			local PlayerData = file.readLine()
			Player_Table["score"] = textutils.unserialize(PlayerData)
			
		file.close()
		
		print("\n" .. "File " .. "\"" .. FileName .. "\"" .. " loaded." .. "\n\n")
		
		FirstPlay = false
		LoadMode = false
		
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

	--local UserLoc = Player_Table.Location
	
	--[[ General Room - Close Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[1]["name"])) then
		for i, v in ipairs(Room_Table) do
			for i2, v in ipairs(Room_Table[i]["feature"]) do
				if Room_Table[i]["feature"][i2]["isopen"] == nil then
					for i3, v in ipairs(Room_Table[i]["feature"][i2]["name"]) do
						if string.find(Input, string.lower(Room_Table[i]["feature"][i2]["name"][i3])) then
							print("That can't be closed.")
						end
					end
				elseif Room_Table[i]["feature"][i2]["isopen"] == true then
					for i3, v in ipairs(Room_Table[i]["feature"][i2]["name"]) do
						if string.find(Input, string.lower(Room_Table[i]["feature"][i2]["name"][i3])) then
							Room_Table[i]["feature"][i2]["isopen"] = false
							for i4, v in ipairs(Inv_Table) do
								if Inv_Table[i4]["feature"] == Room_Table[i]["feature"][i2] then
									if Inv_Table[i4]["held"] == false then
										Inv_Table[i4]["hidden"] = true
									elseif Inv_Table[i4]["held"] == true then
										Inv_Table[i4]["hidden"] = false
									end
								end
							end
							print(Room_Table[i]["feature"][i2]["name"][1] .. " closed.")
						end
					end
				elseif Room_Table[i]["feature"][i2]["isopen"] == false then
					for i3, v in ipairs(Room_Table[i]["feature"][i2]["name"]) do
						if string.find(Input, string.lower(Room_Table[i]["feature"][i2]["name"][i3])) then
							print("That is already closed.")
						end
					end
				end
			end
		end
	end
	
	--[[ General Room - Get Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[2]["name"])) then
		for i, v in ipairs(Inv_Table) do
			for i2, v in ipairs(Inv_Table[i]["name"]) do
				if Inv_Table[i]["room"] == Player_Table["location"] then
					if Input == string.lower(Act_Table[2]["name"]) .. " " .. string.lower(Inv_Table[i]["name"][i2]) then				
						if Inv_Table[i]["hidden"] == true or Inv_Table[i]["held"] == true then
							return
						elseif Inv_Table[i]["hidden"] == false then
							Inv_Table[i]["held"] = true
							Inv_Table[i]["feature"]["hasitem"] = false
							Player_Table["score"] = Player_Table["score"] + 8
							print(Inv_Table[i]["name"][1] .. " added to your inventory.\n")
						end
					end
				else
					return
				end
			end
		end
	end
	
	--[[ General Room - Give Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[3]["name"])) then
		return
	end
	
	--[[ General Room - Go Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[4]["name"])) then
		for i, v in ipairs(Path_Table) do
			if Path_Table[i]["room"] == Player_Table["location"] then
				if Input == "go n" or Input == "go north" then
					if Path_Table[i]["N"] ~= nil then
						Player_Table["location"] = Path_Table[i]["N"]
					else
						return
					end
				elseif Input == "go ne" or Input == "go northeast" then
					if Path_Table[i]["NE"] ~= nil then
						Player_Table["location"] = Path_Table[i]["NE"]
					else
						return
					end
				elseif Input == "go e" or Input == "go east" then
					if Path_Table[i]["E"] ~= nil then
						Player_Table["location"] = Path_Table[i]["E"]
					else
						return
					end
				elseif Input == "go se" or Input == "go southeast" then
					if Path_Table[i]["SE"] ~= nil then
						Player_Table["location"] = Path_Table[i]["SE"]
					else
						return
					end
				elseif Input == "go s" or Input == "go south" then
					if Path_Table[i]["S"] ~= nil then
						Player_Table["location"] = Path_Table[i]["S"]
					else
						return
					end
				elseif Input == "go sw" or Input == "go southwest" then
					if Path_Table[i]["SW"] ~= nil then
						Player_Table["location"] = Path_Table[i]["SW"]
					else
						return
					end
				elseif Input == "go w" or Input == "go west" then
					if Path_Table[i]["W"] ~= nil then
						Player_Table["location"] = Path_Table[i]["W"]
					else
						return
					end
				elseif Input == "go nw" or Input == "go northwest" then
					if Path_Table[i]["NW"] ~= nil then
						Player_Table["location"] = Path_Table[i]["NW"]
					else
						return
					end
				elseif Input == "go u" or Input == "go up" then
					if Path_Table[i]["U"] ~= nil then
						Player_Table["location"] = Path_Table[i]["U"]
					else
						return
					end
				elseif Input == "go d" or Input == "go down" then
					if Path_Table[i]["D"] ~= nil then
						Player_Table["location"] = Path_Table[i]["D"]
					else
						return
					end
				end
			end
		end
	end
	
	--[[ General Room - Help Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[5]["name"])) or string.find(Input, "?") then
		if Input == string.lower(Act_Table[5]["name"]) or Input == "?" then
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
			if Input == "help " .. string.lower(Act_Table[i]["name"]) or Input == "? " .. string.lower(Act_Table[i]["name"]) then
				print(Act_Table[i]["usage"])
			end
		end 		
	end
	 
	--[[ General Room - Look Conditions ]]--
	
	--[[ Combined Inventory / Room Feature Look Handling Conditions ]]--
 
	if string.find(Input, string.lower(Act_Table[7]["name"])) then
    	for i, v in ipairs(Room_Table) do
			
    		for i2, v in ipairs(Room_Table[i]["feature"]) do
				for i3, v in ipairs(Room_Table[i]["feature"][i2]["name"]) do
					if Input == string.lower(Act_Table[7]["name"]) .. " " .. string.lower(Room_Table[i]["feature"][i2]["name"][i3]) then
						if Room_Table[i]["name"] == Player_Table["location"] then
							if Room_Table[i]["feature"][i2]["hasitem"] == nil then
								if Room_Table[i]["feature"][i2]["isopen"] == nil then
									if Room_Table[i]["feature"][i2]["seen"] == false then
										print(Room_Table[i]["feature"][i2]["description"])
										Player_Table["score"] = Player_Table["score"] + 2
										Room_Table[i]["feature"][i2]["seen"] = true
									elseif Room_Table[i]["feature"][i2]["seen"] == true then
										print(Room_Table[i]["feature"][i2]["description"])
									end
								elseif Room_Table[i]["feature"][i2]["isopen"] == true then
									if Room_Table[i]["feature"][i2]["seen"] == false then
										print(Room_Table[i]["feature"][i2]["description2"])
										Player_Table["score"] = Player_Table["score"] + 2
										Room_Table[i]["feature"][i2]["seen"] = true
									elseif Room_Table[i]["feature"][i2]["seen"] == true then
										print(Room_Table[i]["feature"][i2]["description2"])
									end
								elseif Room_Table[i]["feature"][i2]["isopen"] == false then
									if Room_Table[i]["feature"][i2]["seen"] == false then
										print(Room_Table[i]["feature"][i2]["description"])
										Player_Table["score"] = Player_Table["score"] + 2
										Room_Table[i]["feature"][i2]["seen"] = true
									elseif Room_Table[i]["feature"][i2]["seen"] == true then
										print(Room_Table[i]["feature"][i2]["description"])
									end
								end
							elseif Room_Table[i]["feature"][i2]["hasitem"] == true then
								if Room_Table[i]["feature"][i2]["isopen"] == nil then
									if Room_Table[i]["feature"][i2]["seen"] == false then
										print(Room_Table[i]["feature"][i2]["description"])
										Player_Table["score"] = Player_Table["score"] + 2
										Room_Table[i]["feature"][i2]["seen"] = true
									elseif Room_Table[i]["feature"][i2]["seen"] == true then
										print(Room_Table[i]["feature"][i2]["description"])
									end
								elseif Room_Table[i]["feature"][i2]["isopen"] == true then
									for i, v in ipairs(Inv_Table) do
										if Inv_Table[i]["feature"] == Room_Table[i]["feature"][i2] then
											Inv_Table[i]["hidden"] = false
										end
									end
									if Room_Table[i]["feature"][i2]["seen"] == false then
										print(Room_Table[i]["feature"][i2]["description3"])
										Player_Table["score"] = Player_Table["score"] + 2
										Room_Table[i]["feature"][i2]["seen"] = true
									elseif Room_Table[i]["feature"][i2]["seen"] == true then
										print(Room_Table[i]["feature"][i2]["description3"])
									end
								elseif Room_Table[i]["feature"][i2]["isopen"] == false then
									if Room_Table[i]["feature"][i2]["seen"] == false then
										print(Room_Table[i]["feature"][i2]["description"])
										Player_Table["score"] = Player_Table["score"] + 2
										Room_Table[i]["feature"][i2]["seen"] = true
									elseif Room_Table[i]["feature"][i2]["seen"] == true then
										print(Room_Table[i]["feature"][i2]["description"])
									end
								end
							elseif Room_Table[i]["feature"][i2]["hasitem"] == false then
								if Room_Table[i]["feature"][i2]["isopen"] == nil then
									for i, v in ipairs(Inv_Table) do
										if Inv_Table[i]["feature"] == Room_Table[i]["feature"][i2] then
											Inv_Table[i]["hidden"] = false
										end
									end
									if Room_Table[i]["feature"][i2]["seen"] == false then
										print(Room_Table[i]["feature"][i2]["description2"])
										Player_Table["score"] = Player_Table["score"] + 2
										Room_Table[i]["feature"][i2]["seen"] = true
									elseif Room_Table[i]["feature"][i2]["seen"] == true then
										print(Room_Table[i]["feature"][i2]["description2"])
									end
								elseif Room_Table[i]["feature"][i2]["isopen"] == true then
									for i, v in ipairs(Inv_Table) do
										if Inv_Table[i]["feature"] == Room_Table[i]["feature"][i2] then
											Inv_Table[i]["hidden"] = false
										end
									end
									if Room_Table[i]["feature"][i2]["seen"] == false then
										print(Room_Table[i]["feature"][i2]["description2"])
										Player_Table["score"] = Player_Table["score"] + 2
										Room_Table[i]["feature"][i2]["seen"] = true
									elseif Room_Table[i]["feature"][i2]["seen"] == true then
										print(Room_Table[i]["feature"][i2]["description2"])
									end
								elseif Room_Table[i]["feature"][i2]["isopen"] == false then
									for i, v in ipairs(Inv_Table) do
										if Inv_Table[i]["feature"] == Room_Table[i]["feature"][i2] then
											Inv_Table[i]["hidden"] = true
										end
									end
									if Room_Table[i]["feature"][i2]["seen"] == false then
										print(Room_Table[i]["feature"][i2]["description"])
										Player_Table["score"] = Player_Table["score"] + 2
										Room_Table[i]["feature"][i2]["seen"] = true
									elseif Room_Table[i]["feature"][i2]["seen"] == true then
										print(Room_Table[i]["feature"][i2]["description"])
									end
								end
							end
						elseif Room_Table[i]["name"] ~= Player_Table["location"] or string.find(Input, Room_Table[i]["feature"][i2]) == nil then
							print("Invalid action.")
						end
					end
				end
			end
		end
		for i, v in ipairs(Inv_Table) do
			for i2, v in ipairs(Inv_Table[i]["name"]) do
				if Input == string.lower(Act_Table[7]["name"]) .. " " .. string.lower(Inv_Table[i]["name"][i2]) then
					if Inv_Table[i]["room"] == Player_Table["location"] then
						if Inv_Table[i]["hidden"] == false and Inv_Table[i]["held"] == true then
							if Inv_Table[i]["used"] == nil then
								if Inv_Table[i]["isopen"] == nil then
									print(Inv_Table[i]["description"])
								elseif Inv_Table[i]["isopen"] == false then
									print(Inv_Table[i]["description"])
								elseif Inv_Table[i]["isopen"] == true then
									print(Inv_Table[i]["description2"])
								end
							elseif Inv_Table[i]["used"] == false then
								if Inv_Table[i]["isopen"] == nil then
									print(Inv_Table[i]["description"])
								elseif Inv_Table[i]["isopen"] == false then
									print(Inv_Table[i]["description"])
								elseif Inv_Table[i]["isopen"] == true then
									print(Inv_Table[i]["description2"])
								end
							elseif Inv_Table[i]["used"] == true then
								print("Item is used.")
							else
								print("Item is used.")
								return
							end
						elseif Inv_Table[i]["hidden"] == false and Inv_Table[i]["held"] == false then
							if Inv_Table[i]["used"] == nil then
								if Inv_Table[i]["isopen"] == nil then
									print(Inv_Table[i]["description"])
								elseif Inv_Table[i]["isopen"] == false then
									print(Inv_Table[i]["description"])
								elseif Inv_Table[i]["isopen"] == true then
									print(Inv_Table[i]["description2"])
								end
							elseif Inv_Table[i]["used"] == false then
								if Inv_Table[i]["isopen"] == nil then
									print(Inv_Table[i]["description"])
								elseif Inv_Table[i]["isopen"] == false then
									print(Inv_Table[i]["description"])
								elseif Inv_Table[i]["isopen"] == true then
									print(Inv_Table[i]["description2"])
								end
							elseif Inv_Table[i]["used"] == true then
								print("Item is used.")
							else
								print("Item is used.")
								return
							end
						else
							print("Item is hidden.")
							return
						end
					end
				end
			end
		end
	end
		
	if Input == string.lower(Act_Table[7]["name"]) then
		for i, v in ipairs(Room_Table) do
			if Room_Table[i]["name"] == Player_Table["location"] then
				if Room_Table[i]["descripstate"] == 1 then
					print(Room_Table[i]["description"])
				elseif Room_Table[i]["descripstate"] == 2 then
					print(Room_Table[i]["description2"])
				end
			end
		end
    end
		
	--[[ General Room - Open Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[8]["name"])) then
        for i, v in ipairs(Room_Table) do
            if Room_Table[i]["name"] == Player_Table["location"] then
                for i2, v in ipairs(Room_Table[i]["feature"]) do
					for i3, v in ipairs(Room_Table[i]["feature"][i2]["name"]) do
						if string.find(Input, string.lower(Room_Table[i]["feature"][i2]["name"][i3])) then
							if Room_Table[i]["feature"][i2]["isopen"] == nil then
								print("You can't open that.\n")
							elseif Room_Table[i]["feature"][i2]["isopen"] == true then
								print("That's already open.\n")
							elseif Room_Table[i]["feature"][i2]["isopen"] == false then
								Room_Table[i]["feature"][i2]["isopen"] = true
								print(Room_Table[i]["feature"][i2]["name"][1] .. " opened.")
								for i, v in ipairs(Inv_Table) do
									if Inv_Table[i]["feature"] == Room_Table[i]["feature"][i2] then
										Inv_Table[i]["hidden"] = false
									end
								end
							end
						end
					end
                end
            end
    	end
    end
	
	--[[ General Room - Pull Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[9]["name"])) then
		return
	end
	
	--[[ General Room - Push Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[10]["name"])) then
		return
	end
	
	--[[ General Room - Read Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[11]["name"])) then
		return
	end
	
	--[[ General Room - Talk Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[13]["name"])) then
		return
	end
	
	--[[ General Room - Use Conditions ]]--
	
	if string.find(Input, string.lower(Act_Table[15]["name"])) then
		return
	end
		
	--[[ General Room - Misc Conditions ]]--
	
	if Input == string.lower(Act_Table[6]["name"]) then
		PlayerInfo()
	end
	if Input == string.lower(Act_Table[12]["name"]) then
		SaveMode = true
	end
	if Input == string.lower("load") then
		LoadMode = true
	end
	if string.find(Input, "fuck") or string.find(Input, "shit") or string.find(Input, "cunt") then
		print("There is no need for that kind of language.\n")
	end	
	if Input == "die" then
		Player_Table["alive"] = false
	end
	
end

--[[ Room 3 - Upstairs Hallway ]]--

function Room3_Func(Input)

	if string.find(Input, string.lower(Act_Table[3]["name"])) then
    	for i, v in ipairs(Room_Table) do
			for i2, v in ipairs(Room_Table[i]["feature"]) do			
				for i3, v in ipairs(Room_Table[i]["feature"][i2]["name"]) do
					if string.find(Input, string.lower(Room_Table[i]["feature"][i2]["name"][i3])) then
						if string.find(Input, string.lower(Room_Table[i]["feature"][i2]["giveitem"])) then
							for i, v in ipairs(Inv_Table) do
								for i2, v in ipairs(Inv_Table[i]["name"]) do
									if string.find(Input, string.lower(Inv_Table[i]["name"][i2])) then
										if Inv_Table[i]["held"] == true then
											if Inv_Table[i]["used"] == false then
												Room_Table[i]["feature"][i2]["hasitem"] = true
												Inv_Table[i]["used"] = true
												print("You give all your change to Biff, and he storms off to his bedroom. As soon as his door slams closed, you can hear music blaring through it.")
											end
										elseif Inv_Table[i]["held"] == false then
											return
										end
									end
								end
							end
    					end
				    end
                end
			end
		end
	end

    for i, v in ipairs(Room_Table) do
		for i2, v in ipairs(Room_Table[i]["feature"]) do
			for i3, v in ipairs(Room_Table[i]["feature"][i2]["name"]) do
				if Room_Table[i]["feature"][i2]["name"][i3] == "Biff" then
					if Room_Table[i]["feature"][i2]["hasitem"] == false then
						Path_Table[3]["D"] = nil
					elseif Room_Table[i]["feature"][i2]["hasitem"] == true then
						Path_Table[3]["D"] = Room_Table[4]["name"]
						Room_Table[3]["descripstate"] = 2
					end
				end
			end
		end
	end
	
end

--[[ LOOPS ]]--

GameRun = true
FirstPlay = true
InMenu = true
SaveMode = false
LoadMode = false

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
	
		--[[ Item Status Check ]]--
	
		for i, v in ipairs(Inv_Table) do
			if Inv_Table[i]["held"] == true then
				Inv_Table[i]["hidden"] = false
			end
		end

		--[[ Room 1 - Your Bedroom - Loop ]]--
		
		if Player_Table["location"] == Room_Table[1]["name"] then
		
			term.clear()
			term.setCursorPos(1,1)
			
			PrintRoomInfo()
			
			repeat
				local Input = GetInput()
				GenRoomFunc(Input)
				while SaveMode == true do
					SaveGame()
				end
				while LoadMode == true do
					LoadGame()
				end
				QuitGame(Input)
				ScoreCheck()
			until Player_Table["location"] ~= Room_Table[1]["name"]
			
		end

		--[[ Room 2 - Your Bathroom - Loop ]]--
		
		if Player_Table["location"] == Room_Table[2]["name"] then
		
			term.clear()
			term.setCursorPos(1,1)
			
			PrintRoomInfo()
			
			repeat
				local Input = GetInput()
				GenRoomFunc(Input)
				while SaveMode == true do
					SaveGame()
				end
				while LoadMode == true do
					LoadGame()
				end
				QuitGame(Input)
				ScoreCheck()
			until Player_Table["location"] ~= Room_Table[2]["name"]
			
		end
		
		--[[ Room 3 - Upstairs Hallway - Loop ]]--
		
		if Player_Table["location"] == Room_Table[3]["name"] then
		
			term.clear()
			term.setCursorPos(1,1)
		
			PrintRoomInfo()

			repeat
				local GenRoutine = coroutine.create(GenRoomFunc)
				local Room3Routine = coroutine.create(Room3_Func)
				local Input = GetInput()
				GenRoomFunc(Input)
				Room3_Func(Input)
				--coroutine.resume(Room3Routine)
				--coroutine.resume(GenRoutine)
				while SaveMode == true do
					SaveGame()
				end
				while LoadMode == true do
					LoadGame()
				end
				QuitGame(Input)
				ScoreCheck()
			until Player_Table["location"] ~= Room_Table[3]["name"]
			
		end
		
		if Player_Table["alive"] == false then
			GameRun = false
		end
		
		if Player_Table["location"] == Room_Table[4]["name"] then
		
			term.clear()
			term.setCursorPos(1,1)
		
			PrintRoomInfo()

			repeat
				local GenRoutine = coroutine.create(GenRoomFunc)
				local Room3Routine = coroutine.create(Room3_Func)
				local Input = GetInput()
				GenRoomFunc(Input)
				--coroutine.resume(Room3Routine)
				--coroutine.resume(GenRoutine)
				while SaveMode == true do
					SaveGame()
				end
				while LoadMode == true do
					LoadGame()
				end
				QuitGame(Input)
				ScoreCheck()
			until Player_Table["location"] ~= Room_Table[4]["name"]
			
		end
		
		if Player_Table["alive"] == false then
			GameRun = false
		end
	
	end
	
end

while GameRun == false do

print("You died! How unfortunate. Be sure to try again though!\n")
error()

end
