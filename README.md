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
    alert("HoangPhucHub", "Bản Clean VIP - Đã Tối Ưu Mọi Lỗi")
    OldSessionTime = isfile('.tdif-' .. game.Players.LocalPlayer.Name) and tonumber(readfile(".tdif-" .. game.Players.LocalPlayer.Name)) or 0
    repeat task.wait() game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", Config.Team) until game.Players.LocalPlayer.Character
    repeat wait() until game.Players.LocalPlayer.Character
    spawn(function()
        game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('NewIslandLOD', 9999):Destroy()
        game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('IslandLOD', 9999):Destroy()
    end)
    local J_arr = {'RawConstants', "Utilly", "QuestManager", 'SpawnRegionLoader', 'TweenController', "AttackController", 'CombatController', 'FunctionsHandler', "Hooks", "Debug", "Hop", "Storage"}
    StartTick = tick()
    repeat task.wait() until SetText
    SetText('MainTextLabel', 'Initalizing Script..')
    ScriptStorage = {IsInitalized = false, PlayerData = {}, Melees = {}, CurrentMeleeData = {}, Enemies = {}, Tools = {}, Backpack = {}, IgnoreStoreFruits = {}, Connections = {LocalPlayer = {}}, Task = {}, Tracebacks = {}, TaskController = {}, TracebackUpdater = {}, Interface = W, NPCs = {}, Map = {}}
    Players = game.Players
    LocalPlayer = Players.LocalPlayer
    Character = Players.LocalPlayer.Character
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
    function CreateTraceback(J_t, W_m) table.insert(ScriptStorage.Tracebacks, (GetCurrentDateTime() .. ' ( ' .. DispTime(os.time() - InitTime, true) .. ' ) after execution | ' .. J_t .. " | " .. W_m)) end
    function SetTask(J_t, W_m)
        if ScriptStorage.Task[J_t] == W_m then return end
        local a_m = {MainTask = "Task1", SubTask = 'Task2'}
        if a_m[J_t] then if SetText then SetText(a_m[J_t], J_t .. ' : ' .. W_m) end end
        ScriptStorage.Task[J_t] = W_m
        ScriptStorage.Task[J_t .. '-d'] = os.time()
    end
    Remotes = {}
    BindedMeleeNPCNames = {BlackLeg = 'Dark Step Teacher', Electro = "Mad Scientist", FishmanKarate = "Water Kung-fu Teacher", DeathStep = "Phoeyu, the Reformed", SharkmanKarate = 'Sharkman Teacher', DragonTalon = "Uzoth", ElectricClaw = 'Previous Hero', Godhuman = "Ancient Monk"}
    local J_rem = {}
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
    Tasks = {}
    function AwaitUntilPlayerLoaded(W_p, a_v)
        repeat task.wait() until W_p.Character
        W_p.Character:WaitForChild('Humanoid')
        repeat task.wait() until W_p.Character.Humanoid.Health > 0
    end
    function AddPoint()
        local W_p = {}
        local a_s
        for h_i, h_v in pairs(LocalPlayer.Data.Stats:GetChildren()) do
            if h_v and h_v:FindFirstChild('Level') then W_p[h_v.Name] = h_v.Level.Value end
        end
        if W_p.Defense < MaxLevel and (W_p.Defense < (ScriptStorage.PlayerData.Level / 80) or MaxLevel - W_p.Melee < 100) then a_s = 'Defense'
        elseif W_p.Melee < MaxLevel then a_s = "Melee"
        else a_s = 'Sword' end
        Remotes.CommF_:InvokeServer("AddPoint", a_s, 999)
    end
    local W_c = {Currencies = {Level = "#00FF48", Beli = "#FF7800", Fragments = "#6C00FF"}, Races = {}}
    function RefreshPlayerData()
        for a_i, a_v in pairs(LocalPlayer.Data:GetChildren()) do pcall(function() ScriptStorage.PlayerData[a_v.Name] = a_v.Value end) end
        local a_s = ""
        for h_k, X_v in pairs(ScriptStorage.PlayerData) do
            local w_c = W_c.Currencies[h_k]
            if w_c then a_s = a_s .. '<font color="' .. w_c .. '">' .. h_k .. "</font>: " .. X_v .. ' ' end
        end
        if ScriptStorage.Interface then SetText('Currencies', a_s) end
    end
    function RefreshRace()
        local W_r, a_r = Remotes.CommF_:InvokeServer('Alchemist', "1"), Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
        ScriptStorage.PlayerData.RaceLevel = 1
        if LocalPlayer.Character:FindFirstChild("RaceTransformed") then ScriptStorage.PlayerData.RaceLevel = 4
        elseif a_r == -2.0 then ScriptStorage.PlayerData.RaceLevel = 3
        elseif W_r == -2.0 then ScriptStorage.PlayerData.RaceLevel = 2 end
    end
    function RefreshInventory()
        ScriptStorage.Backpack2 = {}
        for W_i, W_v in pairs(Remotes.CommF_:InvokeServer('getInventory')) do ScriptStorage.Backpack2[W_v.Name] = W_v end
        ScriptStorage.Backpack = ScriptStorage.Backpack2
    end
    function ResearchMoves(W_m)
        if W_m and tostring(W_m) == 'V' then
            if ScriptStorage.Connections.BurstCheck then
                ScriptStorage.Connections.BurstCheck:Disconnect()
                task.wait(1)
            end
            ScriptStorage.Connections.BurstCheck = W_m.Cooldown:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
                if EnablingBurstDebounce and os.time() - EnablingBurstDebounce < 10 then return end
                local a_sz = W_m.Cooldown.AbsoluteSize.X
                if a_sz < 3 then
                    EnablingBurstDebounce = os.time()
                    task.wait(5)
                    SendKey('V', 0)
                end
            end)
        end
    end
    function CheckMeleeBurstMove(W_t)
        if W_t.Name == "Black Leg" or W_t.Name == "Death Step" then
            local a_s = PlayerGui.Main.Skills:WaitForChild(W_t.Name, 9)
            ResearchMoves(a_s:WaitForChild("V"))
        end
    end
    function RefreshMelees(W_b)
        local a_s = ''
        for h_m, X_lv in pairs(ScriptStorage.Melees) do a_s = a_s .. h_m .. ": " .. X_lv .. " " end
        a_s = a_s == '' and '[0]' or a_s
        if W_b then return a_s end
        if ScriptStorage.Interface then SetText('Melees', a_s) end
    end
    function MeleeCheck(W_t)
        if W_t and typeof(W_t) == "Instance" and W_t:IsA("Tool") then
            if W_t.ToolTip == "Melee" then
                local lvlObj = W_t:FindFirstChild("Level")
                if lvlObj and lvlObj:IsA("ValueBase") then 
                    if ScriptStorage.Connections.Melees then ScriptStorage.Connections.Melees:Disconnect() end
                    ScriptStorage.CurrentMeleeData.Name = W_t.Name
                    pcall(function() ScriptStorage.Connections.Melees:Destroy() end)
                    ScriptStorage.Connections.Melees = lvlObj.Changed:Connect(function(a_v)
                        ScriptStorage.Melees[W_t.Name] = a_v
                        RefreshMelees()
                    end)
                    ScriptStorage.Melees[W_t.Name] = lvlObj.Value
                    RefreshMelees()
                end
            elseif string.find(tostring(W_t), "Fruit") then
                task.spawn(function()
                    if table.find(ScriptStorage.IgnoreStoreFruits, W_t:GetAttribute('OriginalName')) then return end
                    pcall(function() Remotes.CommF_:InvokeServer("StoreFruit", W_t:GetAttribute("OriginalName"), W_t) end)
                end)
            end
        end
    end
    
    SetText('MainTextLabel', 'Refreshing Player Data')
    MeleeCheck(LocalPlayer.Character:FindFirstChildOfClass('Tool'))
    RefreshPlayerData()
    function RegisterLocalPlayerEventsConnection()
        task.spawn(function()
            task.wait(6)
            if LocalPlayer.Character:FindFirstChild('HasBuso') then return end
            Remotes.CommF_:InvokeServer("Buso")
        end)
        for W_i, W_v in pairs(ScriptStorage.Connections.LocalPlayer) do pcall(function() W_v:Disconnect() end) end
        AwaitUntilPlayerLoaded(LocalPlayer)
        LocalPlayer:SetAttribute("IsAvailable", true)
        ScriptStorage.Connections.LocalPlayer["HealthCheck"] = LocalPlayer.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("Health"):Connect(function()
            local W_h = LocalPlayer.Character.Humanoid.Health
            LocalPlayer:SetAttribute("IsAvailable", W_h > 10)
            ScriptStorage.LocalPlayerHealth = W_h
        end)
        ScriptStorage.Connections.LocalPlayer['Melee'] = LocalPlayer.Character.ChildAdded:Connect(MeleeCheck)
        ScriptStorage.Connections.LocalPlayer['Fruit'] = LocalPlayer.Backpack.ChildAdded:Connect(MeleeCheck)
        table.foreach(LocalPlayer.Backpack:GetChildren(), function(W_i, W_v) MeleeCheck(W_v) end)
        LastIdleCheck = os.time()
        ScriptStorage.Connections.LocalPlayer.PositionChecker = LocalPlayer.Character.HumanoidRootPart:GetPropertyChangedSignal('CFrame'):Connect(function()
            if os.time() == LastIdleCheck then return end
            LastIdleCheck = os.time()
            if oldPos then
                if (LocalPlayer.Character.HumanoidRootPart.CFrame.p - oldPos).magnitude < 2 then return end
            end
            oldPos = (LocalPlayer.Character.HumanoidRootPart.CFrame.p)
            LastIdling = os.time()
        end)
        local W_p = LocalPlayer.Data:WaitForChild('Points')
        ScriptStorage.Connections.LocalPlayer.PointConnection = W_p:GetPropertyChangedSignal('Value'):Connect(function()
            local W_p2 = LocalPlayer.Data:WaitForChild('Points')
            if OldPointValue == W_p2 then return end
            OldPointValue = W_p2
            AddPoint()
        end)
    end
    RegisterLocalPlayerEventsConnection(LocalPlayer)
    game.Players.LocalPlayer.CharacterAdded:Connect(function(W_c)
        RegisterLocalPlayerEventsConnection(LocalPlayer)
    end)
    task.spawn(function()
        task.wait(3)
        if LocalPlayer.Character:FindFirstChild("HasBuso") then return end
        Remotes.CommF_:InvokeServer("Buso")
    end)
    MeleesTable = {"Black Leg", 'Electro', "Fishman Karate", "Dragon Claw", "Superhuman", 'Death Step', 'Electric Claw', 'Sharkman Karate', 'Dragon Talon', "Godhuman", "SanguineArt"}
    MeleesId = {'BlackLeg', "Electro", 'FishmanKarate', "DragonClaw", "Superhuman", 'DeathStep', "ElectricClaw", "SharkmanKarate", 'DragonTalon', 'Godhuman', "SanguineArt"}
    MeleePrices = {["Black Leg"] = {Price = {Beli = 150000}, Id = "BlackLeg", NextLevelRequirement = 400, position = CFrame.new(), Requirements = function() return true end, Buy = function(W_b) return BuyMelee("BlackLeg", W_b, 'Dark Step Teacher') end}, ['Electro'] = {Price = {Beli = 500000}, Id = 'Electro', NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W_b) return BuyMelee('Electro', W_b, "Mad Scientist") end}, ['Fishman Karate'] = {Price = {Beli = 750000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W_b) return BuyMelee('FishmanKarate', W_b, 'Water Kung-fu Teacher') end}, ['Dragon Claw'] = {Price = {Fragments = 1500}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W_b) return BuyMelee("DragonClaw", W_b, "Sabi") end}, ["Superhuman"] = {Price = {Beli = 3000000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W_b) return BuyMelee("Superhuman", W_b, "Martial Arts Master") end}, ["Death Step"] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W_b) return BuyMelee("DeathStep", W_b, "Phoeyu, the Reformed") end}, ['Sharkman Karate'] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W_b) return BuyMelee('SharkmanKarate', W_b, 'Sharkman Teacher') end}, ['Electric Claw'] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W_b) return BuyMelee("ElectricClaw", W_b, 'Previous Hero') end}, ['Dragon Talon'] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W_b) return BuyMelee("DragonTalon", W_b, 'Uzoth') end}, ["Godhuman"] = {Price = {Beli = 5000000, Fragments = 5000}, NextLevelRequirement = 350, Requirements = function() return true end, Buy = function(W_b) return BuyMelee("Godhuman", W_b, 'Ancient Monk') end}}
    DropItemData = {['Buddy Sword'] = {Sea = 3, Level = 1500, Boss = "Cake Queen"}, ['Canvander'] = {Sea = 3, Level = 1500, Boss = "Beautiful Pirate"}, ['Twin Hooks'] = {Sea = 3, Level = 1500, Boss = 'Captain Elephant'}, ["Venom Bow"] = {Sea = 3, Level = 1500, Boss = "Hydra Leader"}}
    GodhumanMaterials = {['Fish Tail'] = {20, 3, {"Fishman Raider", "Fishman Captain"}, {'DeepForestIsland3', 1, 1775, 'Turtle Adventure Quest Giver'}}, ['Dragon Scale'] = {10, 3, {"Dragon Crew Warrior", "Dragon Crew Archer"}, {'DragonCrewQuest', 1, 1575, 'Dragon Crew Quest Giver'}}, ["Magma Ore"] = {20, 2, {'Magma Ninja'}, {"FireSideQuest", 1, 1100, "Fire Quest Giver"}}, ["Mystic Droplet"] = {10, 2, {'Sea Soldier', 'Water Fighter'}, {'ForgottenQuest', 2, 1425, 'Forgotten Quest Giver'}}}
    SeaIndexes = {"Main", "Dressrosa", "Zou"}
    TasksOrder = {"AutoHopBoss", "SpecialBossesTask", "SoulGuitar", "CursedDualKatana", "Tushita", "Yama", "RaidController", "Trevor", "UtillyItemsActivitation", "ColosseumPuzzle", "Wenlocktoad", "ThirdSeaPuzzle", "PirateRaid", "SecondSeaPuzzle", "ThirdSeaPuzzle", "CollectDrops", "BossesTask", "ExpRedeem", "LevelFarm"}
    MaxLevel = 2800
    placeId = game.PlaceId
    if placeId == 85211729168715 or placeId == 2753915549 then
        Sea = 'Main'
        SeaIndex = 1
    elseif placeId == 79091703265657 or placeId == 4442272183 then
        Sea = "Dressrosa"
        SeaIndex = 2
    elseif placeId == 100117331123089 or placeId == 7449423635 then
        Sea = "Zou"
        SeaIndex = 3
    end
    Portals = ({{Vector3.new(-7894.6201171875, 5545.49169921875, -380.246346191406), Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625), Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875), Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)}, {Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312), Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625), Vector3.new(923.21252441406, 126.9760055542, 32852.83203125), Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)}, {}})[SeaIndex]
    BossesOrder = {"Awakened Ice Admiral", "Tide Keeper", 'Deandre', "Urban", "Diablo", 'Soul Reaper', 'Cake Prince'}
    BossesOrderLevel = {['Awakened Ice Admiral'] = 700, ['Tide Keeper'] = 700, ['Deandre'] = 1500, ['Urban'] = 1500, ['Diablo'] = 1500, ["Cake Prince"] = 1500, ['Soul Reaper'] = 1500}
    BossesOrderWL = {["Deandre"] = 1500, ["Urban"] = 1500, ["Diablo"] = 1500, ['Cake Prince'] = 1500, ['Don Swan'] = 1100, ["Awakened Ice Admiral"] = 700, ['Tide Keeper'] = 700}
    SpecialBossesOrder = {["Core"] = 700, ['Darkbeard'] = 700}
    BlankTablets = {"Segment6", 'Segment2', 'Segment8', "Segment9", 'Segment5'}
    Trophy = {["Segment1"] = "Trophy1", ["Segment3"] = "Trophy2", ['Segment4'] = "Trophy3", ['Segment7'] = "Trophy4", ["Segment10"] = "Trophy5"}
    Pipes = {['Part1'] = 'Really black', ['Part2'] = 'Really black', ["Part3"] = "Dusty Rose", ['Part4'] = "Storm blue", ['Part5'] = 'Really black', ['Part6'] = "Parsley green", ["Part7"] = 'Really black', ["Part8"] = "Dusty Rose", ["Part9"] = 'Really black', ['Part10'] = 'Storm blue'}
    function GenerateUUID()
        local W_u = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
        return string.gsub("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx", '[xy]', function(W_x)
            local W_v = (W_x == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
            return string.format('%x', W_v)
        end)
    end
    function CheckIsPlayerAlive(W_p) W_p = W_p or LocalPlayer; return W_p and W_p.Character and W_p.Character.Humanoid and W_p.Character.HumanoidRootPart and W_p.Character.Head and W_p.Character.Humanoid.Health > 0 end
    function ConvertTo(W_t, a_v) return W_t.new(a_v.X, a_v.Y, a_v.Z) end
    function CaculateDistance(W_c, a_c)
        if not W_c then return 0 end
        a_c = a_c or game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local h_v, X_v = ConvertTo(Vector3, W_c), ConvertTo(Vector3, a_c)
        return (h_v - X_v).magnitude
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
    function GetCurrentDateTime()
        local W_d = os.date("*t")
        local a_h = W_d.hour
        local h_m = W_d.min
        local X_d = W_d.day
        local w_mo = W_d.month
        local D_y = W_d.year
        local y_w = W_d.wday
        local W_s = string.format('%02d:%02d ', a_h, h_m)
        local a_ds = {'Sun', "Mon", 'Tue', "Wed", 'Thu', "Fri", 'Sat'}
        local h_ds = a_ds[y_w]
        local a_ms = {"Jan", "Feb", "Mar", 'Apr', "May", 'Jun', "Jul", 'Aug', 'Sep', "Oct", 'Nov', "Dec"}
        local y_ms = a_ms[w_mo]
        local a_f = string.format('%s, %s %d %d', h_ds, y_ms, X_d, D_y)
        return W_s .. a_f
    end
    function RandomArguments(...) local W_a = {...}; return W_a[math.random(0, #W_a)] end
    function RoundVector3Down(W_v) return Vector3.new(math.floor(W_v.X / 10) * 10, math.floor(W_v.Y / 10) * 10, math.floor(W_v.Z / 10) * 10) end
    local W_ang = 30
    lastChange = tick()
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
    function GetMeleeIdByName(W_n) for a_i, h_n in pairs(MeleesTable) do if h_n == W_n then return MeleesId[a_i] end end end
    function getpos(W_n)
        for a_i, a_v in pairs(game:GetService("ReplicatedStorage").NPCs:GetChildren()) do if a_v.Name == W_n then return a_v.HumanoidRootPart.CFrame end end
        for a_i, a_v in pairs(workspace.NPCs:GetChildren()) do if a_v.Name == W_n then return a_v.HumanoidRootPart.CFrame end end
    end
    function BuyMelee(W_i, a_b)
        if W_i == "DragonClaw" and workspace.NPCs:FindFirstChild('Sabi') then
            if a_b then
                if type(Remotes.CommF_:InvokeServer("BlackbeardReward", 'DragonClaw', '1') == 1) == "number" and Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1') == 1 == 1 and not table.find(J, W_i) then table.insert(J, W_i) end
                return Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
            end
            return Remotes.CommF_:InvokeServer('BlackbeardReward', "DragonClaw", '2')
        end
        if a_b then
            local a_r = Remotes.CommF_:InvokeServer('Buy' .. W_i, true)
            if type(a_r) == 'number' and not table.find(J, W_i) then table.insert(J, W_i) end
            return a_r == 1
        end
        return Remotes.CommF_:InvokeServer("Buy" .. W_i)
    end
    function SendKey(J_k, W_t)
        task.spawn(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true, J_k, false, game)
            task.wait(W_t)
            game:GetService('VirtualInputManager'):SendKeyEvent(false, J_k, false, game)
        end)
    end
    function FruitIdToName(J_i)
        local W_m = string.match(J_i, "((%u)[^%-]+)$")
        return W_m .. ' Fruit'
    end
    function Split(J_s, W_d)
        if W_d == nil then W_d = "%s" end
        local a_t = {}
        for h_p in string.gmatch(J_s, '([^' .. W_d .. ']+)') do table.insert(a_t, h_p) end
        return a_t
    end
    function FruitNameToId(J_n)
        local W_s = Split(J_n)[1]
        return W_s .. '-' .. W_s
    end
	FunctionsHandler.LevelFarm:RegisterMethod("Start", function(floor)
    FunctionsHandler.LevelFarm:Register()
        if SeaIndex == 3 then
            if (ScriptStorage.Backpack.Bones or {Count = 0}).Count >= 50 then
                if os.time() > (BonesCooldown or 0) then
                    local status, _, _, timeStr = Remotes.CommF_:InvokeServer("Bones", 'Check')
                    if tonumber(status or 1) == 0 then
                        local splitTime = Split(timeStr, ":")
                        local cd = ((tonumber(splitTime[1]) * 60) + tonumber(splitTime[2])) * 60
                        BonesCooldown = os.time() + cd
                    else 
                        Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1) 
                    end
                end
            end
        end
        local currentLevel = ScriptStorage.PlayerData.Level
        if GodHumanFlag then
            local targetMat, matConfig = (function()
                for matName, cfg in pairs(GodhumanMaterials) do
                    if (ScriptStorage.Backpack[matName] or {Count = 0}).Count < cfg[1] then 
                        return matName, cfg 
                    end
                end
            end)()
            if targetMat then
                if SeaIndex ~= matConfig[2] then
                    SetTask("MainTask", 'Sea Travel | Farming Godhuman | To Sea ' .. matConfig[2])
                    Remotes.CommF_:InvokeServer("Travel" .. SeaIndexes[matConfig[2]]) 
                    return
                end
                if currentLevel >= matConfig[4][3] then
                    local currentQuest, questTitle = J_quest:GetCurrentClaimQuest()
                    if currentQuest then
                        if not string.find(questTitle, matConfig[3][1]) then 
                            J_quest:AbandonQuest()
                        else 
                            CombatController.Attack(matConfig[3]) 
                            return 
                        end
                    else
                        local questNpc = ScriptStorage.NPCs[matConfig[4][4]]
                        if questNpc then 
                            TweenController.Create(questNpc:GetModelCFrame() + Vector3.new(0, 5, 3)) 
                            if CaculateDistance(questNpc) < 10 then 
                                task.wait(1) 
                            else 
                                return 
                            end 
                        end
                        J_quest:StartQuest(matConfig[4][1], matConfig[4][2]) 
                        return
                    end
                end
                CombatController.Attack(matConfig[3])
                return
            end
            Remotes.CommF_:InvokeServer("BuyGodhuman", true) 
            Remotes.CommF_:InvokeServer("BuyGodhuman") 
            GodHumanFlag = false 
            return true
        end
        if os.time() - LastTravel > 60 then
            LastTravel = os.time()
            if currentLevel >= 1500 and SeaIndex == 2 then
                if not Services.Workspace.Map.IceCastle.Hall.LibraryDoor:FindFirstChild('PhoeyuDoor') then
                    SetTask('MainTask', 'Sea Travel | Teleporting to Third Sea') 
                    Remotes.CommF_:InvokeServer("TravelZou")
                end
            elseif currentLevel >= 700 and SeaIndex == 1 then
                SetTask('MainTask', 'Sea Travel | Teleporting to Second Sea') 
                Remotes.CommF_:InvokeServer("TravelDressrosa")
            end
        end
        if ScriptStorage.Tools['Sweet Chalice'] or (currentLevel == MaxLevel and (ScriptStorage.Backpack.Bones or {Count = 0}).Count >= 500) then
            SetTask("MainTask", "VIP Auto | Dough King & Cake Prince")
            if (ScriptStorage.Tools["Sweet Chalice"]) then
                task.spawn(function()
                    while not ScriptStorage.Enemies['Dough King'] and task.wait() and ScriptStorage.Tools["Sweet Chalice"] do
                        Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    end
                end)
            end
            CombatController.Attack({"Head Baker", 'Baking Staff', 'Cookie Crafter', "Cake Guard"})
            if currentLevel >= 2200 then
                local currentQ, qTitle = J_quest:GetCurrentClaimQuest()
                if currentQ then 
                    if not string.find(qTitle, "Cookie") then 
                        J_quest:AbandonQuest() 
                    else 
                        Remotes.CommF_:InvokeServer('CakePrinceSpawner')
                        return 
                    end
                else
                    local npcCK = ScriptStorage.NPCs["Cake Quest Giver 1"]
                    if npcCK then 
                        TweenController.Create(npcCK:GetModelCFrame() + Vector3.new(0, 5, 3)) 
                        if CaculateDistance(npcCK) < 10 then 
                            task.wait(1) 
                        else 
                            return 
                        end 
                    end
                    J_quest:StartQuest("CakeQuest1", 1) 
                    return
                end
            end
            return
        end
        if currentLevel >= 2025 and (ScriptStorage.Backpack.Bones or {Count = 0}).Count < 500 then
            SetTask('MainTask', "Resource Farming | Bones Collection")
            local qName, qTitle = J_quest:GetCurrentClaimQuest()
            if qName then
                if not string.find(qTitle, 'Demonic') then 
                    J_quest:AbandonQuest()
                    return
                else 
                    CombatController.Attack({'Reborn Skeleton', "Living Zombie", "Demonic Soul", 'Posessed Mummy'})
                    return 
                end
            else
                local boneNpc = ScriptStorage.NPCs["Haunted Castle Quest Giver 2"]
                if boneNpc then 
                    TweenController.Create(boneNpc:GetModelCFrame() + Vector3.new(0, 5, 3))
                    if CaculateDistance(boneNpc) < 20 then 
                        task.wait(1) 
                    else 
                        return 
                    end
                end
                J_quest:StartQuest('HauntedQuest2', 1)
                return
            end
        end
        if floor == 1 then 
            SetTask('MainTask', 'Level Farming | Skip Mode | Floor 1')
            CombatController.Attack("Sky Bandit")
        elseif floor == 2 then 
            SetTask('MainTask', 'Level Farming | Skip Mode | Floor 2')
            CombatController.Attack('God\'s Guard')
        elseif floor == 4 then
            local monName, npcPos, questId, qIndex, questTitle = J_quest:GetCurrentQuest()
            local claimQuest, _ = J_quest:GetCurrentClaimQuest()
            if claimQuest then
                if claimQuest ~= questTitle then 
                    J_quest:AbandonQuest() 
                end
            else
                if not npcPos then 
                    J_quest:RefreshQuest() 
                    return 
                end
                TweenController.Create(npcPos + Vector3.new(0, 5, 3))
                SetTask("MainTask", "Level Farming | " .. monName .. " | Claiming Quest")
                if CaculateDistance(npcPos) > 10 then return end
                task.wait(2)
                LevelFarmTTL = 0
                J_quest:StartQuest(questId, qIndex)
                task.wait(1)
            end
            SetTask('MainTask', 'Level Farming | ' .. monName .. " | Defeating Enemies")
            CombatController.Attack(monName)
        end
    end)
    FunctionsHandler.LocalPlayerController:RegisterMethod("EquipTool", function(toolName)
        if not Humanoid then return end
        for _, item in pairs(LocalPlayer.Backpack:GetChildren()) do
            if item:IsA('Tool') and (item.Name == tostring(toolName) or item.ToolTip == toolName) then
                LocalPlayer.Character:WaitForChild('Humanoid'):EquipTool(item)
            end
        end
    end)
	FunctionsHandler.Saber:RegisterMethod('Refresh', function()
        if not Config.Items.Saber or ScriptStorage.Backpack.Saber or ScriptStorage.PlayerData.Level < 200 then return end
        local prog = Remotes.CommF_:InvokeServer('ProQuestProgress')
        local step
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
        FunctionsHandler.Saber:Set("CurrentProgressLevel", step)
        FunctionsHandler.Saber:Set('LastestRefreshSenque', os.time())
        return step
    end)
    FunctionsHandler.Saber:RegisterMethod('GetQuestplates', function()
        local cached = FunctionsHandler.Saber:Get("QuestplatesCache")
        if cached then return cached end
        local jungle = Services.Workspace.Map.Jungle
        local plateList = {}
        table.foreach(jungle.QuestPlates:GetChildren(), function(_, v) 
            if v:FindFirstChild("Button") then 
                table.insert(plateList, v) 
            end 
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
                for i = 1, 5 do 
                    Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", i) 
                end
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
            if not CheckFullMoon() then
                SetTask('MainTask', 'Soul Guitar | Hopping for Full Moon')
                Hop()
            end
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
            TTL9 = TTL9 or 0
            if os.time() ~= LastestTime1 then
                TTL9 = TTL9 + 1
                LastestTime1 = os.time()
            end
            if TTL9 > 60 then return Hop() end
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
                        if os.time() - stepStart > 60 then Hop() end
                        TweenController.Create(zombie.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0))
                        W.Attack()
                    end
                end
                while workspace.Enemies:FindFirstChild("Living Zombie") and task.wait() do
                    if os.time() - stepStart > 60 then Hop() end
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
            for pName, side in pairs(placards) do
                fireclickdetector(hauntMap[pName][side].ClickDetector)
            end
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
        if bp["Cursed Dual Katana"] or not bp.Tushita or (bp.Tushita.Mastery or 0) < 350 or not bp.Yama or (bp.Yama.Mastery or 0) < 350 then return end
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
        Hop()
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
    FunctionsHandler.AutoHopBoss:Register()
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
    notifier:RegisterNotifyListener("approaching", function() FunctionsHandler.PirateRaid:Set('Senque', os.time()) end)
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
        for w_id, D_data in pairs(h_list) do
            table.insert(X_filtered, {JobId = w_id, Players = D_data.Count, LastUpdate = D_data.__LastUpdate, Region = D_data.Region})
        end
        for h_i = 1, #X_filtered do
            while task.wait() do
                local h_rand = math.random(1, #X_filtered)
                ServerData = X_filtered[h_rand]
                if ServerData then
                    if not k_player_limit or ServerData.Players < k_player_limit then
                        if not W_target_region or ServerData.Region == W_target_region then
                            break
                        end
                    end
                end
            end
        end
        game:GetService("ReplicatedStorage"):WaitForChild('__ServerBrowser'):InvokeServer("teleport", ServerData.JobId)
    end
    LowHop = function()
        local k_server_ids = {}
        local W_api_url = 'https://games.roblox.com/v1/games/' .. game.PlaceId .. '/servers/Public?sortOrder=Asc&limit=100&excludeFullGames=true'
        local h_raw = game:HttpGet(W_api_url)
        local h_decoded = game:GetService("HttpService"):JSONDecode(h_raw)
        if h_decoded and h_decoded.data then
            for _, W_srv in next, h_decoded.data do
                if type(W_srv) == "table" and tonumber(W_srv.playing) and tonumber(W_srv.maxPlayers) and W_srv.playing < 5 and W_srv.id ~= game.JobId then
                    table.insert(k_server_ids, 1, W_srv.id)
                end
            end
        end
        if #k_server_ids > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, k_server_ids[math.random(1, #k_server_ids)], game.Players.LocalPlayer)
        end
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
        if ScriptStorage.PlayerData.Level >= 2800 then
            SetText('SubTask', "HoangPhucHub: Đã Max 2800 - Đang rình Boss tại Mansion")
            local mansion_pos = CFrame.new(-12464, 332, -7254)
            if CaculateDistance(mansion_pos) > 30 and not MonResult then
                TweenController.Create(mansion_pos)
                return
            end
        end
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
                        return
                    end
                end
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
                if ScriptStorage.Interface then
                    SetText('LiveTime', "Tổng thời gian: " .. DispTime(total, true) .. ' | Phiên này: ' .. DispTime(elapsed, true))
                end
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
        pcall(function() FunctionsHandler.MeleesController.Methods.Start:Call() end)
        local success, err = xpcall(RefreshTasksData, debug.traceback)
        if not success and err then
            warn("HoangPhucHub Error: ", err)
        end
    end
end
hoangtuveu()
