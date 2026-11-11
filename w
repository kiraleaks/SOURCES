repeat task.wait() until game:IsLoaded()

if getgenv().KiraHubAOTR then
	pcall(function()
		if getgenv().KiraHubUnload then
			getgenv().KiraHubUnload()
		end
	end)
	getgenv().KiraHubAOTR = nil
	task.wait(1)
end


getgenv().KiraHubAOTR = true
getgenv().KiraHubLoading = true

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")
local Lighting = game:GetService("Lighting")
local StarterGui = game:GetService("StarterGui")
local GuiService = game:GetService("GuiService")
local VirtualUser = game:GetService("VirtualUser")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TweenService = game:GetService("TweenService")
local MarketplaceService = game:GetService("MarketplaceService")

getgenv().KiraHub = {
	Config = {},
	State = {
		StartTime = os.time(),
		TotalGold = 0,
		TotalGems = 0,
		TotalXP = 0,
		MythicalDrops = 0,
		Crashes = 0,
		GamesPlayed = 0,
		BanStatus = "Clean",
		LobbyGold = "N/A",
		LobbyGems = "N/A",
		LobbyLevel = "N/A",
		LobbyPrestige = "N/A",
		LobbyStreak = "N/A",
		EmergencyStop = false,
		EspColorObj = Color3.fromRGB(255, 185, 50),
		AttackCooldownVal = 0.15,
		Ready = false,
		OrbitAngle = 0,
		TargetNape = nil,
		FeedbackCooldown = 0,
		Dirty = false,
		MissionStartTime = nil
	},
	UI = { Tabs = {}, Options = nil, Toggles = nil, Labels = {} },
	Classes = {},
	Threads = {},
	Data = {},
	SkinAlreadyLogged = {}
}

local player = Players.LocalPlayer
local pGui = player:WaitForChild("PlayerGui")
local mobile = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled

local LOBBY_ID = 14916516914
local MENU_ID = 13379208636
local isLobby = game.PlaceId == LOBBY_ID
local isMenu = game.PlaceId == MENU_ID

local CFG_FOLDER = "kirahubPremiumConfig"
local CFG_PROFILES = CFG_FOLDER .. "/Profiles"
local CFG_GAMES = CFG_FOLDER .. "/games_played.txt"
local CFG_SESSION_TIME = CFG_FOLDER .. "/session_elapsed.txt"
local CFG_SESSION_GOLD = CFG_FOLDER .. "/session_gold.txt"
local CFG_SESSION_GEMS = CFG_FOLDER .. "/session_gems.txt"
local CFG_SESSION_XP = CFG_FOLDER .. "/session_xp.txt"
local CFG_SESSION_MYTHICALS = CFG_FOLDER .. "/session_mythicals.txt"
local CFG_SESSION_CRASHES = CFG_FOLDER .. "/session_crashes.txt"
local CFG_RETURN_COUNTER = CFG_FOLDER .. "/return_counter.txt"
local CFG_BAN_CACHE = CFG_FOLDER .. "/last_ban_status.txt"
local ConfigFile = CFG_FOLDER .. "/dropdown_config.json"
local AllStatesFile = CFG_FOLDER .. "/all_states.json"
local CFG_KEY = CFG_FOLDER .. "/premium_key.txt"
local CFG_KEYBINDS = CFG_FOLDER .. "/keybinds.txt"

local SCRIPT_VERSION = "v2.9 Premium | Smooth Integration"
local GAME_NAME = "Attack on Titan: Revolution"

local WH_PERSONAL_EXECUTION = "https://discord.com/api/webhooks/1551250004755218442/cgEfXd3tlXOsEHUUFtLM01loSnxA7PQc_RDDvMdVumgtqnH_GRYjYvxUA6cwD1OK3f4g"
local WH_PERSONAL_MYTHICAL = "https://discord.com/api/webhooks/1495285960487866500/hdglTCaim5OghGb9jH6dS-9dsHYdPxwgCItrS5IPuX65hZIM7riRsuHjGi7SGhhZ1AGY"
local WH_FEEDBACK = "https://discord.com/api/webhooks/1497872469498007623/4WiMiJdKVe-3fGD8HdQr2mzbcKImgHU8vjBe-w2JEIlvAqvNGpvLQDeecWbFms8_pIi-"

pcall(function()
	if not isfolder(CFG_FOLDER) then makefolder(CFG_FOLDER) end
	if not isfolder(CFG_PROFILES) then makefolder(CFG_PROFILES) end
	if not isfile(CFG_GAMES) then writefile(CFG_GAMES, "0") end
	if not isfile(CFG_SESSION_TIME) then writefile(CFG_SESSION_TIME, "0") end
	if not isfile(CFG_SESSION_GOLD) then writefile(CFG_SESSION_GOLD, "0") end
