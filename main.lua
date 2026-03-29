local DefaultConfig = {
    Team = "Pirates",
    Configuration = {HopWhenIdle = true, AutoHop = true, AutoHopDelay = 10, FpsBoost = false, blackscreen = false},
    Items = {AutoFullyMelees = false, Saber = false, CursedDualKatana = true, SoulGuitar = true, RaceV2 = false, ValkyrieHelm = true, DarkFragment = true, DoughKing = true},
    Settings = {StayInSea2UntilHaveDarkFragments = false}
}
Config = getgenv().Config or DefaultConfig

function hoangtuveu()
    if not game:IsLoaded() then game.Loaded:Wait() end
    repeat task.wait() until game:GetService("Players")
    repeat task.wait() until game:GetService("Players").LocalPlayer
    local h = game.Players.LocalPlayer
    repeat task.wait() until h:GetMouse()
    repeat task.wait() until game:GetService("CoreGui")

    local InitTime = os.time()
    local J = {'Task1', 'Task2', "Currencies", 'Melees', 'LiveTime', 'DebugLine'}
    local W = {Instances = {}}
    local K, a = true, false
    
    local h_gui = Instance.new('ScreenGui')
    h_gui.Name = "HoangPhucHub"
    h_gui.Parent = game:GetService('CoreGui')
    h_gui.IgnoreGuiInset = true

    if Config.Configuration.blackscreen then game:GetService('Lighting').ExposureCompensation = -math.huge
    else game:GetService('Lighting').ExposureCompensation = 0 end

    local X = Instance.new('TextLabel')
    X.Name = 'NameHub'
    X.Parent = h_gui
    X.AnchorPoint = Vector2.new(0.5, 0.5)
    X.Position = UDim2.new(0.5, 0, 0.3, 0)
    X.Size = UDim2.new(1, 0, 0, 80)
    X.BackgroundTransparency = 1
    X.Font = Enum.Font.FredokaOne
    X.Text = "HoangPhucHub"
    X.TextColor3 = Color3.fromRGB(9, 255, 248)
    X.TextSize = 50
    local C = Instance.new("UIStroke")
    C.Parent = X
    C.Thickness = 1

    local D = Instance.new("Frame")
    D.Name = 'ToggleContainer'
    D.Parent = h_gui
    D.AnchorPoint = Vector2.new(1, 0)
    D.Position = UDim2.new(1, -20, 0, 20)
    D.Size = UDim2.new(0, 50, 0, 50)
    D.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    D.BackgroundTransparency = 0.2
    local C2 = Instance.new('UICorner')
    C2.CornerRadius = UDim.new(1, 0)
    C2.Parent = D
    local y = Instance.new("UIStroke")
    y.Parent = D
    y.Color = Color3.fromRGB(9, 255, 248)
    y.Thickness = 2
    local w4 = Instance.new("ImageButton")
    w4.Name = 'ToggleButton'
    w4.Parent = D
    w4.Size = UDim2.new(1, 0, 1, 0)
    w4.BackgroundTransparency = 1

    local function CreateLabelInfo(p, o)
        local v = Instance.new('TextLabel')
        v.Parent = h_gui
        v.AnchorPoint = Vector2.new(0.5, 0.5)
        v.Position = o
        v.Size = UDim2.new(0, 200, 0, 30)
        v.BackgroundTransparency = 1
        v.Font = Enum.Font.FredokaOne
        v.Text = p
        v.TextColor3 = Color3.fromRGB(255, 255, 255)
        v.TextSize = 13
        v.RichText = true
        local z_st = Instance.new("UIStroke")
        z_st.Parent = v
        z_st.Thickness = 1
        return v
    end

    MainTextLabel = CreateLabelInfo(" ", UDim2.new(0.5, 0, 0.4, 0))
    W.Instances.MainTextLabel = MainTextLabel
    for p, o in pairs(J) do W.Instances[o] = CreateLabelInfo("...", UDim2.new(0.5, 0, 0.45 + (.05 * p), 0)) end

    function SetText(J_s, C_s)
        local p_l = W.Instances[J_s]
        if not p_l or p_l.Text == C_s then return end
        p_l.Text = C_s
    end

    W.SetText = SetText

    if not isfile("fluent.lua") then
        writefile('fluent.lua', game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))
    end
    local J_fl = loadstring(readfile('fluent.lua'))()
    getgenv().alert = function(a_t, h_t)
        pcall(function() J_fl:Notify({Title = a_t or '', Content = h_t or '', Duration = 5}) end)
    end
    alert("HoangPhucHub", "Bản Ưu Tiên CDK - Bỏ Qua Check Mastery")

    OldSessionTime = isfile('.tdif-' .. h.Name) and tonumber(readfile(".tdif-" .. h.Name)) or 0
    repeat task.wait() game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", Config.Team) until h.Character
    repeat wait() until h.Character
    
    spawn(function()
        game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('NewIslandLOD', 9999):Destroy()
        game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('IslandLOD', 9999):Destroy()
    end)

    StartTick = tick()
    SetText('MainTextLabel', 'Initalizing Script..')

    ScriptStorage = {IsInitalized = false, PlayerData = {}, Melees = {}, CurrentMeleeData = {}, Enemies = {}, Tools = {}, Backpack = {}, IgnoreStoreFruits = {}, Connections = {LocalPlayer = {}}, Task = {}, Tracebacks = {}, Interface = W, NPCs = {}, Map = {}}
    LocalPlayer = h
    Character = h.Character
    Humanoid = Character:WaitForChild('Humanoid')
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    PlayerGui = LocalPlayer:WaitForChild('PlayerGui', 10)
    Lighting = game:GetService('Lighting')
    Services = {}
    setmetatable(Services, {__index = function(J_s, J_k) return game:GetService(J_k) end})
    setmetatable(ScriptStorage.Enemies, {__index = function(J_s, J_k) return Services.Workspace.Enemies:FindFirstChild(J_k) or Services.ReplicatedStorage:FindFirstChild(J_k) end})
    setmetatable(ScriptStorage.Map, {__index = function(J_s, J_k) return Services.Workspace.Map:FindFirstChild(J_k) or Services.Workspace:FindFirstChild(J_k) end})
    setmetatable(ScriptStorage.Tools, {__index = function(J_s, J_k) return LocalPlayer.Character:FindFirstChild(J_k) or LocalPlayer.Backpack:FindFirstChild(J_k) end})
    setmetatable(ScriptStorage.NPCs, {__index = function(J_s, J_k) if not J_k then return end; return workspace.NPCs:FindFirstChild(J_k) or game.ReplicatedStorage.NPCs:FindFirstChild(J_k) end})

    -- ĐÃ CHỈNH SỬA: Ưu tiên CDK lên TOP 1
    TasksOrder = {"CursedDualKatana", "SoulGuitar", "Tushita", "Yama", "AutoHopBoss", "RaidController", "Wenlocktoad", "LevelFarm"}
    MaxLevel = 2800

    function SetTask(J_t, W_m)
        if ScriptStorage.Task[J_t] == W_m then return end
        local a_m = {MainTask = "Task1", SubTask = 'Task2'}
        if a_m[J_t] then if SetText then SetText(a_m[J_t], J_t .. ' : ' .. W_m) end end
        ScriptStorage.Task[J_t] = W_m
        ScriptStorage.Task[J_t .. '-d'] = os.time()
    end

    Remotes = {}
    local J_rem = {}
    BindedMeleeNPCNames = {BlackLeg = 'Dark Step Teacher', Electro = "Mad Scientist", FishmanKarate = "Water Kung-fu Teacher", DeathStep = "Phoeyu, the Reformed", SharkmanKarate = 'Sharkman Teacher', DragonTalon = "Uzoth", ElectricClaw = 'Previous Hero', Godhuman = "Ancient Monk"}
    setmetatable(Remotes, {__index = function(W_r, W_k)
        if W_k ~= 'CommF_' then return Services.ReplicatedStorage.Remotes[W_k] end
        local W_f = {InvokeServer = function(a_i, ...)
            local a_a, h_a = ...
            if string.find(a_a, "Buy") == 1 and not h_a then
                local h_a2 = string.gsub(a_a, 'Buy', "")
                if BindedMeleeNPCNames then
                    if table.find(J_rem, h_a2) then
                        local a_n = ScriptStorage.NPCs[BindedMeleeNPCNames[h_a2]]
                        if a_n then
                            local h_w = a_n.WorldPivot
                            if CaculateDistance(h_w) > 10 then
                                repeat
                                    wait(1)
                                    TweenController.Create(h_w.Position)
                                until CaculateDistance(h_w) < 10
                                task.wait(3)
                                Services.ReplicatedStorage.Remotes.CommF_:InvokeServer(...)
                            end
                        end
                    end
                end
            end
            return Services.ReplicatedStorage.Remotes.CommF_:InvokeServer(...)
        end}
        return W_f
    end})

    function CaculateDistance(W_c, a_c)
        if not W_c then return 0 end
        a_c = a_c or game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local h_v, X_v = Vector3.new(W_c.X, W_c.Y, W_c.Z), Vector3.new(a_c.X, a_c.Y, a_c.Z)
        return (h_v - X_v).magnitude
    end
    function ConvertTo(W_t, a_v) return W_t.new(a_v.X, a_v.Y, a_v.Z) end
    function DispTime(W_s, a_b)
        W_s = tonumber(W_s)
        if not W_s then return "[err]" end
        local h_d = math.floor(W_s / 86400)
        local X_h = math.floor(math.fmod(W_s, 86400) / 3600)
        local w_m = math.floor(math.fmod(W_s, 3600) / 60)
        local D_s = math.floor(math.fmod(W_s, 60))
        if a_b then return (h_d .. "day, " .. X_h .. "hrs, " .. w_m .. "min, " .. D_s .. 'sec.') end
        return (h_d .. 'day, ' .. X_h .. "hrs.")
    end

    local W_ang = 30
    lastChange = tick()
    function RoundVector3Down(W_v) return Vector3.new(math.floor(W_v.X / 10) * 10, math.floor(W_v.Y / 10) * 10, math.floor(W_v.Z / 10) * 10) end
    CaculateCircreDirection = function(a_c)
        if W_ang > 50000 then W_ang = 60 end
        W_ang = W_ang + ((tick() - lastChange) > .4 and 80 or 0)
        if tick() - lastChange > .4 then lastChange = tick() end
        local h_p = a_c + Vector3.new(math.cos(math.rad(W_ang)) * 40, 0, math.sin(math.rad(W_ang)) * 40)
        return CFrame.new(RoundVector3Down(h_p.p))
    end
	function GetMonAsSortedRange()
        local W_m = {}
        table.foreach(Services.Workspace.Enemies:GetChildren(), function(a_i, a_v)
            if a_v and a_v:FindFirstChild('Humanoid') and a_v:FindFirstChild("HumanoidRootPart") and a_v.Humanoid.Health > 0 then
                table.insert(W_m, a_v)
            end
        end)
        table.foreach(game.ReplicatedStorage:GetChildren(), function(a_i, a_v)
            if a_v and a_v:FindFirstChild('Humanoid') and a_v:FindFirstChild("HumanoidRootPart") and a_v.Humanoid.Health > 0 then
                table.insert(W_m, a_v)
            end
        end)
        table.sort(W_m, function(a_1, h_1) return CaculateDistance(a_1.HumanoidRootPart.CFrame) < CaculateDistance(h_1.HumanoidRootPart.CFrame) end)
        return W_m
    end
    local J_q = {CurrentLevel = 2, DoubleQuest = true, CurrentQuests = {}, BlacklistedQuestIds = {BartiloQuest = 1, CitizenQuest = 1, Trainees = 1, MarineQuest = 1, ImpelQuest = 1}}
    J_q.Quests = require(game.ReplicatedStorage.Quests)
    function J_q.Set(W_s, a_k, h_v) W_s[a_k] = h_v end
    function J_q.RefreshQuest(W_s)
        while not ScriptStorage.PlayerData.Level do task.wait(1) end
        local a_l = 0
        local h_q
        for X_i, w_v in pairs(J_q.Quests) do
            if not J_q.BlacklistedQuestIds[X_i] then
                if (w_v[1].LevelReq >= a_l and w_v[1].LevelReq <= ScriptStorage.PlayerData.Level) then
                    a_l = w_v[1].LevelReq
                    h_q = w_v
                    W_s.CurrentQuestId = X_i
                    if ScriptStorage.PlayerData.Level >= 1500 and SeaIndex == 2 and X_i == 'ForgottenQuest' then break end
                end
            end
        end
        local a_la = h_q[#h_q]
        for X_i, X_v in pairs(a_la.Task) do if X_v == 1 then table.remove(h_q, #h_q) end end
        for a_n, X_c in pairs(require(game.ReplicatedStorage.GuideModule).Data.NPCList) do
            for w_i, w_l in pairs(X_c.Levels) do if w_l == h_q[#h_q].LevelReq then W_s.CurrentNpc = a_n.CFrame end end
        end
        W_s.CurrentQuests = h_q
    end
    function J_q.GetCurrentQuest(W_s)
        local a_i = W_s.CurrentQuests[W_s.CurrentLevel] and W_s.CurrentQuests[W_s.CurrentLevel].LevelReq <= ScriptStorage.PlayerData.Level and W_s.CurrentLevel or 1
        for h_n in pairs(W_s.CurrentQuests[a_i].Task) do return h_n, W_s.CurrentNpc, W_s.CurrentQuestId, a_i, W_s.CurrentQuests[a_i].Name end
    end
    function J_q.AbandonQuest() Remotes.CommF_:InvokeServer("AbandonQuest") end
    function J_q.GetCurrentClaimQuest(W_s)
        local W_t = game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible and game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:gsub("%s*Defeat%s*(%d*)%s*(.-)%s*%b()", '%2')
        return (type(W_t) == "string" and string.gsub(W_t, "Military ", "Mil. ") or W_t), game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    end
    function J_q.StartQuest(W_i, a_l)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('ColorsDealer', "2")
        return Remotes.CommF_:InvokeServer("StartQuest", W_i, a_l)
    end
    ScriptStorage.MobRegions = {}
    for W_i, W_v in pairs(game:GetService("ReplicatedStorage").FortBuilderReplicatedSpawnPositionsFolder:GetChildren()) do
        ScriptStorage.MobRegions[tostring(W_v)] = ScriptStorage.MobRegions[tostring(W_v)] or {}
        table.insert(ScriptStorage.MobRegions[tostring(W_v)], W_v.CFrame)
    end
    TweenController = {}
    local TweenDebounce = false
    function TweenController.Create(W_p)
        if not W_p or TweenDebounce then return end
        local a_c = typeof(W_p) ~= 'CFrame' and CFrame.new(W_p.X, W_p.Y, W_p.Z) or W_p
        if TweenInstance then pcall(function() TweenInstance:Cancel() end) end
        for W_i, W_v in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do if W_v:IsA("BasePart") then W_v.CanCollide = false end end
        local W_he = game.Players.LocalPlayer.Character:WaitForChild("Head")
        if not W_he:FindFirstChild("eltrul") then
            local h_b = Instance.new('BodyVelocity')
            h_b.Name = "eltrul"
            h_b.MaxForce = Vector3.new(0, math.huge, 0)
            h_b.Velocity = Vector3.zero
            h_b.Parent = W_he
        end
        a_c = CFrame.new(a_c.Position)
        local W_d = CaculateDistance(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, a_c)
        local h_c = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(h_c.x, a_c.y, h_c.z)
        TweenInstance = Services.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(W_d / 350, Enum.EasingStyle.Linear), {CFrame = a_c})
        TweenInstance:Play()
    end
    local h_attack_lib = {}
    function GetAllBladeHits()
        local bladehits = {}
        for _, X_e in pairs(workspace.Enemies:GetChildren()) do
            if X_e:FindFirstChild('Humanoid') and X_e:FindFirstChild('HumanoidRootPart') and X_e.Humanoid.Health > 0 and (X_e.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 65 then
                table.insert(bladehits, X_e)
            end
        end
        return bladehits
    end
    local net_mod = (Services.ReplicatedStorage.Modules.Net)
    local reg_at = require(net_mod):RemoteEvent("RegisterAttack", true)
    local reg_hit = require(net_mod):RemoteEvent("RegisterHit", true)
    function h_attack_lib:Attack()
        local X_targets = GetAllBladeHits()
        if #X_targets == 0 then return end
        local y_data = {[1] = nil, [2] = {}, [4] = "078da5141"}
        for _, L in pairs(X_targets) do
            reg_at:FireServer(0)
            if not y_data[1] then y_data[1] = L.Head end
            table.insert(y_data[2], {[1] = L, [2] = L.HumanoidRootPart})
        end
        reg_hit:FireServer(unpack(y_data))
    end
    task.spawn(function()
        while task.wait(.04) do 
            if _G.FastAttack == os.time() then pcall(function() h_attack_lib:Attack() end) end 
        end
    end)
    W.Attack = function(h_dmy) pcall(function() _G.FastAttack = os.time() end) end
    CombatController = {GRAB = true, GRAB_DISTANCE = SeaIndex == 1 and 250 or 350, CurrentIndex = 1}
    LastFound = os.time()
    function CombatController.Grab(h_target)
        pcall(sethiddenproperty, game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        if not CombatController.GRAB or GrabDebounce == os.time() then return end
        GrabDebounce = os.time()
        local X_vec, w_count = Vector3.zero, 0
        local D_list = {}
        for _, y_mon in pairs(Services.Workspace.Enemies:GetChildren()) do
            if y_mon.Name == h_target and y_mon:FindFirstChild('Humanoid') and y_mon:FindFirstChild("HumanoidRootPart") and y_mon.Humanoid.Health > 0 then
                w_count = w_count + 1
                X_vec = X_vec + y_mon.HumanoidRootPart.Position
                table.insert(D_list, y_mon)
            end
        end
        if w_count > 0 then
            X_vec = CFrame.new(X_vec / w_count)
            table.foreach(D_list, function(_, h_ent)
                local w_root = h_ent:FindFirstChild("HumanoidRootPart")
                if w_root then
                    h_ent.HumanoidRootPart.CFrame = X_vec
                    if not w_root:FindFirstChild('FarmingVelocity') then
                        local D_vel = Instance.new('BodyVelocity')
                        D_vel.Name = 'FarmingVelocity'
                        D_vel.MaxForce = Vector3.new(4000, 4000, 4000)
                        D_vel.Velocity = Vector3.new(0,0,0)
                        D_vel.Parent = w_root
                    end
                end
            end)
        end
    end
    function CombatController.Search(h_search_list)
        local X_arr = {}
        for _, D_mon in pairs(GetMonAsSortedRange()) do
            if table.find(h_search_list, D_mon.Name) and D_mon:FindFirstChild("Humanoid") and D_mon.Humanoid.Health > 0 then
                table.insert(X_arr, D_mon)
            end
        end
        if #X_arr > 0 then return X_arr[1] end
        for _, X_name in pairs(h_search_list) do
            local h_res = game.ReplicatedStorage:FindFirstChild(X_name)
            if h_res then return h_res end
        end
    end
    function CombatController.Attack(h_at)
        pcall(sethiddenproperty, game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        h_at = type(h_at) == "string" and {h_at} or (h_at or {})
        for _, L_name in pairs(h_at) do
            MonResult = CombatController.Search(h_at)
            if MonResult then
                LastFound = os.time()
                local h_val = 0
                while task.wait() do
                    if _G.Stop then return end
                    local C_hum = MonResult:FindFirstChild('Humanoid')
                    local p_root = MonResult:FindFirstChild('HumanoidRootPart')
                    if not C_hum or C_hum.Health <= 0 then break end
                    TweenController.Create(CaculateCircreDirection(p_root.CFrame) + Vector3.new(0, 35, 0))
                    if CaculateDistance(p_root.Position + Vector3.new(0, 35, 0)) < 150 then
                        CombatController.Grab(L_name or '')
                        FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call(ScriptStorage.ForceToUseSword and 'Sword' or "Melee")
                        W.Attack(MonResult)
                        h_val = h_val + 1
                    end
                    if h_val > 30 and MonResult.Name ~= "Core" then break end
                end
            else
                if (os.time() - LastFound) > 200 then game.Players.LocalPlayer:Kick('Rejoining..') return end
                local h_reg = ScriptStorage.MobRegions[L_name]
                if not h_reg then
                    local X_e = Services.Workspace.Enemies:FindFirstChild(L_name) or game.ReplicatedStorage:FindFirstChild(L_name)
                    h_reg = X_e and {X_e:GetPrimaryPartCFrame().p}
                end
                if h_reg and h_reg[1] then TweenController.Create(h_reg[1] + Vector3.new(0, 35, 35)) end
            end
        end
    end
    FunctionsHandler = {Initalized = false}
    setmetatable(FunctionsHandler, {__index = function(h_f, X_f)
        local QueryResult = rawget(h_f, X_f)
        if not QueryResult then
            return {
                Register = function(w_f)
                    if w_f == false then return end
                    local Result = {CacheListener = {}, RealCache = {}, Methods = {}, Constants = {}, Events = {}, Initalized = true}
                    function Result.RegisterMethod(w_m, D_m, y_m)
                        w_m.Methods[D_m] = {Name = D_m, Callback = y_m, Call = function(w_c, ...) return w_c.Callback(...) end, Events = {}}
                        return true
                    end
                    function Result.Set(h_s, w_s, D_s) h_s.CacheListener[w_s] = D_s return D_s end
                    function Result.Get(h_g, w_g) return h_g.Constants[w_g] or h_g.RealCache[w_g] end
                    FunctionsHandler[X_f] = Result
                end, Initalized = false
            }
        end
        return QueryResult
    end})
    FunctionsHandler.LocalPlayerController:Register()
    FunctionsHandler.LevelFarm:Register()
    FunctionsHandler.Saber:Register()
    FunctionsHandler.Yama:Register()
    FunctionsHandler.Tushita:Register()
    FunctionsHandler.CursedDualKatana:Register()
    FunctionsHandler.SoulGuitar:Register()
    FunctionsHandler.RaidController:Register()
    FunctionsHandler.AutoHopBoss:Register()
    FunctionsHandler.Wenlocktoad:Register()
    FunctionsHandler.LocalPlayerController:RegisterMethod("EquipTool", function(toolName)
        if not Humanoid then return end
        for _, item in pairs(LocalPlayer.Backpack:GetChildren()) do
            if item:IsA('Tool') and (item.Name == tostring(toolName) or item.ToolTip == toolName) then
                LocalPlayer.Character:WaitForChild('Humanoid'):EquipTool(item)
            end
        end
    end)
    FunctionsHandler.LevelFarm:RegisterMethod("Refresh", function()
        local lvl = ScriptStorage.PlayerData.Level
        if lvl >= MaxLevel then return false end
        if lvl < 50 then return 1
        elseif lvl < 70 then return 2
        else return 4 end
    end)
    FunctionsHandler.LevelFarm:RegisterMethod("Start", function(floor)
        local currentLevel = ScriptStorage.PlayerData.Level
        if os.time() - (LastTravel or 0) > 60 then
            LastTravel = os.time()
            if currentLevel >= 1500 and SeaIndex == 2 then
                if not Services.Workspace.Map.IceCastle.Hall.LibraryDoor:FindFirstChild('PhoeyuDoor') then
                    SetTask('MainTask', 'Sea Travel | Teleporting to Third Sea') 
                    Remotes.CommF_:InvokeServer("TravelZou")
                    return
                end
            elseif currentLevel >= 700 and SeaIndex == 1 then
                SetTask('MainTask', 'Sea Travel | Teleporting to Second Sea') 
                Remotes.CommF_:InvokeServer("TravelDressrosa")
                return
            end
        end
        if floor == 4 then
            local monName, npcPos, questId, qIndex, questTitle = J_q:GetCurrentQuest()
            local claimQuest, _ = J_q:GetCurrentClaimQuest()
            if claimQuest then
                if claimQuest ~= questTitle then 
                    J_q:AbandonQuest() 
                end
            else
                if not npcPos then 
                    J_q:RefreshQuest() 
                    return 
                end
                TweenController.Create(npcPos + Vector3.new(0, 5, 3))
                SetTask("MainTask", "Level Farming | " .. monName .. " | Claiming Quest")
                if CaculateDistance(npcPos) > 10 then return end
                task.wait(1)
                J_q:StartQuest(questId, qIndex)
                task.wait(1)
            end
            SetTask('MainTask', 'Level Farming | ' .. monName .. " | Defeating Enemies")
            CombatController.Attack(monName)
        end
    end)
	FunctionsHandler.ExpRedeem:RegisterMethod("Refresh", function() return ScriptStorage.PlayerData.Level < MaxLevel and getsenv(game.ReplicatedStorage.GuideModule)._G.ServerData.ExpBoost == 0 and not Storage:Get("IsCodesRanOut") end)
    FunctionsHandler.ExpRedeem:RegisterMethod("Start", function()
        local codes = {'BANEXPLOIT', 'NOMOREHACKS', "WildDares", 'BossBuild', 'GetPranked', 'EARN_FRUITS', "Sub2UncleKizaru", 'FIGHT4FRUIT', "kittgaming", 'TRIPLEABUSE', "Sub2CaptainMaui", 'Sub2Fer999', "Enyu_is_Pro", "Magicbus", "JCWK", 'Starcodeheo', 'Bluxxy', 'SUB2GAMERROBOT_EXP1', 'Sub2NoobMaster123', 'Sub2Daigrock', "Axiore", "TantaiGaming", 'StrawHatMaine', 'Sub2OfficialNoobie', "TheGreatAce", "SEATROLLIN", "24NOADMIN", 'ADMIN_TROLL', 'NEWTROLL', 'SECRET_ADMIN', "staffbattle", "NOEXPLOIT", "NOOB2ADMIN", "CODESLIDE", "fruitconcepts"}
        for _, code in pairs(codes) do
            SetTask("MainTask", 'Code Redemption | ' .. code .. ' | Redeeming...')
            local res = (Remotes.CommF_:InvokeServer("Redeem", code))
            task.wait()
            if getsenv(game.ReplicatedStorage.GuideModule)._G.ServerData.ExpBoost > 0 then return end
        end
        Storage:Set("IsCodesRanOut", 1)
        Storage:Save()
    end)
    FunctionsHandler.Saber:RegisterMethod('Refresh', function()
        if not Config.Items.Saber or ScriptStorage.Backpack.Saber or ScriptStorage.PlayerData.Level < 200 then return end
        local prog = Remotes.CommF_:InvokeServer('ProQuestProgress')
        local step
        if prog and prog.Plates then
            for _, plateStat in pairs(prog.Plates) do 
                if plateStat == false then step = 1 end 
            end
            if not step then
                if not prog.UsedTorch then step = 2 
                elseif not prog.UsedCup then step = 3 
                elseif not prog.TalkedSon then step = 4 
                elseif not prog.KilledMob then step = 5 
                elseif not prog.UsedRelic then step = 6 
                elseif not prog.KilledShanks then step = 7 
                end
            end
        else step = 1 end
        FunctionsHandler.Saber:Set("CurrentProgressLevel", step)
        return step
    end)
    FunctionsHandler.Saber:RegisterMethod('GetQuestplates', function()
        local cached = FunctionsHandler.Saber:Get("QuestplatesCache")
        if cached then return cached end
        local jungle = Services.Workspace.Map.Jungle
        local plateList = {}
        table.foreach(jungle.QuestPlates:GetChildren(), function(_, v) 
            if v:FindFirstChild("Button") then table.insert(plateList, v) end 
        end)
        FunctionsHandler.Saber:Set('QuestplatesCache', plateList)
        return plateList
    end)
    FunctionsHandler.Saber:RegisterMethod('Start', function()
        local step = FunctionsHandler.Saber:Get("CurrentProgressLevel")
        if step == 1 then
            for i, p in pairs(FunctionsHandler.Saber.Methods.GetQuestplates:Call()) do
                SetTask('MainTask', "Saber Quest | Touching Plate " .. i .. "/5")
                while CaculateDistance(p.Button.CFrame) > 20 do 
                    task.wait()
                    TweenController.Create(p.Button.CFrame) 
                end
                task.wait(1)
            end
        elseif step == 2 then 
            SetTask('MainTask', 'Saber Quest | Torch Puzzle')
            Remotes.CommF_:InvokeServer("ProQuestProgress", 'GetTorch')
            task.wait(1)
            Remotes.CommF_:InvokeServer('ProQuestProgress', "DestroyTorch")
        elseif step == 3 then 
            SetTask('MainTask', 'Saber Quest | Cup Puzzle')
            Remotes.CommF_:InvokeServer('ProQuestProgress', "GetCup")
            if ScriptStorage.Tools.Cup then 
                FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Cup')
                task.wait(1)
                Remotes.CommF_:InvokeServer("ProQuestProgress", 'FillCup', LocalPlayer.Character.Cup) 
            end
            Remotes.CommF_:InvokeServer("ProQuestProgress", 'SickMan')
        elseif step == 5 then
            SetTask('MainTask', 'Saber Quest | Defeat Mob Leader')
            CombatController.Attack('Mob Leader')
        elseif step == 7 then 
            SetTask('MainTask', 'Saber Quest | Defeat Saber Expert')
            CombatController.Attack("Saber Expert") 
        end
    end)
    FunctionsHandler.Yama:RegisterMethod('Refresh', function()
        if SeaIndex ~= 3 or ScriptStorage.Backpack.Yama then return end
        if not FunctionsHandler.Yama:Get("EliteCount") then
            FunctionsHandler.Yama:Set("EliteCount", Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
        end
        if FunctionsHandler.Yama:Get('EliteCount') >= 30 then return true end
    end)
    FunctionsHandler.Yama:RegisterMethod("Start", function()
        SetTask('MainTask', "Yama Quest | Pulling Sword")
        repeat
            task.wait()
            TweenController.Create(game:GetService("ReplicatedStorage").FakeIslands.Waterfall:GetModelCFrame())
        until workspace.Map:FindFirstChild("Waterfall") and workspace.Map.Waterfall:FindFirstChild("SealedKatana")
        fireclickdetector(workspace.Map.Waterfall.SealedKatana.Hitbox.ClickDetector)
    end)
    FunctionsHandler.Tushita:RegisterMethod("Refresh", function()
        if ScriptStorage.Backpack.Tushita or ScriptStorage.PlayerData.Level < 2000 or SeaIndex ~= 3 then return end
        TushitaProgress = TushitaProgress or Remotes.CommF_:InvokeServer("TushitaProgress")
        if not TushitaProgress.OpenedDoor then
            if ScriptStorage.Enemies["rip_indra True Form"] then 
                TushitaProgress = nil
                return 1 
            end
        else
            if ScriptStorage.Enemies['Longma'] then 
                TushitaProgress = nil
                return 2 
            end
        end
    end)
    FunctionsHandler.Tushita:RegisterMethod('Start', function(k)
        if k == 1 then
            SetTask("MainTask", "Tushita Quest | VIP: Lighting Torches while Indra is alive!")
            TweenController.Create(CFrame.new(5714, 20, 256))
            if ScriptStorage.Tools["Holy Torch"] or game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
                for i = 1, 5 do Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", i) end
                return true
            end
        elseif k == 2 then
            SetTask("MainTask", "Tushita Quest | Defeating Longma")
            CombatController.Attack("Longma")
        end
    end)
    function CheckFullMoon(isForce)
        if Lighting.Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=970914431' then return end
        if isForce then return true end
        return Lighting.ClockTime > 18 or Lighting.ClockTime < 5
    end
    FunctionsHandler.SoulGuitar:RegisterMethod("Refresh", function()
        if not Config.Items.SoulGuitar then return end
        if ScriptStorage.Backpack['Skull Guitar'] or not ScriptStorage.Backpack['Dark Fragment'] then return end
        if ScriptStorage.PlayerData.Level < 2300 then return end
        local ecto = (ScriptStorage.Backpack['Ectoplasm'] or {Count = 0})["Count"]
        local bones = (ScriptStorage.Backpack["Bones"] or {Count = 0})['Count']
        if ecto < 250 then return 1 end
        if SeaIndex ~= 3 then return end
        SoulGuitarProcess = Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", 'Check')
        if not SoulGuitarProcess then
            Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
            if not CheckFullMoon() then return end
            return 7
        end
        if not SoulGuitarProcess.Swamp then return 2
        elseif not SoulGuitarProcess.Gravestones then return 3
        elseif not SoulGuitarProcess.Ghost then return 4
        elseif not SoulGuitarProcess.Trophies then return 5
        elseif not SoulGuitarProcess.Pipes then return 6
        elseif bones >= 500 and not ScriptStorage.Backpack["Skull Guitar"] then return 8 end
    end)
    FunctionsHandler.SoulGuitar:RegisterMethod('Start', function(step)
        if step == 7 then
            SetTask("MainTask", 'Soul Guitar | Activating Gravestone Event')
            while CaculateDistance(CFrame.new(-8654.0, 140, 6167)) > 5 do
                task.wait()
                TweenController.Create(CFrame.new(-8654.0, 140, 6167))
            end
            SoulGuitarProcess = Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
        elseif step == 1 then
            if SeaIndex ~= 2 then
                SetTask("MainTask", 'Soul Guitar | Teleporting to Sea 2 for Ectoplasm')
                return Remotes.CommF_:InvokeServer("TravelDressrosa")
            else
                SetTask("MainTask", "Soul Guitar | Farming Ectoplasm")
                CombatController.Attack({"Ship Deckhand", "Ship Engineer", 'Ship Steward', "Ship Officer"})
                return
            end
        elseif step == 2 then
            SetTask("MainTask", 'Soul Guitar | Step 1: Zombie Puzzle')
            local zombieList = {}
            for _, ent in pairs(Services.Workspace.Enemies:GetChildren()) do
                if ent.Name == "Living Zombie" then table.insert(zombieList, ent) end
            end
            if #zombieList < 6 then
                TweenController.Create(ScriptStorage.MobRegions["Living Zombie"][1] + Vector3.new(0, 30, 0))
            else
                local stepStart = os.time()
                for i, zombie in pairs(zombieList) do
                    while task.wait() and zombie.Humanoid.Health > 7000 do
                        FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Melee')
                        if os.time() - stepStart > 60 then break end
                        TweenController.Create(zombie.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0))
                        W.Attack()
                    end
                end
                while workspace.Enemies:FindFirstChild("Living Zombie") and task.wait() do
                    if os.time() - stepStart > 60 then break end
                    CombatController.Attack('Living Zombie')
                end
            end
        elseif step == 3 then
            SetTask("MainTask", "Soul Guitar | Step 2: Placards Puzzle")
            local hauntMap = workspace.Map["Haunted Castle"]
            while CaculateDistance(CFrame.new(-8800.0, 178, 6033)) > 10 do
                task.wait()
                TweenController.Create(CFrame.new(-8800.0, 178, 6033))
            end
            local placards = {Placard1 = "Right", Placard2 = "Right", Placard3 = "Left", Placard4 = 'Right', Placard5 = 'Left', Placard6 = 'Left', Placard7 = "Left"}
            for pName, side in pairs(placards) do fireclickdetector(hauntMap[pName][side].ClickDetector) end
        elseif step == 4 then
            SetTask("MainTask", "Soul Guitar | Step 3: Ghost NPC")
            Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
        elseif step == 5 then
            SetTask("MainTask", "Soul Guitar | Step 4: Trophies & Tablets Puzzle")
            if CaculateDistance(CFrame.new(-9530.0, 6.1, 6054.8)) > 30 then
                TweenController.Create(CFrame.new(-9530.0, 6.1, 6054.8))
            else
                local tabletMap = workspace.Map['Haunted Castle'].Tablet
                for _, segName in pairs(BlankTablets) do
                    local seg = tabletMap[segName]
                    if seg.Line.Rotation.Z ~= 0 then
                        repeat task.wait() fireclickdetector(seg.ClickDetector) until seg.Line.Rotation.Z == 0
                    end
                end
                for segId, trophyId in pairs(Trophy) do
                    local trophyCf = workspace.Map["Haunted Castle"].Trophies.Quest[trophyId].Handle.CFrame
                    local orientation = tostring(trophyCf):split(", ")[4]
                    local targetRot = "180"
                    if orientation == "1" or orientation == "-1" then targetRot = "90" end
                    if not string.find(tostring(tabletMap[segId].Line.Rotation.Z), targetRot) then
                        repeat task.wait() fireclickdetector(tabletMap[segId].ClickDetector) until string.find(tostring(tabletMap[segId].Line.Rotation.Z), targetRot)
                    end
                end
            end
        elseif step == 6 then
            SetTask("MainTask", "Soul Guitar | Step 5: Pipes Puzzle")
            for partId, colorName in pairs(Pipes) do
                pcall(function()
                    local pipePart = workspace.Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model[partId]
                    if pipePart.BrickColor.Name ~= colorName then
                        repeat task.wait() fireclickdetector(pipePart.ClickDetector) until pipePart.BrickColor.Name == colorName
                    end
                end)
            end
            Remotes.CommF_:InvokeServer('soulGuitarBuy')
        elseif step == 8 then
            SetTask("MainTask", "Soul Guitar | Purchasing Weapon")
            Remotes.CommF_:InvokeServer('soulGuitarBuy')
        end
    end)
    FunctionsHandler.CursedDualKatana:RegisterMethod("Refresh", function()
        if not Config.Items.CursedDualKatana then return end
        local bp = ScriptStorage.Backpack
        if ScriptStorage.PlayerData.Level < 2200 then return end
        if bp["Cursed Dual Katana"] or not bp.Tushita or not bp.Yama then return end
        if SeaIndex ~= 3 then return end
        local prog = CdkProgess or Remotes.CommF_:InvokeServer("CDKQuest", 'Progress') or 'uwu'
        if not prog or prog == 'uwu' then
            local masterNpc = workspace.NPCs:FindFirstChild("Crypt Master") or game:GetService("ReplicatedStorage").NPCs:FindFirstChild("Crypt Master")
            if masterNpc then
                TweenController.Create(masterNpc:GetModelCFrame())
                if CaculateDistance(masterNpc) < 15 then
                    fireproximityprompt(masterNpc:FindFirstChildOfClass("ProximityPrompt"))
                    Remotes.CommF_:InvokeServer("CDKQuest", "Npc")
                end
            end
            return nil
        end
        if workspace.Map.Turtle.Cursed:FindFirstChild("Breakable") then return {"break"} end
        local mapType = {Good = 'Tushita', Evil = 'Yama'}
        if prog.Good == 4 and prog.Evil == 4 then return {'burn 2'} end
        if prog.Good == 3 or prog.Evil == 3 then return {"burn"} end
        if prog.Opened then
            for side, val in pairs(prog) do
                if side ~= 'Opened' and side ~= "Finished" and val < 3 then
                    ScriptStorage.CdkCache = {side, val + 1}
                    if not ScriptStorage.Tools[mapType[side]] then Remotes.CommF_:InvokeServer('LoadItem', mapType[side]) end
                    Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', side)
                    return {side, val + 1}
                end
            end
        end
        return ScriptStorage.CdkCache
    end)
    FunctionsHandler.CursedDualKatana:RegisterMethod("DoDimension", function(dim_name)
        local map_name = string.gsub(dim_name, ' ', "")
        local start_t = os.time()
        repeat
            task.wait()
            TweenController.Create(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
            if os.time() - start_t > 60 then return end
        until os.time() - TorchEnabledTime < 10
        repeat
            task.wait()
            local dim_map = workspace.Map:WaitForChild(map_name, 10)
            if dim_map then
                for _, torch in pairs(dim_map:GetChildren()) do
                    if torch and string.find(torch.Name, "Torch") and torch:FindFirstChild('ProximityPrompt') and torch.ProximityPrompt.Enabled then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = torch.CFrame
                        torch.ProximityPrompt.HoldDuration = 0
                        task.wait(0.5)
                        fireproximityprompt(torch.ProximityPrompt)
                    end
                end
                for _, enemy in pairs(workspace.Enemies:GetChildren()) do
                    if enemy:FindFirstChild("HumanoidRootPart") and CaculateDistance(enemy.HumanoidRootPart.CFrame) < 1000 then 
                        CombatController.Attack(enemy.Name) 
                    end
                end
                if dim_map:FindFirstChild("Exit") then PortalBrick = tostring(dim_map.Exit.BrickColor) end
            end
        until PortalBrick == 'Olive' or PortalBrick == "Cloudy grey"
    end)
    FunctionsHandler.RaidController:RegisterMethod('RefreshRaidType', function()
        for k, raid_name in pairs(require(game.ReplicatedStorage.Raids).raids) do
            if string.find(ScriptStorage.PlayerData.DevilFruit, raid_name) then
                FunctionsHandler.RaidController:Set('CurrentChip', raid_name)
                return
            end
        end
        FunctionsHandler.RaidController:Set('CurrentChip', 'Flame')
    end)
    FunctionsHandler.RaidController:RegisterMethod('GetRaidableFruit', function()
        for _, item in pairs(ScriptStorage.Backpack) do
            if string.find(FruitIdToName(item.Name), " Fruit") then
                if item.Value and item.Value < 1000000 then return item end
            end
        end
    end)
    FunctionsHandler.RaidController:RegisterMethod("GetCurrentRaidIsland", function()
        PlayerPosition = LocalPlayer.Character.HumanoidRootPart.CFrame
        IslandsList = {{}, {}, {}, {}, {}}
        for _, loc in pairs(workspace['_WorldOrigin'].Locations:GetChildren()) do
            if string.find(loc.Name, 'Island ') and CaculateDistance(loc.Position, Vector3.new(0, 0, 0)) > 7000 then
                pcall(function()
                    local id_str = string.gsub(loc.Name, "Island ", "")
                    local id_num = tonumber(id_str)
                    if id_num and IslandsList[id_num] then table.insert(IslandsList[id_num], loc) end
                end)
            end
        end
        for i = 5, 1, -1 do
            for _, isl in pairs(IslandsList[i]) do 
                if CaculateDistance(isl.Position) < 2000 then return isl end 
            end
        end
    end)
    function CheckSpecialMicrochip()
        for _, folder in pairs({LocalPlayer.Character:GetChildren(), LocalPlayer.Backpack:GetChildren()}) do
            for _, item in pairs(folder) do if item.Name == "Special Microchip" then return item end end
        end
    end
    FunctionsHandler.RaidController:RegisterMethod("Refresh", function()
        local p_lvl = ScriptStorage.PlayerData.Level
        local p_frag = ScriptStorage.PlayerData.Fragments
        if p_lvl < 1300 or SeaIndex == 1 then return end
        if p_lvl < 1500 and p_frag > 2000 then return end
        if p_lvl < MaxLevel then
            if p_frag > 5000 then return end
        else
            if p_frag > 10000 then return end
        end
        local raid_fruit = FunctionsHandler.RaidController.Methods.GetRaidableFruit:Call()
        if raid_fruit then FunctionsHandler.RaidController:Set("CurrentProgressLevel", raid_fruit) end
        return raid_fruit or FunctionsHandler.RaidController.Methods.GetCurrentRaidIsland:Call() or CheckSpecialMicrochip()
    end)
    FunctionsHandler.RaidController:RegisterMethod("Start", function()
        if not FunctionsHandler.RaidController:Get('CurrentChip') then FunctionsHandler.RaidController.Methods.RefreshRaidType:Call() end
        local curr_island = FunctionsHandler.RaidController.Methods.GetCurrentRaidIsland:Call()
        RefreshInventory()
        FunctionsHandler.RaidController:Set("CurrentProgressLevel", nil)
        if not curr_island then
            SetTask('MainTask', 'Auto Raid | Mua Chip ' .. FunctionsHandler.RaidController:Get("CurrentChip"))
            if not ScriptStorage.Tools['Special Microchip'] then
                local f_item = FunctionsHandler.RaidController.Methods.GetRaidableFruit:Call()
                if f_item then
                    table.insert(ScriptStorage.IgnoreStoreFruits, f_item.Name)
                    Remotes.CommF_:InvokeServer('LoadFruit', f_item.Name)
                    Remotes.CommF_:InvokeServer("RaidsNpc", 'Select', FunctionsHandler.RaidController:Get('CurrentChip'))
                    task.wait(2)
                end
            end
            local raid_loc = ({nil, 'Circle Island', "Boat Castle"})[SeaIndex]
            if not ScriptStorage.Map[raid_loc] and not workspace.Map:FindFirstChild(raid_loc) then
                task.wait(1) game.Players.LocalPlayer:Kick("Rejoining..")
            end
            local summon_spot = ScriptStorage.Map[raid_loc] or workspace.Map:FindFirstChild(raid_loc)
            if summon_spot and not summon_spot:FindFirstChild('RaidSummon2') then
                task.wait(1) TweenController.Create(summon_spot:GetModelCFrame())
            end
            if ScriptStorage.Tools['Special Microchip'] then
                FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Special Microchip')
                if summon_spot and summon_spot:FindFirstChild("RaidSummon2") then
                    fireclickdetector(summon_spot.RaidSummon2.Button.Main.ClickDetector)
                end
            end
            local start_t = os.time()
            SetTask("MainTask", "Auto Raid | Chờ Raid bắt đầu")
            repeat task.wait() until os.time() - (LastRaidAlert2 or 0) < 20 or os.time() - start_t > 30
            TweenController.Create(LocalPlayer.Character.HumanoidRootPart.CFrame)
            repeat task.wait() until os.time() - (LastRaidAlert or 0) < 20 or os.time() - start_t > 30
            task.wait(.5)
            if os.time() - start_t > 30 then game.Players.LocalPlayer:Kick("Rejoining..") end
            LastRaidAlert = 0
        else
            SetTask('MainTask', "Auto Raid | Dọn dẹp Đảo " .. curr_island.Name .. " /5")
            local hit_any = false
            for _, mon in pairs(GetMonAsSortedRange()) do
                local mon_start = os.time()
                while mon and mon:FindFirstChild("HumanoidRootPart") and mon:FindFirstChild("Humanoid") and mon.Humanoid.Health > 0 and CaculateDistance(mon.HumanoidRootPart.Position) < 1000 and os.time() - mon_start < 60 and task.wait(.05) do
                    hit_any = true
                    if string.find(mon.Name, "Master") or true then CombatController.Attack(mon.Name)
                    else
                        pcall(sethiddenproperty, LocalPlayer, 'SimulationRadius', math.huge)
                        pcall(function() mon.HumanoidRootPart.CanCollide = false mon.Humanoid.Health = 0 mon:BreakJoints() end)
                    end
                end
            end
            if not hit_any then TweenController.Create(curr_island.Position + Vector3.new(0, 100, 0)) end
        end
    end)
    FunctionsHandler.Wenlocktoad:RegisterMethod("Refresh", function()
        if ScriptStorage.PlayerData.RaceLevel ~= 2 then return end
        if ScriptStorage.PlayerData.Level < 1000 then return end
        if ScriptStorage.PlayerData.Beli < 2000000 then return end
        if SeaIndex ~= 2 then return end
        local quest_status = Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
        if quest_status == -2 then
            ScriptStorage.PlayerData.RaceLevel = 3
            return false
        end
        return true
    end)
    FunctionsHandler.Wenlocktoad:RegisterMethod("Start", function()
        SetTask('MainTask', "Up Tộc V3 | Nhiệm vụ Arowe (Wenlocktoad)")
        local arowe = workspace.NPCs:FindFirstChild("Arowe") or game.ReplicatedStorage.NPCs:FindFirstChild("Arowe")
        if arowe then
            TweenController.Create(arowe:GetModelCFrame())
            if CaculateDistance(arowe) < 15 then
                Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
                task.wait(0.5)
                Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                task.wait(0.5)
                Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
            end
        end
    end)
    FunctionsHandler.AutoHopBoss:RegisterMethod("Refresh", function()
        local bp = ScriptStorage.Backpack
        if Config.Items.DarkFragment and not bp['Dark Fragment'] and SeaIndex == 2 then
            if ScriptStorage.Enemies["Darkbeard"] then return "Darkbeard" end
        end
        local thieuTushita = Config.Items.CursedDualKatana and not bp['Tushita']
        local thieuMu = Config.Items.ValkyrieHelm and not bp['Valkyrie Helm']
        if (thieuTushita or thieuMu) and SeaIndex == 3 then
            if ScriptStorage.Enemies["rip_indra True Form"] then return "rip_indra True Form" end
        end
        if Config.Items.DoughKing and not bp['Pale Scarf'] and SeaIndex == 3 then
            if ScriptStorage.Enemies["Dough King"] then return "Dough King" end
        end
        return false
    end)
    FunctionsHandler.AutoHopBoss:RegisterMethod("Start", function(mode)
        SetTask("MainTask", "VIP Săn Boss | Phát hiện " .. mode .. " trong Server, nhảy vào đấm!")
        if mode == "rip_indra True Form" and not ScriptStorage.Backpack['Tushita'] then
            TweenController.Create(CFrame.new(5714, 20, 256))
            if ScriptStorage.Tools["Holy Torch"] or game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
                for i = 1, 5 do Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", i) end
            end
        else
            CombatController.Attack(mode)
        end
    end)
    local notifier = {Listeners = {}}
    TorchEnabledTime = 0
    DoneCdkTick = 0
    getgenv().NotificationCallBack = (function(msg)
        for key, func in pairs(notifier.Listeners) do
            if string.find(string.lower(msg), string.lower(key)) then func(msg) end
        end
    end)
    function notifier:RegisterNotifyListener(key, func) notifier.Listeners[key] = func end
    notifier:RegisterNotifyListener('go!', function() LastRaidAlert = os.time() end)
    notifier:RegisterNotifyListener('raid', function() LastRaidAlert2 = os.time() end)
    notifier:RegisterNotifyListener("approaching", function() end)
    notifier:RegisterNotifyListener("level", function() AddPoint() end)
    notifier:RegisterNotifyListener("torch", function() TorchEnabledTime = os.time() end)
    notifier:RegisterNotifyListener("scroll reacts", function() DoneCdkTick = os.time() end)
    notifier:RegisterNotifyListener("elite", function() FunctionsHandler.Yama:Set('EliteCount', Remotes.CommF_:InvokeServer("EliteHunter", "Progress")) end)
    local old_notify
    old_notify = hookfunction(require(game.ReplicatedStorage.Notification).new, function(title, msg)
        local full_msg = tostring(tostring(title or '') .. tostring(msg or ""))
        getgenv().NotificationCallBack(full_msg)
        return old_notify(title, msg)
    end)
    function IfTableHaveIndex(k_tab) for _ in pairs(k_tab) do return true end end
    function GetServers()
        if LastServersDataPulled then
            if os.time() - LastServersDataPulled < 60 then return CachedServers end
        end
        for k_idx = 1, 100, 1 do
            local W_res = game:GetService("ReplicatedStorage"):WaitForChild("__ServerBrowser"):InvokeServer(k_idx)
            if IfTableHaveIndex(W_res) then
                LastServersDataPulled = os.time()
                CachedServers = W_res
                return W_res
            end
        end
    end
    spawn(function()
        GetServers()
        while task.wait(180) do GetServers() end
    end)
    function Hop(k_player_limit, W_target_region)
        local h_list = GetServers()
        local X_filtered = {}
        for w_id, D_data in pairs(h_list) do table.insert(X_filtered, {JobId = w_id, Players = D_data.Count, LastUpdate = D_data.__LastUpdate, Region = D_data.Region}) end
        for h_i = 1, #X_filtered do
            while task.wait() do
                local h_rand = math.random(1, #X_filtered)
                ServerData = X_filtered[h_rand]
                if ServerData then
                    if not k_player_limit or ServerData.Players < k_player_limit then
                        if not W_target_region or ServerData.Region == W_target_region then break end
                    end
                end
            end
        end
        game:GetService("ReplicatedStorage"):WaitForChild('__ServerBrowser'):InvokeServer("teleport", ServerData.JobId)
    end
    Storage = {WRITE_DELAY = .5, Data = {}}
    local k_file_path = ".storage_u_" .. tostring(LocalPlayer)
    function Decode(W_json) return game:GetService("HttpService"):JSONDecode(W_json) end
    function Encode(W_tab) return game:GetService("HttpService"):JSONEncode(W_tab) end
    function Storage:Set(h_k, X_v) self.Data[h_k] = X_v end
    function Storage:Get(h_k) return self.Data[h_k] end
    function Storage:Save() writefile(k_file_path, Encode(self.Data)) end
    if not isfile(k_file_path) then
        writefile(k_file_path, "{}")
        task.wait(1)
    end
    pcall(function() Storage.Data = Decode(readfile(k_file_path) or '{}') end)
    task.spawn(function() while task.wait(Storage.WRITE_DELAY) do Storage:Save() end end)
    ParsingTimes = 0

    function RefreshTasksData()
        if _G.Stop then return end
        local isDoingAnyTask = false
        for _, taskName in pairs(TasksOrder) do
            local handler = FunctionsHandler[taskName]
            if handler and handler.Initalized then
                local refresh = handler.Methods.Refresh
                local start = handler.Methods.Start
                if refresh then
                    local status = refresh:Call(ParsingTimes < 100)
                    ParsingTimes = ParsingTimes + 1
                    if status and ParsingTimes > 100 then
                        CurrentTask = taskName
                        ScriptStorage.Interface.SetText('DebugLine', taskName)
                        start:Call(status)
                        isDoingAnyTask = true
                        return
                    end
                end
            end
        end
        if not isDoingAnyTask and ScriptStorage.PlayerData.Level >= 2800 and SeaIndex == 3 then
            SetText('MainTask', "HoangPhucHub: Đã Max 2800 - Đang rình Boss tại Mansion")
            local mansion_pos = CFrame.new(-12464, 332, -7254)
            if CaculateDistance(mansion_pos) > 30 and not MonResult then
                TweenController.Create(mansion_pos)
            end
        end
    end

    SetText('MainTextLabel', "HoangPhucHub: Đang tải thiết lập..")
    AddPoint()
    pcall(function() J_q:RefreshQuest() end)
    RefreshInventory()
    RefreshRace()
    game.Players.LocalPlayer.Idled:Connect(function()
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end)
    SetText("MainTextLabel", 'HoangPhucHub Loaded In ' .. tick() - StartTick .. 'ms!')
    task.spawn(function()
        while task.wait() do
            if not _G.Stop then
                pcall(RefreshPlayerData)
                local elapsed = os.time() - InitTime
                local total = elapsed + OldSessionTime
                pcall(function() writefile(".tdif-" .. game.Players.LocalPlayer.Name, tostring(total)) end)
                if ScriptStorage.Interface then SetText('LiveTime', "Tổng thời gian: " .. DispTime(total, true) .. ' | Phiên này: ' .. DispTime(elapsed, true)) end
            end
        end
    end)
    task.spawn(function()
        task.wait(Config.Configuration.AutoHopDelay)
        if not Config.Configuration.AutoHop then Hop() end
    end)
    while task.wait() do
        if Config.Configuration.HopWhenIdle and LastIdling and os.time() - LastIdling > 300.0 then
            SetTask('MainTask', "HoangPhucHub: Đang kết nối lại do treo máy lâu!")
            task.wait(1)
            while task.wait() do game:GetService('TeleportService'):Teleport(game.PlaceId) end
        end
        local success, err = xpcall(RefreshTasksData, debug.traceback)
        if not success and err then warn("HoangPhucHub Error: ", err) end
    end
end
hoangtuveu()
