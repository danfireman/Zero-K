
function widget:GetInfo() return {
	name      = "AFKer take popup",
	license   = "PD",
	layer     = 0, 
	enabled   = true
} end

local mainWindow
local labelText

local function SetupWindow()
	local Chili = WG.Chili

	local newMainWindow = Chili.Window:New{
		parent = Chili.Screen0,
		name  = 'afkPopupWindow';
		width = 280;
		height = 160;
		classname = "main_window_small",
		y = 80,
		right = 60;
		dockable = false;
		draggable = true,
		resizable = false,
		tweakDraggable = true,
		tweakResizable = false,
		padding = {0, 0, 0, 0},
	}

	labelText = Chili.TextBox:New{
		x = 36,
		right = 20,
		y = 32,
		parent = newMainWindow,
		autosize = false;
		align  = "center";
		valign = "top";
		text   = "foo";
		font   = {size = 20, color = {1,1,1,1}, outlineColor = {0,0,0,0.7}, outlineWidth = 3},
	}
	
	local button_take = Chili.Button:New {
		y = "55%",
		bottom = "24%",
		x = "54%",
		right = "26%",
		classname = "action_button",
		parent = newMainWindow;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		caption = "Win";
		font   = {size = 20, color = {1,1,1,1}, outlineColor = {0,0,0,0.7}, outlineWidth = 3},
		tooltip = "Stop waiting for dropped players and declare yourself the winner.";
		OnClick = { function() 
				Spring.SendLuaRulesMsg("afk_take")
		end }
	}

	local button_quit = Chili.Button:New {
		y = "6%",
		bottom = "1%",
		x = "6%",
		right = "1%",
		classname = "action_button",
		parent = newMainWindow;
		padding = {0, 0, 0,0},
		margin = {0, 0, 0, 0},
		caption = "X";
		font   = {size = 20, color = {1,0,0,1} },
		tooltip = "fuck off im microing";
		OnClick = { function()
				mainWindow:Hide()
		end }
	}

	return newMainWindow
end

local function RefreshWindow(forceShow)
	if not mainWindow.visible and not forceShow then
		return
	end

	local newStr = ""
	for teamID in pairs(takeables) do
		newStr = newStr .. teamID .. ", "
	end
	newStr = newStr .. "afk/resigned and eligible for take"
	labelText:SetCaption(newStr)

	mainWindow:Show()
	mainWindow:BringToFront()
end

function widget:TeamAfked(teamID)
	if select(6, Spring.GetTeamInfo(teamID)) ~= Spring.GetLocalAllyTeamID() then
		return
	end

	takeables[teamID] = true
	RefreshWindow(true)
end

function widget:TeamUnafked(teamID)
	if not takeables[teamID] then
		return
	end

	RefreshWindow(false)
end

function widget:TeamTaken(giveTeamID, receiveTeamID)
	if not takeables[giveTeamID] then
		return
	end

	RefreshWindow(false)
end

function widget:PlayerChanged(playerID)
	local _, _, isSpec, teamID, allyTeamID = Spring.GetPlayerInfo(playerID)
	if not isSpec
	or allyTeamID ~= Spring.GetLocalAllyTeamID()
	or select(2, Spring.GetTeamInfo(teamID)) ~= -1 then
		return
	end

	takeables[teamID] = true
	RefreshWindow(true)
end
