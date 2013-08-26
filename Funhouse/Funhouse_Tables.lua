--[[ Room Table ]]--

local Room_Table = {
	[1] = {
		name = "Room 1",
		description = "Room 1 description.",
		features = {
			[1] = {
				name = "Desk",
				description = "Desk description.",
				description2 = "Desk open description.",
				seen = false,
				open = false,
			},
			[2] = {
				name = "Chair",
				description = "Desk description.",
				seen = false,
				open = nil,
			},
		},
	},
	[2] = {
		name = "Room 2",
		description = "Room 2 description.",
		features = {
			[1] = {
				name = "Wall",
				description = "Desk description.",
				seen = false,
				open = nil,
			},
			[2] = {
				name = "Floor",
				description = "Desk description.",
				seen = false,
				open = nil,
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
	},
}

--[[ Inventory Table ]]--

local Inv_Table = {
	[1] = {
		name = "Inventory Item 1",
		description = "Inventory Item 1 description.",
		held = false
		open = nil
	},
}

--[[ Action Table ]]--

local Act_Table = {
	[1] = {
		name = "close",
		usage = "Closes a specified object." .. "\n\n" .. "Usage: close <OBJECT>" .. "\n",
	},
	[2] = {
		name = "get",
		usage = "If possible, picks up the specified object, and adds it to your inventory." .. "\n\n" .. "Usage: get <OBJECT>" .. "\n",
	},
	[3] = {
		name = "give",
		usage = "Gives a specified object to a specified person" .. "\n\n" .. "Usage: give <OBJECT> <PERSON>" .. "\n",
	},
	[4] = {
		name = "go",
		usage = "Move in a specified direction, usually out of the current room." .. "\n\n" .. "Usage: go <DIRECTION>" .. "\n",
	},
	[5] = {
		name = "help",
		usage = "Displays some helpful information." .. "\n\n" .. "Usage: \"help\", or \"help <ACTION/COMMAND>\"" .. "\n",
	},
	[6] = {
		name = "info",
		usage = "Displays your location, score, and inventory." .. "\n\n" .. "Usage: info" .. "\n",
	},
	[7] = {
		name = "look",
		usage = "Look at a specified object, whether held or in the world." .. "\n\n" .. "Usage: look <OBJECT>" .. "\n",
	},
	[8] = {
		name = "open",
		usage = "Opens a specified object." .. "\n\n" .. "Usage: open <OBJECT>" .. "\n",
	},
	[9] = {
		name = "pull",
		usage = "Pull a specified object." .. "\n\n" .. "Usage: pull <OBJECT>" .. "\n",
	},
	[10] = {
		name = "push",
		usage = "Push a specified object." .. "\n\n" .. "Usage: push <OBJECT>" .. "\n",
	},
	[11] = {
		name = "read",
		usage = "Read a specified object." .. "\n\n" .. "." .. "\n" .. "Usage: read <OBJECT>" .. "\n",
	},
	[12] = {
		name = "save",
		usage = "Save your current game." .. "\n\n" .. "Usage: save" .. "\n",
	},
	[13] = {
		name = "talk",
		usage = "Talk to a specified person, or thing." .. "\n\n" .. "Usage: close <OBJECT>" .. "\n",
	},
	[14] = {
		name = "quit",
		usage = "Quit the game." .. "\n\n" .. "Usage: \"quit\", or \"exit\"" .. "\n",
	},
	[15] = {
		name = "use",
		usage = "Use a specified object you are carrying, or an object in the world." .. "\n\n" .. "Usage: \"use <OBJECT>\", or \"use <OBJECT> with <OBJECT>\"" .."\n",
	},
}

--[[ Player Table ]]--

local Player_Table = {
	name = "Jack",
	description = "Jack description.",
	location = Room_Table[1]["name"],
	score = 0,
	alive = true
}
