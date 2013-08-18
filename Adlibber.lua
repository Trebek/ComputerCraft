--[[ INFO ]]--

-- Name: Adlibber
-- Version: 0.2.0
-- Dates: 18/08/2013
-- Author: Alex Crawford
-- Notes: See wiki on GitHub.

--[[ S01 - WORD / SENTENCE TABLES ]]--

--[[ S01.1 - Adjectives ]]--

local AdjTable = {
	[1] = "good",
	[2] = "new",
	[3] = "old",
	[4] = "great",
	[5] = "high",
	[6] = "small",
	[7] = "large",
	[8] = "smelly",
	[9] = "rad",
	[10] = "strange",
}

--[[ S01.2 - Nouns ]]--

local NounTable = {
	[1] = {"time", "times"},
	[2] = {"man", "men",},
	[3] = {"woman",	"women",},
	[4] = {"thing", "things",},
	[5] = {"hand", "hands",},
	[6] = {"head", "heads",},
	[7] = {"butt", "butts",},
	[8] = {"gun", "guns",},
	[9] = {"face", "faces",},
	[10] = {"computer", "computers",},
}

--[[ S01.3 - Verbs ]]--

local VerbTable = { 
	[1] = {"make","makes","making","made",},
	[2] = {"become","becomes","becoming","became",},
	[3] = {"consider","considers","considering","considered",},
	[4] = {"create","creates","creating","created",},
	[5] = {"punch","punches","punching","punched",},
	[6] = {"kick","kicks","kicking","kicked",},
	[7] = {"jump","jumps","jumping","jumped",},
	[8] = {"dance","dances","dancing","danced",},
	[9] = {"throw","throws","throwing","threw",},
	[10] = {"produce","produces","producing","produced",},
}

--[[ S01.4 - Names ]]--

local NameTable = {
	[1] = "Alex",
	[2] = "Bob",
	[3] = "Chris",
	[4] = "Dan",
	[5] = "Eric",
	[6] = "Frank",
	[7] = "Greg",
	[8] = "Horace",
	[9] = "Irving",
	[10] = "Jack",
}

--[[ S01.5 - Sentence Fragments ]]--

local SentFrags1 = {
	[1] = "This is a story about a ",
	[2] = "Once upon a time there lived a ",
	[3] = "This tale is about a ",
	[4] = "This story begins with a ",
	[5] = "A long time ago, in a galaxy far, far away, there lived a ",
}

local SentFrags2 = {
	[1] = " that goes by the name of ",
	[2] = " named ",
	[3] = " that likes to call themselves ",
	[4] = " that goes by the name of ",
	[5] = " that goes by the name of ",
}

local SentFrags3 = {
	[1] = "This is a story about a ",
	[2] = "Once upon a time there lived a ",
	[3] = "This tale is about a ",
	[4] = "This story begins with a ",
	[5] = "A long time ago, in a galaxy far, far away, there lived a ",
}

--[[ S02 - WORD / SENTENCE VARIABLES ]]--

--[[ S02.1 - Adjective Variables ]]--

function AdjGet() -- Retrieves a random adjective from the adjective table, and removes it from the table.
	local AdjNum = #AdjTable
	local AdjX = math.random(AdjNum)
	local AdjRet = AdjTable[AdjX][1]
	table.remove(AdjTable, AdjX)
	return AdjRet
end

local Adj1 = AdjGet()
local Adj2 = AdjGet()
local Adj3 = AdjGet()
local Adj4 = AdjGet()
local Adj5 = AdjGet()

--[[ S02.2 - Noun Variables ]]--

function NounGet() -- Retrieves a random noun from the noun table, and removes it from the table.
	local NounNum = #NounTable
	local NounX = math.random(NounNum)
	local NounRet = NounTable[NounX][1]
	table.remove(NounTable, NounX)
	return NounRet
end
	
local Noun1 = NounGet()
local Noun2 = NounGet()
local Noun3 = NounGet()
local Noun4 = NounGet()
local Noun5 = NounGet()

--[[ S02.3- Verb Variables ]]--

function VerbGet() -- Retrieves a random verb from the verb table, and removes it from the table.
	local VerbNum = #VerbTable
	local VerbX = math.random(VerbNum)
	local VerbRet = VerbTable[VerbX][1]
	table.remove(VerbTable, VerbX)
	return VerbRet
end

local Verb1 = VerbGet()
local Verb2 = VerbGet()
local Verb3 = VerbGet()
local Verb4 = VerbGet()
local Verb5 = VerbGet()
local Verb6 = VerbGet()
local Verb7 = VerbGet()
local Verb8 = VerbGet()

--[[ S02.4- Name Variables ]]--

function NameGet() -- Retrieves a random name from the name table, and removes it from the table.
	local NameNum = #NameTable
	local NameX = math.random(NameNum)
	local NameRet = NameTable[NameX]
	table.remove(NameTable, NameX)
	return NameRet
end

local Name1 = NameGet()
local Name2 = NameGet()
local Name3 = NameGet()

--[[ S02.5 - Sentence Variables INCOMPLETE ]]--

local Sentence1 = SentFrags1[math.random(5)]
local Sentence2 = SentFrags2[math.random(5)]
local Sentence3 = SentFrags1[math.random(5)]
local Sentence4 = SentFrags2[math.random(5)]
local Sentence5 = SentFrags3[math.random(5)]


--[[ S03 - SENTENCE OUTPUT ]]--

RunState = true -- Sets the RunState to true, setting the state up for the following while loop.

while RunState == true do

print("\n" .. Sentence1 .. Noun1 .. Sentence2 .. Name1 .. ".") -- 

RunState = false -- Sets the RunState to false, effectively ending this while loop.

end

while RunState == false do

print("\nGoodbye!")
return

end
