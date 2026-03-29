local DefaultConfig = {
    Team = "Pirates",
    Configuration = {HopWhenIdle = true, AutoHop = true, AutoHopDelay = 10, FpsBoost = false, blackscreen = false},
    Items = {AutoFullyMelees = false, Saber = false, CursedDualKatana = true, SoulGuitar = true, RaceV2 = false, ValkyrieHelm = true, DarkFragment = true, DoughKing = true},
    Settings = {StayInSea2UntilHaveDarkFragments = false}
}
Config = getgenv().Config or DefaultConfig

function hoangtuveu()
    -- [ KHÓA AN TOÀN VỮNG CHẮC ]
    if not game:IsLoaded() then game.Loaded:Wait() end
    local Players = game:GetService("Players")
    while not Players.LocalPlayer do task.wait() end
    local h = Players.LocalPlayer
    while not game:GetService("CoreGui") do task.wait() end

    local InitTime = os.time()
    local J = {'Task1', 'Task2', "Currencies", 'Melees', 'LiveTime', 'DebugLine'}
    local W = {Instances = {}}
    local K = true
    local a = false
    local h_gui = Instance.new('ScreenGui')
    local X = Instance.new('TextLabel')
    local w = Instance.new("UIStroke")
    local w2 = Instance.new('UIStroke')
    local w3 = Instance.new("TextLabel")
    local w4 = Instance.new("ImageButton")
    local D = Instance.new("Frame")
    local y = Instance.new("UIStroke")
    local L = Instance.new("TextLabel")
    local b = {}
    h_gui.Name = "HoangPhucHub"
    h_gui.Parent = game:GetService('CoreGui')
    h_gui.Enabled = true
    h_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    h_gui.IgnoreGuiInset = true

    if Config.Configuration.blackscreen then game:GetService('Lighting').ExposureCompensation = -math.huge
    else game:GetService('Lighting').ExposureCompensation = 0 end

    X.Name = 'NameHub'
    X.Parent = h_gui
    X.AnchorPoint = Vector2.new(0.5, 0.5)
    X.Position = UDim2.new(0.5, 0, 0.3, 0)
    X.Size = UDim2.new(1, 0, 0, 80)
    X.BackgroundTransparency = 0.999
    X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    X.BorderColor3 = Color3.fromRGB(0, 0, 0)
    X.BorderSizePixel = 0
    X.Font = Enum.Font.FredokaOne
    X.Text = "HoangPhucHub"
    local C = Instance.new("UIStroke")
    C.Parent = X
    C.Color = Color3.fromRGB(0, 0, 0)
    C.Thickness = 1
    X.TextColor3 = Color3.fromRGB(9, 255, 248)
    X.TextSize = 50
    D.Name = 'ToggleContainer'
    D.Parent = h_gui
    D.AnchorPoint = Vector2.new(1, 0)
    D.Position = UDim2.new(1, -20.0, 0, 20)
    D.Size = UDim2.new(0, 50, 0, 50)
    D.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    D.BackgroundTransparency = 0.2
    D.BorderColor3 = Color3.fromRGB(0, 0, 0)
    D.BorderSizePixel = 0
    D.ClipsDescendants = true
    local C2 = Instance.new('UICorner')
    C2.CornerRadius = UDim.new(1, 0)
    C2.Parent = D
    y.Parent = D
    y.Color = Color3.fromRGB(9, 255, 248)
    y.Thickness = 2
    w4.Name = 'ToggleButton'
    w4.Parent = D
    w4.AnchorPoint = Vector2.new(0.5, 0.5)
    w4.Position = UDim2.new(0.5, 0, 0.5, 0)
    w4.Size = UDim2.new(1, 0, 1, 0)
    w4.BackgroundTransparency = 1
    w4.BorderSizePixel = 0
    L.Name = "ToggleIcon"
    L.Parent = D
    L.AnchorPoint = Vector2.new(0.5, 0.5)
    L.Position = UDim2.new(0.5, 0, 0.5, 0)
    L.Size = UDim2.new(0.7, 0, 0.7, 0)
    L.BackgroundTransparency = 1
    L.BorderSizePixel = 0
    L.Font = Enum.Font.GothamBold
    L.Text = ""
    L.TextColor3 = Color3.fromRGB(255, 255, 255)
    L.TextSize = 24
    L.TextScaled = true
    local function CreateLabelInfo(p, o, z)
        local z_st = Instance.new("UIStroke")
        local v = Instance.new('TextLabel')
        v.Name = "hmph ><"
        v.Parent = h_gui
        v.AnchorPoint = Vector2.new(0.5, 0.5)
        v.Position = o
        v.Size = UDim2.new(0, 200, 0, 30)
        v.BackgroundTransparency = 0.999
        v.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v.BorderColor3 = Color3.fromRGB(0, 0, 0)
        v.BorderSizePixel = 0
        v.Font = Enum.Font.FredokaOne
        v.Text = p
        v.TextColor3 = Color3.fromRGB(255, 255, 255)
        v.TextSize = 13
        v.RichText = true
        z_st.Parent = v
        z_st.Color = Color3.fromRGB(0, 0, 0)
        z_st.Thickness = 1
        return v
    end
    MainTextLabel = CreateLabelInfo(" ", UDim2.new(0.5, 0, 0.4, 0))
    W.Instances.MainTextLabel = MainTextLabel
    for p, o in pairs(J) do W.Instances[o] = CreateLabelInfo("...", UDim2.new(0.5, 0, 0.45 + (.05 * p), 0)) end
    local J_blur = {}
    function J_blur:Create()
        local C_frm = Instance.new('Frame')
        C_frm.Name = "BlurFrame"
        C_frm.Parent = h_gui
        C_frm.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        C_frm.BackgroundTransparency = 1
        C_frm.BorderSizePixel = 0
        C_frm.Size = UDim2.new(1, 0, 1, 0)
        C_frm.Position = UDim2.new(0, 0, 0, 0)
        C_frm.ZIndex = 0
        self.blurFrame = C_frm
        self.blurIntensity = 0
        return self
    end
    function J_blur:SetIntensity(C_v)
        C_v = math.clamp(C_v, 0, 0.95)
        self.blurIntensity = C_v
        local p_tw = game:GetService('TweenService')
        local o_ti = TweenInfo.new(0.3, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out)
        local z_tw = p_tw:Create(self.blurFrame, o_ti, {BackgroundTransparency = 1 - C_v})
        z_tw:Play()
        if not self.blurEffect then
            self.blurEffect = Instance.new("BlurEffect")
            self.blurEffect.Name = 'CustomBlur'
            self.blurEffect.Parent = game.Lighting
            self.blurEffect.Enabled = true
        end
        local z_tw2 = p_tw:Create(self.blurEffect, o_ti, {Size = C_v * 30})
        z_tw2:Play()
        for z_i, z_v in pairs(b) do
            if z_v and z_v.Parent then
                local v_tw = p_tw:Create(z_v, o_ti, {BackgroundTransparency = z_v._originalTransparency + (C_v * 0.5)})
                v_tw:Play()
            end
        end
    end
    function J_blur:RegisterUI(C_u)
        if C_u and C_u:IsA('GuiObject') then
            C_u._originalTransparency = C_u.BackgroundTransparency
            table.insert(b, C_u)
        end
    end
    local b_blur_sys = J_blur:Create()
    function SetText(J_s, C_s)
        task.spawn(function()
            local p_l = W.Instances[J_s]
            if not p_l then return end
            if not K then p_l.Text = C_s return end
            if p_l.Text == C_s then return end
            local J_t = game:GetService("TweenService")
            local o_t = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local z_t = J_t:Create(p_l, o_t, {TextTransparency = 1, TextStrokeTransparency = 1})
            z_t:Play()
            z_t.Completed:Wait()
            p_l.Text = C_s
            local C_t = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local o_t2 = J_t:Create(p_l, C_t, {TextTransparency = 0, TextStrokeTransparency = 0})
            o_t2:Play()
        end)
    end
    function ToggleUI(J_t)
        a = J_t or not a
        local J_lis = {X, MainTextLabel}
        for X_i, X_v in pairs(W.Instances) do table.insert(J_lis, X_v) end
        local X_tw = game:GetService("TweenService")
        local C_ti = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut)
        if a then
            L.Text = ""
            local p_r = X_tw:Create(L, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Rotation = 360})
            p_r:Play()
            p_r.Completed:Connect(function() L.Rotation = 0 end)
            for p_i, p_v in pairs(J_lis) do
                p_v.TextTransparency = 1
                local o_tw = X_tw:Create(p_v, C_ti, {TextTransparency = 0})
                if p_v:FindFirstChildOfClass('UIStroke') then
                    p_v:FindFirstChildOfClass('UIStroke').Transparency = 1
                    local z_tw = X_tw:Create(p_v:FindFirstChildOfClass('UIStroke'), C_ti, {Transparency = 0})
                    z_tw:Play()
                end
                o_tw:Play()
            end
            b_blur_sys:SetIntensity(0.4)
        else
            L.Text = ''
            local p_s = X_tw:Create(L, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Size = UDim2.new(0.3, 0, 0.3, 0)})
            p_s:Play()
            p_s.Completed:Connect(function()
                local p_g = X_tw:Create(L, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0.7, 0, 0.7, 0)})
                p_g:Play()
            end)
            for p_i, p_v in pairs(J_lis) do
                local J_tw = X_tw:Create(p_v, C_ti, {TextTransparency = 1})
                if p_v:FindFirstChildOfClass('UIStroke') then
                    local o_tw = X_tw:Create(p_v:FindFirstChildOfClass("UIStroke"), C_ti, {Transparency = 1})
                    o_tw:Play()
                end
                J_tw:Play()
            end
            b_blur_sys:SetIntensity(0)
        end
        K = a
    end
    function W.RegisterForBlur(J_b) b_blur_sys:RegisterUI(J_b) end
    w4.MouseButton1Click:Connect(function() ToggleUI() end)
    w4.MouseEnter:Connect(function()
        local J_t = game:GetService('TweenService')
        local X_f = function()
            local C_s = J_t:Create(D, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 55, 0, 55)})
            local p_c = J_t:Create(y, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(0, 255, 255), Thickness = 3})
            C_s:Play()
            p_c:Play()
        end
        X_f()
    end)
    w4.MouseLeave:Connect(function()
        local J_t = game:GetService('TweenService')
        local X_ti = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local w_s = J_t:Create(D, X_ti, {Size = UDim2.new(0, 50, 0, 50)})
        local D_c = J_t:Create(y, X_ti, {Color = Color3.fromRGB(9, 255, 248), Thickness = 2})
        w_s:Play()
        D_c:Play()
    end)
    function W.ToggleInterface(J_v)
        a = J_v
        local a_t = game:GetService('TweenService')
        local a_ti = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        if J_v then
            h_gui.Enabled = false
            L.Text = ""
            b_blur_sys:SetIntensity(0.4)
        else
            L.Text = ""
            b_blur_sys:SetIntensity(0)
        end
        K = J_v
    end
    ToggleUI(true)
    W.SetText = SetText
    W.ToggleUI = ToggleUI
    W.BlurManager = b_blur_sys
    if not isfile("fluent.lua") then
        writefile('fluent.lua', game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))
    end
    local J_fl = loadstring(readfile('fluent.lua'))()
    local K_an = Instance.new('Animation')
    K_an.AnimationId = 'http://www.roblox.com/asset/?id=1elutruahuabuahd'
    getgenv().alert = function(a_t, h_t)
        pcall(function() J_fl:Notify({Title = a_t or '', Content = h_t or '', Duration = 5}) end)
    end
    alert("HoangPhucHub", "Cập Nhật: Fixed lỗi Tween, Mansion & Load!")

    FunctionsHandler = {Initalized = false}
    setmetatable(FunctionsHandler, {__index = function(h_f, X_f)
        local QueryResult = rawget(h_f, X_f)
        if not QueryResult then
            local newHandler = {
                Initalized = false,
                Register = function(w_f)
                    if w_f == false then return end
                    local Result = {CacheListener = {}, RealCache = {}, Methods = {}, Constants = {}, Events = {}, Initalized = true}
                    function Result.RegisterMethod(w_m, D_m, y_m)
                        w_m.Methods[D_m] = {Name = D_m, Callback = y_m, Call = function(w_c, ...) return w_c.Callback(...) end, Events = {}}
                        return true
                    end
                    setmetatable(Result.Constants, {__newindex = function() assert(false, 'cannot change constant value!') end})
                    function Result.Set(h_s, w_s, D_s) h_s.CacheListener[w_s] = D_s return D_s end
                    function Result.Get(h_g, w_g) return h_g.Constants[w_g] or h_g.RealCache[w_g] end
                    function Result.AddVariableChangeListener(h_v, w_v, D_v) h_v.Events[w_v] = D_v end
                    Result.CacheListener.__parent = Result
                    setmetatable(Result.CacheListener, {__newindex = function(h_cl, w_cl, D_cl)
                        _ = h_cl.__parent.Events[w_cl] and h_cl.__parent.Events[w_cl](w_cl, D_cl)
                        h_cl.__parent.RealCache[w_cl] = D_cl
                    end})
                    FunctionsHandler[X_f] = Result
                end
            }
            return newHandler
        end
        return QueryResult
    end})

    FunctionsHandler.LocalPlayerController:Register()
    FunctionsHandler.ExpRedeem:Register()
    FunctionsHandler.LevelFarm:Register()
    FunctionsHandler.Saber:Register()
    FunctionsHandler.Yama:Register()
    FunctionsHandler.Tushita:Register()
    FunctionsHandler.CursedDualKatana:Register()
    FunctionsHandler.SoulGuitar:Register()
    FunctionsHandler.Wenlocktoad:Register()
    FunctionsHandler.RaidController:Register()
    FunctionsHandler.AutoHopBoss:Register()
    FunctionsHandler.MeleesController:Register()
    FunctionsHandler.SpecialBossesTask:Register()
    FunctionsHandler.BossesTask:Register()
    FunctionsHandler.CollectDrops:Register()
    FunctionsHandler.UtillyItemsActivitation:Register()
    FunctionsHandler.SecondSeaPuzzle:Register()
    FunctionsHandler.ColosseumPuzzle:Register()
    FunctionsHandler.ThirdSeaPuzzle:Register()
    FunctionsHandler.PirateRaid:Register()
	OldSessionTime = isfile('.tdif-' .. h.Name) and tonumber(readfile(".tdif-" .. h.Name)) or 0
    repeat task.wait() game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", Config.Team) until h.Character
    repeat wait() until h.Character

    spawn(function()
        pcall(function()
            h.PlayerScripts:WaitForChild('NewIslandLOD', 9999):Destroy()
            h.PlayerScripts:WaitForChild('IslandLOD', 9999):Destroy()
        end)
    end)

    StartTick = tick()
    ScriptStorage = {IsInitalized = false, PlayerData = {}, Melees = {}, CurrentMeleeData = {}, Enemies = {}, Tools = {}, Backpack = {}, IgnoreStoreFruits = {}, Connections = {LocalPlayer = {}}, Task = {}, Tracebacks = {}, Interface = W, NPCs = {}, Map = {}}
    setmetatable(ScriptStorage.Enemies, {__index = function(J_s, J_k) return workspace.Enemies:FindFirstChild(J_k) or game.ReplicatedStorage:FindFirstChild(J_k) end})
    setmetatable(ScriptStorage.Map, {__index = function(J_s, J_k) return workspace.Map:FindFirstChild(J_k) or workspace:FindFirstChild(J_k) end})
    setmetatable(ScriptStorage.Tools, {__index = function(J_s, J_k) return h.Character:FindFirstChild(J_k) or h.Backpack:FindFirstChild(J_k) end})
    setmetatable(ScriptStorage.NPCs, {__index = function(J_s, J_k) if not J_k then return end; return workspace.NPCs:FindFirstChild(J_k) or game.ReplicatedStorage.NPCs:FindFirstChild(J_k) end})

    Remotes = {}
    local J_rem = {}
    setmetatable(Remotes, {__index = function(W_r, W_k)
        if W_k ~= 'CommF_' then return game.ReplicatedStorage.Remotes[W_k] end
        return {InvokeServer = function(a_i, ...) return game.ReplicatedStorage.Remotes.CommF_:InvokeServer(...) end}
    end})

    function ConvertTo(W_t, a_v) return W_t.new(a_v.X, a_v.Y, a_v.Z) end
    function CaculateDistance(W_c, a_c)
        if not W_c then return 0 end
        a_c = a_c or h.Character.HumanoidRootPart.CFrame
        local h_v, X_v = ConvertTo(Vector3, W_c), ConvertTo(Vector3, a_c)
        return (h_v - X_v).magnitude
    end
    function Split(J_s, W_d)
        if W_d == nil then W_d = "%s" end
        local a_t = {}
        for h_p in string.gmatch(J_s, '([^' .. W_d .. ']+)') do table.insert(a_t, h_p) end
        return a_t
    end
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

    function SetTask(J_t, W_m)
        local a_m = {MainTask = "Task1", SubTask = 'Task2'}
        if a_m[J_t] then SetText(a_m[J_t], J_t .. ' : ' .. W_m) end
    end

    placeId = game.PlaceId
    if placeId == 85211729168715 or placeId == 2753915549 then SeaIndex = 1
    elseif placeId == 79091703265657 or placeId == 4442272183 then SeaIndex = 2
    elseif placeId == 100117331123089 or placeId == 7449423635 then SeaIndex = 3 end

    SeaIndexes = {"Main", "Dressrosa", "Zou"}
    MaxLevel = 2800
    TasksOrder = {"AutoHopBoss", "SpecialBossesTask", "SoulGuitar", "CursedDualKatana", "Tushita", "Yama", "RaidController", "Wenlocktoad", "ExpRedeem", "LevelFarm"}
    GodhumanMaterials = {['Fish Tail'] = {20, 3, {"Fishman Raider", "Fishman Captain"}, {'DeepForestIsland3', 1, 1775, 'Turtle Adventure Quest Giver'}}, ['Dragon Scale'] = {10, 3, {"Dragon Crew Warrior", "Dragon Crew Archer"}, {'DragonCrewQuest', 1, 1575, 'Dragon Crew Quest Giver'}}, ["Magma Ore"] = {20, 2, {'Magma Ninja'}, {"FireSideQuest", 1, 1100, "Fire Quest Giver"}}, ["Mystic Droplet"] = {10, 2, {'Sea Soldier', 'Water Fighter'}, {'ForgottenQuest', 2, 1425, 'Forgotten Quest Giver'}}}

    function AddPoint()
        local W_p = {}
        local a_s
        for _, h_v in pairs(h.Data.Stats:GetChildren()) do
            if h_v and h_v:FindFirstChild('Level') then W_p[h_v.Name] = h_v.Level.Value end
        end
        if W_p.Defense < MaxLevel and (W_p.Defense < (ScriptStorage.PlayerData.Level / 80) or MaxLevel - W_p.Melee < 100) then a_s = 'Defense'
        elseif W_p.Melee < MaxLevel then a_s = "Melee"
        else a_s = 'Sword' end
        Remotes.CommF_:InvokeServer("AddPoint", a_s, 999)
    end

    function RefreshPlayerData()
        for _, a_v in pairs(h.Data:GetChildren()) do pcall(function() ScriptStorage.PlayerData[a_v.Name] = a_v.Value end) end
        local a_s = ""
        local W_c = {Level = "#00FF48", Beli = "#FF7800", Fragments = "#6C00FF"}
        for h_k, X_v in pairs(ScriptStorage.PlayerData) do
            local w_c = W_c[h_k]
            if w_c then a_s = a_s .. '<font color="' .. w_c .. '">' .. h_k .. "</font>: " .. X_v .. ' ' end
        end
        SetText('Currencies', a_s)
    end

    function RefreshInventory()
        ScriptStorage.Backpack2 = {}
        for _, W_v in pairs(Remotes.CommF_:InvokeServer('getInventory')) do ScriptStorage.Backpack2[W_v.Name] = W_v end
        ScriptStorage.Backpack = ScriptStorage.Backpack2
    end

    J_quest = {CurrentLevel = 2, DoubleQuest = true, CurrentQuests = {}, BlacklistedQuestIds = {BartiloQuest = 1, CitizenQuest = 1, Trainees = 1, MarineQuest = 1, ImpelQuest = 1}}
    J_quest.Quests = require(game.ReplicatedStorage.Quests)
    function J_quest:RefreshQuest()
        while not ScriptStorage.PlayerData.Level do task.wait(1) end
        local a_l, h_q = 0, nil
        for X_i, w_v in pairs(self.Quests) do
            if not self.BlacklistedQuestIds[X_i] then
                if (w_v[1].LevelReq >= a_l and w_v[1].LevelReq <= ScriptStorage.PlayerData.Level) then
                    a_l = w_v[1].LevelReq
                    h_q = w_v
                    self.CurrentQuestId = X_i
                    if ScriptStorage.PlayerData.Level >= 1500 and SeaIndex == 2 and X_i == 'ForgottenQuest' then break end
                end
            end
        end
        local a_la = h_q[#h_q]
        for _, X_v in pairs(a_la.Task) do if X_v == 1 then table.remove(h_q, #h_q) end end
        for a_n, X_c in pairs(require(game.ReplicatedStorage.GuideModule).Data.NPCList) do
            for _, w_l in pairs(X_c.Levels) do if w_l == h_q[#h_q].LevelReq then self.CurrentNpc = a_n.CFrame end end
        end
        self.CurrentQuests = h_q
    end
    function J_quest:GetCurrentQuest()
        local a_i = self.CurrentQuests[self.CurrentLevel] and self.CurrentQuests[self.CurrentLevel].LevelReq <= ScriptStorage.PlayerData.Level and self.CurrentLevel or 1
        for h_n in pairs(self.CurrentQuests[a_i].Task) do return h_n, self.CurrentNpc, self.CurrentQuestId, a_i, self.CurrentQuests[a_i].Name end
    end
    function J_quest:AbandonQuest() Remotes.CommF_:InvokeServer("AbandonQuest") end
    function J_quest:GetCurrentClaimQuest()
        local visible = h.PlayerGui.Main.Quest.Visible
        if not visible then return nil, nil end
        local W_t = h.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:gsub("%s*Defeat%s*(%d*)%s*(.-)%s*%b()", '%2')
        return (type(W_t) == "string" and string.gsub(W_t, "Military ", "Mil. ") or W_t), h.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    end
    function J_quest:StartQuest(W_i, a_l)
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer('ColorsDealer', "2")
        return Remotes.CommF_:InvokeServer("StartQuest", W_i, a_l)
    end

    TweenController = {}
    function TweenController.Create(W_p)
        if not W_p or TweenDebounce then return end
        local a_c = typeof(W_p) ~= 'CFrame' and CFrame.new(W_p.X, W_p.Y, W_p.Z) or W_p
        
        if _G.LastTweenTarget and (_G.LastTweenTarget.Position - a_c.Position).Magnitude < 5 then
            if TweenInstance and TweenInstance.PlaybackState == Enum.PlaybackState.Playing then return end
        end
        _G.LastTweenTarget = a_c

        if TweenInstance then pcall(function() TweenInstance:Cancel() end) end
        for _, v in ipairs(h.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end
        local W_he = h.Character:WaitForChild("Head")
        if not W_he:FindFirstChild("eltrul") then
            local h_b = Instance.new('BodyVelocity')
            h_b.Name = "eltrul"
            h_b.MaxForce = Vector3.new(0, math.huge, 0)
            h_b.Velocity = Vector3.zero
            h_b.Parent = W_he
        end
        
        local W_d = CaculateDistance(h.Character.HumanoidRootPart.CFrame, a_c)
        local safeSpeed = 300 
        local tweenTime = W_d / safeSpeed
        
        if tweenTime < 0.1 then tweenTime = 0.1 end 

        TweenInstance = game:GetService("TweenService"):Create(h.Character.HumanoidRootPart, TweenInfo.new(tweenTime, Enum.EasingStyle.Linear), {CFrame = a_c})
        TweenInstance:Play()
    end

    function GetMonAsSortedRange()
        local W_m = {}
        for _, a_v in pairs(workspace.Enemies:GetChildren()) do
            if a_v and a_v:FindFirstChild('Humanoid') and a_v:FindFirstChild("HumanoidRootPart") and a_v.Humanoid.Health > 0 then
                table.insert(W_m, a_v)
            end
        end
        table.sort(W_m, function(a_1, h_1) return CaculateDistance(a_1.HumanoidRootPart.CFrame) < CaculateDistance(h_1.HumanoidRootPart.CFrame) end)
        return W_m
    end

    local h_attack_lib = {}
    local net_mod = game.ReplicatedStorage.Modules.Net
    local reg_at = require(net_mod):RemoteEvent("RegisterAttack", true)
    local reg_hit = require(net_mod):RemoteEvent("RegisterHit", true)

    function h_attack_lib:Attack()
        local X_targets = {}
        for _, X_e in pairs(workspace.Enemies:GetChildren()) do
            if X_e:FindFirstChild('Humanoid') and X_e:FindFirstChild('HumanoidRootPart') and X_e.Humanoid.Health > 0 and (X_e.HumanoidRootPart.Position - h.Character.HumanoidRootPart.Position).Magnitude <= 65 then
                table.insert(X_targets, X_e)
            end
        end
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
    function W.Attack(h_dmy) pcall(function() _G.FastAttack = os.time() end) end

    CombatController = {GRAB = true, GRAB_DISTANCE = 350, CurrentIndex = 1}
    function CombatController.Search(h_search_list)
        local X_arr = {}
        local w_found = false
        for _, D_mon in pairs(GetMonAsSortedRange()) do
            if table.find(h_search_list, D_mon.Name) and D_mon:FindFirstChild("Humanoid") and D_mon.Humanoid.Health > 0 then
                w_found = true
                table.insert(X_arr, D_mon)
            end
        end
        if w_found then return X_arr[1] end
        for _, X_name in pairs(h_search_list) do
            local h_res = game.ReplicatedStorage:FindFirstChild(X_name)
            if h_res then return h_res end
        end
    end

    function CombatController.Attack(h_at, X_at, w_at)
        pcall(sethiddenproperty, h, 'SimulationRadius', math.huge)
        h_at = type(h_at) == "string" and {h_at} or (h_at or {})
        for _, L_name in pairs(h_at) do
            MonResult = CombatController.Search(h_at)
            if MonResult then
                local h_val = 0
                while task.wait() do
                    if _G.Stop then return end
                    local C_hum = MonResult:FindFirstChild('Humanoid')
                    local p_root = MonResult:FindFirstChild('HumanoidRootPart')
                    if not C_hum or C_hum.Health <= 0 then break end
                    TweenController.Create(p_root.CFrame + Vector3.new(0, 35, 0))
                    if CaculateDistance(p_root.Position + Vector3.new(0, 35, 0)) < 150 then
                        FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call(ScriptStorage.ForceToUseSword and 'Sword' or "Melee")
                        W.Attack(MonResult)
                        h_val = h_val + 1
                    end
                    if h_val > 30 and MonResult.Name ~= "Core" then break end
                end
            end
        end
    end

    FunctionsHandler.LocalPlayerController:RegisterMethod("EquipTool", function(toolName)
        if not h.Character:FindFirstChild('Humanoid') then return end
        for _, item in pairs(h.Backpack:GetChildren()) do
            if item:IsA('Tool') and (item.Name == tostring(toolName) or item.ToolTip == toolName) then
                h.Character.Humanoid:EquipTool(item)
            end
        end
    end)

    FunctionsHandler.ExpRedeem:RegisterMethod("Refresh", function() return ScriptStorage.PlayerData.Level < MaxLevel and getsenv(game.ReplicatedStorage.GuideModule)._G.ServerData.ExpBoost == 0 and not Storage:Get("IsCodesRanOut") end)
    FunctionsHandler.ExpRedeem:RegisterMethod("Start", function()
        local codes = {'BANEXPLOIT', "WildDares", 'BossBuild', 'GetPranked', 'EARN_FRUITS', "Sub2UncleKizaru", 'FIGHT4FRUIT', "kittgaming", "Sub2CaptainMaui", 'Sub2Fer999', "Enyu_is_Pro", "Magicbus", "JCWK", 'Starcodeheo', 'Bluxxy'}
        for _, code in pairs(codes) do
            SetTask("MainTask", 'Code Redemption | ' .. code .. ' | Redeeming...')
            local res = (game.ReplicatedStorage.Remotes.Redeem:InvokeServer(code))
            task.wait()
            if getsenv(game.ReplicatedStorage.GuideModule)._G.ServerData.ExpBoost > 0 then return end
        end
        Storage:Set("IsCodesRanOut", 1)
    end)

    -- [ ĐÃ FIX TẮT LEVEL FARM KHI MAX LEVEL ĐỂ KHÔNG BỊ KẸT LỖI QUEST ]
    FunctionsHandler.LevelFarm:RegisterMethod("Refresh", function()
        local lvl = ScriptStorage.PlayerData.Level
        if lvl >= MaxLevel then return nil end -- CÔNG TẮC: Trả về nil để tắt thẳng tay nếu đã Max Level 2800!
        if lvl < 50 then return 1 elseif lvl < 70 then return 2 else return 4 end
    end)

    FunctionsHandler.LevelFarm:RegisterMethod("Start", function(floor)
        if SeaIndex == 3 and (ScriptStorage.Backpack.Bones or {Count = 0}).Count >= 50 then
            if os.time() > (BonesCooldown or 0) then
                local status, _, _, timeStr = Remotes.CommF_:InvokeServer("Bones", 'Check')
                if tonumber(status or 1) == 0 then
                    local splitTime = Split(timeStr, ":")
                    BonesCooldown = os.time() + (((tonumber(splitTime[1]) * 60) + tonumber(splitTime[2])) * 60)
                else 
                    Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1) 
                end
            end
        end

        local currentLevel = ScriptStorage.PlayerData.Level
        if os.time() - (LastTravel or 0) > 60 then
            LastTravel = os.time()
            if currentLevel >= 1500 and SeaIndex == 2 and not workspace.Map.IceCastle.Hall.LibraryDoor:FindFirstChild('PhoeyuDoor') then
                SetTask('MainTask', 'Sea Travel | Đang dịch chuyển lên Sea 3...') 
                Remotes.CommF_:InvokeServer("TravelZou")
            elseif currentLevel >= 700 and SeaIndex == 1 then
                SetTask('MainTask', 'Sea Travel | Đang dịch chuyển qua Sea 2...') 
                Remotes.CommF_:InvokeServer("TravelDressrosa")
            end
        end

        if floor == 1 then CombatController.Attack("Sky Bandit")
        elseif floor == 2 then CombatController.Attack('God\'s Guard')
        elseif floor == 4 then
            local monName, npcPos, questId, qIndex, questTitle = J_quest:GetCurrentQuest()
            local claimQuest, _ = J_quest:GetCurrentClaimQuest()
            if claimQuest then
                if claimQuest ~= questTitle then J_quest:AbandonQuest() end
            else
                if not npcPos then J_quest:RefreshQuest() return end
                TweenController.Create(npcPos + Vector3.new(0, 5, 3))
                SetTask("MainTask", "Level Farming | Lấy Quest: " .. monName)
                if CaculateDistance(npcPos) < 10 then
                    task.wait(1)
                    J_quest:StartQuest(questId, qIndex)
                    task.wait(1)
                end
                return
            end
            SetTask('MainTask', 'Level Farming | Đang cày cấp với: ' .. monName)
            CombatController.Attack(monName)
        end
    end)
	FunctionsHandler.Saber:RegisterMethod('Refresh', function()
        if not Config.Items.Saber or ScriptStorage.Backpack.Saber or ScriptStorage.PlayerData.Level < 200 then return end
        local prog = Remotes.CommF_:InvokeServer('ProQuestProgress')
        local step
        for _, plateStat in pairs(prog.Plates) do if plateStat == false then step = 1 end end
        if not step then
            if not prog.UsedTorch then step = 2 
            elseif not prog.UsedCup then step = 3 
            elseif not prog.TalkedSon then step = 4 
            elseif not prog.KilledMob then step = 5 
            elseif not prog.UsedRelic then step = 6 
            elseif not prog.KilledShanks then step = 7 end
        end
        FunctionsHandler.Saber:Set("CurrentProgressLevel", step)
        return step
    end)
    FunctionsHandler.Saber:RegisterMethod('GetQuestplates', function()
        local cached = FunctionsHandler.Saber:Get("QuestplatesCache")
        if cached then return cached end
        local plateList = {}
        table.foreach(workspace.Map.Jungle.QuestPlates:GetChildren(), function(_, v) 
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
                if CaculateDistance(p.Button.CFrame) > 20 then TweenController.Create(p.Button.CFrame) end
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
                Remotes.CommF_:InvokeServer("ProQuestProgress", 'FillCup', h.Character.Cup) 
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
        local waterfall = workspace.Map:FindFirstChild("Waterfall")
        if waterfall and waterfall:FindFirstChild("SealedKatana") then
            fireclickdetector(waterfall.SealedKatana.Hitbox.ClickDetector)
        else
            TweenController.Create(game.ReplicatedStorage.FakeIslands.Waterfall:GetModelCFrame())
        end
    end)

    FunctionsHandler.Tushita:RegisterMethod("Refresh", function()
        if ScriptStorage.Backpack.Tushita or ScriptStorage.PlayerData.Level < 2000 or SeaIndex ~= 3 then return end
        TushitaProgress = TushitaProgress or Remotes.CommF_:InvokeServer("TushitaProgress")
        if not TushitaProgress.OpenedDoor then
            if ScriptStorage.Enemies["rip_indra True Form"] then TushitaProgress = nil return 1 end
        else
            if ScriptStorage.Enemies['Longma'] then TushitaProgress = nil return 2 end
        end
    end)
    FunctionsHandler.Tushita:RegisterMethod('Start', function(k)
        if k == 1 then
            SetTask("MainTask", "Tushita Quest | Lighting Torches!")
            TweenController.Create(CFrame.new(5714, 20, 256))
            if ScriptStorage.Tools["Holy Torch"] then
                for i = 1, 5 do Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", i) end
                return true
            end
        elseif k == 2 then
            SetTask("MainTask", "Tushita Quest | Defeating Longma")
            CombatController.Attack("Longma")
        end
    end)

    function CheckFullMoon()
        if Lighting.Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=970914431' then return end
        return Lighting.ClockTime > 18 or Lighting.ClockTime < 5
    end
    FunctionsHandler.SoulGuitar:RegisterMethod("Refresh", function()
        if not Config.Items.SoulGuitar or ScriptStorage.Backpack['Skull Guitar'] or not ScriptStorage.Backpack['Dark Fragment'] or ScriptStorage.PlayerData.Level < 2300 then return end
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
            if CaculateDistance(CFrame.new(-8654.0, 140, 6167)) > 5 then TweenController.Create(CFrame.new(-8654.0, 140, 6167)) else SoulGuitarProcess = Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true) end
        elseif step == 1 then
            if SeaIndex ~= 2 then
                SetTask("MainTask", 'Soul Guitar | Travel to Sea 2 for Ectoplasm')
                return Remotes.CommF_:InvokeServer("TravelDressrosa")
            else
                SetTask("MainTask", "Soul Guitar | Farming Ectoplasm")
                CombatController.Attack({"Ship Deckhand", "Ship Engineer", 'Ship Steward', "Ship Officer"})
            end
        elseif step == 2 then
            SetTask("MainTask", 'Soul Guitar | Zombie Puzzle')
            local zombieList = {}
            for _, ent in pairs(workspace.Enemies:GetChildren()) do if ent.Name == "Living Zombie" then table.insert(zombieList, ent) end end
            if #zombieList < 6 then
                TweenController.Create(CFrame.new(-9473, 142, 5567))
            else
                if workspace.Enemies:FindFirstChild("Living Zombie") then CombatController.Attack('Living Zombie') end
            end
        elseif step == 3 then
            SetTask("MainTask", "Soul Guitar | Placards Puzzle")
            local hauntMap = workspace.Map["Haunted Castle"]
            if CaculateDistance(CFrame.new(-8800.0, 178, 6033)) > 10 then TweenController.Create(CFrame.new(-8800.0, 178, 6033)) else
                local placards = {Placard1 = "Right", Placard2 = "Right", Placard3 = "Left", Placard4 = 'Right', Placard5 = 'Left', Placard6 = 'Left', Placard7 = "Left"}
                for pName, side in pairs(placards) do fireclickdetector(hauntMap[pName][side].ClickDetector) end
            end
        elseif step == 4 then
            Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
        elseif step == 5 then
            if CaculateDistance(CFrame.new(-9530.0, 6.1, 6054.8)) > 30 then TweenController.Create(CFrame.new(-9530.0, 6.1, 6054.8))
            else
                local tabletMap = workspace.Map['Haunted Castle'].Tablet
                local BlankTablets = {"Segment6", 'Segment2', 'Segment8', "Segment9", 'Segment5'}
                local Trophy = {["Segment1"] = "Trophy1", ["Segment3"] = "Trophy2", ['Segment4'] = "Trophy3", ['Segment7'] = "Trophy4", ["Segment10"] = "Trophy5"}
                for _, segName in pairs(BlankTablets) do
                    local seg = tabletMap[segName]
                    if seg.Line.Rotation.Z ~= 0 then fireclickdetector(seg.ClickDetector) end
                end
                for segId, trophyId in pairs(Trophy) do
                    local trophyCf = workspace.Map["Haunted Castle"].Trophies.Quest[trophyId].Handle.CFrame
                    local orientation = tostring(trophyCf):split(", ")[4]
                    local targetRot = (orientation == "1" or orientation == "-1") and "90" or "180"
                    if not string.find(tostring(tabletMap[segId].Line.Rotation.Z), targetRot) then
                        fireclickdetector(tabletMap[segId].ClickDetector)
                    end
                end
            end
        elseif step == 6 then
            local Pipes = {['Part1'] = 'Really black', ['Part2'] = 'Really black', ["Part3"] = "Dusty Rose", ['Part4'] = "Storm blue", ['Part5'] = 'Really black', ['Part6'] = "Parsley green", ["Part7"] = 'Really black', ["Part8"] = "Dusty Rose", ["Part9"] = 'Really black', ['Part10'] = 'Storm blue'}
            for partId, colorName in pairs(Pipes) do
                pcall(function()
                    local pipePart = workspace.Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model[partId]
                    if pipePart.BrickColor.Name ~= colorName then fireclickdetector(pipePart.ClickDetector) end
                end)
            end
            Remotes.CommF_:InvokeServer('soulGuitarBuy')
        elseif step == 8 then
            Remotes.CommF_:InvokeServer('soulGuitarBuy')
        end
    end)

    FunctionsHandler.CursedDualKatana:RegisterMethod("Refresh", function()
        if not Config.Items.CursedDualKatana then return end
        local bp = ScriptStorage.Backpack
        if ScriptStorage.PlayerData.Level < 2200 then return end
        if bp["Cursed Dual Katana"] or not bp.Tushita or (bp.Tushita.Mastery or 0) < 350 or not bp.Yama or (bp.Yama.Mastery or 0) < 350 then return end
        if SeaIndex ~= 3 then return end
        
        local prog = Remotes.CommF_:InvokeServer("CDKQuest", 'Progress')
        if type(prog) ~= "table" then return {"talk_crypt_master"} end
        if workspace.Map.Turtle.Cursed:FindFirstChild("Breakable") then return {"break"} end
        
        if prog.Good == 3 and prog.Evil == 3 then return {"boss"} end

        if type(prog.Good) == "number" and prog.Good < 3 then
            return {"Good", prog.Good + 1}
        end

        if type(prog.Evil) == "number" and prog.Evil < 3 then
            return {"Evil", prog.Evil + 1}
        end
        
        return {"boss"}
    end)

    FunctionsHandler.CursedDualKatana:RegisterMethod("GetHazeMon", function()
        local hazeList = {}
        for _, obj in pairs(game.Players.LocalPlayer.QuestHaze:GetChildren()) do 
            if obj.Value > 0 then table.insert(hazeList, obj) end 
        end
        table.sort(hazeList, function(a, b) return CaculateDistance(a:GetAttribute('Position')) < CaculateDistance(b:GetAttribute('Position')) end)
        return tostring(hazeList[1])
    end)

    FunctionsHandler.CursedDualKatana:RegisterMethod("DoDimension", function(dim_name)
        local map_name = string.gsub(dim_name, ' ', "")
        local start_t = os.time()
        repeat
            task.wait()
            TweenController.Create(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
            if os.time() - start_t > 60 then return end
        until os.time() - (TorchEnabledTime or 0) < 10
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
        Hop()
    end)

    FunctionsHandler.CursedDualKatana:RegisterMethod("Start", function(step)
        if type(step) == "table" then
            if step[1] == "talk_crypt_master" then
                SetTask("MainTask", "CDK Quest | Nói chuyện với Crypt Master...")
                local masterNpc = ScriptStorage.NPCs["Crypt Master"]
                if masterNpc then
                    TweenController.Create(masterNpc:GetModelCFrame())
                    if CaculateDistance(masterNpc:GetModelCFrame()) < 15 then
                        local p = masterNpc:FindFirstChildOfClass("ProximityPrompt", true)
                        if p then fireproximityprompt(p) end
                        Remotes.CommF_:InvokeServer("CDKQuest", "Npc")
                    end
                end
            elseif step[1] == "break" then
                SetTask("MainTask", "CDK Quest | Phá vỡ bức tường bí mật!")
                local door = workspace.Map.Turtle.Cursed:FindFirstChild("Breakable")
                if door then
                    TweenController.Create(door.CFrame)
                    local mob = workspace.Enemies:FindFirstChild("Cursed Skeleton")
                    if mob and mob:FindFirstChild("HumanoidRootPart") then mob.HumanoidRootPart.CFrame = door.CFrame end
                    CombatController.Attack("Cursed Skeleton")
                    task.delay(3, function() pcall(function() door:Destroy() end) end)
                end
            elseif step[1] == "burn" or step[1] == "burn 2" then
                local scrollName = step[1] == "burn" and "GoodScroll" or "EvilScroll"
                SetTask("MainTask", "CDK Quest | Đang lấy nhiệm vụ từ " .. scrollName)
                local scroll = workspace.Map.Turtle.Cursed:FindFirstChild(scrollName)
                if scroll then 
                    local targetPos = (scroll:IsA("Model") and scroll:GetModelCFrame() or scroll.CFrame)
                    
                    if CaculateDistance(targetPos) > 10 then
                        TweenController.Create(targetPos) 
                    else
                        local prompt = scroll:FindFirstChildOfClass("ProximityPrompt", true)
                        if prompt then
                            prompt.HoldDuration = 0
                            fireproximityprompt(prompt)
                            task.wait(1.5) 
                        end
                    end
                end
            elseif step[1] == "boss" then
                SetTask("MainTask", "CDK Quest | Tiêu diệt Boss để lấy CDK!")
                local boss = workspace.Enemies:FindFirstChild("Cursed Skeleton Boss") or game.ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss")
                if boss then
                    CombatController.Attack("Cursed Skeleton Boss")
                else
                    local ped = workspace.Map.Turtle.Cursed:FindFirstChild("Pedestal")
                    if ped then
                        if CaculateDistance(ped.CFrame) < 15 then
                            fireclickdetector(ped.ClickDetector)
                        else
                            TweenController.Create(ped.CFrame)
                        end
                    end
                end
            elseif step[1] == "Good" then
                Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Good')
                
                if step[2] == 1 then 
                    -- [ ĐÃ FIX TẬN GỐC ]: Lỗi đâm vô trần nhà, kẹt tường và quên chờ hội thoại
                    SetTask("MainTask", "CDK | Tushita 1: Tương tác Boat Dealer...")
                    _G.CDK_DealerIndex = _G.CDK_DealerIndex or 1
                    
                    local dealers = {}
                    for _, v in pairs(workspace.NPCs:GetChildren()) do
                        if string.find(v.Name, "Boat Dealer") or string.find(v.Name, "Luxury Boat Dealer") then
                            table.insert(dealers, v)
                        end
                    end

                    if _G.CDK_DealerIndex > 3 then
                        SetTask("MainTask", "CDK | Xong 3 ông, chờ Game load...")
                        task.wait(2)
                        _G.CDK_DealerIndex = 1
                    elseif dealers[_G.CDK_DealerIndex] then
                        local targetNPC = dealers[_G.CDK_DealerIndex]
                        local dest = targetNPC:GetModelCFrame()
                        
                        if CaculateDistance(dest) > 10 then
                            -- Chỉ bay đến tọa độ gốc (ngang bụng), TỐI KỴ việc bay lên cao đâm nóc nhà
                            TweenController.Create(dest)
                            SetTask("MainTask", "CDK | Bay tới NPC " .. _G.CDK_DealerIndex .. "/3")
                        else
                            local p = targetNPC:FindFirstChildOfClass("ProximityPrompt", true)
                            if p then
                                p.HoldDuration = 0
                                fireproximityprompt(p)
                                task.wait(2) -- CHỜ 2 GIÂY CHUẨN ĐỂ GAME TÍNH ĐIỂM
                                _G.CDK_DealerIndex = _G.CDK_DealerIndex + 1
                            else
                                -- Gặp NPC bị lỗi tàng hình thì bỏ qua nhảy qua thằng tiếp theo
                                _G.CDK_DealerIndex = _G.CDK_DealerIndex + 1 
                            end
                        end
                    else
                        _G.CDK_DealerIndex = 1
                    end

                elseif step[2] == 2 then 
                    SetTask("MainTask", "CDK | Tushita 2: Đợi Pirate Raid ở Lâu Đài...")
                    Remotes.CommF_:InvokeServer("CDKQuest", "SenseOfDuty")
                    local castlePos = CFrame.new(-5556, 314, -2988)
                    if CaculateDistance(castlePos) > 50 then
                        TweenController.Create(castlePos)
                    else
                        for _, mon in pairs(GetMonAsSortedRange()) do
                            if string.find(mon.Name, "Pirate") or string.find(mon.Name, "Diablo") then
                                CombatController.Attack(mon.Name)
                            end
                        end
                    end
                elseif step[2] == 3 then 
                    SetTask("MainTask", "CDK | Tushita 3: Giết Cake Queen...")
                    Remotes.CommF_:InvokeServer("CDKQuest", "Soulless")
                    if workspace.Enemies:FindFirstChild("Cake Queen") then CombatController.Attack("Cake Queen") end
                    FunctionsHandler.CursedDualKatana.Methods.DoDimension:Call("Heaven")
                end
            elseif step[1] == "Evil" then
                Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', 'Evil')
                
                if step[2] == 1 then 
                    SetTask("MainTask", "CDK | Yama 1: Đứng yên chịu đòn...")
                    Remotes.CommF_:InvokeServer("CDKQuest", "PainAndSuffering")
                    local mob = workspace.Enemies:FindFirstChild("Fishman Raider") or workspace.Enemies:FindFirstChild("Cursed Skeleton")
                    if mob and mob:FindFirstChild("HumanoidRootPart") then TweenController.Create(mob.HumanoidRootPart.CFrame) end
                elseif step[2] == 2 then
                    SetTask("MainTask", "CDK | Yama 2: Diệt quái sương mù tím...")
                    Remotes.CommF_:InvokeServer("CDKQuest", "HazeOfMisery")
                    local mon = FunctionsHandler.CursedDualKatana.Methods.GetHazeMon:Call()
                    if mon then CombatController.Attack(mon) end
                elseif step[2] == 3 then 
                    SetTask("MainTask", "CDK | Yama 3: Triệu hồi Reaper...")
                    Remotes.CommF_:InvokeServer("CDKQuest", "FearTheReaper")
                    local reaper = workspace.Enemies:FindFirstChild("Soul Reaper")
                    if reaper then
                        TweenController.Create(reaper.HumanoidRootPart.CFrame)
                    else
                        if CaculateDistance(CFrame.new(-9473, 142, 5567)) > 50 then TweenController.Create(CFrame.new(-9473, 142, 5567)) end
                    end
                    FunctionsHandler.CursedDualKatana.Methods.DoDimension:Call("Hell")
                end
            end
        end
    end)

    FunctionsHandler.RaidController:RegisterMethod("Refresh", function()
        local p_lvl = ScriptStorage.PlayerData.Level
        local p_frag = ScriptStorage.PlayerData.Fragments
        if p_lvl < 1300 or SeaIndex == 1 then return end
        if p_lvl < 1500 and p_frag > 2000 then return end
        if p_lvl < MaxLevel and p_frag > 5000 then return end
        if p_lvl >= MaxLevel and p_frag > 10000 then return end
        for _, item in pairs(ScriptStorage.Backpack) do
            if string.find(FruitIdToName(item.Name), " Fruit") and item.Value and item.Value < 1000000 then return item end
        end
        local isl
        for _, loc in pairs(workspace['_WorldOrigin'].Locations:GetChildren()) do
            if string.find(loc.Name, 'Island ') and CaculateDistance(loc.Position, Vector3.new(0, 0, 0)) > 7000 then
                if CaculateDistance(loc.Position) < 2000 then isl = loc break end
            end
        end
        return isl or ScriptStorage.Tools["Special Microchip"]
    end)
    FunctionsHandler.RaidController:RegisterMethod("Start", function(data)
        if typeof(data) == "Instance" and data:IsA("Part") then
            SetTask('MainTask', "Auto Raid | Dọn dẹp Đảo " .. data.Name)
            local hit = false
            for _, mon in pairs(GetMonAsSortedRange()) do
                if mon and mon:FindFirstChild("HumanoidRootPart") and mon.Humanoid.Health > 0 and CaculateDistance(mon.HumanoidRootPart.Position) < 1000 then
                    hit = true
                    CombatController.Attack(mon.Name)
                end
            end
            if not hit then TweenController.Create(data.Position + Vector3.new(0, 100, 0)) end
        else
            SetTask('MainTask', "Auto Raid | Chuẩn bị Raid Flame")
            if not ScriptStorage.Tools['Special Microchip'] and type(data) == "table" then
                Remotes.CommF_:InvokeServer('LoadFruit', data.Name)
                Remotes.CommF_:InvokeServer("RaidsNpc", 'Select', 'Flame')
            end
            local raid_loc = ({nil, 'Circle Island', "Boat Castle"})[SeaIndex]
            local summon_spot = ScriptStorage.Map[raid_loc]
            if summon_spot then TweenController.Create(summon_spot:GetModelCFrame()) end
            if ScriptStorage.Tools['Special Microchip'] and summon_spot and summon_spot:FindFirstChild("RaidSummon2") then
                FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Special Microchip')
                fireclickdetector(summon_spot.RaidSummon2.Button.Main.ClickDetector)
            end
        end
    end)

    FunctionsHandler.Wenlocktoad:RegisterMethod("Refresh", function()
        if ScriptStorage.PlayerData.RaceLevel ~= 2 or ScriptStorage.PlayerData.Level < 1000 or ScriptStorage.PlayerData.Beli < 2000000 or SeaIndex ~= 2 then return end
        if Remotes.CommF_:InvokeServer("Wenlocktoad", "1") == -2 then ScriptStorage.PlayerData.RaceLevel = 3 return false end
        return true
    end)
    FunctionsHandler.Wenlocktoad:RegisterMethod("Start", function()
        SetTask('MainTask', "Up Tộc V3 | Nhiệm vụ Arowe")
        local arowe = ScriptStorage.NPCs["Arowe"]
        if arowe then
            TweenController.Create(arowe:GetModelCFrame())
            if CaculateDistance(arowe) < 15 then
                Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
                task.wait(0.5) Remotes.CommF_:InvokeServer("Wenlocktoad", "2")
                task.wait(0.5) Remotes.CommF_:InvokeServer("Wenlocktoad", "3")
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
        SetTask("MainTask", "VIP Săn Boss | Phát hiện Boss " .. mode .. " trong Server, đấm ngay!")
        if mode == "rip_indra True Form" and not ScriptStorage.Backpack['Tushita'] then
            TweenController.Create(CFrame.new(5714, 20, 256))
            if ScriptStorage.Tools["Holy Torch"] then
                for i = 1, 5 do Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", i) end
            end
        else
            CombatController.Attack(mode)
        end
    end)

    local notifier = {Listeners = {}}
    getgenv().NotificationCallBack = (function(msg)
        for key, func in pairs(notifier.Listeners) do
            if string.find(string.lower(msg), string.lower(key)) then func(msg) end
        end
    end)
    function notifier:RegisterNotifyListener(key, func) notifier.Listeners[key] = func end
    notifier:RegisterNotifyListener("level", function() AddPoint() end)

    local old_notify
    old_notify = hookfunction(require(game.ReplicatedStorage.Notification).new, function(title, msg)
        getgenv().NotificationCallBack(tostring(tostring(title or '') .. tostring(msg or "")))
        return old_notify(title, msg)
    end)

    function GetServers()
        if LastServersDataPulled and os.time() - LastServersDataPulled < 60 then return CachedServers end
        for k_idx = 1, 100, 1 do
            local W_res = game.ReplicatedStorage:WaitForChild("__ServerBrowser"):InvokeServer(k_idx)
            if W_res and type(W_res) == "table" then
                LastServersDataPulled = os.time()
                CachedServers = W_res
                return W_res
            end
        end
    end

    function Hop()
        local h_list = GetServers()
        local X_filtered = {}
        if h_list then
            for w_id, D_data in pairs(h_list) do table.insert(X_filtered, {JobId = w_id, Players = D_data.Count}) end
            if #X_filtered > 0 then
                game.ReplicatedStorage:WaitForChild('__ServerBrowser'):InvokeServer("teleport", X_filtered[math.random(1, #X_filtered)].JobId)
            end
        end
    end

    Storage = {WRITE_DELAY = .5, Data = {}}
    local k_file_path = ".storage_u_" .. tostring(h)
    function Storage:Set(h_k, X_v) self.Data[h_k] = X_v end
    function Storage:Get(h_k) return self.Data[h_k] end
    function Storage:Save() pcall(function() writefile(k_file_path, game:GetService("HttpService"):JSONEncode(self.Data)) end) end
    pcall(function() Storage.Data = game:GetService("HttpService"):JSONDecode(readfile(k_file_path) or '{}') end)
    task.spawn(function() while task.wait(Storage.WRITE_DELAY) do Storage:Save() end end)

    -- VÒNG LẶP CHÍNH
    ParsingTimes = 0
    function RefreshTasksData()
        if _G.Stop then return end
        
        local taskHandled = false
        for _, taskName in pairs(TasksOrder) do
            local handler = FunctionsHandler[taskName]
            if handler and handler.Initalized then
                local status = handler.Methods.Refresh and handler.Methods.Refresh:Call(ParsingTimes < 100)
                ParsingTimes = ParsingTimes + 1
                if status and ParsingTimes > 100 then
                    SetText('DebugLine', "Module: " .. taskName)
                    
                    local success, err = pcall(function()
                        handler.Methods.Start:Call(status)
                    end)
                    
                    if not success then
                        SetText('MainTextLabel', "<font color='#FF0000'>LỖI CODE Ở " .. taskName .. ": " .. tostring(err) .. "</font>")
                        task.wait(3) 
                    end
                    
                    taskHandled = true
                    return
                end
            end
        end

        if not taskHandled and ScriptStorage.PlayerData.Level >= 2800 and SeaIndex == 3 and ParsingTimes > 100 then
            SetTask('MainTask', "Hệ Thống | Rảnh rỗi: Đứng rình Boss tại Mansion!")
            local mansion_pos = CFrame.new(-12464, 332, -7254)
            if CaculateDistance(mansion_pos) > 30 and not MonResult then 
                TweenController.Create(mansion_pos) 
            end
        end
    end

    SetText('MainTextLabel', "HoangPhucHub: Đang ép game tải dữ liệu...")
    h:WaitForChild("Data", 9e9)
    
    repeat 
        task.wait(0.5) 
        pcall(function()
            for _, a_v in pairs(h.Data:GetChildren()) do 
                ScriptStorage.PlayerData[a_v.Name] = a_v.Value 
            end
        end)
    until ScriptStorage.PlayerData.Level ~= nil
    
    SetText('MainTextLabel', "HoangPhucHub: Đã có Level, xuất chiến!")

    pcall(function() AddPoint() end)
    pcall(function() J_quest:RefreshQuest() end)
    pcall(function() RefreshInventory() end)

    h.Idled:Connect(function()
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end)

    task.spawn(function()
        while task.wait(1) do
            if not _G.Stop then
                pcall(RefreshPlayerData)
                local elapsed = os.time() - InitTime
                local total = elapsed + OldSessionTime
                pcall(function() writefile(".tdif-" .. h.Name, tostring(total)) end)
                SetText('LiveTime', "Tổng: " .. DispTime(total, true) .. ' | Lần này: ' .. DispTime(elapsed, true))
            end
        end
    end)

    task.spawn(function()
        task.wait(Config.Configuration.AutoHopDelay)
        if not Config.Configuration.AutoHop then Hop() end
    end)

    while task.wait() do
        local success, err = xpcall(RefreshTasksData, debug.traceback)
        if not success and err then 
            warn("HoangPhucHub Error: ", err)
            SetText('MainTextLabel', "<font color='#FF0000'>CRASH: " .. tostring(err) .. "</font>")
            task.wait(2) 
        end
    end
end
hoangtuveu()
