--[[ INFO ]]--

-- Name: Adlibber
-- Version: 0.1.0
-- Dates: 14/08/2013
-- Author: Alex Crawford
-- Notes: Just a simple adlib program. Will probably let the user input the words to be used at some point, but for now it just pulls the words from some tables.

--[[ NOUN/VERB/ADJECTIVE/WORD TABLES ]]--

local NounTable1 = { -- List of singular nouns.
	[1] = "time",
	[2] = "year",
	[3] = "people",
	[4] = "alien",
	[5] = "butt",
	[6] = "television",
	[7] = "computer",
	[8] = "car",
	[9] = "gun",
	[10] = "hair",
	[11] = "thing",
	[12] = "child",
	[13] = "house",
	[14] = "problem",
	[15] = "party",
	[16] = "school",
	[17] = "eye",
	[18] = "money",
	[19] = "water",
	[20] = "book",
}

local NounTable2 = { -- List of plural nouns.
	[1] = "times",
	[2] = "years",
	[3] = "people",
	[4] = "aliens",
	[5] = "butts",
	[6] = "televisions",
	[7] = "computers",
	[8] = "cars",
	[9] = "guns",
	[10] = "hairs",
	[11] = "things",
	[12] = "children",
	[13] = "houses",
	[14] = "problems",
	[15] = "parties",
	[16] = "schools",
	[17] = "eyes",
	[18] = "money",
	[19] = "water",
	[20] = "books",
}

local VerbTable1 = { -- List of plural verbs.
	[1] = "attack",
	[2] = "act",
	[3] = "add",
	[4] = "breathe",
	[5] = "blow",
	[6] = "break",
	[7] = "create",
	[8] = "clean",
	[9] = "drive",
	[10] = "dance",
	[11] = "go",
	[12] = "see",
	[13] = "know",
	[14] = "say",
	[15] = "give",
	[16] = "take",
	[17] = "pull",
	[18] = "feel",
	[19] = "play",
	[20] = "stand",
	[21] = "kill",
}

local VerbTable2 = { -- List of transitive verbs.
	[1] = "attacked",
	[2] = "acted",
	[3] = "added",
	[4] = "breathed",
	[5] = "blew",
	[6] = "broke",
	[7] = "created",
	[8] = "cleaned",
	[9] = "drove",
	[10] = "danced",
	[11] = "went",
	[12] = "saw",
	[13] = "knew",
	[14] = "said",
	[15] = "gave",
	[16] = "took",
	[17] = "pulled",
	[18] = "felt",
	[19] = "played",
	[20] = "stood",
	[21] = "killed",
}

local VerbTable3 = { -- List of singular verbs.
	[1] = "attacks",
	[2] = "acts",
	[3] = "adds",
	[4] = "breathes",
	[5] = "blows",
	[6] = "breaks",
	[7] = "creates",
	[8] = "cleans",
	[9] = "drives",
	[10] = "dances",
	[11] = "goes",
	[12] = "sees",
	[13] = "knows",
	[14] = "says",
	[15] = "gives",
	[16] = "takes",
	[17] = "pulls",
	[18] = "feels",
	[19] = "plays",
	[20] = "stands",
	[21] = "kills",
}

local WordTable = { -- Generates the random words, from the noun/verb tables, to be plugged in to the story.
	[1] = NounTable1[math.random(20)],
	[2] = NounTable2[math.random(20)],
	[3] = VerbTable1[math.random(21)],
	[4] = VerbTable2[math.random(21)],
	[5] = VerbTable3[math.random(21)],
}

--[[ WORD VARIABLES ]]--

local Noun1 = WordTable[1] -- Sets the noun/verb placeholders to the random chosen words, in 'WordTable'.
local Noun2 = WordTable[2]
local Verb1 = WordTable[3]
local Verb2 = WordTable[4]
local Verb3 = WordTable[5]

--[[ THE STORY, WITH INSERTED WORD VARIABLES ]]--

print("This is a story about a " .. Noun1 .. ". This tale is not for the faint of heart, as it contains a lot of " .. Noun2 .. " that like to " .. Verb1 .. ". If you don't mind, then read on. This " .. Noun1 .. " " .. Verb2 .. " a man. That man " .. Verb3 .. ", and owns many " .. Noun2 .. ".") -- Prints the story, and inserts the randomized words.
