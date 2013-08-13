--[[ INFO ]]--

--[[ 
Name: FirstCalc
Version: 0.2.1
Date: 10/08/2013
Author: Alex Crawford
Notes: My first attempt at programming in LUA (and at all really, besides simple HTML and CSS), through ComputerCraft. I used the calculator tutorial on the ComputerCraft wiki as a starting point, and elaborated on that, adding to and modifying it. ]]--

--[[ VARIABLES ]]--

local Memory = {}

local UserOpSel = nil

local Num1 = nil
local Num2 = nil
local Result = nil

local QueryMess = {
	[1] = "What operation would you like to perform?",
	[2] = "What is the first number?",
	[3] = "What is the second number?",
	[4] = "Would you like to store the result in the memory?",
	[5] = "Which memory bank would you like to store the result in?",
	[6] = "Would you like to overwrite the memory bank?",
	[7] = "Would you like to do another equation?",
	[8] = "Would you like to retrieve a result from memory?",
	[9] = "Which memory bank would you like to load for the first number?",
	[10] = "Which memory bank would you like to load for the second number?",
}

--[[ FUNCTIONS ]]--

function GetInput() --  -- Gets and returns user input. Useless.
	local Input = read()
	return Input
end

function DisplayMenu()  -- Displays the main menu.
	term.clear()
	term.setCursorPos(1,2)
	print[[
--------------------------------
FirstCalc v0.2.1
--------------------------------
1. Add
2. Subtract
3. Multiply
4. Divide

5. View Memory

6. Exit
--------------------------------
]] 
end

function QueryUserMenu() -- Asks the user what operation they'd like to perform.

	local OpMess = {
		[1] = "You chose addition.",
		[2] = "You chose subtraction.",
		[3] = "You chose multiplication.",
		[4] = "You chose division.",
		[5] = "You chose to view the memory.",
		[6] = "You chose exit.",
	}

	print(QueryMess[1] .. "\n")
   
	local x = string.lower(read())
   
	if x == "add" then
		UserOpSel = string.gsub(x, "add", 1)
		UserOpSel = tonumber(UserOpSel)
	elseif x == "subtract" then
    		UserOpSel = string.gsub(x, "subtract", 2)
		UserOpSel = tonumber(UserOpSel)
	elseif x == "multiply" then
		UserOpSel = string.gsub(x, "multiply", 3)
		UserOpSel = tonumber(UserOpSel)
	elseif x == "subtract" then
		UserOpSel = string.gsub(x, "divide", 4)
		UserOpSel = tonumber(UserOpSel)
	elseif x == "exit" then
		UserOpSel = string.gsub(x, "exit", 5)
		UserOpSel = tonumber(UserOpSel)
	elseif x == "1" or x == "2" or x == "3" or x == "4" or x == "5" or x == "6" then
		UserOpSel = tonumber(x)
	else
		write("\nInvalid input. Enter 1 - 5.\n\n")
		os.pullEvent(key)
		CoreFunc()
  end
  
	if UserOpSel == 5 then
		GetMem()
	elseif UserOpSel == 6 then
		os.reboot()
	end
  
	if UserOpSel ~= nil then
		term.clear()
		term.setCursorPos(1,1)  
		write("\n" .. OpMess[UserOpSel] .. "\n\n")
	end
    
end

function GetNum() -- Gets the numbers the user wants to operate on.
	write(QueryMess[2] .. "\n\n")
	local x = read()
	Num1 = x
	print("")
	write(QueryMess[3] .. "\n\n")
	local x = read()
	Num2 = x
	print("")
end

function DoMath() -- Does the math using the numbers inputted by the user.

	term.clear()
	term.setCursorPos(1,2)

	if UserOpSel == 1 or UserOpSel == "add" then
		Result = Num1 + Num2
		write(Num1 .. " + " .. Num2 .. " = " .. Result .. "\n\n")
	elseif UserOpSel == 2 or UserOpSel == "subtract" then
		Result = Num1 - Num2
		write(Num1 .. " - " .. Num2 .. " = " .. Result .. "\n\n")
	elseif UserOpSel == 3 or UserOpSel == "multiply" then
		Result = Num1 * Num2
		write(Num1 .. " * " .. Num2 .. " = " .. Result .. "\n\n")
  	elseif UserOpSel == 4 or UserOpSel == "divide" then
    		Result = Num1 / Num2
	write(Num1 .. " / " .. Num2 .. " = " .. Result .. "\n\n")
	end 

end

function StoreData() -- Asks the user whether they want to store the result or not, and then does so, or does not.
	write(QueryMess[4] .. "\n\n")
	local x = string.lower(read())
	print("")
	if x == "yes" or x == "y" then
		write(QueryMess[5] .. "\n")
		print("")
		local x = tonumber(read())
		print("")
			if Memory[x] == nil then
				Memory[x] = Result
				MoreMath()
			else
				write(QueryMess[6] .. "\n\n")
				local x = string.lower(read())
				print("")
					if x == "yes" or x == "y" then
						Memory[x] = Result
						MoreMath()
					elseif x == "no" or x == "n" then
						StoreData()
					end
			end
	elseif x == "no" or x == "n" then
		MoreMath()
	else
		write("Please enter (Y)es or (N)o.\n")
		os.pullEvent()
		StoreData()
	end
end

function CheckMem() -- Checks to see if the memory contains anything.

	local Check = #Memory
  
	if Check ~= 0 then
		write(QueryMess[8] .. "\n")
		local x = string.lower(read())
		print("")
			if x == "yes" or x == "y" then
				write(QueryMess[9] .. "\n")
				local x = read()
				print("")
				Num1 = Memory[x]
				write(QueryMess[10] .. "\n")
				local x = read()
				print("")
				Num2 = Memory[x]
			elseif x == "no" or x == "n" then
				GetNum()
			else
				write("Invalid input.\n")
				CheckMem()
			end
	else
		GetNum()
	end
end

function GetMem() -- Displays what's stored in the memory.

	term.clear()
	term.setCursorPos(1,2)
  
	local x = #Memory
  
	if Memory ~= nil then  
		for i, v in pairs(Memory) do 
  			print(i, ". ", v)
		end
	else
		write("There is nothing stored in the memory.")
	end
  
  os.pullEvent()
  
  CoreFunc()
  
end

function MoreMath() -- Asks the user whether they would like to perform another equation.
	write(QueryMess[7] .. "\n\n")
	local x = read()
	print("")
	if x == "yes" or x == "y" then
		CoreFunc()
	elseif x == "no" or x == "n" then
		os.reboot()
	end
end

function CoreFunc ()  -- All of the functions combined into one function. Why? I don't know.
	DisplayMenu()
	QueryUserMenu()
	CheckMem()
	DoMath()
	StoreData()
	MoreMath()
end

--[[ RUN CORE ]]--

CoreFunc()  -- Runs everything.
