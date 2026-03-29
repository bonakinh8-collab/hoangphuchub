Config = {
    Team = "Pirates",
    Configuration = {
        HopWhenIdle = true,
        AutoHop = true,
        AutoHopDelay = 60 * 60,
        FpsBoost = false,
        blackscreen = true
    },
    Items = {
        AutoFullyMelees = false,
        Saber = false,
        CursedDualKatana = false, -- Đã tắt CDK tạm thời
        SoulGuitar = false,
        RaceV2 = false
    },
    Settings = {
        StayInSea2UntilHaveDarkFragments = false
    }
}

function hoangtuveu()
    local J = {'Task1', 'Task2', "Currencies", 'Melees', 'LiveTime', 'DebugLine'}
    local W = {Instances = {}}
    local K = true
    local a = false
    local h = game.Players.LocalPlayer
    repeat
        task.wait()
    until game.CoreGui
    local h = Instance.new('ScreenGui')
    local X = Instance.new('TextLabel')
    local w = Instance.new("UIStroke")
    local w = Instance.new('UIStroke')
    local w = Instance.new("TextLabel")
    local w = Instance.new("ImageButton")
    local D = Instance.new("Frame")
    local y = Instance.new("UIStroke")
    local L = Instance.new("TextLabel")
    local b = {}
    h.Name = "ARYA"
    h.Parent = game:GetService('CoreGui')
    h.Enabled = true
    h.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    h.IgnoreGuiInset = true

    if Config.Configuration.blackscreen then
        game:GetService('Lighting').ExposureCompensation = -math.huge
    end
    X.Name = 'NameHub'
    X.Parent = h
    X.AnchorPoint = Vector2.new(0.5, 0.5)
    X.Position = UDim2.new(0.5, 0, 0.3, 0)
    X.Size = UDim2.new(1, 0, 0, 80)
    X.BackgroundTransparency = 0.999
    X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    X.BorderColor3 = Color3.fromRGB(0, 0, 0)
    X.BorderSizePixel = 0
    X.Font = Enum.Font.FredokaOne
    X.Text = "ARYA"
    local C = Instance.new("UIStroke")
    C.Parent = X
    C.Color = Color3.fromRGB(0, 0, 0)
    C.Thickness = 1
    X.TextColor3 = Color3.fromRGB(9, 255, 248)
    X.TextSize = 50
    D.Name = 'ToggleContainer'
    D.Parent = h
    D.AnchorPoint = Vector2.new(1, 0)
    D.Position = UDim2.new(1, -20.0, 0, 20)
    D.Size = UDim2.new(0, 50, 0, 50)
    D.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    D.BackgroundTransparency = 0.2
    D.BorderColor3 = Color3.fromRGB(0, 0, 0)
    D.BorderSizePixel = 0
    D.ClipsDescendants = true
    local C = Instance.new('UICorner')
    C.CornerRadius = UDim.new(1, 0)
    C.Parent = D
    y.Parent = D
    y.Color = Color3.fromRGB(9, 255, 248)
    y.Thickness = 2
    w.Name = 'ToggleButton'
    w.Parent = D
    w.AnchorPoint = Vector2.new(0.5, 0.5)
    w.Position = UDim2.new(0.5, 0, 0.5, 0)
    w.Size = UDim2.new(1, 0, 1, 0)
    w.BackgroundTransparency = 1
    w.BorderSizePixel = 0
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
    local function C(p, o, z)
        local z = Instance.new("UIStroke")
        local v = Instance.new('TextLabel')
        v.Name = "hmph ><"
        v.Parent = h
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
        z.Parent = v
        z.Color = Color3.fromRGB(0, 0, 0)
        z.Thickness = 1
        return v
    end
    MainTextLabel = C(" ", UDim2.new(0.5, 0, 0.4, 0))
    W.Instances.MainTextLabel = MainTextLabel
    for p, o in pairs(J) do W.Instances[o] = C("...", UDim2.new(0.5, 0, 0.45 + (.05 * p), 0)) end
    local J = {}
    function J:Create()
        local C = Instance.new('Frame')
        C.Name = "BlurFrame"
        C.Parent = h
        C.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        C.BackgroundTransparency = 1
        C.BorderSizePixel = 0
        C.Size = UDim2.new(1, 0, 1, 0)
        C.Position = UDim2.new(0, 0, 0, 0)
        C.ZIndex = 0
        self.blurFrame = C
        self.blurIntensity = 0
        return self
    end
    function J:SetIntensity(C)
        C = math.clamp(C, 0, 0.95)
        self.blurIntensity = C
        local p = game:GetService('TweenService')
        local o = TweenInfo.new(0.3, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out)
        local z = p:Create(self.blurFrame, o, {BackgroundTransparency = 1 - C})
        z:Play()
        if not self.blurEffect then
            self.blurEffect = Instance.new("BlurEffect")
            self.blurEffect.Name = 'CustomBlur'
            self.blurEffect.Parent = game.Lighting
            self.blurEffect.Enabled = true
        end
        local z = p:Create(self.blurEffect, o, {Size = C * 30})
        z:Play()
        for z, z in pairs(b) do
            if z and z.Parent then
                local v = p:Create(z, o, {BackgroundTransparency = z._originalTransparency + (C * 0.5)})
                v:Play()
            end
        end
    end
    function J:RegisterUI(C)
        if C and C:IsA('GuiObject') then
            C._originalTransparency = C.BackgroundTransparency
            table.insert(b, C)
        end
    end
    local b = J:Create()
    function SetText(J, C)
        task.spawn(function()
            local p = W.Instances[J]
            if not p then return end
            if not K then
                p.Text = C
                return
            end
            if p.Text == C then return end
            local J = game:GetService("TweenService")
            local o = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local z = J:Create(p, o, {TextTransparency = 1, TextStrokeTransparency = 1})
            z:Play()
            z.Completed:Wait()
            p.Text = C
            local C = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local o = J:Create(p, C, {TextTransparency = 0, TextStrokeTransparency = 0})
            o:Play()
        end)
    end
    local J = game:GetService("Lighting").ExposureCompensation
    function ToggleUI(J)
        a = J or not a
        local J = {X, MainTextLabel}
        for X, X in pairs(W.Instances) do table.insert(J, X) end
        local X = game:GetService("TweenService")
        local C = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut)
        if a then
            L.Text = ""
            local p = X:Create(L, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Rotation = 360})
            p:Play()
            p.Completed:Connect(function() L.Rotation = 0 end)
            for p, p in pairs(J) do
                p.TextTransparency = 1
                local o = X:Create(p, C, {TextTransparency = 0})
                if p:FindFirstChildOfClass('UIStroke') then
                    p:FindFirstChildOfClass('UIStroke').Transparency = 1
                    local z = X:Create(p:FindFirstChildOfClass('UIStroke'), C, {Transparency = 0})
                    z:Play()
                end
                o:Play()
            end
            b:SetIntensity(0.4)
        else
            L.Text = ''
            local p = X:Create(L, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Size = UDim2.new(0.3, 0, 0.3, 0)})
            p:Play()
            p.Completed:Connect(function()
                local p = X:Create(L, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0.7, 0, 0.7, 0)})
                p:Play()
            end)
            for p, p in pairs(J) do
                local J = X:Create(p, C, {TextTransparency = 1})
                if p:FindFirstChildOfClass('UIStroke') then
                    local o = X:Create(p:FindFirstChildOfClass("UIStroke"), C, {Transparency = 1})
                    o:Play()
                end
                J:Play()
            end
            b:SetIntensity(0)
        end
        K = a
    end
    function W.RegisterForBlur(J) b:RegisterUI(J) end
    w.MouseButton1Click:Connect(function() ToggleUI() end)
    w.MouseEnter:Connect(function()
        local J = game:GetService('TweenService')
        local X = function()
            local C = J:Create(D, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 55, 0, 55)})
            local p = J:Create(y, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(0, 255, 255), Thickness = 3})
            C:Play()
            p:Play()
        end
        X()
    end)
    w.MouseLeave:Connect(function()
        local J = game:GetService('TweenService')
        local X = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local w = J:Create(D, X, {Size = UDim2.new(0, 50, 0, 50)})
        local D = J:Create(y, X, {Color = Color3.fromRGB(9, 255, 248), Thickness = 2})
        w:Play()
        D:Play()
    end)
    function W.ToggleInterface(J)
        a = J
        local a = game:GetService('TweenService')
        local a = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        if J then
            h.Enabled = false
            L.Text = ""
            b:SetIntensity(0.4)
        else
            L.Text = ""
            b:SetIntensity(0)
        end
        K = J
    end
    local function J() end
    J()
    ToggleUI(true)
    W.SetText = SetText
    W.ToggleUI = ToggleUI
    W.BlurManager = b
    if not isfile("fluent.lua") then
        writefile('fluent.lua', game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))
    end
    local J = loadstring(readfile('fluent.lua'))()
    local K = Instance.new('Animation')
    K.AnimationId = 'http://www.roblox.com/asset/?id=1elutruahuabuahd'
    getgenv().alert = function(a, h)
        pcall(function() J:Notify({Title = a or '', Content = h or '', Duration = 5}) end)
    end
    alert("ARYA HUB", "Bản Clean by AI - Auto Farm Level")
    local J = 'https://files.lumitone.xyz/'
    pcall(function() r[3][r[2]] = os.time() end)
    OldSessionTime = isfile('.tdif-' .. game.Players.LocalPlayer.Name) and tonumber(readfile(".tdif-" .. game.Players.LocalPlayer.Name)) or 0
    repeat
        task.wait()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", Config.Team)
    until game.Players.LocalPlayer.Character
    alert("team assembled")
    repeat wait() until game.Players.LocalPlayer.Character
    spawn(function()
        game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('NewIslandLOD', 9999):Destroy()
        game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('IslandLOD', 9999):Destroy()
    end)
    alert('wait 1', 'ok')
    local J = {'RawConstants', "Utilly", "QuestManager", 'SpawnRegionLoader', 'TweenController', "AttackController", 'CombatController', 'FunctionsHandler', "Hooks", "Debug", "Hop", "Storage"}
    StartTick = tick()
    repeat
        task.wait()
    until SetText
    alert('load 2')
    SetText('MainTextLabel', 'Initalizing Script..')
    local J = "Rua_Hub/Blox_Fruit/Assets/"
    ScriptStorage = {IsInitalized = false, PlayerData = {}, Melees = {}, CurrentMeleeData = {}, Enemies = {}, Tools = {}, Backpack = {}, IgnoreStoreFruits = {}, Connections = {LocalPlayer = {}}, Task = {}, Tracebacks = {}, TaskController = {}, TracebackUpdater = {}, Interface = W, NPCs = {}, Map = {}}
    Players = game.Players
    LocalPlayer = Players.LocalPlayer
    Character = Players.LocalPlayer.Character
    Humanoid = Character:WaitForChild('Humanoid')
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    PlayerGui = LocalPlayer:WaitForChild('PlayerGui', 10)
    Lighting = game:GetService('Lighting')
    Services = {}
    setmetatable(Services, {__index = function(J, J) return game:GetService(J) end})
    setmetatable(ScriptStorage.Enemies, {__index = function(J, J) return Services.Workspace.Enemies:FindFirstChild(J) or Services.ReplicatedStorage:FindFirstChild(J) end})
    setmetatable(ScriptStorage.Map, {__index = function(J, J) return Services.Workspace.Map:FindFirstChild(J) or Services.Workspace:FindFirstChild(J) end})
    setmetatable(ScriptStorage.Tools, {__index = function(J, J) return LocalPlayer.Character:FindFirstChild(J) or LocalPlayer.Backpack:FindFirstChild(J) end})
    setmetatable(ScriptStorage.NPCs, {__index = function(J, J) if not J then return end; return workspace.NPCs:FindFirstChild(J) or game.ReplicatedStorage.NPCs:FindFirstChild(J) end})
    function CreateTraceback(J, W) table.insert(ScriptStorage.Tracebacks, (GetCurrentDateTime() .. ' ( ' .. DispTime(os.time() - r[3][r[2]], true) .. ' ) after execution | ' .. J .. " | " .. W)) end
    function SetTask(J, W)
        if ScriptStorage.Task[J] == W then return end
        local a = {MainTask = "Task1", SubTask = 'Task2'}
        if a[J] then if SetText then SetText(a[J], J .. ' : ' .. W) end end
        ScriptStorage.Task[J] = W
        ScriptStorage.Task[J .. '-d'] = os.time()
    end
    Remotes = {}
    BindedMeleeNPCNames = {BlackLeg = 'Dark Step Teacher', Electro = "Mad Scientist", FishmanKarate = "Water Kung-fu Teacher", DeathStep = "Phoeyu, the Reformed", SharkmanKarate = 'Sharkman Teacher', DragonTalon = "Uzoth", ElectricClaw = 'Previous Hero', Godhuman = "Ancient Monk"}
    local J = {}
    setmetatable(Remotes, {__index = function(W, W)
        if W ~= 'CommF_' then
            return Services.ReplicatedStorage.Remotes[W]
        end
        local W = {InvokeServer = function(a, ...)
            local a, h = ...
            if string.find(a, "Buy") == 1 and not h then
                local h = string.gsub(a, 'Buy', "")
                if BindedMeleeNPCNames then
                    if table.find(J, h) then
                        local a = ScriptStorage.NPCs[BindedMeleeNPCNames[h]]
                        if a then
                            local h = a.WorldPivot
                            if CaculateDistance(h) > 10 then
                                repeat
                                    wait(1)
                                    TweenController.Create(h.Position)
                                until CaculateDistance(h) < 10
                                task.wait(3)
                                Services.ReplicatedStorage.Remotes.CommF_:InvokeServer(...)
                            end
                        end
                    end
                end
            end
            return Services.ReplicatedStorage.Remotes.CommF_:InvokeServer(...)
        end}
        return W
    end})
    Tasks = {}
    function AwaitUntilPlayerLoaded(W, a)
        repeat task.wait() until W.Character
        W.Character:WaitForChild('Humanoid')
        repeat task.wait() until W.Character.Humanoid.Health > 0
    end
    function AddPoint()
        local W = {}
        local a
        for h, h in LocalPlayer.Data.Stats:GetChildren() do
            if h and h:FindFirstChild('Level') then W[h.Name] = h.Level.Value end
        end
        if W.Defense < MaxLevel and (W.Defense < (ScriptStorage.PlayerData.Level / 80) or MaxLevel - W.Melee < 100) then
            a = 'Defense'
        elseif W.Melee < MaxLevel then
            a = "Melee"
        else
            a = 'Sword'
        end
        Remotes.CommF_:InvokeServer("AddPoint", a, 999)
    end
    local W = {Currencies = {Level = "#00FF48", Beli = "#FF7800", Fragments = "#6C00FF"}, Races = {}}
    function RefreshPlayerData()
        for a, a in LocalPlayer.Data:GetChildren() do pcall(function() ScriptStorage.PlayerData[a.Name] = a.Value end) end
        local a = ""
        for h, X in ScriptStorage.PlayerData do
            local w = W.Currencies[h]
            if w then a = a .. '<font color="' .. w .. '">' .. h .. "</font>: " .. X .. ' ' end
        end
        if ScriptStorage.Interface then SetText('Currencies', a) end
    end
    function RefreshRace()
        local W, a = Remotes.CommF_:InvokeServer('Alchemist', "1"), Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
        ScriptStorage.PlayerData.RaceLevel = 1
        if LocalPlayer.Character:FindFirstChild("RaceTransformed") then
            ScriptStorage.PlayerData.RaceLevel = 4
        elseif a == -2.0 then
            ScriptStorage.PlayerData.RaceLevel = 3
        elseif W == -2.0 then
            ScriptStorage.PlayerData.RaceLevel = 2
        end
    end
    function RefreshInventory()
        ScriptStorage.Backpack2 = {}
        for W, W in Remotes.CommF_:InvokeServer('getInventory') do ScriptStorage.Backpack2[W.Name] = W end
        ScriptStorage.Backpack = ScriptStorage.Backpack2
    end
    function ResearchMoves(W)
        if W and tostring(W) == 'V' then
            if ScriptStorage.Connections.BurstCheck then
                ScriptStorage.Connections.BurstCheck:Disconnect()
                task.wait(1)
            end
            ScriptStorage.Connections.BurstCheck = W.Cooldown:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
                if EnablingBurstDebounce and os.time() - EnablingBurstDebounce < 10 then return end
                local a = W.Cooldown.AbsoluteSize.X
                if a < 3 then
                    EnablingBurstDebounce = os.time()
                    task.wait(5)
                    SendKey('V', 0)
                end
            end)
        end
    end
    function CheckMeleeBurstMove(W)
        if W.Name == "Black Leg" or W.Name == "Death Step" then
            local a = PlayerGui.Main.Skills:WaitForChild(W.Name, 9)
            ResearchMoves(a:WaitForChild("V"))
        end
    end
    function RefreshMelees(W)
        local a = ''
        for h, X in ScriptStorage.Melees do a = a .. h .. ": " .. X .. " " end
        a = a == '' and '[0]' or a
        if W then return a end
        if ScriptStorage.Interface then SetText('Melees', a) end
    end
    function MeleeCheck(W)
        if W and typeof(W) == "Instance" and W:IsA("Tool") then
            if W.ToolTip == "Melee" then
                if ScriptStorage.Connections.Melees then ScriptStorage.Connections.Melees:Disconnect() end
                ScriptStorage.CurrentMeleeData.Name = W.Name
                pcall(function() ScriptStorage.Connections.Melees:Destroy() end)
                ScriptStorage.Connections.Melees = W.Level.Changed:Connect(function(a)
                    ScriptStorage.Melees[W.Name] = a
                    RefreshMelees()
                end)
                ScriptStorage.Melees[W.Name] = W.Level.Value
                RefreshMelees()
            elseif string.find(tostring(W), "Fruit") then
                task.spawn(function()
                    if table.find(ScriptStorage.IgnoreStoreFruits, W:GetAttribute('OriginalName')) then return end
                    local a = Remotes.CommF_:InvokeServer("StoreFruit", W:GetAttribute("OriginalName"), W)
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
        for W, W in ScriptStorage.Connections.LocalPlayer do pcall(function() W:Disconnect() end) end
        AwaitUntilPlayerLoaded(LocalPlayer)
        LocalPlayer:SetAttribute("IsAvailable", true)
        ScriptStorage.Connections.LocalPlayer["HealthCheck"] = LocalPlayer.Character:WaitForChild("Humanoid"):GetPropertyChangedSignal("Health"):Connect(function()
            local W = LocalPlayer.Character.Humanoid.Health
            LocalPlayer:SetAttribute("IsAvailable", W > 10)
            ScriptStorage.LocalPlayerHealth = W
        end)
        ScriptStorage.Connections.LocalPlayer['Melee'] = LocalPlayer.Character.ChildAdded:Connect(MeleeCheck)
        ScriptStorage.Connections.LocalPlayer['Fruit'] = LocalPlayer.Backpack.ChildAdded:Connect(MeleeCheck)
        table.foreach(LocalPlayer.Backpack:GetChildren(), function(W, W) MeleeCheck(W) end)
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
        local W = LocalPlayer.Data:WaitForChild('Points')
        ScriptStorage.Connections.LocalPlayer.PointConnection = W:GetPropertyChangedSignal('Value'):Connect(function()
            local W = LocalPlayer.Data:WaitForChild('Points')
            if OldPointValue == W then return end
            OldPointValue = W
            AddPoint()
        end)
    end
    RegisterLocalPlayerEventsConnection(LocalPlayer)
    game.Players.LocalPlayer.CharacterAdded:Connect(function(W)
        RegisterLocalPlayerEventsConnection(LocalPlayer)
    end)
    task.spawn(function()
        task.wait(3)
        if LocalPlayer.Character:FindFirstChild("HasBuso") then return end
        Remotes.CommF_:InvokeServer("Buso")
    end)
    MeleesTable = {"Black Leg", 'Electro', "Fishman Karate", "Dragon Claw", "Superhuman", 'Death Step', 'Electric Claw', 'Sharkman Karate', 'Dragon Talon', "Godhuman", "SanguineArt"}
    MeleesId = {'BlackLeg', "Electro", 'FishmanKarate', "DragonClaw", "Superhuman", 'DeathStep', "ElectricClaw", "SharkmanKarate", 'DragonTalon', 'Godhuman', "SanguineArt"}
    MeleePrices = {["Black Leg"] = {Price = {Beli = 150000}, Id = "BlackLeg", NextLevelRequirement = 400, position = CFrame.new(), Requirements = function() return true end, Buy = function(W) return BuyMelee("BlackLeg", W, 'Dark Step Teacher') end}, ['Electro'] = {Price = {Beli = 500000}, Id = 'Electro', NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee('Electro', W, "Mad Scientist") end}, ['Fishman Karate'] = {Price = {Beli = 750000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee('FishmanKarate', W, 'Water Kung-fu Teacher') end}, ['Dragon Claw'] = {Price = {Fragments = 1500}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee("DragonClaw", W, "Sabi") end}, ["Superhuman"] = {Price = {Beli = 3000000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee("Superhuman", W, "Martial Arts Master") end}, ["Death Step"] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee("DeathStep", W, "Phoeyu, the Reformed") end}, ['Sharkman Karate'] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee('SharkmanKarate', W, 'Sharkman Teacher') end}, ['Electric Claw'] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee("ElectricClaw", W, 'Previous Hero') end}, ['Dragon Talon'] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee("DragonTalon", W, 'Uzoth') end}, ["Godhuman"] = {Price = {Beli = 5000000, Fragments = 5000}, NextLevelRequirement = 350, Requirements = function() return true end, Buy = function(W) return BuyMelee("Godhuman", W, 'Ancient Monk') end}}
    DropItemData = {['Buddy Sword'] = {Sea = 3, Level = 1500, Boss = "Cake Queen"}, ['Canvander'] = {Sea = 3, Level = 1500, Boss = "Beautiful Pirate"}, ['Twin Hooks'] = {Sea = 3, Level = 1500, Boss = 'Captain Elephant'}, ["Venom Bow"] = {Sea = 3, Level = 1500, Boss = "Hydra Leader"}}
    GodhumanMaterials = {['Fish Tail'] = {20, 3, {"Fishman Raider", "Fishman Captain"}, {'DeepForestIsland3', 1, 1775, 'Turtle Adventure Quest Giver'}}, ['Dragon Scale'] = {10, 3, {"Dragon Crew Warrior", "Dragon Crew Archer"}, {'DragonCrewQuest', 1, 1575, 'Dragon Crew Quest Giver'}}, ["Magma Ore"] = {20, 2, {'Magma Ninja'}, {"FireSideQuest", 1, 1100, "Fire Quest Giver"}}, ["Mystic Droplet"] = {10, 2, {'Sea Soldier', 'Water Fighter'}, {'ForgottenQuest', 2, 1425, 'Forgotten Quest Giver'}}}
    SeaIndexes = {"Main", "Dressrosa", "Zou"}
    TasksOrder = {"Tushita", 'Yama', "SpecialBossesTask", "RaidController", 'Trevor', "UtillyItemsActivitation", 'ColosseumPuzzle', "Wenlocktoad", "ThirdSeaPuzzle", "PirateRaid", "SecondSeaPuzzle", 'ThirdSeaPuzzle', "CollectDrops", 'BossesTask', "ExpRedeem", "LevelFarm"}
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
        local W = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
        return string.gsub("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx", '[xy]', function(W)
            local W = (Idx == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
            return string.format('%x', W)
        end)
    end
    function CheckIsPlayerAlive(W) W = W or LocalPlayer; return W and W.Character and W.Character.Humanoid and W.Character.HumanoidRootPart and W.Character.Head and W.Character.Humanoid.Health > 0 end
    function ConvertTo(W, a) return W.new(a.X, a.Y, a.Z) end
    function CaculateDistance(W, a)
        if not W then return 0 end
        a = a or game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        local h, X = ConvertTo(Vector3, W), ConvertTo(Vector3, a)
        return (h - X).magnitude
    end
    function DispTime(W, a)
        W = tonumber(W)
        if not W then return "[err]" end
        local h = math.floor(W / 86400)
        local X = math.floor(math.fmod(W, 86400) / 3600)
        local w = math.floor(math.fmod(W, 3600) / 60)
        local D = math.floor(math.fmod(W, 60))
        if a then return (h .. "day, " .. X .. "hrs, " .. w .. "min, " .. D .. 'sec.') end
        return (h .. 'day, ' .. X .. "hrs.")
    end
    function GetCurrentDateTime()
        local W = os.date("*t")
        local a = W.hour
        local h = W.min
        local X = W.day
        local w = W.month
        local D = W.year
        local y = W.wday
        local W = string.format('%02d:%02d ', a, h)
        local a = {'Sun', "Mon", 'Tue', "Wed", 'Thu', "Fri", 'Sat'}
        local h = a[y]
        local a = {"Jan", "Feb", "Mar", 'Apr', "May", 'Jun', "Jul", 'Aug', 'Sep', "Oct", 'Nov', "Dec"}
        local y = a[w]
        local a = string.format('%s, %s %d %d', h, y, X, D)
        return W .. a
    end
    function RandomArguments(...) local W = {...}; return W[math.random(0, #W)] end
    function RoundVector3Down(W) return Vector3.new(math.floor(W.X / 10) * 10, math.floor(W.Y / 10) * 10, math.floor(W.Z / 10) * 10) end
    local W = 30
    lastChange = tick()
    CaculateCircreDirection = function(a)
        if W > 50000 then W = 60 end
        W = W + ((tick() - lastChange) > .4 and 80 or 0)
        if tick() - lastChange > .4 then lastChange = tick() end
        local h = a + Vector3.new(math.cos(math.rad(W)) * 40, 0, math.sin(math.rad(W)) * 40)
        return CFrame.new(RoundVector3Down(h.p))
    end
    function GetMonAsSortedRange()
        local W = {}
        table.foreach(Services.Workspace.Enemies:GetChildren(), function(a, a)
            if a and a:FindFirstChild('Humanoid') and a:FindFirstChild("HumanoidRootPart") and a.Humanoid.Health > 0 then
                table.insert(W, a)
            end
        end)
        table.foreach(game.ReplicatedStorage:GetChildren(), function(a, a)
            if a and a:FindFirstChild('Humanoid') and a:FindFirstChild("HumanoidRootPart") and a.Humanoid.Health > 0 then
                table.insert(W, a)
            end
        end)
        table.sort(W, function(a, h) return CaculateDistance(a.HumanoidRootPart.CFrame) < CaculateDistance(h.HumanoidRootPart.CFrame) end)
        return W
    end
    function GetMeleeIdByName(W) for a, h in MeleesTable do if h == W then return MeleesId[a] end end end
    function getpos(W)
        for a, a in game:GetService("ReplicatedStorage").NPCs:GetChildren() do if a.Name == W then return a.HumanoidRootPart.CFrame end end
        for a, a in workspace.NPCs:GetChildren() do if a.Name == W then return a.HumanoidRootPart.CFrame end end
    end
    function BuyMelee(W, a)
        if W == "DragonClaw" and workspace.NPCs:FindFirstChild('Sabi') then
            if a then
                if type(Remotes.CommF_:InvokeServer("BlackbeardReward", 'DragonClaw', '1') == 1) == "number" and Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1') == 1 == 1 and not table.find(J, W) then table.insert(J, W) end
                return Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
            end
            return Remotes.CommF_:InvokeServer('BlackbeardReward', "DragonClaw", '2')
        end
        if a then
            local a = Remotes.CommF_:InvokeServer('Buy' .. W, true)
            if type(a) == 'number' and not table.find(J, W) then table.insert(J, W) end
            return a == 1
        end
        return Remotes.CommF_:InvokeServer("Buy" .. W)
    end
    function SendKey(J, W)
        (function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true, J, false, game)
            task.wait(W)
            game:GetService('VirtualInputManager'):SendKeyEvent(false, J, false, game)
        end)()
    end
    function FruitIdToName(J)
        local W = string.match(J, "((%u)[^%-]+)$")
        return W .. ' Fruit'
    end
    function Split(J, W)
        if W == nil then W = "%s" end
        local a = {}
        for h in string.gmatch(J, '([^' .. W .. ']+)') do table.insert(a, h) end
        return a
    end
    function FruitNameToId(J)
        local W = Split(J)[1]
        return W .. '-' .. W
    end
    local J = {CurrentLevel = 2, DoubleQuest = true, CurrentQuests = {}, BlacklistedQuestIds = {BartiloQuest = 1, CitizenQuest = 1, Trainees = 1, MarineQuest = 1, ImpelQuest = 1}}
    local W = require(game.ReplicatedStorage.GuideModule).Data.NPCList
    repeat task.wait() until game.Players.LocalPlayer.DataLoaded and ScriptStorage
    J.Quests = require(game.ReplicatedStorage.Quests)
    function J.Set(W, a, h) W[a] = h end
    function J.RefreshQuest(W)
        while not ScriptStorage.PlayerData.Level do
            task.wait(1)
        end
        local a = 0
        local h
        for X, w in J.Quests do
            if not J.BlacklistedQuestIds[X] then
                if (w[1].LevelReq >= a and w[1].LevelReq <= ScriptStorage.PlayerData.Level) then
                    a = w[1].LevelReq
                    h = w
                    W.CurrentQuestId = X
                    if ScriptStorage.PlayerData.Level >= 1500 and SeaIndex == 2 and X == 'ForgottenQuest' then break end
                end
            end
        end
        local a = h[#h]
        for X, X in a.Task do if X == 1 then table.remove(h, #h) end end
        for a, X in require(game.ReplicatedStorage.GuideModule).Data.NPCList do
            for w, w in X.Levels do if w == h[#h].LevelReq then W.CurrentNpc = a.CFrame end end
        end
        W.CurrentQuests = h
    end
    function J.GetCurrentQuest(W)
        local a = W.CurrentQuests[W.CurrentLevel] and W.CurrentQuests[W.CurrentLevel].LevelReq <= ScriptStorage.PlayerData.Level and W.CurrentLevel or 1
        for h in W.CurrentQuests[a].Task do return h, W.CurrentNpc, W.CurrentQuestId, a, W.CurrentQuests[a].Name end
    end
    function J.MarkAsCompleted(W) W.CurrentLevel = W.CurrentLevel == 2 and 1 or 2 end
    function J.AbandonQuest()
        Remotes.CommF_:InvokeServer("AbandonQuest")
    end
    function J.GetCurrentClaimQuest(W)
        local W = game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible and game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:gsub("%s*Defeat%s*(%d*)%s*(.-)%s*%b()", '%2')
        return (type(W) == "string" and string.gsub(W, "Military ", "Mil. ") or W), game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    end
    function J.StartQuest(W, a)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('ColorsDealer', "2")
        return Remotes.CommF_:InvokeServer("StartQuest", W, a)
    end
    
    ScriptStorage.MobRegions = {}
    for W, W in game:GetService("ReplicatedStorage").FortBuilderReplicatedSpawnPositionsFolder:GetChildren() do
        ScriptStorage.MobRegions[tostring(W)] = ScriptStorage.MobRegions[tostring(W)] or {}
        table.insert(ScriptStorage.MobRegions[tostring(W)], W.CFrame)
    end
    TweenController = {}
    local W = 0
    local W = {}
    for a, a in game.ReplicatedStorage.NPCs:GetChildren() do if a.Name == 'Set Home Point' then table.insert(W, a:GetModelCFrame()) end end
    function TweenController.Update()
        local a = game.Players.LocalPlayer.Character.HumanoidRootPart
        HumanoidRootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        if CaculateDistance(a.CFrame) > 250 then
            pcall(function() TweenInstance:Cancel() end)
            TweenDebounce = true
            a.CFrame = HumanoidRootPart.CFrame
            TweenDebounce = false
        end
        HumanoidRootPart.CFrame = a.CFrame + Vector3.new(0, 3, 0)
    end
    function GetPortal(a)
        local h, X = 9e9, nil
        for w, w in Portals do
            local D = CaculateDistance(w, a)
            if D < (CaculateDistance(a) - 300) and D < h then
                h = D
                X = w
            end
        end
        if X then
            Remotes.CommF_:InvokeServer("requestEntrance", X)
            return task.wait()
        end
    end
    function GetEntries(a)
        local h, X = 9e9, nil
        for w, w in W do
            local W = CaculateDistance(w, a)
            if W < (CaculateDistance(a) - 700) and W < h then
                h = W
                X = w
            end
        end
        if X then if os.time() - 0 > 30 then for W = 1, 10, 1 do task.wait() end end end
    end
    function TweenController.Tween2(W, a)
        TweenInstance2 = Services.TweenService:Create(W, TweenInfo.new(CaculateDistance(W.CFrame, a) / 50, Enum.EasingStyle.Linear), {CFrame = ConvertTo(CFrame, a) - Vector3.new(0, 0, 0)})
        TweenInstance2:Play()
    end
    function TweenController.Create(W)
        if not W or TweenDebounce then return end
        local a = typeof(W) ~= 'CFrame' and ConvertTo(CFrame, W) or W
        if TweenInstance then pcall(function() TweenInstance:Cancel() end) end
        for W, W in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do if W:IsA("BasePart") then W.CanCollide = false end end
        local W = game.Players.LocalPlayer.Character:WaitForChild("Head")
        if not W:FindFirstChild("eltrul") then
            local h = Instance.new('BodyVelocity')
            h.Name = "eltrul"
            h.MaxForce = Vector3.new(0, math.huge, 0)
            h.Velocity = Vector3.zero
            h.Parent = W
        end
        if CaculateDistance(a) > 500 then
            if SeaIndex == 3 and not ScriptStorage.Backpack['Valkyrie Helm'] then
            elseif SeaIndex ~= 3 then
                GetPortal(a)
            end
        end
        if CaculateDistance(Vector3.new(11256, -2138.0, 9888), a) < (CaculateDistance(a) - 700) and SeaIndex == 3 then
            local W = CFrame.new(-16269.0, 23, 1371)
            if CaculateDistance(W) > 60 then return TweenController.Create(W) and task.wait(1) end
            local W = require(game.ReplicatedStorage.Modules.Net)
            W:RemoteFunction('SubmarineWorkerSpeak'):InvokeServer('TravelToSubmergedIsland')
        end
        a = CFrame.new(a.Position)
        local W = CaculateDistance(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame, a)
        local h = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(h.x, a.y, h.z)
        TweenInstance = Services.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(W / (W < 18 and 25 or 330), Enum.EasingStyle.Linear), {CFrame = a})
        TweenInstance:Play()
    end
    function CheckFullMoon(k)
        if Lighting.Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=970914431' then return end
        if k then return true end
        return Lighting.ClockTime > 18 or Lighting.ClockTime < 5
    end
    FunctionsHandler.SoulGuitar:RegisterMethod("Refresh", function()
        if not Config.Items.SoulGuitar then return end
        if ScriptStorage.Backpack['Skull Guitar'] or not ScriptStorage.Backpack['Dark Fragment'] then return end
        if ScriptStorage.PlayerData.Level < 2300 then return end
        local k = (ScriptStorage.Backpack['Ectoplasm'] or {Count = 0})["Count"]
        local h = (ScriptStorage.Backpack["Bones"] or {Count = 0})['Count']
        if k < 250 then return 1 end
        if SeaIndex ~= 3 then return end
        SoulGuitarProcess = Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", 'Check')
        if not SoulGuitarProcess then
            Remotes.CommF_:InvokeServer("gravestoneEvent", 2)
            if not CheckFullMoon() then
                SetTask('MainTask', 'Hopping for full moon ( soul guitar )')
                Hop()
            end
            return 7
        end
        if not SoulGuitarProcess.Swamp then return 2
        elseif not SoulGuitarProcess.Gravestones then return 3
        elseif not SoulGuitarProcess.Ghost then return 4
        elseif not SoulGuitarProcess.Trophies then return 5
        elseif not SoulGuitarProcess.Pipes then return 6
        elseif h >= 500 and not ScriptStorage.Backpack["Skull Guitar"] then return 8 end
    end)
    FunctionsHandler.SoulGuitar:RegisterMethod('Start', function(k)
        if k == 7 then
            while CaculateDistance(CFrame.new(-8654.0, 140, 6167)) > 5 do
                task.wait()
                TweenController.Create(CFrame.new(-8654.0, 140, 6167))
            end
            SoulGuitarProcess = Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
        elseif k == 1 then
            if SeaIndex ~= 2 then
                SetTask("MainTask", 'Teleport to second sea to farm ectoplasm')
                return Remotes.CommF_:InvokeServer("TravelDressrosa")
            else
                SetTask("MainTask", "Farming ectoplasms for soul guitar")
                CombatController.Attack({"Ship Deckhand", "Ship Engineer", 'Ship Steward', "Ship Officer"})
                return
            end
        elseif k == 2 then
            TTL9 = TTL9 or 0
            if os.time() ~= LastestTime1 then
                TTL9 = TTL9 + 1
                LastestTime1 = os.time()
            end
            if TTL9 > 60 then return Hop() end
            local h = {}
            for X, X in Services.Workspace.Enemies:GetChildren() do
                if X.name == "Living Zombie" then table.insert(h, X) end
            end
            if #h < 6 then
                SetTask('MainTask', 'Soul Guitar task 1 / 5: waiting until entity spawn')
                TweenController.Create(ScriptStorage.MobRegions["Living Zombie"][1] + Vector3.new(0, 30, 0))
            else
                local X = os.time()
                for w, D in h do
                    while task.wait() and D.Humanoid.Health > 7000 do
                        SetTask('MainTask', 'Soul Guitar task 1 / 5: Hit mob ' .. w .. " / 6")
                        FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Melee')
                        if os.time() - X > 60 then Hop() end
                        TweenController.Create(D.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0))
                        W:Attack()
                    end
                end
                SetTask("MainTask", 'Soul Guitar task 1 / 5: Attack')
                while workspace.Enemies:FindFirstChild("Living Zombie") and task.wait() do
                    if os.time() - X > 60 then Hop() end
                    CombatController.Attack('Living Zombie')
                end
            end
        elseif k == 3 then
            local W = workspace.Map["Haunted Castle"]
            while CaculateDistance(CFrame.new(-8800.0, 178, 6033)) > 10 do
                task.wait()
                SetTask("MainTask", "Soul Guitar task 2 / 5: completing placards")
                TweenController.Create(CFrame.new(-8800.0, 178, 6033))
            end
            for h, X in {Placard1 = "Right", Placard2 = "Right", Placard3 = "Left", Placard4 = 'Right', Placard5 = 'Left', Placard6 = 'Left', Placard7 = "Left"} do
                fireclickdetector(W[h][X].ClickDetector)
            end
        elseif k == 4 then
            Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
        elseif k == 5 then
            if CaculateDistance(CFrame.new(-9530.0126953125, 6.104853630065918, 6054.83349609375)) > 30 then
                TweenController.Create(CFrame.new(-9530.0126953125, 6.104853630065918, 6054.83349609375))
            else
                local W = workspace.Map['Haunted Castle'].Tablet
                for h, h in pairs(BlankTablets) do
                    local X = W[h]
                    if X.Line.Rotation.Z ~= 0 then
                        repeat task.wait() fireclickdetector(X.ClickDetector) until X.Line.Rotation.Z == 0
                    end
                end
                for h, X in pairs(Trophy) do
                    local w = workspace.Map["Haunted Castle"].Trophies.Quest[X].Handle.CFrame
                    w = tostring(w)
                    w = w:split(", ")[4]
                    local X = "180"
                    if w == "1" or w == "-1" then X = "90" end
                    if not string.find(tostring(W[h].Line.Rotation.Z), X) then
                        repeat task.wait() fireclickdetector(W[h].ClickDetector) until string.find(tostring(W[h].Line.Rotation.Z), X)
                    end
                end
            end
        elseif k == 6 then
            for W, h in pairs(Pipes) do
                pcall(function()
                    local X = workspace.Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model[W]
                    if X.BrickColor.Name ~= h then
                        repeat task.wait() fireclickdetector(X.ClickDetector) until X.BrickColor.Name == h
                    end
                end)
            end
            Remotes.CommF_:InvokeServer('soulGuitarBuy')
        elseif k == 8 then
            Remotes.CommF_:InvokeServer('soulGuitarBuy')
        end
    end)
    FunctionsHandler.Tushita:RegisterMethod("Refresh", function()
        if ScriptStorage.Backpack.Tushita then return end
        if ScriptStorage.PlayerData.Level < 2000 then return end
        if SeaIndex ~= 3 then return end
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
            TweenController.Create(CFrame.new(5714, math.random(19, 21), 256))
            if ScriptStorage.Tools["Holy Torch"] then
                for W = 1, 5 do Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", W) end
                return true
            end
        elseif k == 2 then
            CombatController.Attack("Longma")
        end
    end)
    FunctionsHandler.CursedDualKatana:RegisterMethod("Refresh", function()
        if not Config.Items.CursedDualKatana then return end
        local k = ScriptStorage.Backpack
        if ScriptStorage.PlayerData.Level < 2200 then return end
        if k["Cursed Dual Katana"] or not k.Tushita or k.Tushita.Mastery < 350 or not k.Yama or k.Yama.Mastery < 350 then return end
        if SeaIndex ~= 3 then return end
        local k = CdkProgess or Remotes.CommF_:InvokeServer("CDKQuest", 'Progress') or 'uwu'
        if not k or k == 'uwu' then return end
        if workspace.Map.Turtle.Cursed:FindFirstChild("Breakable") then
            return {"break"}
        end
        local W = {Good = 'Tushita', Evil = 'Yama'}
        if k.Good == 4 and k.Evil == 4 then
            return {'burn 2'}
        end
        if k.Good == 3 or k.Evil == 3 then
            return {"burn"}
        end
        if k.Opened then
            for h, X in k do
                if h ~= 'Opened' and h ~= "Finished" and X < 3 then
                    ScriptStorage.CdkCache = {h, X + 1}
                    if not ScriptStorage.Tools[W[h]] then Remotes.CommF_:InvokeServer('LoadItem', W[h]) end
                    Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', h)
                    SetTask("MainTask", "Cursed Dual Katana - " .. tostring(W[h]) .. ' ' .. tostring(h))
                    return false
                end
            end
        end
        local k = ScriptStorage.CdkCache
        if not k then return end
        local W, h = k[1], k[2]
        if W == "Evil" and h == 3 then
            if not ScriptStorage.Enemies['Soul Reaper'] then
                ForceToRollBone = true
                return
            end
        elseif W == 'Good' then
            if h == 2 then
                SetTask("SubTask", 'CDK Quest / Waiting until pirate raid started')
                return
            elseif h == 3 and not ScriptStorage.Enemies["Cake Queen"] then
                Hop()
                SetTask('SubTask', "CDK Quest / Waiting until Cake Queen boss spawned")
                return
            end
        end
        return k
    end)
    FunctionsHandler.CursedDualKatana:RegisterMethod("GetHazeMon", function()
        local k = {}
        for W, W in LocalPlayer.QuestHaze:GetChildren() do if W.Value > 0 then table.insert(k, W) end end
        table.sort(k, function(W, h) return CaculateDistance(W:GetAttribute('Position')) < CaculateDistance(h:GetAttribute('Position')) end)
        return tostring(k[1])
    end)
    FunctionsHandler.CursedDualKatana:RegisterMethod("DoDimension", function(k)
        local W = string.gsub(k, ' ', "")
        local k = os.time()
        repeat
            task.wait()
            TweenController.Create(LocalPlayer.Character.HumanoidRootPart.CFrame)
            if os.time() - k > 60 then return end
        until os.time() - TorchEnabledTime < 10
        repeat
            task.wait()
            local k = workspace.Map:WaitForChild(W, 10)
            if k then
                for h, h in k:GetChildren() do
                    if h and string.find(h.Name, "Torch") and h:FindFirstChild('ProximityPrompt') and h.ProximityPrompt.Enabled then
                        LocalPlayer.Character.HumanoidRootPart.CFrame = h.CFrame
                        h.ProximityPrompt.HoldDuration = 0
                        task.wait(1)
                        local X = game:GetService("VirtualInputManager")
                        X:SendKeyEvent(true, "E", 0, game)
                        X:SendKeyEvent(false, "E", 0, game)
                        fireproximityprompt(workspace.Map:WaitForChild(W, 10):FindFirstChild(tostring(h)).ProximityPrompt)
                    end
                    for W, W in workspace.Enemies:GetChildren() do
                        local h = W:FindFirstChild("HumanoidRootPart")
                        local X = W:FindFirstChild("Humanoid")
                        if h and X and CaculateDistance(h.CFrame) < 1000 then CombatController.Attack(W.Name) end
                    end
                end
                ExitDoor = k:FindFirstChild("Exit")
                if ExitDoor then
                    PortalBrick = tostring(ExitDoor.BrickColor)
                end
            end
        until PortalBrick == 'Olive' or PortalBrick == "Cloudy grey"
        while os.time() - DoneCdkTick > 15 do
            TweenController.Create(ExitDoor.CFrame + Vector3.new(0, math.random(1, 5), 0))
            task.wait()
        end
        Hop()
    end)
    FunctionsHandler.CursedDualKatana:RegisterMethod("Start", function(k)
        local W = workspace.Map.Turtle.Cursed
        if k[1] == 'break' then
            TweenController.Create(workspace.Map.Turtle.Cursed.Breakable.CFrame)
            Remotes.CommF_:InvokeServer('CDKQuest', "OpenDoor")
            Remotes.CommF_:InvokeServer("CDKQuest", "OpenDoor", true)
            workspace.Map.Turtle.Cursed.Breakable:Destroy()
            CdkProgess = nil
            return
        end
        if k[1] == "burn 2" then
            if workspace.Map.Turtle.Cursed.Pedestal3.ProximityPrompt.Enabled then
                fireproximityprompt(workspace.Map.Turtle.Cursed.Pedestal3.ProximityPrompt)
                task.wait(1)
                pcall(function() LocalPlayer.Character.Humanoid.Health = 0 end)
                task.wait(10)
            else
                CDKAttempts = (CDKAttempts or 0) + 1
                TweenController.Create(CFrame.new(-12341.66796875, 603.3455810546875, -6550.6064453125))
                task.wait(5)
                pcall(function() LocalPlayer.Character.Humanoid.Health = 0 end)
                task.wait(5)
                if CDKAttempts > 5 then Hop() end
                CdkProgess = nil
            end
        elseif k[1] == "burn" then
            for W = 1, 3, 1 do
                local h = workspace.Map.Turtle.Cursed:FindFirstChild("Pedestal" .. W)
                if workspace.Map.Turtle.Cursed:FindFirstChild('Pedestal' .. W).ProximityPrompt.Enabled then
                    repeat
                        task.wait()
                        TweenController.Create(workspace.Map.Turtle.Cursed:FindFirstChild('Pedestal' .. W).CFrame)
                    until CaculateDistance(workspace.Map.Turtle.Cursed:FindFirstChild("Pedestal" .. W).CFrame) < 5
                    fireproximityprompt(workspace.Map.Turtle.Cursed:FindFirstChild("Pedestal" .. W).ProximityPrompt)
                    task.wait(3)
                    pcall(function() LocalPlayer.Character.Humanoid.Health = 0 end)
                end
                CdkProgess = nil
            end
        elseif k[1] == 'Evil' then
            if k[2] == 1 then
                local W = ScriptStorage.Enemies["Forest Pirate"]
                TweenController.Create((W and W.HumanoidRootPart.CFrame) or ScriptStorage.MobRegions["Forest Pirate"][0])
                CdkProgess = nil
            elseif k[2] == 2 then
                CombatController.Attack(FunctionsHandler.CursedDualKatana.Methods.GetHazeMon:Call())
                CdkProgess = nil
            elseif k[2] == 3 then
                while not (os.time() - TorchEnabledTime < 100 or not ScriptStorage.Enemies["Soul Reaper"]) do
                    task.wait()
                    if FunctionsHandler.RaidController.Methods.GetCurrentRaidIsland:Call() then
                        pcall(function() LocalPlayer.Character.Humanoid.Health = 0 end)
                    end
                    TweenController.Create(ScriptStorage.Enemies["Soul Reaper"]:GetModelCFrame())
                end
                if not ScriptStorage.Enemies["Soul Reaper"] then return end
                FunctionsHandler.CursedDualKatana.Methods.DoDimension.Callback("Hell Dimension")
                CdkProgess = nil
            end
        else
            if k[2] == 1 then
                for W, W in game.ReplicatedStorage.NPCs:GetChildren() do
                    if W.Name == "Luxury Boat Dealer" then
                        repeat
                            task.wait()
                            if os.time() - DoneCdkTick < 15 then return end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = (W:GetModelCFrame())
                            RealNPC = nil
                            for h, h in workspace.NPCs:GetChildren() do
                                if CaculateDistance(h:GetModelCFrame(), W:GetModelCFrame()) < 20 then
                                    RealNPC = h
                                    break
                                end
                            end
                        until CaculateDistance(W:GetModelCFrame()) < 5 and RealNPC
                        Remotes.CommF_:InvokeServer("CDKQuest", "BoatQuest", RealNPC)
                    end
                end
                CdkProgess = nil
            elseif k[2] == 3 then
                repeat
                    task.wait()
                    CombatController.Attack("Cage Queen")
                until os.time() - TorchEnabledTime < 10 or not ScriptStorage.Enemies['Cake Queen']
                TweenController.Create(LocalPlayer.Character.HumanoidRootPart.CFrame)
                FunctionsHandler.CursedDualKatana.Methods.DoDimension.Callback("Heavenly Dimension")
                CdkProgess = nil
            end
        end
    end)
    local k = {Listeners = {}}
    TorchEnabledTime = 0
    DoneCdkTick = 0
    getgenv().NotificationCallBack = (function(W)
        for h, X in k.Listeners do
            if string.find(string.lower(W), string.lower(h)) then X(W) end
        end
    end)
    function k:RegisterNotifyListener(W, h) k.Listeners[W] = h end
    k:RegisterNotifyListener('go!', function() LastRaidAlert = os.time() end)
    k:RegisterNotifyListener('raid', function() LastRaidAlert2 = os.time() end)
    k:RegisterNotifyListener("been spotted approaching", function() FunctionsHandler.PirateRaid:Set('Senque', os.time()) end)
    k:RegisterNotifyListener('job', function() FunctionsHandler.PirateRaid:Set('Senque', 0) end)
    k:RegisterNotifyListener("level", function() AddPoint() end)
    k:RegisterNotifyListener("torch", function() TorchEnabledTime = os.time() end)
    k:RegisterNotifyListener("scroll reacts", function() DoneCdkTick = os.time() end)
    k:RegisterNotifyListener("elite", function()
        FunctionsHandler.Yama:Set('EliteCount', Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
    end)
    k:RegisterNotifyListener('the raid with', function()
        if ScriptStorage.PlayerData.Level < MaxLevel then return end
        Remotes.CommF_:InvokeServer('Awakener', "Awaken")
    end)
    k:RegisterNotifyListener('quest completed', function()
        J:RefreshQuest()
        task.wait()
        if not J:GetCurrentClaimQuest() then J:MarkAsCompleted() end
    end)
    local k
    k = hookfunction(require(game.ReplicatedStorage.Notification).new, function(W, h)
        v21 = tostring(tostring(W or '') .. tostring(h or "")) or ""
        getgenv().NotificationCallBack(v21)
        return k(W, h)
    end)
    function IfTableHaveIndex(k) for W in k do return true end end
    function GetServers()
        if LastServersDataPulled then
            if os.time() - LastServersDataPulled < 60 then return CachedServers end
        end
        for k = 1, 100, 1 do
            local W = game:GetService("ReplicatedStorage"):WaitForChild("__ServerBrowser"):InvokeServer(k)
            if IfTableHaveIndex(W) then
                LastServersDataPulled = os.time()
                CachedServers = W
                return W
            end
        end
    end
    spawn(function()
        GetServers()
        while task.wait(180) do GetServers() end
    end)
    function Hop(k, W)
        local h = GetServers()
        local X = {}
        for w, D in h do
            table.insert(X, {JobId = w, Players = D.Count, LastUpdate = D.__LastUpdate, Region = D.Region})
        end
        for h = 1, #X do
            while task.wait() do
                local h = math.random(1, #X)
                ServerData = X[h]
                if ServerData then
                    if not k or ServerData.Players < k then
                        if not W or ServerData.Regoin == W then
                            break
                        end
                    end
                end
            end
        end
        game:GetService("ReplicatedStorage"):WaitForChild('__ServerBrowser'):InvokeServer("teleport", ServerData.JobId)
    end
    LowHop = function(k, k)
        local k = {}
        local W = game:HttpGet('https://games.roblox.com/v1/games/' .. game.PlaceId .. '/servers/Public?sortOrder=Asc&limit=100&excludeFullGames=true')
        local h = game:GetService("HttpService"):JSONDecode(W)
        if h and h.data then
            for W, W in next, h.data do
                if type(W) == "table" and tonumber(W.playing) and tonumber(W.maxPlayers) and W.playing < 5 and W.id ~= JobId then
                    table.insert(k, 1, W.id)
                end
            end
        end
        if #k > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, k[math.random(1, #k)], game.Players.LocalPlayer)
        end
    end
    Storage = {WRITE_DELAY = .5, Data = {}}
    Services = {}
    setmetatable(Services, {__index = function(k, k) return game:GetService(k) end})
    LocalPlayer = game.Players.LocalPlayer
    local k = ".storage_u_" .. tostring(LocalPlayer)
    function Decode(W) return Services.HttpService:JSONDecode(W) end
    function Encode(W) return Services.HttpService:JSONEncode(W) end
    function Storage.Set(W, h, X) W.Data[h] = X end
    function Storage.Get(W, h) return W.Data[h] end
    function Storage.Save(W) writefile(k, Encode(W.Data)) end
    if not isfile(k) then
        writefile(k, "{}")
        task.wait(1)
    end
    Storage.Data = {}
    pcall(function() Storage.Data = Decode(readfile(k) or '{}') end)
    spawn(function() while task.wait(Storage.WRITE_DELAY) do Storage:Save() end end)
    CreateTraceback('Initalize', "Initalizing script..")
    for k, k in getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.Settings.Buttons.Page2.FastModeButton.Activated) do
        k.Function()
    end
    local k = {}
    SetTask("MainTask", 'n/a')
    SetTask("SubTask", 'n/a')
    ParsingTimes = 0
    function RefreshTasksData()
        if _G.Stop then return end
        for W, W in TasksOrder do
            local h = FunctionsHandler[W]
            if not h.Initalized then
                if not k[W] then
                    k[W] = true
                end
            else
                local k = h.Methods.Refresh
                local X = h.Methods.Start
                if k then
                    local h = k:Call(ParsingTimes < 100)
                    ParsingTimes = ParsingTimes + 1
                    if h and ParsingTimes > 100 then
                        CurrentTask = CurrentTask ~= W
                        CurrentTask = W
                        ScriptStorage.Interface.SetText('DebugLine', W)
                        X:Call(h)
                        return
                    end
                end
            end
        end
    end
    SetText('MainTextLabel', "Refreshing Player Items..")
    AddPoint()
    J:RefreshQuest()
    RefreshInventory()
    Remotes.CommE.OnClientEvent:Connect(function(...)
        local J = {...}
        if string.find(J[1], 'Item') then RefreshInventory() end
    end)
    RefreshRace()
    a.LocalPlayer.Idled:Connect(function()
        Services.VirtualUser:CaptureController()
        Services.VirtualUser:ClickButton2(Vector2.new())
    end)
    SetText("MainTextLabel", 'Loaded In ' .. tick() - StartTick .. 'ms!')
    QueueList = {}
    function NearbyHopHandler()
        do return end
        if NearbyHopHandlerDebounce and os.time() - NearbyHopHandlerDebounce < 10 then return end
        NearbyHopHandlerDebounce = os.time()
        for J, J in a:GetPlayers() do
            local k = J and J.Character and J.Character:FindFirstChild("HumanoidRootPart") and J.Character.HumanoidRootPart.Position
            if k then
                local W = QueueList[J.Name]
                if not W then
                    QueueList[J.Name] = os.time()
                else
                    if os.time() - W > 30 then
                        if CaculateDistance(k) < 100 then
                            Hop('nearby plr')
                            task.wait(5)
                        else
                            QueueList[J.Name] = nil
                        end
                    end
                end
            end
        end
    end
    task.spawn(function()
        while task.wait() do
            if not _G.Stop then
                NearbyHopHandler()
                if LocalPlayer.Character:FindFirstChild('Humanoid') and LocalPlayer.Character.Humanoid.Sit then
                    LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
                end
                do
                    pcall(RefreshPlayerData)
                    local J = os.time() - r[3][r[2]]
                    local r = J + OldSessionTime
                    writefile(".tdif-" .. game.Players.LocalPlayer.Name, tostring(r))
                    if ScriptStorage.Interface then
                        SetText('LiveTime', "Total Elapsed Time: " .. DispTime(r, true) .. ' Elapsed Time: ' .. DispTime(J, true))
                    end
                    RefreshDebounce = os.time()
                end
            end
        end
    end)
    AddPoint()
    Remotes.CommF_:InvokeServer("Cousin", 'Buy')
    task.spawn(function()
        task.wait(Config.Configuration.AutoHopDelay)
        if not Config.Configuration.AutoHop then Hop('Autohop') end
    end)
    while task.wait() do
        if Config.Configuration.HopWhenIdle and LastIdling and os.time() - LastIdling > 300.0 then
            SetTask('MainTask', "Rejoinjng due idle in 10 min!")
            task.wait(1)
            while task.wait() do game:GetService('TeleportService'):Teleport(game.PlaceId) end
        end
        if not AnimationDelay or os.time() - AnimationDelay > 60 then
            AnimationDelay = os.time()
            LocalPlayer.Character:WaitForChild('Humanoid'):LoadAnimation(K):Play()
        end
        FunctionsHandler.MeleesController.Methods.Start:Call()
        local J, r = xpcall(RefreshTasksData, debug.traceback)
    end
end

hoangtuveu()
