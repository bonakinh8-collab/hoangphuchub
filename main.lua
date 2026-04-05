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
    h.Name = "HoangPhucHub"
    h.Parent = game:GetService('CoreGui')
    h.Enabled = true
    h.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    h.IgnoreGuiInset = true
    if Config.Configuration.blackscreen then
        game:GetService('Lighting').ExposureCompensation = -math.huge
    end
    X.Name = 'HoangPhucHub'
    X.Parent = h
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
    L.Text = "😀😶"
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
            local z = J:Create(p, o, { TextTransparency = 1, TextStrokeTransparency = 1 })
            z:Play()
            z.Completed:Wait()
            p.Text = C
            local C = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local o = J:Create(p, C, { TextTransparency = 0, TextStrokeTransparency = 0 })
            o:Play()
        end)
    end
    local J = game:GetService("Lighting").ExposureCompensation
    function ToggleUI(J)
        a = J or not a
        local J = { X, MainTextLabel }
        for X, X in pairs(W.Instances) do table.insert(J, X) end
        local X = game:GetService("TweenService")
        local C = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut)
        if a then
            L.Text = "😀😶"
            local p = X:Create(L, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Rotation = 360 })
            p:Play()
            p.Completed:Connect(function() L.Rotation = 0 end)
            for p, p in pairs(J) do
                p.TextTransparency = 1
                local o = X:Create(p, C, { TextTransparency = 0 })
                if p:FindFirstChildOfClass('UIStroke') then
                    p:FindFirstChildOfClass('UIStroke').Transparency = 1
                    local z = X:Create(p:FindFirstChildOfClass('UIStroke'), C, { Transparency = 0 })
                    z:Play()
                end
                o:Play()
            end
            b:SetIntensity(0.4)
        else
            L.Text = '😶'
            local p = X:Create(L, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In),
                { Size = UDim2.new(0.3, 0, 0.3, 0) })
            p:Play()
            p.Completed:Connect(function()
                local p = X:Create(L, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                    { Size = UDim2.new(0.7, 0, 0.7, 0) })
                p:Play()
            end)
            for p, p in pairs(J) do
                local J = X:Create(p, C, { TextTransparency = 1 })
                if p:FindFirstChildOfClass('UIStroke') then
                    local o = X:Create(p:FindFirstChildOfClass("UIStroke"), C, { Transparency = 1 })
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
            local C = J:Create(D, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                { Size = UDim2.new(0, 55, 0, 55) })
            local p = J:Create(y, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                { Color = Color3.fromRGB(0, 255, 255), Thickness = 3 })
            C:Play()
            p:Play()
        end
        X()
    end)
    w.MouseLeave:Connect(function()
        local J = game:GetService('TweenService')
        local X = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local w = J:Create(D, X, { Size = UDim2.new(0, 50, 0, 50) })
        local D = J:Create(y, X, { Color = Color3.fromRGB(9, 255, 248), Thickness = 2 })
        w:Play()
        D:Play()
    end)
    function W.ToggleInterface(J)
        a = J
        local a = game:GetService('TweenService')
        local a = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        if J then
            h.Enabled = false
            L.Text = "😀😶"
            b:SetIntensity(0.4)
        else
            L.Text = "😶"
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
        pcall(function() J:Notify({ Title = a or '', Content = h or '', Duration = 5 }) end)
    end
    alert("cac", "Endpoint reached")
    local J = 'https://files.lumitone.xyz/'
    pcall(function() r[3][r[2]] = os.time() end)
    OldSessionTime = isfile("HoangPhucHub/.tdif-" .. game.Players.LocalPlayer.Name) and 
    tonumber(readfile("HoangPhucHub/.tdif-" .. game.Players.LocalPlayer.Name)) or 0
    -- ================================================================
    -- BẢN VÁ V3: CHỜ GAME LOAD XONG 100% MỚI BẤM HẢI TẶC (CHỐNG KẸT)
    -- ================================================================
    local lplr = game:GetService("Players").LocalPlayer
    
    -- BƯỚC 1: Chờ an toàn cho đến khi cái bảng chọn phe thực sự load ra
    repeat 
        task.wait(1) 
    until lplr:FindFirstChild("PlayerGui") and lplr.PlayerGui:FindFirstChild("Main") and lplr.PlayerGui.Main:FindFirstChild("ChooseTeam")

    -- BƯỚC 2: Spam lệnh nhịp độ chậm (1 giây/lần) để Server không block
    while not lplr.Character or not lplr.Character:FindFirstChild("HumanoidRootPart") do
        task.wait(1)
        
        -- Gọi lệnh Server chuẩn
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
        end)
        
        -- Dự phòng: Ép click ẩn thẳng vào nút Pirates
        pcall(function()
            local btn = lplr.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.TextButton
            if btn and getconnections then
                for _, conn in pairs(getconnections(btn.Activated)) do conn.Function() end
                for _, conn in pairs(getconnections(btn.MouseButton1Click)) do conn.Function() end
            end
        end)
    end
    
    -- BƯỚC 3: Đợi nhân vật rơi hẳn xuống đất rồi mới cho Hub chạy tiếp
    task.wait(2)
    -- ================================================================
    alert("team assembled")
    repeat wait() until game.Players.LocalPlayer.Character
    spawn(function()
        game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('NewIslandLOD', 9999):Destroy()
        game:GetService("Players")
        LocalPlayer.PlayerScripts:WaitForChild('IslandLOD', 9999):Destroy()
    end)
    alert('wait 1', 'ok')
    local J = { 'RawConstants', "Utilly", "QuestManager", 'SpawnRegionLoader', 'TweenController', "AttackController",
        'CombatController', 'FunctionsHandler', "Hooks", "Debug", "Hop", "Storage" }
    StartTick = tick()
    repeat
        task.wait()
    until SetText
    alert('load 2')
    SetText('MainTextLabel', 'Initalizing Script..')
    local J = "Rua_Hub/Blox_Fruit/Assets/"
    ScriptStorage = {
        IsInitalized = false,
        PlayerData = {},
        Melees = {},
        CurrentMeleeData = {},
        Enemies = {},
        Tools = {},
        Backpack = {},
        IgnoreStoreFruits = {},
        Connections = { LocalPlayer = {} },
        Task = {},
        Tracebacks = {},
        TaskController = {},
        TracebackUpdater = {},
        Interface =
            W,
        NPCs = {},
        Map = {}
    }
    Players = game.Players
    LocalPlayer = Players.LocalPlayer
    Character = Players.LocalPlayer.Character
    Humanoid = Character:WaitForChild('Humanoid')
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    PlayerGui = LocalPlayer:WaitForChild('PlayerGui', 10)
    Lighting = game:GetService('Lighting')
    Services = {}
    setmetatable(Services, { __index = function(J, J) return game:GetService(J) end })
    setmetatable(ScriptStorage.Enemies,
        {
            __index = function(J, J)
                return Services.Workspace.Enemies:FindFirstChild(J) or
                    Services.ReplicatedStorage:FindFirstChild(J)
            end
        })
    setmetatable(ScriptStorage.Map,
        {
            __index = function(J, J)
                return Services.Workspace.Map:FindFirstChild(J) or
                    Services.Workspace:FindFirstChild(J)
            end
        })
    setmetatable(ScriptStorage.Tools,
        {
            __index = function(J, J)
                return LocalPlayer.Character:FindFirstChild(J) or
                    LocalPlayer.Backpack:FindFirstChild(J)
            end
        })
    setmetatable(ScriptStorage.NPCs,
        {
            __index = function(J, J)
                if not J then return end; return workspace.NPCs:FindFirstChild(J) or
                    game.ReplicatedStorage.NPCs:FindFirstChild(J)
            end
        })
    function CreateTraceback(J, W) end

    function SetTask(J, W)
        if ScriptStorage.Task[J] == W then return end
        local a = { MainTask = "Task1", SubTask = 'Task2' }
        if a[J] then if SetText then SetText(a[J], J .. ' : ' .. W) end end
        ScriptStorage.Task[J] = W
        ScriptStorage.Task[J .. '-d'] = os.time()
    end
    Remotes = {}
    BindedMeleeNPCNames = {
        BlackLeg = 'Dark Step Teacher',
        Electro = "Mad Scientist",
        FishmanKarate =
        "Water Kung-fu Teacher",
        DeathStep = "Phoeyu, the Reformed",
        SharkmanKarate = 'Sharkman Teacher',
        DragonTalon =
        "Uzoth",
        ElectricClaw = 'Previous Hero',
        Godhuman = "Ancient Monk"
    }
    local J = {}
    setmetatable(Remotes, {
        __index = function(W, W)
            if W ~= 'CommF_' then
                print('captured unregistered signal', key)
                return Services.ReplicatedStorage.Remotes[W]
            end
            local W = {
                InvokeServer = function(a, ...)
                    print('remote fired', ...)
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
                end
            }
            return W
        end
    })
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
    local W = { Currencies = { Level = "#00FF48", Beli = "#FF7800", Fragments = "#6C00FF" }, Races = {} }
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
            print('[ Debug ] Registering burst', W)
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
        print('Melee check', W)
        if W and typeof(W) == "Instance" and W:IsA("Tool") then
            if W.ToolTip == "Melee" then
                if ScriptStorage.Connections.Melees then ScriptStorage.Connections.Melees:Disconnect() end
                ScriptStorage.CurrentMeleeData.Name = W.Name
                pcall(function() ScriptStorage.Connections.Melees:Destroy() end)
                local meleeLevel = W:FindFirstChild("Level")
                if meleeLevel then
                    ScriptStorage.Connections.Melees = meleeLevel.Changed:Connect(function(a)
                        ScriptStorage.Melees[W.Name] = a
                        RefreshMelees()
                        -- [BẢN VÁ: LƯU MASTERY VÀO FILE NGAY LẬP TỨC]
                        if Storage and Storage.Set then Storage:Set("SavedMelees", ScriptStorage.Melees) end
                    end)
                    ScriptStorage.Melees[W.Name] = meleeLevel.Value
                    RefreshMelees()
                    -- [BẢN VÁ: LƯU LẦN ĐẦU KHI CẦM LÊN]
                    if Storage and Storage.Set then Storage:Set("SavedMelees", ScriptStorage.Melees) end
                end
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
        ScriptStorage.Connections.LocalPlayer["HealthCheck"] = LocalPlayer.Character:WaitForChild("Humanoid")
            :GetPropertyChangedSignal("Health"):Connect(function()
                local W = LocalPlayer.Character.Humanoid.Health
                LocalPlayer:SetAttribute("IsAvailable", W > 10)
                ScriptStorage.LocalPlayerHealth = W
            end)
        ScriptStorage.Connections.LocalPlayer['Melee'] = LocalPlayer.Character.ChildAdded:Connect(MeleeCheck)
        ScriptStorage.Connections.LocalPlayer['Fruit'] = LocalPlayer.Backpack.ChildAdded:Connect(MeleeCheck)
        table.foreach(LocalPlayer.Backpack:GetChildren(), function(W, W) MeleeCheck(W) end)
        LastIdleCheck = os.time()
        ScriptStorage.Connections.LocalPlayer.PositionChecker = LocalPlayer.Character.HumanoidRootPart
            :GetPropertyChangedSignal('CFrame'):Connect(function()
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
        print('[ Debug ] re-registering events')
        RegisterLocalPlayerEventsConnection(LocalPlayer)
    end)
    task.spawn(function()
        task.wait(3)
        if LocalPlayer.Character:FindFirstChild("HasBuso") then return end
        Remotes.CommF_:InvokeServer("Buso")
    end)
    print(1)
    MeleesTable = { "Black Leg", 'Electro', "Fishman Karate", "Dragon Claw", "Superhuman", 'Death Step', 'Electric Claw',
        'Sharkman Karate', 'Dragon Talon', "Godhuman", "SanguineArt" }
    MeleesId = { 'BlackLeg', "Electro", 'FishmanKarate', "DragonClaw", "Superhuman", 'DeathStep', "ElectricClaw",
        "SharkmanKarate", 'DragonTalon', 'Godhuman', "SanguineArt" }
    MeleePrices = {
        ["Black Leg"] = {
            Price = { Beli = 150000 },
            Id = "BlackLeg",
            NextLevelRequirement = 400,
            position = CFrame.new(),
            Requirements = function() return true end,
            Buy = function(
                W)
                return BuyMelee("BlackLeg", W, 'Dark Step Teacher')
            end
        },
        ['Electro'] = {
            Price = { Beli = 500000 },
            Id = 'Electro',
            NextLevelRequirement = 400,
            Requirements = function() return true end,
            Buy = function(
                W)
                return BuyMelee('Electro', W, "Mad Scientist")
            end
        },
        ['Fishman Karate'] = {
            Price = { Beli = 750000 },
            NextLevelRequirement = 400,
            Requirements = function() return true end,
            Buy = function(
                W)
                return BuyMelee('FishmanKarate', W, 'Water Kung-fu Teacher')
            end
        },
        ['Dragon Claw'] = {
            Price = { Fragments = 1500 },
            NextLevelRequirement = 400,
            Requirements = function() return true end,
            Buy = function(
                W)
                return BuyMelee("DragonClaw", W, "Sabi")
            end
        },
        ["Superhuman"] = {
            Price = { Beli = 3000000 },
            NextLevelRequirement = 400,
            Requirements = function() return true end,
            Buy = function(
                W)
                return BuyMelee("Superhuman", W, "Martial Arts Master")
            end
        },
        ["Death Step"] = {
            Price = { Beli = 2500000, Fragments = 5000 },
            NextLevelRequirement = 400,
            Requirements = function() return true end,
            Buy = function(
                W)
                return BuyMelee("DeathStep", W, "Phoeyu, the Reformed")
            end
        },
        ['Sharkman Karate'] = {
            Price = { Beli = 2500000, Fragments = 5000 },
            NextLevelRequirement = 400,
            Requirements = function() return true end,
            Buy = function(
                W)
                return BuyMelee('SharkmanKarate', W, 'Sharkman Teacher')
            end
        },
        ['Electric Claw'] = {
            Price = { Beli = 2500000, Fragments = 5000 },
            NextLevelRequirement = 400,
            Requirements = function() return true end,
            Buy = function(
                W)
                return BuyMelee("ElectricClaw", W, 'Previous Hero')
            end
        },
        ['Dragon Talon'] = {
            Price = { Beli = 2500000, Fragments = 5000 },
            NextLevelRequirement = 400,
            Requirements = function() return true end,
            Buy = function(
                W)
                return BuyMelee("DragonTalon", W, 'Uzoth')
            end
        },
        ["Godhuman"] = {
            Price = { Beli = 5000000, Fragments = 5000 },
            NextLevelRequirement = 350,
            Requirements = function() return true end,
            Buy = function(
                W)
                return BuyMelee("Godhuman", W, 'Ancient Monk')
            end
        }
    }
    DropItemData = {
        ['Buddy Sword'] = { Sea = 3, Level = 1500, Boss = "Cake Queen" },
        ['Canvander'] = { Sea = 3, Level = 1500, Boss = "Beautiful Pirate" },
        ['Twin Hooks'] = { Sea = 3, Level = 1500, Boss = 'Captain Elephant' },
        ["Venom Bow"] = { Sea = 3, Level = 1500, Boss = "Hydra Leader" }
    }
    GodhumanMaterials = {
        ['Fish Tail'] = { 20, 3, { "Fishman Raider", "Fishman Captain" }, { 'DeepForestIsland3', 1, 1775, 'Turtle Adventure Quest Giver' } },
        ['Dragon Scale'] = { 10, 3, { "Dragon Crew Warrior", "Dragon Crew Archer" }, { 'DragonCrewQuest', 1, 1575, 'Dragon Crew Quest Giver' } },
        ["Magma Ore"] = { 20, 2, { 'Magma Ninja' }, { "FireSideQuest", 1, 1100, "Fire Quest Giver" } },
        ["Mystic Droplet"] = { 10, 2, { 'Sea Soldier', 'Water Fighter' }, { 'ForgottenQuest', 2, 1425, 'Forgotten Quest Giver' } }
    }
    SeaIndexes = { "Main", "Dressrosa", "Zou" }
    TasksOrder = { "Tushita", 'Yama', "CursedDualKatana", "SpecialBossesTask", "RaidController", 'Trevor', "UtillyItemsActivitation", 
    'ColosseumPuzzle', "Wenlocktoad", "ThirdSeaPuzzle", "PirateRaid", "SecondSeaPuzzle", 'ThirdSeaPuzzle', 
    "CollectDrops", 'BossesTask', "ExpRedeem", "LevelFarm" }
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
    Portals = ({ { Vector3.new(-7894.6201171875, 5545.49169921875, -380.246346191406), Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625), Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875), Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875) }, { Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312), Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625), Vector3.new(923.21252441406, 126.9760055542, 32852.83203125), Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422) }, {} })
        [SeaIndex]
    BossesOrder = { "Awakened Ice Admiral", "Tide Keeper", 'Deandre', "Urban", "Diablo", 'Soul Reaper', 'Cake Prince' }
    BossesOrderLevel = {
        ['Awakened Ice Admiral'] = 700,
        ['Tide Keeper'] = 700,
        ['Deandre'] = 1500,
        ['Urban'] = 1500,
        ['Diablo'] = 1500,
        ["Cake Prince"] = 1500,
        ['Soul Reaper'] = 1500
    }
    BossesOrderWL = {
        ["Deandre"] = 1500,
        ["Urban"] = 1500,
        ["Diablo"] = 1500,
        ['Cake Prince'] = 1500,
        ['Don Swan'] = 1100,
        ["Awakened Ice Admiral"] = 700,
        ['Tide Keeper'] = 700
    }
    SpecialBossesOrder = { ["Core"] = 700, ['Darkbeard'] = 700 }
    BlankTablets = { "Segment6", 'Segment2', 'Segment8', "Segment9", 'Segment5' }
    Trophy = {
        ["Segment1"] = "Trophy1",
        ["Segment3"] = "Trophy2",
        ['Segment4'] = "Trophy3",
        ['Segment7'] = "Trophy4",
        ["Segment10"] = "Trophy5"
    }
    Pipes = {
        ['Part1'] = 'Really black',
        ['Part2'] = 'Really black',
        ["Part3"] = "Dusty Rose",
        ['Part4'] = "Storm blue",
        ['Part5'] = 'Really black',
        ['Part6'] = "Parsley green",
        ["Part7"] = 'Really black',
        ["Part8"] = "Dusty Rose",
        ["Part9"] = 'Really black',
        ['Part10'] = 'Storm blue'
    }
    function GenerateUUID()
        local W = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
        return string.gsub("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx", '[xy]', function(W)
            local W = (Idx == 'x') and math.random(0, 0xf) or math.random(8, 0xb)
            return string.format('%x', W)
        end)
    end
    function CheckIsPlayerAlive(W)
        W = W or LocalPlayer; return W and W.Character and W.Character.Humanoid and W.Character.HumanoidRootPart and
            W.Character.Head and W.Character.Humanoid.Health > 0
    end
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
        local a = { 'Sun', "Mon", 'Tue', "Wed", 'Thu', "Fri", 'Sat' }
        local h = a[y]
        local a = { "Jan", "Feb", "Mar", 'Apr', "May", 'Jun', "Jul", 'Aug', 'Sep', "Oct", 'Nov', "Dec" }
        local y = a[w]
        local a = string.format('%s, %s %d %d', h, y, X, D)
        return W .. a
    end
    function RandomArguments(...)
        local W = { ... }; return W[math.random(0, #W)]
    end
    function RoundVector3Down(W)
        return Vector3.new(math.floor(W.X / 10) * 10, math.floor(W.Y / 10) * 10,
            math.floor(W.Z / 10) * 10)
    end
    local W = 30
    lastChange = tick()
    CaculateCircreDirection = function(a)
        lastChange = lastChange or tick() -- <<< NHÉT VÀO TRONG BỤNG HÀM NHƯ NÀY NÈ!
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
        table.sort(W,
            function(a, h)
                return CaculateDistance(a.HumanoidRootPart.CFrame) <
                    CaculateDistance(h.HumanoidRootPart.CFrame)
            end)
        return W
    end
    print(1.5)
    function GetMeleeIdByName(W) for a, h in MeleesTable do if h == W then return MeleesId[a] end end end

    function getpos(W)
        for a, a in game:GetService("ReplicatedStorage").NPCs:GetChildren() do
            if a.Name == W then
                return a
                    .HumanoidRootPart.CFrame
            end
        end
        for a, a in workspace.NPCs:GetChildren() do if a.Name == W then return a.HumanoidRootPart.CFrame end end
    end
    function BuyMelee(W, a)
        if W == "DragonClaw" and workspace.NPCs:FindFirstChild('Sabi') then
            if a then
                if type(Remotes.CommF_:InvokeServer("BlackbeardReward", 'DragonClaw', '1') == 1) == "number" and Remotes.CommF_:InvokeServer('BlackbeardReward', 'DragonClaw', '1') == 1 == 1 and not table.find(J, W) then
                    table.insert(J, W)
                end
                return Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
            end
            return Remotes.CommF_:InvokeServer('BlackbeardReward', "DragonClaw", '2')
        end
        if a then
            local a = Remotes.CommF_:InvokeServer('Buy' .. W, true)
            print("Response_", a == 1, typeof(a))
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
    local J = { CurrentLevel = 2, DoubleQuest = true, CurrentQuests = {}, BlacklistedQuestIds = { BartiloQuest = 1, CitizenQuest = 1, Trainees = 1, MarineQuest = 1, ImpelQuest = 1 } }
    local W = require(game.ReplicatedStorage.GuideModule).Data.NPCList
    repeat task.wait() until game.Players.LocalPlayer.DataLoaded and ScriptStorage
    J.Quests = require(game.ReplicatedStorage.Quests)
    function J.Set(W, a, h) W[a] = h end
    function J.RefreshQuest(W)
        while not ScriptStorage.PlayerData.Level do
            task.wait(1)
            print('[ Debug ] Waiting for LocalPlayer datas.')
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
        local a = W.CurrentQuests[W.CurrentLevel] and
            W.CurrentQuests[W.CurrentLevel].LevelReq <= ScriptStorage.PlayerData.Level and W.CurrentLevel or 1
        for h in W.CurrentQuests[a].Task do return h, W.CurrentNpc, W.CurrentQuestId, a, W.CurrentQuests[a].Name end
    end
    function J.MarkAsCompleted(W) W.CurrentLevel = W.CurrentLevel == 2 and 1 or 2 end
    function J.AbandonQuest()
        print('Abandon Quest')
        Remotes.CommF_:InvokeServer("AbandonQuest")
    end
    function J.GetCurrentClaimQuest(W)
        local W = game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible and
            game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:gsub(
                "%s*Defeat%s*(%d*)%s*(.-)%s*%b()", '%2')
        return (type(W) == "string" and string.gsub(W, "Military ", "Mil. ") or W),
            game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    end
    function J.StartQuest(W, a)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer('ColorsDealer', "2")
        return Remotes.CommF_:InvokeServer("StartQuest", W, a)
    end
    h.IgnoreGuiInset = true
    if Config.Configuration.blackscreen then
        game:GetService('Lighting').ExposureCompensation = -math.huge
    end
    ScriptStorage.MobRegions = {}
    for W, W in game:GetService("ReplicatedStorage").FortBuilderReplicatedSpawnPositionsFolder:GetChildren() do
        ScriptStorage.MobRegions[tostring(W)] = ScriptStorage.MobRegions[tostring(W)] or {}
        table.insert(ScriptStorage.MobRegions[tostring(W)], W.CFrame)
    end
    TweenController = {}
    local W = 0
    local W = {}
    for a, a in game.ReplicatedStorage.NPCs:GetChildren() do
        if a.Name == 'Set Home Point' then
            table.insert(W,
                a:GetModelCFrame())
        end
    end
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
        TweenInstance2 = Services.TweenService:Create(W,
            TweenInfo.new(CaculateDistance(W.CFrame, a) / 50, Enum.EasingStyle.Linear),
            { CFrame = ConvertTo(CFrame, a) - Vector3.new(0, 0, 0) })
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
                print(a)
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
        TweenInstance = Services.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(W / (W < 18 and 25 or 330), Enum.EasingStyle.Linear), { CFrame = a })
        TweenInstance:Play()
    end
    local W = {}
    local a = game:GetService('Players')
    local h = game:GetService("RunService")
    local h = game:GetService('ReplicatedStorage')
    local X = game:GetService("Workspace")
    local X = game:GetService("VirtualInputManager")
    local X = a.LocalPlayer
    local X = h:WaitForChild('Modules', 5)
    local w = X and X:WaitForChild("Net", 5)
    local regAttack = w and w:WaitForChild("RE/RegisterAttack", 3)
    local regHit = w and w:WaitForChild('RE/RegisterHit', 3)
    local X = w:WaitForChild('RE/ShootGunEvent')
    local X = h:WaitForChild("Remotes"):WaitForChild('Validator2')
    local h = game.ReplicatedStorage.Modules
    local X = h.Net
    local h, h = X:WaitForChild("RE/RegisterHit"), X:WaitForChild('RE/RegisterAttack')
    local h = {}
    function GetAllBladeHits()
        bladehits = {}
        for X, X in pairs(workspace.Enemies:GetChildren()) do
            if X:FindFirstChild('Humanoid') and X:FindFirstChild('HumanoidRootPart') and X.Humanoid.Health > 0 and (X.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 65 then
                table.insert(bladehits, X)
            end
        end
        return bladehits
    end
    function Getplayerhit()
        bladehits = {}
        for X, X in pairs(workspace.Characters:GetChildren()) do
            if X.Name ~= game.Players.LocalPlayer.Name and X:FindFirstChild('Humanoid') and X:FindFirstChild('HumanoidRootPart') and X.Humanoid.Health > 0 and (X.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 65 then
                table.insert(bladehits, X)
            end
        end
        return bladehits
    end
    local X = (Services.ReplicatedStorage.Modules.Net)
    local w = require(X):RemoteEvent("RegisterAttack", true)
    local D = require(X):RemoteEvent("RegisterHit", true)
    function h:Attack()
        local X = {}
        for y, y in pairs(GetAllBladeHits()) do table.insert(X, y) end
        for y, y in pairs(Getplayerhit()) do table.insert(X, y) end
        if #X == 0 then return end
        local y = { [1] = nil, [2] = {}, [4] = "078da5141" }
        for L, L in pairs(X) do
            w:FireServer(0)
            if not y[1] then y[1] = L.Head end
            table.insert(y[2], { [1] = L, [2] = L.HumanoidRootPart })
            table.insert(y[2], L)
        end
        D:FireServer(unpack(y))
    end
    task.spawn(function()
        while task.wait(.06) do if _G.FastAttack == os.time() then pcall(function() h:Attack() end) end end
    end)
    function W.Attack(h) pcall(function() _G.FastAttack = os.time() end) end
    CombatController = { GRAB = true, GRAB_DISTANCE = SeaIndex == 1 and 250 or 350, MAX_ATTACK_DURATION = 2, MAX_ATTACK_DURATION_2 = 60, LEVITATE_TIME = 0, CurrentIndex = 1 }
    LastFound = os.time()
    function CombatController.Grab(h)
        pcall(sethiddenproperty, game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        if not CombatController.GRAB or GrabDebounce == os.time() then end
        GrabDebounce = os.time()
        local X, w = Vector3.zero, 0
        ForcePosition = nil
        local D = {}
        for y, y in Services.Workspace.Enemies:GetChildren() do
            if y.Name == h then
                if y:FindFirstChild('Humanoid') and y:FindFirstChild("HumanoidRootPart") and y.Humanoid.Health > 0 then
                    local h = y.HumanoidRootPart.Position
                    if h and isnetworkowner(y.PrimaryPart) then
                        if not ForcePosition or CaculateDistance(h, ForcePosition) < CombatController.GRAB_DISTANCE then
                            w = w + 1
                            y:SetAttribute("OldPosition", y:GetAttribute('OldPosition') or h)
                            X = X + h
                            ForcePosition = ForcePosition or h
                            table.insert(D, y)
                        end
                    end
                end
            end
        end
        X = CFrame.new(X / w)
        table.foreach(D, function(h, h)
            (function()
                if h:GetAttribute("IgnoreGrab") then return end
                if (h:GetAttribute("FailureCount") or 0) > 7 then return end
                local w = h:FindFirstChild("HumanoidRootPart")
                local D = w:FindFirstChild('FarmingVelocity')
                if not D then
                    D = Instance.new('BodyVelocity')
                    D.Name = 'FarmingVelocity'
                    D.MaxForce = Vector3.new(4000, 4000, 4000)
                    D.Parent = w
                end
                D.Velocity = Vector3.new(0, 0, 0)
                local D = w:FindFirstChild("FarmingPosition")
                if not D then
                    D = Instance.new("BodyPosition")
                    D.Name = 'FarmingPosition'
                    D.MaxForce = Vector3.new(4000, 4000, 4000)
                    D.P = 4.12
                    D.D = 1000
                    D.Parent = w
                end
                h:SetAttribute('IsGrabbed', true)
                h.HumanoidRootPart.CFrame = X
                h:SetAttribute("MidPoint", X)
            end)()
        end)
    end
    function Sort1(h)
        return h and h:FindFirstChild("HumanoidRootPart") and
            math.floor(CaculateDistance(h.HumanoidRootPart.CFrame))
    end
    function CombatController.Search(h)
        local X = {}
        local w = false
        for D, D in GetMonAsSortedRange() do
            if table.find(h, D.Name) and D:FindFirstChild("Humanoid") and D.Humanoid.Health > 0 then
                if (D:GetAttribute('FailureCount') or 0) < 3 then
                    w = true
                    table.insert(X, D)
                end
            end
        end
        table.sort(X, function(D, y) return Sort1(D) < Sort1(y) end)
        if w then
            local w = X[1]
            return w
        end
        for X, X in h do
            local h = game.ReplicatedStorage:FindFirstChild(X)
            if h then return h end
        end
    end
    function CombatController.Attack(h, X, w, D)
        if ScriptStorage.Tools["Sweet Chalice"] and getsenv(game.ReplicatedStorage.GuideModule)["_G"]['InCombat'] then
            TweenController.Create(Vector3.new(0, 0, 0))
            return
        end
        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        h = type(h) == "string" and { h } or (h or {})
        for y, L in (h) do
            local b = tostring(L)
            if b == 'Deandre' or b == "Urban" or b == "Diablo" and (os.time() - (LastFire12 or 0)) > 180 then
                LastFire12 = os.time()
                Remotes.CommF_:InvokeServer("EliteHunter")
            end
            if X then
                local b = GetMonAsSortedRange()[1]
                local C = b and b:FindFirstChild('HumanoidRootPart') and b.HumanoidRootPart.Position
                if C and CaculateDistance(C) < w then MonResult = b end
            else
                MonResult = CombatController.Search(h)
            end
            if MonResult then
                LastFound = os.time()
                local h, w = 0, os.time()
                local w, b = 0, os.time()
                while task.wait() do
                    if _G.Stop then return end
                    if ScriptStorage.Tools["Sweet Chalice"] and getsenv(game.ReplicatedStorage.GuideModule)["_G"]["InCombat"] then
                        TweenController.Create(Vector3.new(0, 0, 0))
                        return
                    end
                    local C = MonResult:FindFirstChild('Humanoid')
                    local p = MonResult:FindFirstChild('HumanoidRootPart')
                    if not C or C.Health <= 0 then
                        if MonResult.Name == "Don Swan" then Storage:Set("SwanDefeated", true) end
                        break
                    end
                    TweenController.Create(CaculateCircreDirection(p.CFrame) + Vector3.new(0, 35, 0))
                    if CaculateDistance(p.Position + Vector3.new(0, 35, 0)) < 150 then
                        y = D and D()
                        CombatController.Grab(L or '')
                        if MonResult.Name ~= "Core" then
                            if ScriptStorage.PlayerData.Level > 100 and w >= CombatController.MAX_ATTACK_DURATION_2 and C.Health - C.MaxHealth == 0 then
                                SetTask('SubTask',
                                    'Hop Server - Mob Health Unchanged ( ' .. C.Health .. ' / ' .. C.MaxHealth .. ')')
                                alert("stuck", "Mob health unchanged")
                                _G.Stop = true
                                game.Players.LocalPlayer:Kick('Rejoining..')
                            end
                            if h >= CombatController.MAX_ATTACK_DURATION and C.Health - C.MaxHealth == 0 then
                                h = 0
                                local D = MonResult:GetAttribute('OldPosition')
                                if D then
                                    MonResult:SetPrimaryPartCFrame(CFrame.new(D))
                                    MonResult:SetAttribute('IgnoreGrab', true)
                                    MonResult:SetAttribute('FailureCount',
                                        (MonResult:GetAttribute("FailureCount") or 0) + 1)
                                    alert('Failed to attack',
                                        "Returning to the old posiiton ( #" ..
                                        MonResult:GetAttribute("FailureCount") .. " )")
                                    MonResult.HumanoidRootPart.CFrame = (CFrame.new(D))
                                    task.wait()
                                    return
                                end
                            end
                        end
                        if (FarmFruitMastery or math.huge) - os.time() < 3 and math.floor(MonResult.Humanoid.Health / MonResult.Humanoid.MaxHealth * 100) < 30 and not FunctionsHandler.RaidController.Methods.GetCurrentRaidIsland:Call() then
                            TweenController.Create((p.CFrame) + Vector3.new(0, 25, 0))
                            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Blox Fruit')
                            LockAimPositionTo(MonResult.HumanoidRootPart.CFrame.p)
                            local D = { 'Z', 'X', "C", 'V' }
                            local y = D[math.random(1, #D)]
                            SendKey(y, .31)
                        else
                            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call(ScriptStorage.ForceToUseSword and
                                'Sword' or "Melee")
                        end
                        W:Attack(MonResult)
                        if os.time() ~= b then
                            b = os.time()
                            h = h + 1
                            w = w + 1
                        end
                        if h > 30 and MonResult.Name ~= "Core" then
                            alert("Take more than 30s to attack, canceling")
                            break
                        end
                    end
                end
            elseif not X then
                if (os.time() - LastFound) > 200 then
                    alert('HoangPhucHub', 'Error while farming, rejoin')
                    game.Players.LocalPlayer:Kick('Rejoining..')
                    return
                end
                local h = ScriptStorage.MobRegions[L]
                if not h then
                    local X = Services.Workspace.Enemies:FindFirstChild(L) or game.ReplicatedStorage:FindFirstChild(L)
                    h = X and { X:GetPrimaryPartCFrame().p }
                end
                if not h then
                    Report('[ Game data error ] Mob with name ' .. tostring(L) .. ' have no spawn region datas')
                    return
                end
                local X
                if not h[CombatController.CurrentIndex] then CombatController.CurrentIndex = 1 end
                X = h[CombatController.CurrentIndex]
                local h = os.time()
                TweenController.Create(X + Vector3.new(0, 35, 35))
                if CaculateDistance(X + Vector3.new(0, 35, 35)) < 15 then
                    CombatController.CurrentIndex =
                        CombatController.CurrentIndex + 1
                end
            end
        end
    end
    LevelFarmTTL = 0
    LastTravel = os.time()
    FunctionsHandler = { Initalized = false }
    print(3000)
    setmetatable(FunctionsHandler, {
        __index = function(h, X)
            QueryResult = rawget(h, X)
            if not QueryResult then
                return {
                    Register = function(w)
                        if w == false then return end
                        Result = { CacheListener = {}, RealCache = {}, Methods = {}, Constants = {}, Events = {}, Initalized = true }
                        function Result.RegisterMethod(w, D, y)
                            w.Methods[D] = { Name = D, Callback = y, Call = function(w, ...) return w.Callback(...) end, Events = {} }
                            return true
                        end
                        setmetatable(Result.Constants,
                            { __newindex = function() assert(false, 'cannot change constant value!') end })
                        if h.Constants[Key] then
                            function Result.SaveConstant(w, w, w) return assert(false, 'constant name was used before!') end
                            rawset(h.Constants, Key, Value)
                        end
                        function Result.Set(h, w, D)
                            h.CacheListener[w] = D
                            return D
                        end
                        function Result.Get(h, w) return h.Constants[w] or h.RealCache[w] end
                        function Result.AddVariableChangeListener(h, w, D) h.Events[w] = D end
                        Result.CacheListener.__parent = Result
                        setmetatable(Result.CacheListener, {
                            __newindex = function(h, w, D)
                                _ = h.__parent.Events[w] and h.__parent.Events[w](w, D)
                                h.__parent.RealCache[w] = D
                            end
                        })
                        FunctionsHandler[X] = Result
                    end,
                    Initalized = false
                }
            end
            return QueryResult
        end
    })
    function FunctionsHandler.SynchorizeUntilModuleLoaded(h, X)
        local w = os.time()
        while not h.Initalized do
            task.wait()
            local h = os.time() - w
            assert(not (X and h > X), "timed out")
        end
    end
    function GetCurrentClaimQuest(h)
        local h = game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible and
            game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text:gsub(
                "%s*Defeat%s*(%d*)%s*(.-)%s*%b()", "%2")
        return (type(h) == "string" and string.gsub(h, "Military ", "Mil. ") or h),
            game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    end
    FunctionsHandler.LocalPlayerController.Register()
    FunctionsHandler.ExpRedeem:Register()
    FunctionsHandler.LevelFarm:Register()
    FunctionsHandler.Saber:Register()
    FunctionsHandler.Rengoku:Register()
    FunctionsHandler.Yama:Register()
    FunctionsHandler.Tushita:Register()
    FunctionsHandler.SpikeyTrident:Register()
    FunctionsHandler.SharkAchor:Register()
    FunctionsHandler.Pole:Register()
    FunctionsHandler.FoxLamp:Register()
    FunctionsHandler.DarkDagger:Register()
    FunctionsHandler.Canvander:Register()
    FunctionsHandler.BuddySword:Register()
    FunctionsHandler.HallowScythe:Register()
    FunctionsHandler.CursedDualKatana:Register()
    FunctionsHandler.AcidumRifle:Register()
    FunctionsHandler.Kabucha:Register()
    FunctionsHandler.VenomBow:Register()
    FunctionsHandler.SoulGuitar:Register()
    FunctionsHandler.DragonStorm:Register()
    FunctionsHandler.InsictV2:Register()
    FunctionsHandler.RainbowSaviour:Register()
    FunctionsHandler.DarkBladeV2:Register()
    FunctionsHandler.SecondSeaPuzzle:Register()
    FunctionsHandler.ColosseumPuzzle:Register()
    FunctionsHandler.Trevor:Register()
    FunctionsHandler.EvoRace:Register()
    FunctionsHandler.Wenlocktoad:Register()
    FunctionsHandler.DarkBladeV3:Register()
    FunctionsHandler.ThirdSeaPuzzle:Register()
    FunctionsHandler.DojoQuest:Register()
    FunctionsHandler.RaceAwakening:Register()
    FunctionsHandler.PirateRaid:Register()
    FunctionsHandler.RaidController:Register()
    FunctionsHandler.MeleesController:Register()
    FunctionsHandler.Superhuman:Register()
    FunctionsHandler.DeathStep:Register()
    FunctionsHandler.SharkmanKarate:Register()
    FunctionsHandler.ElectricClaw:Register()
    FunctionsHandler.DragonTalon:Register()
    FunctionsHandler.Godhuman:Register()
    FunctionsHandler.BossesTask:Register()
    FunctionsHandler.SpecialBossesTask:Register()
    FunctionsHandler.CollectDrops:Register()
    FunctionsHandler.CollectBerries:Register()
    FunctionsHandler.UtillyItemsActivitation:Register()
    FunctionsHandler.ExpRedeem:RegisterMethod("Refresh",
        function()
            return ScriptStorage.PlayerData.Level < MaxLevel and
                getsenv(game.ReplicatedStorage.GuideModule)._G.ServerData.ExpBoost == 0 and
                not Storage.Get(Storage, "IsCodesRanOut")
        end)
    FunctionsHandler.ExpRedeem:RegisterMethod("Start", function()
        local h = { 'BANEXPLOIT', 'NOMOREHACKS', "WildDares", 'BossBuild', 'GetPranked', 'EARN_FRUITS', "Sub2UncleKizaru",
            'FIGHT4FRUIT', "kittgaming", 'TRIPLEABUSE', "Sub2CaptainMaui", 'Sub2Fer999', "Enyu_is_Pro", "Magicbus",
            "JCWK", 'Starcodeheo', 'Bluxxy', 'SUB2GAMERROBOT_EXP1', 'Sub2NoobMaster123', 'Sub2Daigrock', "Axiore",
            "TantaiGaming", 'StrawHatMaine', 'Sub2OfficialNoobie', "TheGreatAce", "SEATROLLIN", "24NOADMIN",
            'ADMIN_TROLL', 'NEWTROLL', 'SECRET_ADMIN', "staffbattle", "NOEXPLOIT", "NOOB2ADMIN", "CODESLIDE",
            "fruitconcepts" }
        for X, X in h do
            SetTask("MainTask", 'Code Redemption | ' .. X .. ' | Redeeming...')
            local h = (Remotes.Redeem:InvokeServer(X))
            task.wait()
            SetTask('MainTask', 'Code Redemption | ' .. X .. " | " .. (h or "Failed"))
            if getsenv(game.ReplicatedStorage.GuideModule)._G.ServerData.ExpBoost == 0 then
                if h and string.find(h, 'SUCC') then
                    return SetTask('MainTask', 'Code Redemption | X2 Exp Boost Activated!') and task.wait(1)
                end
            else
                return
            end
        end
        Storage:Set("IsCodesRanOut", 1)
        Storage:Save()
    end)
    FunctionsHandler.LevelFarm:RegisterMethod("Refresh", function()
        local h = ScriptStorage.PlayerData.Level
        if h < 50 then
            return 1
        elseif h < 70 then
            return 2
        else
            return 4
        end
        return true
    end)
    FunctionsHandler.LevelFarm:RegisterMethod("Start", function(h)
            if SeaIndex == 3 then
                if (ScriptStorage.Backpack.Bones or { Count = 0 }).Count >= 50 then
                    if os.time() > (BonesCooldown or 0) then
                        local X, X, X, w = Remotes.CommF_:InvokeServer("Bones", 'Check')
                        print("State", X, "Message", w)
                        if tonumber(X or 1) == 0 then
                            local X = Split(w, ":")
                            local w = ((tonumber(X[1]) * 60) + tonumber(X[2])) * 60
                            BonesCooldown = os.time() + w
                            print('Next', BonesCooldown)
                        else
                            print('Roll')
                            task.spawn(function()
                                Remotes.CommF_:InvokeServer('Bones', 'Buy', 1, 1)
                            end)
                            task.wait(1)
                        end
                    end
                else
                    SetTask("SubTask", "Yama Quest / Thiếu Xương -> Tự động đi cày Bones!")
                    if CombatController and CombatController.Attack then
                        CombatController.Attack({ 'Reborn Skeleton', "Living Zombie", "Demonic Soul", 'Posessed Mummy' })
                    end
                    return
                end
            end
            local X = ScriptStorage.PlayerData.Level
        if GodHumanFlag then
            local w, D = (function()
                getgenv()["   mphm ><<3"] = {}
                for y, L in GodhumanMaterials do
                    if (ScriptStorage.Backpack[y] or { Count = 0 }).Count < L[1] then
                        getgenv()['   mphm >< ❤'] = { y, L }
                    end
                end
                return unpack(getgenv()["   mphm >< ❤"])
            end)()
            if w then
                if SeaIndex ~= D[2] then
                    alert('Material - ' .. w, "Travelling sea " .. D[2])
                    SetTask("MainTask", 'Sea Travel | Godhuman Materials | Travelling to Sea ' .. D[2])
                    Remotes.CommF_:InvokeServer("Travel" .. SeaIndexes[D[2]])
                    return
                end
                SetTask("MainTask", "Material Farming | Godhuman | " .. w .. " | In Progres")
                if X >= D[4][3] then
                    local w, y = GetCurrentClaimQuest()
                    if w then
                        if not string.find(y, D[3][1]) and not string.find(y, D[3][2]) then
                            J.AbandonQuest()
                        else
                            CombatController.Attack(D[3]); return
                        end
                    else
                        local w = ScriptStorage.NPCs[D[4][4]]
                        w = w and w:GetModelCFrame()
                        if w then
                            TweenController.Create(w + Vector3.new(0, 5, 3))
                            if CaculateDistance(w) < 10 then
                                task.wait(1)
                            else
                                return
                            end
                        else
                            Report("NPC HauntedQuest2 not found")
                        end
                        J.StartQuest(D[4][1], D[4][2])
                        return
                    end
                end
                CombatController.Attack(D[3])
            end
            Remotes.CommF_:InvokeServer("BuyGodhuman", true)
            Remotes.CommF_:InvokeServer("BuyGodhuman")
            GodHumanFlag = false
            return true
        end
        if os.time() - LastTravel > 60 then
            LastTravel = os.time()
            if X >= 1500 and SeaIndex == 2 then
                if Config.Settings.StayInSea2UntilHaveDarkFragments and not ScriptStorage.Backpack['Dark Fragment'] then
                elseif not Services.Workspace.Map.IceCastle.Hall.LibraryDoor:FindFirstChild('PhoeyuDoor') then
                    Remotes.CommF_:InvokeServer("TravelZou")
                    SetTask('MainTask', 'Sea Travel | Teleporting to Third Sea')
                end
            elseif X >= 700 and SeaIndex == 1 then
                SetTask('MainTask', 'Sea Travel | Teleporting to Second Sea')
                Remotes.CommF_:InvokeServer("TravelDressrosa")
            end
        end
        if ScriptStorage.Tools['God\'s Chalice'] and not ScriptStorage.Tools['Mirror Fractal'] then
            if (ScriptStorage.Backpack["Conjured Cocoa"] or { Count = 0 }).Count < 10 then
                SetTask("MainTask", "Material Farming | Conjured Cocoa | Need 10x | Farming...")
                CombatController.Attack({ "Cocoa Warrior", "Chocolate Bar Battler" })
                return
            end
            Remotes.CommF_:InvokeServer("SweetChaliceNpc")
        end
        if ScriptStorage.Tools['Sweet Chalice'] or (X == MaxLevel and (ScriptStorage.Backpack.Bones or { Count = 0 }).Count >= 500) then
            SetTask("MainTask", "Fragments Farming | Cake Prince | Dough King")
            if (ScriptStorage.Tools["Sweet Chalice"]) and (not SpawnReflect or os.time() - SpawnReflect > 10) then
                task.spawn(function()
                    while not ScriptStorage.Enemies['Dough King'] and task.wait() and ScriptStorage.Tools["Sweet Chalice"] do
                        SpawnReflect = os.time()
                        Remotes.CommF_:InvokeServer("CakePrinceSpawner")
                    end
                end)
            end
            CombatController.Attack({ "Head Baker", 'Baking Staff', 'Cookie Crafter', "Cake Guard" })
            if X >= 2200 then
                local w, D = GetCurrentClaimQuest()
                if w then
                    if not string.find(D, "Cookie") then
                        J.AbandonQuest()
                    else
                        Remotes.CommF_:InvokeServer('CakePrinceSpawner'); return
                    end
                else
                    print('Start Quest')
                    local w = ScriptStorage.NPCs["Cake Quest Giver 1"]
                    w = w and w:GetModelCFrame()
                    if w then
                        TweenController.Create(w + Vector3.new(0, 5, 3))
                        if CaculateDistance(w) < 10 then
                            task.wait(1)
                        else
                            return
                        end
                    else
                        Report("NPC HauntedQuest2 not found")
                    end
                    J.StartQuest("CakeQuest1", 1)
                    return
                end
            end
            print("attack ohoo")
            return
        end
        if X >= 2025 and (getsenv(game.ReplicatedStorage.GuideModule)._G.ServerData.ExpBoost == 0 or X <= MaxLevel) and (ScriptStorage.Backpack.Bones or { Count = 0 }).Count < 500 then
            SetTask('MainTask', "Resource Farming | Bones | For X2 Mastery/Beli")
            CurrentClaimQuest3 = GetCurrentClaimQuest(true)
            if CurrentClaimQuest3 then
                if not string.find(CurrentClaimQuest3, 'Demonic') then
                    J.AbandonQuest(); return
                else
                    CombatController.Attack({ 'Reborn Skeleton', "Living Zombie", "Demonic Soul", 'Posessed Mummy' }); return
                end
            else
                print("StartQuest", CurrentClaimQuest3)
                local X = ScriptStorage.NPCs["Haunted Castle Quest Giver 2"]
                X = X and X:GetModelCFrame()
                if X then
                    TweenController.Create(X + Vector3.new(0, 5, 3))
                    if CaculateDistance(X) < 20 then
                        task.wait(1)
                    else
                        return
                    end
                else
                    Report("NPC HauntedQuest2 not found")
                end
                J.StartQuest('HauntedQuest2', 1)
                return
            end
        end
        if h == 1 then
            SetTask('MainTask', 'Level Farming | Skip Mode | Floor ' .. h)
            CombatController.Attack("Sky Bandit")
        elseif h == 2 then
            SetTask('MainTask', 'Level Farming | Skip Mode | Floor ' .. h)
            CombatController.Attack('God\'s Guard')
        elseif h == 4 then
            local h, X, w, D, y = J:GetCurrentQuest()
            CurrentClaimQuest1 = GetCurrentClaimQuest()
            if CurrentClaimQuest1 then
                if CurrentClaimQuest1 ~= y and CurrentClaimQuest1 ~= (y .. "s") then return J.AbandonQuest() end
            else
                if not X then return J:RefreshQuest() and Report("failed to get npc position quest 528") end
                TweenController.Create(X + Vector3.new(0, 5, 3))
                SetTask("MainTask", "Level Farming | " .. h .. " | Claiming Quest")
                if CaculateDistance(X) > 10 then return end
                task.wait(2)
                LevelFarmTTL = 0
                J.StartQuest(w, D)
                task.wait(1)
            end
            SetTask('MainTask', 'Level Farming | ' .. h .. " | Defeating Enemies")
            local X = os.time()
            CombatController.Attack(h)
            LevelFarmTTL = LevelFarmTTL + os.time() - X
            if LevelFarmTTL > 160 then end
        end
    end)
    FunctionsHandler.LocalPlayerController:RegisterMethod("EquipTool", function(h)
        if not Humanoid then return end
        for X, X in LocalPlayer.Backpack:GetChildren() do
            if X:IsA('Tool') and X.Name ~= "Tool" and (X.Name == tostring(h) or X.ToolTip == h) then
                LocalPlayer.Character:WaitForChild('Humanoid'):EquipTool(X)
            end
        end
    end)
    FunctionsHandler.LocalPlayerController:RegisterMethod('ToggleAbilities', function(h, X)
        if h == 'Buso' then
            if LocalPlayer:HasTag('Buso') and not X or X then Remotes.CommF_:InvokeServer('Buso') end
        elseif h == "Observation" then
        end
    end)
    FunctionsHandler.LocalPlayerController:RegisterMethod('ConfigurationAbilitiesToggle', function()
        FunctionsHandler.LocalPlayerController.Methods.ToggleAbilities:Call('Buso', SCRIPT_CONFIG.BUSO)
        FunctionsHandler.LocalPlayerController.Methods.ToggleAbilities:Call('Observation', SCRIPT_CONFIG.OBSERVATION)
    end)
    print(3)
    FunctionsHandler.Saber:RegisterMethod('Refresh', function()
        if not Config.Items.Saber then return end
        if not Config.Items.Saber then return end
        local h
        if ScriptStorage.Backpack.Saber then return end
        if ScriptStorage.PlayerData.Level < 200 then return end
        local X = Remotes.CommF_:InvokeServer('ProQuestProgress')
        for w, w in X.Plates do if w == false then h = 1 end end
        if not h then
            if not X.UsedTorch then
                h = 2
            elseif not X.UsedCup then
                h = 3
            elseif not X.TalkedSon then
                h = 4
            elseif not X.KilledMob then
                h = 5
            elseif not X.UsedRelic then
                h = 6
            elseif not X.KilledShanks and ScriptStorage.Enemies["Saber Expert"] then
                h = 7
            end
        end
        FunctionsHandler.Saber:Set("CurrentProgressLevel", h)
        FunctionsHandler.Saber:Set('LastestRefreshSenque', os.time())
        return h
    end)
    FunctionsHandler.Saber:RegisterMethod('GetQuestplates', function()
        local h = FunctionsHandler.Saber:Get("QuestplatesCache")
        if h then return h end
        local h = Services.Workspace.Map.Jungle
        local X = {}
        table.foreach(h.QuestPlates:GetChildren(),
            function(h, w) h = w:FindFirstChild("Button") and table.insert(X, w) end)
        FunctionsHandler.Saber:Get('QuestplatesCache', X)
        return X
    end)
    FunctionsHandler.Saber:RegisterMethod('Start', function()
        local h, X = FunctionsHandler.Saber:Get("CurrentProgressLevel"),
            FunctionsHandler.Saber:Get('LastestRefreshSenque')
        print("[ Debug ] Saber quest indexes", h)
        if not h then
            FunctionsHandler.Saber.Methods.Refresh:Call()
            return FunctionsHandler.Saber.Methods.Start:Call()
        elseif h == 0 then
        elseif os.time() - X > 60 then
            FunctionsHandler.Saber.Methods.Refresh:Call()
            return FunctionsHandler.Saber.Methods.Start:Call()
        else
            if h == 1 then
                local X = FunctionsHandler.Saber.Methods.GetQuestplates:Call()
                for w, D in X do
                    SetTask('MainTask', "Saber Quest | Quest Plates | Touching " .. w .. "/5")
                    while CaculateDistance(D.Button.CFrame) > 20 do
                        task.wait()
                        TweenController.Create(D.Button.CFrame)
                    end
                    task.wait(1)
                end
            elseif h == 2 then
                SetTask('MainTask', 'Saber Quest | Torch Puzzle | Using Torch')
                Remotes.CommF_:InvokeServer("ProQuestProgress", 'GetTorch')
                task.wait(1)
                Remotes.CommF_:InvokeServer('ProQuestProgress', "DestroyTorch")
            elseif h == 3 then
                SetTask('MainTask', "Saber Quest | Sick Man | Helping with Cup")
                Remotes.CommF_:InvokeServer('ProQuestProgress', "GetCup")
                if ScriptStorage.Tools.Cup then
                    FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Cup')
                    task.wait(1)
                    Remotes.CommF_:InvokeServer("ProQuestProgress", 'FillCup', LocalPlayer.Character.Cup)
                end
                Remotes.CommF_:InvokeServer("ProQuestProgress", 'SickMan')
            elseif h == 4 then
                SetTask('MainTask', 'Saber Quest | Rich Son | Getting Information')
                Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
            elseif h == 5 then
                SetTask("MainTask", "Saber Quest | Mob Leader | Defeating Boss")
                CombatController.Attack('Mob Leader')
            elseif h == 6 then
                SetTask("MainTask", 'Saber Quest | Relic | Placing at Location')
                Remotes.CommF_:InvokeServer('ProQuestProgress', 'RichSon')
                Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic")
            elseif h == 7 then
                SetTask('MainTask', "Saber Quest | Saber Expert | Final Battle")
                CombatController.Attack("Saber Expert")
            end
        end
    end)
    Remotes.RefreshQuestPro.OnClientEvent:Connect(FunctionsHandler.Saber.Methods.Refresh.Callback)
    MeleeLastCursor = 1
    FirstCall = true
    CanPurchase = {}
    FunctionsHandler.MeleesController:RegisterMethod('Start', function()
        for h, X in MeleesTable do
            if X ~= "SanguineArt" then
                if not Config.Items.AutoFullyMelees then break end
                Data = MeleePrices[X]
                local w = CanPurchase[X]
                if not w then
                    CanPurchase[X] = Data.Buy(1)
                    print("CanBuy", X, Data.Buy(1))
                end
                local w = CanPurchase[X]
                if not Data then
                    print('no m1 data')
                    break
                end
                if X == "Dragon Talon" then
                    IsFireEssenceGave = (function()
                        if IsFireEssenceGave ~= nil then return IsFireEssenceGave end
                        local D = Remotes.CommF_:InvokeServer('BuyDragonTalon', true)
                        alert('Dragon Talon Purchased', tostring(typeof(D) ~= "string"))
                        return typeof(D) ~= 'string' and true or false
                    end)()
                    print("IsFireEssenceGave", IsFireEssenceGave)
                    if not IsFireEssenceGave then
                        print('no fire essence provided')
                        break
                    end
                end
                if X == 'Godhuman' and not GodHumanFlag then
                    if (ScriptStorage.Melees['Dragon Talon'] or 0) > 399 then
                        if not ScriptStorage.Melees.Godhuman then
                            Remotes.CommF_:InvokeServer("BuyGodhuman", true)
                            Remotes.CommF_:InvokeServer('BuyGodhuman')
                            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Melee')
                            if not ScriptStorage.Melees.Godhuman then
                                GodHumanFlag = true
                                return
                            end
                        end
                    end
                end
                if not ScriptStorage.Melees[X] or (ScriptStorage.Melees[X] or 0) < Data.NextLevelRequirement then
                    local D = GetMeleeIdByName(X)
                    local y = ScriptStorage.PlayerData
                    local L = true
                    if not D then return print('[ Debug ] Failed to get melee id of', X) end
                    MSet = false
                    if not w then
                        for w, D in Data.Price do
                            if y[w] < D and not FirstCall then
                                L = false
                                if not ScriptStorage.Melees[X] then
                                    MSet = true
                                    SetTask('SubTask', "Farming Until Enough " .. w .. " ( " .. D .. ' ) For ' .. X)
                                end
                                return
                            end
                        end
                    end
                    if not MSet and ScriptStorage.Melees[X] and ScriptStorage.Melees[X] < Data.NextLevelRequirement then
                        SetTask('SubTask',
                            "Farming Until Enough Mastery For " ..
                            X .. ' ( ' .. ScriptStorage.Melees[X] .. ' / ' .. Data.NextLevelRequirement .. " )")
                        if not ScriptStorage.Tools[X] then
                            print('no m1 found, buy')
                            Data.Buy()
                        end
                        return
                    end
                    if not FirstCall then
                        if L and Data.Requirements() and not ScriptStorage.Tools[X] then
                            if X == "Dragon Talon" and not IsFireEssenceGave then
                                alert('IsFireEssenceGave', tostring(IsFireEssenceGave))
                                return SetTask("SubTask", 'Waiting until have fire essence for dragon talon.')
                            end
                            Data.Buy()
                            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Melee')
                            if not ScriptStorage.Tools[X] then
                                task.wait()
                                if not ScriptStorage.Tools[X] then
                                    if (X == 'Death Step' or X == "Sharkman Karate") and SeaIndex ~= 2 then
                                        alert("Go Back To Second Sea", "Water Key / Library Key")
                                        Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    end
                                else
                                    MeleeLastCursor = h + 1
                                    return
                                end
                            else
                                MeleeLastCursor = h + 1
                                return
                            end
                        end
                    elseif not FirstCall then
                        MeleeLastCursor = h + 1
                    end
                end
            end
        end
        if FirstCall then
            FirstCall = false
            return
        end
        FarmingItem = nil
        for h, h in ScriptStorage.Backpack do
            if h.Type == "Sword" then
                if h.Name == 'Yama' or h.Name == "Tushita" then
                    MasteryRequirement = 350
                else
                    for X, X in h.MasteryRequirements do MasteryRequirement = X end
                end
                if h.Mastery < MasteryRequirement then
                    if h.Name == "Yama" or h.Name == "Tushita" then
                        FarmingItem = { h.Name, h.Mastery, MasteryRequirement }
                        break
                    end
                end
            end
        end
        if FarmingItem then
            SetTask("SubTask",
                "Farming mastery for " .. FarmingItem[1] .. " ( " .. FarmingItem[2] .. " / " .. FarmingItem[3] .. " )")
            if not ScriptStorage.Tools[FarmingItem[1]] then Remotes.CommF_:InvokeServer("LoadItem", FarmingItem[1]) end
            ScriptStorage.ForceToUseSword = FarmingItem
        end
        k[3][k[2]] = true
    end)
    FunctionsHandler.SecondSeaPuzzle:RegisterMethod('Refresh', function()
        if ScriptStorage.PlayerData.Level < 700 or SeaIndex ~= 1 then return end
        if FunctionsHandler.SecondSeaPuzzle:Get('IsCompleted') then return end
        local k = Remotes.CommF_:InvokeServer('DressrosaQuestProgress')
        print(959, k.TalkedDetective, k.KilledIceBoss)
        if not k.TalkedDetective then
            Result = 1
        elseif not k.KilledIceBoss then
            if ScriptStorage.Enemies.Jeremy then Result = 2 end
        else
            FunctionsHandler.SecondSeaPuzzle:Set("IsCompleted", true)
        end
        FunctionsHandler.SecondSeaPuzzle:Set("CurrentProgressLevel", Result)
        FunctionsHandler.SecondSeaPuzzle:Set('LastestRefreshSenque', os.time())
        return Result
    end)
    FunctionsHandler.SecondSeaPuzzle:RegisterMethod("Start", function()
        local k, h = FunctionsHandler.SecondSeaPuzzle:Get('CurrentProgressLevel'),
            FunctionsHandler.SecondSeaPuzzle:Get('LastestRefreshSenque')
        FunctionsHandler.SecondSeaPuzzle:Set('CurrentProgressLevel', nil)
        if not k then
            FunctionsHandler.SecondSeaPuzzle.Methods.Refresh:Call()
            return FunctionsHandler.SecondSeaPuzzle.Methods.Start:Call()
        elseif k == 1 then
            SetTask('MainTask', "Auto Second Sea - Talk To Detective")
            Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'Detective')
            Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
            task.wait(1)
            Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'UseKey')
        elseif k == 2 then
            Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective")
            Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'Detective')
            task.wait(1)
            Remotes.CommF_:InvokeServer('DressrosaQuestProgress', 'UseKey')
            SetTask("MainTask", "Auto Second Sea - Defeating Ice Admiral")
            CombatController.Attack("Ice Admiral")
            Remotes.CommF_:InvokeServer('TravelDressrosa')
        end
    end)
    FunctionsHandler.ColosseumPuzzle:RegisterMethod("Refresh", function()
        if SeaIndex ~= 2 then return end
        if ScriptStorage.PlayerData.Level < 850 or ScriptStorage.Backpack['Warrior Helmet'] then return end
        local k = Remotes.CommF_:InvokeServer("BartiloQuestProgress")
        if not k.KilledBandits then
            Result = 1
        elseif not k.KilledSpring then
            if ScriptStorage.Enemies.Jeremy then Result = 2 end
        elseif not k.DidPlates then
            Result = 3
        end
        FunctionsHandler.ColosseumPuzzle:Set("CurrentProgressLevel", Result)
        FunctionsHandler.ColosseumPuzzle:Set("LastestRefreshSenque", os.time())
        return Result
    end)
    print(4)
    FunctionsHandler.ColosseumPuzzle:RegisterMethod('Start', function()
        local k, h = FunctionsHandler.ColosseumPuzzle:Get("CurrentProgressLevel"),
            FunctionsHandler.ColosseumPuzzle:Get("LastestRefreshSenque")
        FunctionsHandler.ColosseumPuzzle:Set("CurrentProgressLevel", nil)
        print("Progress", k)
        if not k then
            FunctionsHandler.ColosseumPuzzle.Methods.Refresh:Call()
            return FunctionsHandler.ColosseumPuzzle.Methods.Start:Call()
        elseif k == 1 then
            SetTask("MainTask", 'Auto Bartilo Quest - Defeating 50x Swan Pirate')
            local h, X = J:GetCurrentClaimQuest()
            if h then
                if not string.find(X, '50') then
                    J.AbandonQuest()
                else
                    CombatController.Attack("Swan Pirate")
                end
            else
                J.StartQuest('BartiloQuest', 1)
            end
        elseif k == 2 then
            SetTask('MainTask', "Auto Bartilo Quest - Defeating Jeremy")
            CombatController.Attack("Jeremy")
        elseif k == 3 then
            SetTask("MainTask", 'Auto Bartilo Quest - Doing Puzzle')
            if CaculateDistance(CFrame.new(-1837.46155, 44.2921753, 1656.1987, 0.999881566, -1.03885048e-22, -0.0153914848, 1.07805858e-22, 1, 2.53909284e-22, 0.0153914848, -2.55538502e-22, 0.999881566)) > 10 then
                alert("tween to")
                TweenController.Create(CFrame.new(-1837.46155, 44.2921753, 1656.1987, 0.999881566, -1.03885048e-22,
                    -0.0153914848, 1.07805858e-22, 1, 2.53909284e-22, 0.0153914848, -2.55538502e-22, 0.999881566))
            else
                LocalPlayer = game.Players.LocalPlayer
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836.0, 11, 1714)
                alert("1")
                task.wait(.5)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685)
                alert('2')
                task.wait(1)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807)
                alert("3")
                task.wait(1)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685)
                task.wait(1)
                alert("4")
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541)
                task.wait(1)
                alert('5')
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659)
                task.wait(1)
                alert("6")
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368)
                task.wait(1)
                alert("7")
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625)
                task.wait(1)
                alert("8")
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541)
            end
        end
    end)
    FunctionsHandler.EvoRace:RegisterMethod("Refresh", function()
        if not Config.Items.RaceV2 then return end
        if SeaIndex ~= 2 then return end
        if getsenv(game.ReplicatedStorage.GuideModule)._G.ServerData.ExpBoost ~= 0 or ScriptStorage.PlayerData.Level < 900 or ScriptStorage.PlayerData.Beli < 1000000 or ScriptStorage.PlayerData.RaceLevel ~= 1 then return end
        return true
    end)
    FunctionsHandler.EvoRace:RegisterMethod('Start', function()
        Remotes.CommF_:InvokeServer('Alchemist', "1")
        Remotes.CommF_:InvokeServer('Alchemist', '2')
        for k = 1, 2, 1 do
            local h = ScriptStorage.Tools["Flower " .. k]
            local X = Services.Workspace:FindFirstChild('Flower' .. k)
            if not h then
                if X and X.Transparency == 0 then
                    SetTask('MainTask', 'Auto Race V2 - Collecting Flower ' .. k)
                    while not ScriptStorage.Tools["Flower " .. k] do
                        task.wait()
                        TweenController.Create(X.CFrame + Vector3.new(0, math.random(-1.0, 2), 0))
                    end
                end
            end
        end
        if not ScriptStorage.Tools['Flower 3'] then
            SetTask('MainTask', 'Auto Race V2 - Collecting Flower ' .. 3)
            CombatController.Attack('Swan Pirate')
        else
            SetTask("MainTask", 'Auto Race V2 - Idling')
            if LocalPlayer.Character.HumanoidRootPart.CFrame.Y < 50000 then
                TweenController.Create(LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0))
            end
            Remotes.CommF_:InvokeServer("Alchemist", "3")
            RefreshRace()
        end
    end)
    FunctionsHandler.BossesTask:RegisterMethod("Refresh", function()
        local k
        for h, h in BossesOrder do
            local X = BossesOrderLevel[h]
            if ScriptStorage.PlayerData.Level >= X then
                local X = ScriptStorage.Enemies[h]
                if X and X:FindFirstChild("Humanoid") and X.Humanoid.Health > 0 then k = X end
            end
        end
        if k and (CaculateDistance(k.HumanoidRootPart.CFrame) < (SeaIndex == 2 and 3000 or 5000) or BossesOrderWL[tostring(k)] or ScriptStorage.PlayerData.Level == MaxLevel) then
            return k
        end
    end)
    FunctionsHandler.BossesTask:RegisterMethod('Start', function(k)
        if k then
            SetTask("MainTask", "Auto Farm Boss - Defeating " .. k.Name)
            CombatController.Attack(tostring(k), null, null, function() SpecialItems = nil end)
            SpecialItems = nil
        end
    end)
    FunctionsHandler.SpecialBossesTask:RegisterMethod('Refresh', function()
        local k
        for h, X in SpecialBossesOrder do
            if ScriptStorage.PlayerData.Level >= X then
                local X = ScriptStorage.Enemies[h]
                if X and X:FindFirstChild('Humanoid') and X.Humanoid.Health > 0 then k = X end
            end
        end
        return k
    end)
    FunctionsHandler.SpecialBossesTask:RegisterMethod('Start', function(k)
        if FunctionsHandler.RaidController.Methods.GetCurrentRaidIsland:Call() then
            pcall(function() LocalPlayer.Character.Humanoid.Health = 0 end)
        end
        if k then
            SetTask('MainTask', "Auto Farm Boss - Defeating " .. k.Name)
            CombatController.Attack(tostring(k))
        end
    end)
    FunctionsHandler.RaidController:RegisterMethod('RefreshRaidType', function()
        for k, k in require(game.ReplicatedStorage.Raids).raids do
            if string.find(ScriptStorage.PlayerData.DevilFruit, k) then
                FunctionsHandler.RaidController:Set('CurrentChip', k)
                return
            end
        end
        FunctionsHandler.RaidController:Set('CurrentChip', 'Flame')
    end)
    FunctionsHandler.RaidController:RegisterMethod('GetRaidableFruit', function()
        for k, k in ScriptStorage.Backpack do
            if string.find(FruitIdToName(k.Name), " Fruit") then
                if k.Value and k.Value < 1000000 then return k end
            end
        end
    end)
    FunctionsHandler.RaidController:RegisterMethod("GetCurrentRaidIsland", function()
        PlayerPosition = LocalPlayer.Character.HumanoidRootPart.CFrame
        IslandsList = { {}, {}, {}, {}, {} }
        for k, k in workspace['_WorldOrigin'].Locations:GetChildren() do
            if string.find(k.Name, 'Island ') and CaculateDistance(k.Position, Vector3.new(0, 0, 0)) > 7000 then
                (function()
                    local h = string.gsub(k.Name, "Island ", "")
                    local X = tonumber(h)
                    table.insert(IslandsList[X], k)
                end)()
            end
        end
        do
            for k = 5, 1, -1.0 do
                for h, h in IslandsList[k] do if CaculateDistance(h.Position) < 2000 then return h end end
            end
        end
    end)
    function CheckSpecialMicrochip()
        for k, k in { LocalPlayer.Character:GetChildren(), LocalPlayer.Backpack:GetChildren() } do
            for h, h in k do if k.Name == "Special Microchip" then return k end end
        end
    end
    FunctionsHandler.RaidController:RegisterMethod("Refresh", function()
        local k = ScriptStorage.PlayerData.Level
        local h = ScriptStorage.PlayerData.Fragments
        if k < 1300 or SeaIndex == 1 then return end
        if k < 1500 and h > 2000 then return end
        if k < MaxLevel then
            if h > 5000 then return end
        else
            if h > 10000 then return end
        end
        local k = FunctionsHandler.RaidController.Methods.GetRaidableFruit:Call()
        if k then FunctionsHandler.RaidController:Set("CurrentProgressLevel", k) end
        return k or FunctionsHandler.RaidController.Methods.GetCurrentRaidIsland:Call() or CheckSpecialMicrochip()
    end)
    FunctionsHandler.RaidController:RegisterMethod("Start", function()
        if not FunctionsHandler.RaidController:Get('CurrentChip') then
            FunctionsHandler.RaidController.Methods
                .RefreshRaidType:Call()
        end
        local k = FunctionsHandler.RaidController.Methods.GetCurrentRaidIsland:Call()
        RefreshInventory()
        FunctionsHandler.RaidController:Set("CurrentProgressLevel", nil)
        if not k then
            SetTask('MainTask', 'Auto Raid - Buying Chip - ' .. FunctionsHandler.RaidController:Get("CurrentChip"))
            if not ScriptStorage.Tools['Special Microchip'] then
                local h = FunctionsHandler.RaidController.Methods.GetRaidableFruit:Call()
                table.insert(ScriptStorage.IgnoreStoreFruits, h.Name)
                alert('Load Fruit', h.Name)
                Remotes.CommF_:InvokeServer('LoadFruit', h.Name)
                Remotes.CommF_:InvokeServer("RaidsNpc", 'Select', FunctionsHandler.RaidController:Get('CurrentChip'))
                task.wait(2)
            end
            local h = ({ nil, 'Circle Island', "Boat Castle" })[SeaIndex]
            if not ScriptStorage.Map[h] and not ScriptStorage.Map[h] then
                task.wait(1)
                game.Players.LocalPlayer:Kick("Rejoining..")
            end
            if not ScriptStorage.Map[h]:FindFirstChild('RaidSummon2') then
                task.wait(1)
                TweenController.Create(ScriptStorage.Map[h]:GetModelCFrame() or ScriptStorage.Map[h]:GetModelCFrame())
            end
            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Special Microchip')
            fireclickdetector((ScriptStorage.Map[h] or workspace.Map:FindFirstChild(h) or workspace:FindFirstChild(h))
                .RaidSummon2.Button.Main.ClickDetector)
            local h = os.time()
            SetTask("MainTask", "Auto Raid - Waiting Until Raid Is Started")
            repeat task.wait() until os.time() - (LastRaidAlert2 or 0) < 20 or os.time() - h > 30
            TweenController.Create(LocalPlayer.Character.HumanoidRootPart.CFrame)
            repeat task.wait() until os.time() - (LastRaidAlert or 0) < 20 or os.time() - h > 30
            alert('cac', "Tween Paused")
            task.wait(.5)
            if os.time() - h > 30 then
                game.Players.LocalPlayer:Kick("Rejoining..")
                SetTask('MainTask', "Auto Raid - Raid Is Not Stared?")
                Report('[ Raid Error ] Time Limit Reached')
            end
            LastRaidAlert = 0
        else
            SetTask('MainTask', "Auto Raid - " .. k.Name .. " /5")
            local h = false
            for X, X in GetMonAsSortedRange() do
                local w = os.time()
                while X and X:FindFirstChild("HumanoidRootPart") and X.Humanoid.Health > 0 and CaculateDistance(X.HumanoidRootPart.Position) < 1000 and os.time() - w < 60 and task.wait(.05) do
                    h = true
                    if string.find(X.Name, "Master") or true then
                        CombatController.Attack(X.Name)
                    else
                        pcall(sethiddenproperty, LocalPlayer, 'SimulationRadius', math.huge)
                        pcall(function()
                            X.HumanoidRootPart.CanCollide = false
                            X.Humanoid.Health = 0
                            X:BreakJoints()
                        end)
                    end
                end
            end
            if not h then TweenController.Create(k.Position + Vector3.new(0, 100, 0)) end
        end
    end)
    FunctionsHandler.CollectDrops:RegisterMethod("Refresh", function()
        local k = {}
        for h in ScriptStorage.Backpack do k[FruitIdToName(h)] = h end
        for h, h in workspace:GetChildren() do
            if string.find(h.Name, 'Fruit') and not a:FindFirstChild(h.Name) and h:FindFirstChild("Handle") and not k[tostring(h)] and not ScriptStorage.Backpack[FruitNameToId(tostring(h))] then
                FunctionsHandler.CollectDrops:Set('CurrentProgressLevel', h)
                return h
            end
        end
    end)
    FunctionsHandler.CollectDrops:RegisterMethod('Start', function()
        local k = FunctionsHandler.CollectDrops:Get('CurrentProgressLevel')
        FunctionsHandler.CollectDrops:Set('CurrentProgressLevel', nil)
        if k then
            SetTask("MainTask", "Auto Collect Drop Items - " .. tostring(k))
            TweenController.Create(k:GetModelCFrame())
        end
    end)
    FunctionsHandler.UtillyItemsActivitation:RegisterMethod('Refresh', function()
        print(1)
        if os.time() - r[3][r[2]] < 20 then return end
        print(2)
        if not SpecialItems then
            SpecialItems = {}
            local k = {}
            IceAdmiralPassed = true
            if not ScriptStorage.Backpack.Rengoku then
                table.insert(SpecialItems, "Hidden Key")
                IceAdmiralPassed = false
            end
            print(3)
            if SeaIndex == 2 and Services.Workspace.Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor") then
                table.insert(SpecialItems, 'Library Key')
                IceAdmiralPassed = false
            end
            print(4)
            if IceAdmiralPassed then table.insert(k, 'Awakened Ice Admiral') end
            print(5)
            local h = not ScriptStorage.Melees['Sharkman Karate'] and
                Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            print(6)
            SharkmanPassed = typeof(h) == 'string'
            if typeof(h) == "string" then
                table.insert(SpecialItems, 'Water Key')
            else
                TidePassed = true
                table.insert(k, 'Tide Keeper')
            end
            print(7)
            if ScriptStorage.Backpack.Yama then
                print("Elite")
                table.insert(k, "Deandre")
                table.insert(k, 'Urban')
                table.insert(k, 'Diablo')
            end
            print()
            local function h()
                local X = {}
                for w, w in BossesOrder do
                    local D = true
                    for y, y in k do if y == w then D = false end end
                    if D then table.insert(X, w) end
                end
                local k = #X
                for w = 1, k - 1 do
                    for D = 1, k - w do
                        local k = key and tostring(X[D][key]):lower() or tostring(X[D]):lower()
                        local w = key and tostring(X[D + 1][key]):lower() or tostring(X[D + 1]):lower()
                        if k > w then X[D], X[D + 1] = X[D + 1], X[D] end
                    end
                end
                return X
            end
            print(9)
            BossesOrder = h()
            for k, h in DropItemData do
                if not ScriptStorage.Backpack[k] and SeaIndex == h.Sea then
                    if ScriptStorage.PlayerData.Level >= h.Level then
                        BossesOrderLevel[h.Boss] = h.Level
                        table.insert(BossesOrder, h.Boss)
                    end
                end
            end
            print(10)
            if FunctionsHandler.Trevor:Get("IsCompleted") and not Storage:Get('SwanDefeated') then
                print("Added Don Swan to boss orser list")
                BossesOrderLevel["Don Swan"] = 1100
                table.insert(BossesOrder, 'Don Swan')
                print(ScriptStorage.PlayerData.Level, ScriptStorage.Enemies["Don Swan"])
                if SeaIndex == 2 and ScriptStorage.PlayerData.Level > 1500 and not ScriptStorage.Enemies['Don Swan'] then
                    print('hop')
                    alert("Don Swan", 'Hopping for Don Swan')
                    Hop()
                end
            end
        end
        print(11)
        for k, k in SpecialItems do
            if ScriptStorage.Tools[k] then
                FunctionsHandler.UtillyItemsActivitation:Set('CurrentProgressLevel', k)
                return k
            end
        end
        print(12)
        if SeaIndex == 3 and (ScriptStorage.Melees["Death Step"] or 0) >= 400 and (ScriptStorage.Melees["Black Leg"] or 0) >= 400 and ScriptStorage.PlayerData.Beli >= 2500000 and ScriptStorage.PlayerData.Fragments >= 5000 and not ScriptStorage.Melees['Electric Claw'] then
            FunctionsHandler.UtillyItemsActivitation:Set('CurrentProgressLevel', "Previous Hero")
            return 'Previous Hero'
        end
        print(13)
        if ScriptStorage.Tools["Red Key"] then
            FunctionsHandler.UtillyItemsActivitation:Set("CurrentProgressLevel", "Red Key")
            return 'Red Key'
        end
        print(14)
        if ScriptStorage.Tools['Hallow Essence'] then
            FunctionsHandler.UtillyItemsActivitation:Set("CurrentProgressLevel", 'Soul Reaper Spawner')
            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call("Fire Essence")
            return "Soul Reaper Spawner"
        end
        print(15)
        if ScriptStorage.Tools['Fire Essence'] then
            FunctionsHandler.UtillyItemsActivitation:Set('CurrentProgressLevel', "Uzoth")
            return 'Uzoth'
        end
        print(16)
    end)
    FunctionsHandler.UtillyItemsActivitation:RegisterMethod('Start', function()
        local k = FunctionsHandler.UtillyItemsActivitation:Get("CurrentProgressLevel")
        if k == 'Hidden Key' then
            Remotes.CommF_:InvokeServer("OpenRengoku")
        elseif k == 'Water Key' then
            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call("Water Key")
            Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        elseif k == "Library Key" then
            Remotes.CommF_:InvokeServer("OpenLibrary")
            Services.Workspace.Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor"):Destroy()
        elseif k == "Red Key" then
            alert('Red Key', "Submitting red key to the scienctist.")
            Remotes.CommF_:InvokeServer('CakeScientist', "Check")
            ScriptStorage.Tools["Red Key"]:Destroy()
        elseif k == 'Previous Hero' then
            Remotes.CommF_:InvokeServer('BuyElectricClaw', "Start")
            task.wait(3)
            repeat
                task.wait()
                TweenController.Create(CFrame.new(-12548.0, 332.378 + math.random(-2.0, 2), -7617.0))
            until CaculateDistance(CFrame.new(-12548.0, 332.378, -7617.0)) < 30
            Data = MeleePrices["Electric Claw"]
            Data.Buy(1)
            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Melee')
        elseif k == "Uzoth" then
            print('Use Fire Essence')
            Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
            Remotes.CommF_:InvokeServer('BuyDragonTalon')
            IsFireEssenceGave = true
            Report("Fire Essence Used")
        elseif k == "Soul Reaper Spawner" then
            print("Use Hallow Essence")
            if CaculateDistance(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame) < 100 then SpecialItems = nil end
            TweenController.Create(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)
        end
    end)
    FunctionsHandler.Trevor:RegisterMethod('GetFruit', function()
        for k, k in ScriptStorage.Backpack do
            if string.find(FruitIdToName(k.Name), " Fruit") then
                if k.Value and k.Value > 1000000 and k.Value < 2500000 then return k end
            end
        end
    end)
    FunctionsHandler.Trevor:RegisterMethod('Refresh', function()
        if FunctionsHandler.Trevor:Get('IsCompleted') or os.time() - r[3][r[2]] < 1 then return end
        if ScriptStorage.PlayerData.Level < 1100 then return end
        local k = FunctionsHandler.Trevor.Methods.GetFruit:Call()
        if k then FunctionsHandler.Trevor:Set('Fruit', k) end
        TrevorDebounce = os.time()
        if not FunctionsHandler.Trevor:Get('IsCompleted') then
            print('Update IsCompleted')
            FunctionsHandler.Trevor:Set('IsCompleted', (Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0))
            print("Update IsCompleted", FunctionsHandler.Trevor:Get('IsCompleted'),
                Remotes.CommF_:InvokeServer("TalkTrevor", "1"), Remotes.CommF_:InvokeServer('TalkTrevor', "1") == 0)
        end
        return not FunctionsHandler.Trevor:Get("IsCompleted") and k
    end)
    FunctionsHandler.Trevor:RegisterMethod("Start", function()
        alert('[ cac ]', "Pulling fruit for trevor...")
        local k = FunctionsHandler.Trevor:Get("Fruit")
        FunctionsHandler.Trevor:Set('Fruit', nil)
        table.insert(ScriptStorage.IgnoreStoreFruits, k.Name)
        Remotes.CommF_:InvokeServer('LoadFruit', k.Name)
        task.wait()
        FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call(FruitIdToName(k.Name))
        Remotes.CommF_:InvokeServer('TalkTrevor', '1')
        Remotes.CommF_:InvokeServer('TalkTrevor', "2")
        Remotes.CommF_:InvokeServer("TalkTrevor", "3")
        task.wait(1)
        FunctionsHandler.Trevor:Set('IsCompleted', true)
    end)
    print(4)
    FunctionsHandler.ThirdSeaPuzzle:RegisterMethod("Refresh", function()
        if ScriptStorage.PlayerData.Level < 1500 or SeaIndex ~= 2 then return end
        if nil == FunctionsHandler.ThirdSeaPuzzle:Get('State') then
            ZQuestProgress = Remotes.CommF_:InvokeServer("ZQuestProgress", 'Check')
            print('ZQuestProgress', ZQuestProgress)
            FunctionsHandler.ThirdSeaPuzzle:Set("State", ZQuestProgress == 0)
        end
        return FunctionsHandler.ThirdSeaPuzzle:Get('State')
    end)
    FunctionsHandler.ThirdSeaPuzzle:RegisterMethod('Start', function()
        local k = FunctionsHandler.ThirdSeaPuzzle:Get("State")
        alert('1093', "start")
        if k then
            alert('1095', "case test")
            repeat
                task.wait(1)
                alert('1096', 'fire')
                print('StartResponse', Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin"))
            until CaculateDistance(Vector3.new(0, 0, 0)) > 20000
            task.spawn(function()
                alert("1098", "rejoin")
                task.wait(30)
                LocalPlayer:Kick()
            end)
            alert("attack")
            while task.wait() do CombatController.Attack("rip_indra") end
        end
    end)
    FunctionsHandler.Yama:RegisterMethod('Refresh', function()
        if SeaIndex ~= 3 then return end
        if ScriptStorage.Backpack.Yama then return end
        if not FunctionsHandler.Yama:Get("EliteCount") then
            FunctionsHandler.Yama:Set("EliteCount", Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
        end
        if FunctionsHandler.Yama:Get('EliteCount') >= 30 then return true end
    end)
    FunctionsHandler.Yama:RegisterMethod("Start", function()
        repeat
            task.wait()
            TweenController.Create(game:GetService("ReplicatedStorage").FakeIslands.Waterfall:GetModelCFrame())
        until workspace.Map:FindFirstChild("Waterfall") and workspace.Map.Waterfall:FindFirstChild("SealedKatana")
        fireclickdetector(workspace.Map.Waterfall.SealedKatana.Hitbox.ClickDetector)
    end)
    FunctionsHandler.PirateRaid:RegisterMethod("Refresh", function()
        local k = FunctionsHandler.PirateRaid:Get('Senque')
        return k and os.time() - k < 500
    end)
    FunctionsHandler.PirateRaid:RegisterMethod("Start", function()
        local k = GetMonAsSortedRange()
        local h = Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)
        if k[1] then
            local X, w = k[1]:FindFirstChild("Humanoid"), k[1]:FindFirstChild("HumanoidRootPart")
            if w and X and X.Health > 0 and CaculateDistance(w.CFrame, h) < 500 then
                CombatController.Attack(k[1].Name)
                return
            end
        end
        TweenController.Create(h)
    end)
    function CheckFullMoon(k)
        if Lighting.Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=970914431' then return end
        if k then return true end
        return Lighting.ClockTime > 18 or Lighting.ClockTime < 5
    end
    FunctionsHandler.SoulGuitar:RegisterMethod("Refresh", function()
        if not Config.Items.SoulGuitar then return end
        if ScriptStorage.Backpack['Skull Guitar'] or not ScriptStorage.Backpack['Dark Fragment'] then return end
        if ScriptStorage.PlayerData.Level < 2300 then return end
        local k = (ScriptStorage.Backpack['Ectoplasm'] or { Count = 0 })["Count"]
        local h = (ScriptStorage.Backpack["Bones"] or { Count = 0 })['Count']
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
        if not SoulGuitarProcess.Swamp then
            return 2
        elseif not SoulGuitarProcess.Gravestones then
            return 3
        elseif not SoulGuitarProcess.Ghost then
            return 4
        elseif not SoulGuitarProcess.Trophies then
            return 5
        elseif not SoulGuitarProcess.Pipes then
            return 6
        elseif h >= 500 and not ScriptStorage.Backpack["Skull Guitar"] then
            return 8
        end
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
                CombatController.Attack({ "Ship Deckhand", "Ship Engineer", 'Ship Steward', "Ship Officer" })
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
            for h, X in { Placard1 = "Right", Placard2 = "Right", Placard3 = "Left", Placard4 = 'Right', Placard5 = 'Left', Placard6 = 'Left', Placard7 = "Left" } do
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
                        repeat
                            task.wait()
                            fireclickdetector(X.ClickDetector)
                        until X.Line.Rotation.Z == 0
                    end
                end
                for h, X in pairs(Trophy) do
                    local w = workspace.Map["Haunted Castle"].Trophies.Quest[X].Handle.CFrame
                    w = tostring(w)
                    w = w:split(", ")[4]
                    local X = "180"
                    if w == "1" or w == "-1" then X = "90" end
                    if not string.find(tostring(W[h].Line.Rotation.Z), X) then
                        repeat
                            task.wait()
                            fireclickdetector(W[h].ClickDetector)
                        until string.find(tostring(W[h].Line.Rotation.Z), X)
                    end
                end
            end
        elseif k == 6 then
            for W, h in pairs(Pipes) do
                pcall(function()
                    local X = workspace.Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model[W]
                    if X.BrickColor.Name ~= h then
                        repeat
                            task.wait()
                            fireclickdetector(X.ClickDetector)
                        until X.BrickColor.Name == h
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
            alert('Auto Tushita', 'Placing torches...')
            TweenController.Create(CFrame.new(5714, math.random(19, 21), 256))
            if ScriptStorage.Tools["Holy Torch"] then
                for W = 1, 5 do Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", W) end
                return true
            end
        elseif k == 2 then
            alert("Auto Tushita", "Defeating Longma")
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
    if not k or k == 'uwu' then 
        -- NẾU CHƯA CÓ NHIỆM VỤ -> TỰ ĐỘNG GỌI SERVER ÉP NHẬN QUEST
        pcall(function()
            local remote = game:GetService("ReplicatedStorage").Remotes.CommF_
            -- Gửi 2 lệnh phổ biến nhất để kích hoạt NPC Crypt Master
            remote:InvokeServer("CDKQuest", "Start")
            remote:InvokeServer("Talk", "Crypt Master")
        end) 
        -- Báo lên màn hình cho mày biết nó đang làm gì
        if SetText then SetText('MainTask', "Auto Starting CDK Quest...") end
        task.wait(2) -- Đợi server load data 2 giây
        return 
    end
        if workspace.Map.Turtle.Cursed:FindFirstChild("Breakable") then
            alert('Cursed Dual Katana', 'Open Door')
            return { "break" }
        end
        local W = { Good = 'Tushita', Evil = 'Yama' }
        if k.Good == 4 and k.Evil == 4 then
            print("burn 2")
            return { 'burn 2' }
        end
        if k.Good == 3 or k.Evil == 3 then
            print('burn 1')
            return { "burn" }
        end
        if k.Opened then
            for h, X in k do
                if h ~= 'Opened' and h ~= "Finished" and X < 3 then
                    print(h, X)
                    ScriptStorage.CdkCache = { h, X + 1 }
                    if not ScriptStorage.Tools[W[h]] then Remotes.CommF_:InvokeServer('LoadItem', W[h]) end
                    alert("Cursed Dual Katana", "Start " .. tostring(W[h]) .. ' ' .. tostring(h))
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
                -- Ải 2: Phục kích Hải Tặc (V11 - Chống liệt chân tại Portal)
                local castlePos = Vector3.new(-5075, 315, -3150)
                local lplr = game:GetService("Players").LocalPlayer
                local root = lplr.Character and lplr.Character:FindFirstChild("HumanoidRootPart")
                
                if not root then return end
                
                local distToCastle = (root.Position - castlePos).Magnitude
                local foundPirate = false
                
                pcall(function()
                    if workspace:FindFirstChild("Enemies") then
                        for _, mob in pairs(workspace.Enemies:GetChildren()) do
                            if mob:IsA("Model") and mob:FindFirstChild("Humanoid") and mob.Humanoid.Health > 0 and mob:FindFirstChild("HumanoidRootPart") then
                                local name = mob.Name
                                local mobDist = (mob.HumanoidRootPart.Position - castlePos).Magnitude
                                if mobDist < 800 and name ~= "Beautiful Pirate" and (string.find(name, "Pirate") or string.find(name, "Billionaire") or name == "Diablo" or name == "Deandre" or name == "Urban") then
                                    SetTask("SubTask", "CDK Quest / ĐANG DIỆT HẢI TẶC: " .. name)
                                    if CombatController and CombatController.Attack then
                                        CombatController.Attack(name)
                                    end
                                    foundPirate = true
                                    _G.IsFlyingToCastle = false
                                    break
                                end
                            end
                        end
                    end
                end)
                
                if not foundPirate then
                    if distToCastle > 150 then 
                        SetTask("SubTask", "CDK Quest / Đang bay ra Castle phục kích...")
                        if not _G.IsFlyingToCastle then
                            _G.IsFlyingToCastle = true
                            task.spawn(function()
                                local TS = game:GetService("TweenService")
                                local tween = TS:Create(root, TweenInfo.new(distToCastle/300, Enum.EasingStyle.Linear), {CFrame = CFrame.new(castlePos)})
                                tween:Play()
                                tween.Completed:Wait()
                                _G.IsFlyingToCastle = false
                            end)
                        end
                    else
                        _G.IsFlyingToCastle = false
                        SetTask("SubTask", "CDK Quest / Đã tới Castle! Đang canh cửa Hải Tặc...")
                        if root:FindFirstChild("BodyVelocity") then root.BodyVelocity:Destroy() end
                    end
                end
                return
            elseif h == 3 then
                -- ==========================================
                -- ẢI 3: CAKE QUEEN (V22 - CHUỘC LỖI TRẢ LẠI HÀM THẮP ĐUỐC)
                -- ==========================================
                if not _G.CDK_H3_Entry_Reset then
                    _G.CDK_H3_Entry_Reset = true
                    _G.CDK_H2_Entry_Reset = false
                    _G.CDK_H2_Flying = false
                    if _G.CDK_H2_Tween then _G.CDK_H2_Tween:Cancel() end
                    _G.WasAttackingBoss = false 
                    _G.ToolsHidden = false 
                end

                local bossName = "Cake Queen"
                local bossAliveInServer = false
                local bossInWorkspace = false
                
                pcall(function()
                    if ScriptStorage and ScriptStorage.Enemies and ScriptStorage.Enemies[bossName] then bossAliveInServer = true end
                end)
                pcall(function()
                    if workspace:FindFirstChild("Enemies") and workspace.Enemies:FindFirstChild(bossName) then bossInWorkspace = true end
                end)
                
                if not bossAliveInServer then
                    -- 1. TRẢ LẠI VŨ KHÍ KHI BOSS CHẾT
                    if _G.ToolsHidden then
                        pcall(function()
                            local plr = game:GetService("Players").LocalPlayer
                            for _, tool in pairs(game.Lighting:GetChildren()) do
                                if tool:IsA("Tool") and tool:GetAttribute("HiddenByScript") then
                                    tool.Parent = plr.Backpack
                                end
                            end
                        end)
                        _G.ToolsHidden = false
                    end

                    if _G.WasAttackingBoss then
                        SetTask("SubTask", "CDK Quest / ĐÃ VÀO DIMENSION! GỌI LỆNH THẮP ĐUỐC!")
                        _G.WasAttackingBoss = false
                        
                        -- TRẢ LẠI LỆNH GỐC CỦA DEV MÀ TAO LỠ XÓA:
                        pcall(function()
                            if TweenController and TweenController.Cancel then TweenController:Cancel() end -- Dừng ngay vụ bay về Tiki
                            if FunctionsHandler and FunctionsHandler.CursedDualKatana and FunctionsHandler.CursedDualKatana.Methods and FunctionsHandler.CursedDualKatana.Methods.DoDimension then
                                FunctionsHandler.CursedDualKatana.Methods.DoDimension.Callback("Heavenly Dimension")
                            end
                            CdkProgress = nil -- Reset vòng lặp để Hub nhận diện đang ở Dimension
                        end)
                        
                        task.wait(5)
                        return 
                    end
                    
                    SetTask("SubTask", "CDK Quest / Server sạch bóng, đang SUPER HOP...")
                    if not _G.IsHoppingNow then
                        _G.IsHoppingNow = true
                        task.spawn(function()
                            pcall(function()
                                local req = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
                                local url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100"
                                local res = req({Url = url, Method = "GET"})
                                if res and res.StatusCode == 200 then
                                    local data = game:GetService("HttpService"):JSONDecode(res.Body)
                                    local servers = {}
                                    for _, v in pairs(data.data) do
                                        if type(v) == "table" and v.playing and v.maxPlayers and v.id ~= game.JobId and v.playing < (v.maxPlayers - 2) then
                                            table.insert(servers, v.id)
                                        end
                                    end
                                    if #servers > 0 then game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer) end
                                end
                            end)
                            task.wait(5)
                            _G.IsHoppingNow = false
                        end)
                    end
                else
                    if not bossInWorkspace then
                        SetTask("SubTask", "CDK Quest / Boss đang ở Đảo Kem, Tự bay tới để load Map...")
                        local iceCreamPos = CFrame.new(-710, 382, -11150) 
                        local lplr = game:GetService("Players").LocalPlayer
                        local root = lplr.Character and lplr.Character:FindFirstChild("HumanoidRootPart")
                        if root then
                            local dist = (root.Position - iceCreamPos.Position).Magnitude
                            if dist > 300 then
                                if not _G.CDK_H3_Flying then
                                    _G.CDK_H3_Flying = true
                                    _G.CDK_H3_Tween = game:GetService("TweenService"):Create(root, TweenInfo.new(dist/300, Enum.EasingStyle.Linear), {CFrame = iceCreamPos})
                                    _G.CDK_H3_Tween:Play()
                                    task.spawn(function()
                                        local completed = false
                                        _G.CDK_H3_Tween.Completed:Connect(function() completed = true end)
                                        while task.wait() and not completed and h == 3 and _G.CDK_H3_Flying do end
                                        _G.CDK_H3_Flying = false
                                    end)
                                end
                            end
                        end
                    else
                        if _G.CDK_H3_Flying then
                            _G.CDK_H3_Flying = false
                            if _G.CDK_H3_Tween then _G.CDK_H3_Tween:Cancel() end
                        end
                        
                        SetTask("SubTask", "CDK Quest / ĐÃ TỊCH THU MELEE! ĐANG ÉP HUB CHÉM BẰNG TUSHITA!")
                        _G.WasAttackingBoss = true 

                        -- 2. CHIẾN DỊCH TỊCH THU: CHỈ CHỪA LẠI TUSHITA
                        if not _G.ToolsHidden then
                            _G.ToolsHidden = true
                            pcall(function()
                                local plr = game:GetService("Players").LocalPlayer
                                for _, tool in pairs(plr.Backpack:GetChildren()) do
                                    if tool:IsA("Tool") and tool.Name ~= "Tushita" then
                                        tool:SetAttribute("HiddenByScript", true)
                                        tool.Parent = game.Lighting
                                    end
                                end
                                if plr.Character then
                                    for _, tool in pairs(plr.Character:GetChildren()) do
                                        if tool:IsA("Tool") and tool.Name ~= "Tushita" then
                                            tool:SetAttribute("HiddenByScript", true)
                                            tool.Parent = game.Lighting
                                        end
                                    end
                                end
                            end)
                        end
                        
                        pcall(function()
                            local plr = game:GetService("Players").LocalPlayer
                            local tushita = plr.Backpack:FindFirstChild("Tushita")
                            if tushita then plr.Character.Humanoid:EquipTool(tushita) end
                        end)

                        -- 3. GỌI LẠI NÃO GỐC ĐỂ NÓ NÉ ĐÒN
                        if CombatController and CombatController.Attack then 
                            CombatController.Attack(bossName) 
                        end
                    end
                end
                return
            end
        end
        return k
    end)
    FunctionsHandler.CursedDualKatana:RegisterMethod("GetHazeMon", function()
        local k = {}
        for W, W in LocalPlayer.QuestHaze:GetChildren() do if W.Value > 0 then table.insert(k, W) end end
        table.sort(k,
            function(W, h)
                return CaculateDistance(W:GetAttribute('Position')) <
                    CaculateDistance(h:GetAttribute('Position'))
            end)
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
                        fireproximityprompt(workspace.Map:WaitForChild(W, 10):FindFirstChild(tostring(h))
                            .ProximityPrompt)
                    end
                    for W, W in workspace.Enemies:GetChildren() do
                        local h = W:FindFirstChild("HumanoidRootPart")
                        local X = W:FindFirstChild("Humanoid")
                        if h and X and CaculateDistance(h.CFrame) < 1000 then CombatController.Attack(W.Name) end
                    end
                end
                ExitDoor = k:FindFirstChild("Exit")
                print("exit door", ExitDoor)
                if ExitDoor then
                    PortalBrick = tostring(ExitDoor.BrickColor)
                    print("Brick color", ExitDoor, ExitDoor.BrickColor, PortalBrick)
                end
            else
                print('no island idk wt-')
            end
            print('loop damn', PortalBrick)
        until PortalBrick == 'Olive' or PortalBrick == "Cloudy grey"
        print('leave')
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
                Report("found cdk yama 3")
                while not (os.time() - TorchEnabledTime < 100 or not ScriptStorage.Enemies["Soul Reaper"]) do
                    print("tweening to soul reaper")
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
                    print('attacking cage queen')
                    CombatController.Attack("Cage Queen")
                until os.time() - TorchEnabledTime < 10 or not ScriptStorage.Enemies['Cake Queen']
                TweenController.Create(LocalPlayer.Character.HumanoidRootPart.CFrame)
                Report('Cake Queen')
                FunctionsHandler.CursedDualKatana.Methods.DoDimension.Callback("Heavenly Dimension")
                CdkProgess = nil
            end
        end
    end)
    local k = { Listeners = {} }
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
    k:RegisterNotifyListener("been spotted approaching",
        function() FunctionsHandler.PirateRaid:Set('Senque', os.time()) end)
    k:RegisterNotifyListener('job', function() FunctionsHandler.PirateRaid:Set('Senque', 0) end)
    k:RegisterNotifyListener("level", function() AddPoint() end)
    k:RegisterNotifyListener("torch", function() TorchEnabledTime = os.time() end)
    k:RegisterNotifyListener("scroll reacts", function() DoneCdkTick = os.time() end)
    k:RegisterNotifyListener("elite", function()
        FunctionsHandler.Yama:Set('EliteCount', Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))
        alert("[HoangPhucHub ] ", "Elite defeated: " .. tostring(FunctionsHandler.Yama:Get("EliteCount") or 'n/a'))
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
    if SeaIndex ~= 1 then end
    function IfTableHaveIndex(k) for W in k do return true end end
    print(1)
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
            table.insert(X, { JobId = w, Players = D.Count, LastUpdate = D.__LastUpdate, Region = D.Region })
        end
        print(#X, "servers received")
        for h = 1, #X do
            while task.wait() do
                local h = math.random(1, #X)
                ServerData = X[h]
                if ServerData then
                    if not k or ServerData.Players < k then
                        if not W or ServerData.Regoin == W then
                            print("Found Server:", ServerData.JobId, "Player Count:", ServerData.Players, 'Region:',
                                ServerData.Region)
                            break
                        end
                    end
                end
            end
        end
        print('Teleporting to', ServerData.JobId, "..")
        game:GetService("ReplicatedStorage"):WaitForChild('__ServerBrowser'):InvokeServer("teleport", ServerData.JobId)
    end
    LowHop = function(k, k)
        local k = {}
        local W = game:HttpGet('https://games.roblox.com/v1/games/' ..
            game.PlaceId .. '/servers/Public?sortOrder=Asc&limit=100&excludeFullGames=true')
        local h = game:GetService("HttpService"):JSONDecode(W)
        if h and h.data then
            for W, W in next, h.data do
                if type(W) == "table" and tonumber(W.playing) and tonumber(W.maxPlayers) and W.playing < 5 and W.id ~= JobId then
                    table.insert(k, 1, W.id)
                end
            end
        end
        if #k > 0 then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, k[math.random(1, #k)],
                game.Players.LocalPlayer)
        else
            return alert('Serverhop', "Couldn't find a server.")
        end
    end
    Storage = { WRITE_DELAY = .5, Data = {} }
    Services = {}
    setmetatable(Services, { __index = function(k, k) return game:GetService(k) end })
    LocalPlayer = game.Players.LocalPlayer
    local k = "HoangPhucHub/.storage_u_" .. tostring(LocalPlayer)
    function Decode(W) return Services.HttpService:JSONDecode(W) end
    function Encode(W) return Services.HttpService:JSONEncode(W) end
    print(5)
    function Storage.Set(W, h, X) W.Data[h] = X end
    function Storage.Get(W, h) return W.Data[h] end
    function Storage.Save(W) writefile(k, Encode(W.Data)) end
    if not isfile(k) then
        writefile(k, "{}")
        task.wait(1)
    end
    Storage.Data = {}
    pcall(function() Storage.Data = Decode(readfile(k) or '{}') end)
    if Storage.Data["SavedMelees"] then
        for meleeName, level in pairs(Storage.Data["SavedMelees"]) do
            ScriptStorage.Melees[meleeName] = level
        end -- <<< CHỮ END THỨ 1 (Đóng vòng lặp for)
        RefreshMelees()
    end -- <<< CHỮ END THỨ 2 (Đóng lệnh if)
    spawn(function() while task.wait(Storage.WRITE_DELAY) do Storage:Save() end end)
    CreateTraceback('Initalize', "Initalizing script..")
    task.spawn(function()
        local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
        local Main = PlayerGui:WaitForChild("Main", 15)    -- Đợi tối đa 15s cho UI Main xuất hiện
        if Main then
            local Settings = Main:WaitForChild("Settings", 15) -- Tiếp tục đợi UI Settings
            if Settings then
                pcall(function()
                    local fastBtn = Settings.Buttons.Page2.FastModeButton
                    for _, connection in pairs(getconnections(fastBtn.Activated)) do
                        connection.Function()
                    end
                end)
            end
        end
    end)
    local k = {}
    SetTask("MainTask", 'n/a')
    SetTask("SubTask", 'n/a')
    ParsingTimes = 0
    function RefreshTasksData()
        if _G.Stop then return end
        for _, taskName in ipairs(TasksOrder) do
        local module = FunctionsHandler[taskName]
                    if module then
                        if not module.Initalized then
                            if not k[taskName] then
                                print("[ Debug ] Task", taskName, "is not registered yet")
                                k[taskName] = true
                            end
                        else
        local refresh = module.Methods.Refresh
                            local start = module.Methods.Start
                            -- Mặc giáp: Kiểm tra refresh có tồn tại hàm Call không
                            if refresh and refresh.Call then
                                local result = refresh:Call(ParsingTimes < 100)
                                ParsingTimes = ParsingTimes + 1
                                if result and ParsingTimes > 100 then
                                    CurrentTask = taskName
                                    pcall(function()
                                        if ScriptStorage and ScriptStorage.Interface and ScriptStorage.Interface.SetText then
                                            ScriptStorage.Interface.SetText('DebugLine', taskName)
                                        elseif SetText then
                                            SetText('DebugLine', taskName)
                                        end
                                    end)
                                    -- Mặc giáp: Kiểm tra start có tồn tại không rồi mới Call
                                    if start and start.Call then
                                        start:Call(result)
                                    end
                                    return
                                end -- Đóng if result
                            end -- Đóng if refresh
                        end -- Đóng if not module.Initialized / else
                    end -- Đóng if module then
                end -- Đóng vòng lặp for
            end -- ĐÓNG HÀM RefreshTasksData CHỐT SỔ!
        -- ==== CÁC LỆNH SETTEXT VÀ BỌC GIÁP BÊN DƯỚI ====
        pcall(function()
            if ScriptStorage and ScriptStorage.Interface and ScriptStorage.Interface.SetText then
                ScriptStorage.Interface.SetText('MainTextLabel', "Refreshing Player Items..")
            elseif type(SetText) == "function" then
                SetText('MainTextLabel', "Refreshing Player Items..")
            end
        end)
        if type(AddPoint) == "function" then pcall(AddPoint) end
        -- Mặc giáp VIP cho J:RefreshQuest
        if type(J) == "table" and type(J.RefreshQuest) == "function" then
            pcall(function() J:RefreshQuest() end)
        end
        if type(RefreshInventory) == "function" then pcall(RefreshInventory) end
        -- Bọc giáp cho Remotes
        pcall(function()
            if Remotes and Remotes.CommE then
                Remotes.CommE.OnClientEvent:Connect(function(...)
                    local args = {...}
                    if string.find(args[1] or "", 'Item') and type(RefreshInventory) == "function" then 
                        RefreshInventory() 
                    end
                end)
            end
        end)
        if type(RefreshRace) == "function" then pcall(RefreshRace) end
        -- Chống văng game khi treo AFK
        pcall(function()
            local a_Player = game:GetService("Players").LocalPlayer
            if a_Player then
                a_Player.Idled:Connect(function()
                    local vu = game:GetService("VirtualUser")
                    if vu then
                        vu:CaptureController()
                        vu:ClickButton2(Vector2.new())
                    end
                end)
            end
        end)
        pcall(function()
            if ScriptStorage and ScriptStorage.Interface and ScriptStorage.Interface.SetText then
                ScriptStorage.Interface.SetText("MainTextLabel", 'Loaded In ' .. tostring(math.floor(tick() - (StartTick or tick()))) .. 'ms!')
            elseif type(SetText) == "function" then
                SetText("MainTextLabel", 'Loaded In ' .. tostring(math.floor(tick() - (StartTick or tick()))) .. 'ms!')
            end
        end)
 QueueList = {}
    function NearbyHopHandler()
        -- Tạm thời bỏ qua hàm này để tránh lỗi văng game vớ vẩn
        return
    end
-- VÒNG LẶP UPDATE GIAO DIỆN & THỜI GIAN
            task.spawn(function()
                while task.wait(1) do
                    if not _G.Stop then
                        pcall(NearbyHopHandler)
                        -- Bọc giáp check nhân vật ngồi
                        pcall(function()
                            local lplr = game:GetService("Players").LocalPlayer
                            if lplr and lplr.Character then
                                local hum = lplr.Character:FindFirstChild("Humanoid")
                                if hum and hum.Sit then
                                    hum:ChangeState(Enum.HumanoidStateType.Jumping)
                                end
                            end
                        end)
                        -- Bọc giáp cập nhật thời gian & Ghi File
                        pcall(function()
                            if type(RefreshPlayerData) == "function" then RefreshPlayerData() end
                            local startT = StartTick or os.time()
                            local J = os.time() - startT
                            local r_time = J + (OldSessionTime or 0)
                            local lplr = game:GetService("Players").LocalPlayer
                            if lplr then
                                pcall(function()
                                    if not isfolder("HoangPhucHub") then makefolder("HoangPhucHub") end
                                    writefile("HoangPhucHub/.tdif-" .. lplr.Name, tostring(r_time))
                                end)
                            end
                            if ScriptStorage and ScriptStorage.Interface and ScriptStorage.Interface.SetText then
                                ScriptStorage.Interface.SetText('LiveTime', "Time Elapsed: " .. tostring(r_time) .. "s")
                            elseif type(SetText) == "function" then
                                SetText('LiveTime', "Time Elapsed: " .. tostring(r_time) .. "s")
                            end
                            RefreshDebounce = os.time()
                        end)
                    end
                end
            end)
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if Config and Config.Configuration and Config.Configuration.HopWhenIdle and LastIdling and os.time() - LastIdling > 300.0 then
                    if type(SetTask) == "function" then SetTask('MainTask', "Rejoining due to idle!") end
                    task.wait(1)
                    while task.wait() do game:GetService('TeleportService'):Teleport(game.PlaceId) end
                end
            end)
            pcall(function()
                if not AnimationDelay or os.time() - AnimationDelay > 60 then
                    AnimationDelay = os.time()
                    local lplr = game:GetService("Players").LocalPlayer
                    if lplr and lplr.Character then
                        local hum = lplr.Character:FindFirstChild('Humanoid')
                        if hum and K then hum:LoadAnimation(K):Play() end
                    end
                end
            end)
-- BỌC GIÁP ĐIỀU KHIỂN COMBAT V3 (TRẢ KIẾM VỀ BALO KHI ĐÃ MAX)
            pcall(function()
                local lplr = game:GetService("Players").LocalPlayer
                local char = lplr.Character
                local backpack = lplr.Backpack
                -- CHỈ ép lôi kiếm ra chém khi thằng script ĐANG giao nhiệm vụ cày Tushita/Yama
                if CurrentTask == "Tushita" or CurrentTask == "Yama" then
                    local swordName = CurrentTask
                    local isHolding = char:FindFirstChild(swordName)
                    if not isHolding then
                        local sword = backpack:FindFirstChild(swordName)
                        if sword and char:FindFirstChild("Humanoid") then
                            char.Humanoid:EquipTool(sword)
                        end
                    end
                    if char:FindFirstChild(swordName) then
                        game:GetService("VirtualUser"):ClickButton1(Vector2.new())
                    end
                    for _, part in pairs(char:GetDescendants()) do
                        if part:IsA("BasePart") and part.CanCollide then part.CanCollide = false end
                    end
                else
                    -- ĐÃ MAX HOẶC ĐANG N/A -> CẤT KIẾM VÀO BALO ĐỂ AUTO CDK QUÉT ĐƯỢC
                    if FunctionsHandler and FunctionsHandler.MeleesController and FunctionsHandler.MeleesController.Methods and FunctionsHandler.MeleesController.Methods.Start then
                        FunctionsHandler.MeleesController.Methods.Start:Call()
                    end
                end
            end)
-- Chạy chuỗi nhiệm vụ an toàn
            local success, err = xpcall(function()
                if type(RefreshTasksData) == "function" then RefreshTasksData() end
            end, debug.traceback)
 if not success then 
                print("[ARYA LOG] Task Error Bypassed: ", err) 
            end
        end -- Đóng vòng lặp while task.wait()
    end) -- Đóng task.spawn()

-- ================================================================
-- HÀM TWEEN LƯỚT MƯỢT NÉ ANTI-CHEAT
-- ================================================================
local TweenService = game:GetService("TweenService")
local function TWEEN_TO(targetCFrame)
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
    local root = char.HumanoidRootPart
    
    local distance = (root.Position - targetCFrame.Position).Magnitude
    local speed = 300 
    local timeToTravel = distance / speed
    
    local tweenInfo = TweenInfo.new(timeToTravel, Enum.EasingStyle.Linear)
    local tween = TweenService:Create(root, tweenInfo, {CFrame = targetCFrame})
    
    local antiGravity = Instance.new("BodyVelocity")
    antiGravity.Velocity = Vector3.new(0, 0, 0)
    antiGravity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    antiGravity.Parent = root

    tween:Play()
    tween.Completed:Wait() 
    antiGravity:Destroy() 
end

-- ================================================================
-- ÉP BUỘC ƯU TIÊN CDK LÊN ĐẦU TIÊN (VIP PRIORITY)
-- ================================================================
TasksOrder = { "CursedDualKatana", "Tushita", 'Yama', "SpecialBossesTask", "RaidController", 'Trevor', "UtillyItemsActivitation", 'ColosseumPuzzle', "Wenlocktoad", "ThirdSeaPuzzle", "PirateRaid", "SecondSeaPuzzle", "CollectDrops", 'BossesTask', "ExpRedeem", "LevelFarm" }
-- ================================================================
-- BẢN VÁ CDK V99: ƯU TIÊN TỐI THƯỢNG GHÉP CDK + AUTO CHUI CỬA TRẮNG
-- ================================================================
task.spawn(function()
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local CommF = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("CommF_")
    local CoreGui = game:GetService("CoreGui")
    local Players = game:GetService("Players")
    
    while task.wait(0.2) do
        pcall(function()
            if Config and Config.Items and Config.Items.CursedDualKatana then
                local plr = Players.LocalPlayer
                local char = plr.Character
                local root = char and char:FindFirstChild("HumanoidRootPart")
                if not root then return end
                
                -- ==============================================
                -- ƯU TIÊN 1: ĐÃ XONG HẾT -> BAY VỀ MANSION GHÉP CDK
                -- ==============================================
                local hasTushitaScroll = plr.Backpack:FindFirstChild("Tushita Scroll") or char:FindFirstChild("Tushita Scroll")
                local hasYamaScroll = plr.Backpack:FindFirstChild("Yama Scroll") or char:FindFirstChild("Yama Scroll")
                local hasFragment = plr.Backpack:FindFirstChild("Alucard Fragment") or char:FindFirstChild("Alucard Fragment")
                
                -- Nếu không còn Scroll nào mà lại có Fragment -> Tức là đã xong 6 thử thách!
                if not hasTushitaScroll and not hasYamaScroll and hasFragment then
                    SetTask("SubTask", "CDK Quest / ĐÃ XONG MỌI QUEST! ƯU TIÊN 1: BAY VỀ GHÉP CURSED DUAL KATANA!!!")
                    if _G.SuicideLock then _G.SuicideLock:Disconnect() _G.SuicideLock = nil end
                    
                    local cdkPedestalPos = CFrame.new(-9455, 142, 5566) -- Tọa độ Bệ Ghép Mansion
                    
                    if (root.Position - cdkPedestalPos.Position).Magnitude > 15 then
                        TWEEN_TO(cdkPedestalPos)
                    else
                        -- Cố định chỉ bấm vào ProximityPrompt của bệ Cursed
                        local cursedFolder = workspace.Map.Turtle:FindFirstChild("Cursed")
                        if cursedFolder then
                            for _, prompt in pairs(cursedFolder:GetDescendants()) do
                                if prompt:IsA("ProximityPrompt") and prompt.Enabled then
                                    fireproximityprompt(prompt)
                                    task.wait(0.5)
                                end
                            end
                        end
                    end
                    return -- CHẶN MỌI HOẠT ĐỘNG KHÁC, CHỈ TẬP TRUNG GHÉP CDK
                end

                -- ==============================================
                -- TÌNH HUỐNG 2: ĐANG Ở DIMENSION (DỌN QUÁI, ĐUỐC, CỬA TRẮNG)
                -- ==============================================
                local altarPos = CFrame.new(-8936, 144, 6060)
                local distToAltar = (root.Position - altarPos.Position).Magnitude
                local inDimension = false
                local isHell = false
                local dimFolder = nil
                
                if distToAltar > 4000 then
                    local hellMap = workspace.Map:FindFirstChild("HellDimension")
                    if hellMap and hellMap:FindFirstChildWhichIsA("BasePart", true) and (hellMap:FindFirstChildWhichIsA("BasePart", true).Position - root.Position).Magnitude < 6000 then
                        inDimension = true; isHell = true; dimFolder = hellMap
                    end
                    local heavenMap = workspace.Map:FindFirstChild("HeavenlyDimension")
                    if heavenMap and not inDimension and heavenMap:FindFirstChildWhichIsA("BasePart", true) and (heavenMap:FindFirstChildWhichIsA("BasePart", true).Position - root.Position).Magnitude < 6000 then
                        inDimension = true; dimFolder = heavenMap
                    end
                end
                
                if inDimension then
                    if _G.SuicideLock then _G.SuicideLock:Disconnect() _G.SuicideLock = nil end
                    local swordName = isHell and "Yama" or "Tushita"
                    local sword = plr.Backpack:FindFirstChild(swordName) or char:FindFirstChild(swordName)
                    if sword then char.Humanoid:EquipTool(sword) end
                    if not char:FindFirstChild("HasBuso") then CommF:InvokeServer("Buso") end
                    
                    local dimensionMobs = {}
                    local hasMobs = false
                    for _, enemy in pairs(workspace.Enemies:GetChildren()) do
                        if enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 and enemy:FindFirstChild("HumanoidRootPart") then
                            if (enemy.HumanoidRootPart.Position - root.Position).Magnitude < 5000 then
                                hasMobs = true
                                if not table.find(dimensionMobs, enemy.Name) then table.insert(dimensionMobs, enemy.Name) end
                            end
                        end
                    end
                    
                    if hasMobs then
                        SetTask("SubTask", "CDK Quest / ĐANG DỌN SẠCH QUÁI TRONG DIMENSION!")
                        if CombatController and CombatController.Attack then CombatController.Attack(dimensionMobs) end
                    else
                        local unlitTorches = {}
                        for _, prompt in pairs(workspace:GetDescendants()) do
                            if prompt:IsA("ProximityPrompt") and prompt.Enabled and prompt.Parent and prompt.Parent:IsA("BasePart") then
                                if (prompt.Parent.Position - root.Position).Magnitude < 5000 then
                                    table.insert(unlitTorches, prompt)
                                end
                            end
                        end
                        
                        if #unlitTorches > 0 then
                            SetTask("SubTask", "CDK Quest / ĐANG THẮP ĐUỐC! (CÒN LẠI "..#unlitTorches.."/3 CÁI)")
                            local targetTorch = unlitTorches[1]
                            if (root.Position - targetTorch.Parent.Position).Magnitude > 15 then TWEEN_TO(targetTorch.Parent.CFrame) end
                            task.wait(0.2)
                            fireproximityprompt(targetTorch)
                        else
                            -- ĐÃ THẮP XONG ĐUỐC -> TỰ ĐỘNG CHUI CỬA TRẮNG
                            SetTask("SubTask", "CDK Quest / ĐÃ THẮP XONG ĐUỐC! ĐANG TỰ CHUI VÀO CỬA TRẮNG ĐỂ RA NGOÀI!")
                            local exitDoor = dimFolder and (dimFolder:FindFirstChild("Exit", true) or dimFolder:FindFirstChild("Portal", true))
                            if exitDoor then
                                TWEEN_TO(exitDoor.CFrame)
                            else
                                -- Dự phòng nếu game giấu tên Part Exit
                                char.Humanoid:MoveTo(root.Position + root.CFrame.LookVector * 50) 
                            end
                        end
                    end
                    return 
                end
                
                -- ==============================================
                -- TÌNH HUỐNG 3: NHIỆM VỤ YAMA EVIL (SĂN TỬ THẦN)
                -- ==============================================
                local isReaperQuestActive = false
                for _, gui in pairs(CoreGui:GetDescendants()) do
                    if gui:IsA("TextLabel") and gui.Text and (string.lower(gui.Text):find("yama evil") or string.lower(gui.Text):find("fear the reaper")) then
                        isReaperQuestActive = true; break
                    end
                end
                if not isReaperQuestActive then
                    for _, gui in pairs(plr.PlayerGui:GetDescendants()) do
                        if gui:IsA("TextLabel") and gui.Text and (string.lower(gui.Text):find("yama evil") or string.lower(gui.Text):find("fear the reaper")) then
                            isReaperQuestActive = true; break
                        end
                    end
                end

                if isReaperQuestActive then
                    local hasEssence = plr.Backpack:FindFirstChild("Hallow Essence") or char:FindFirstChild("Hallow Essence")
                    local reaperAlive = nil
                    local reaperRoot = nil
                    
                    for _, v in pairs(workspace.Enemies:GetChildren()) do
                        if v.Name:find("Reaper") then reaperAlive = v; reaperRoot = v:FindFirstChild("HumanoidRootPart"); break end
                    end
                    if not reaperAlive then
                        local chars = workspace:FindFirstChild("Characters")
                        if chars then
                            for _, v in pairs(chars:GetChildren()) do 
                                if v:IsA("Model") and v.Name:find("Reaper") then reaperAlive = v; reaperRoot = v:FindFirstChild("HumanoidRootPart"); break end
                            end
                        end
                    end
                    
                    local bossBarVisible = false
                    for _, gui in pairs(plr.PlayerGui:GetDescendants()) do
                        if gui:IsA("TextLabel") and gui.Text:find("Soul Reaper") then bossBarVisible = true; break end
                    end

                    if reaperAlive or bossBarVisible then
                        if not _G.SuicideLock then
                            _G.SuicideLock = game:GetService("RunService").Heartbeat:Connect(function()
                                pcall(function() if char:FindFirstChildOfClass("Tool") then char.Humanoid:UnequipTools() end end)
                            end)
                        end
                        if reaperRoot then
                            SetTask("SubTask", "CDK Quest / THẤY TỬ THẦN! LAO VÀO FEED MẠNG!")
                            if (root.Position - reaperRoot.Position).Magnitude > 10 then TWEEN_TO(reaperRoot.CFrame) end
                        else
                            SetTask("SubTask", "CDK Quest / RADA BÁO CÓ BOSS! ĐANG CHỜ XÁC LOAD...")
                            if distToAltar > 15 then TWEEN_TO(altarPos) end
                        end
                        return
                    end
                    
                    if _G.SuicideLock then _G.SuicideLock:Disconnect() _G.SuicideLock = nil end
                    
                    if hasEssence and not reaperAlive and not bossBarVisible then
                        SetTask("SubTask", "CDK Quest / CÓ LỬA TÍM! ĐANG BAY RA TỌA ĐỘ (-8936, 144, 6060) GỌI BOSS!")
                        if distToAltar > 15 then
                            TWEEN_TO(altarPos)
                        else
                            char.Humanoid:EquipTool(hasEssence)
                        end
                        return
                    end
                    
                    if not hasEssence and not reaperAlive then
                        local boneCount = 0
                        pcall(function() boneCount = (ScriptStorage.Backpack.Bones or {Count = 0}).Count end)
                        
                        if boneCount >= 50 then
                            SetTask("SubTask", "CDK Quest / Đang Roll Xương TỪ XA tìm Lửa Tím ("..boneCount.." xương)")
                            if not _G.RollDebounce then
                                _G.RollDebounce = true
                                task.spawn(function()
                                    pcall(function() CommF:InvokeServer("Bones", "Buy", 1, 1) end)
                                    task.wait(1.5)
                                    _G.RollDebounce = false
                                end)
                            end
                            return
                        end
                    end
                end
                
            end
        end)
    end
end)
-- ================================================================
    -- BẢN VÁ TỐI THƯỢNG V2: AUTO TẨY ĐIỂM + LỖ ĐEN GOM QUÁI BÁ CHỦ
    -- ================================================================
    task.spawn(function()
        local lplr = game:GetService("Players").LocalPlayer
        local CommF = game:GetService("ReplicatedStorage").Remotes.CommF_
        local vim = game:GetService("VirtualInputManager")

        while task.wait(0.5) do
            pcall(function()
                if ScriptStorage and ScriptStorage.ForceToUseSword then
                    local swordName = ScriptStorage.ForceToUseSword[1]
                    local currentMas = ScriptStorage.ForceToUseSword[2]
                    local maxMas = ScriptStorage.ForceToUseSword[3]
                    
                    if SetTask then 
                        -- NẾU MÀY THẤY DÒNG CHỮ NÀY LÀ MÀY COPY ĐÚNG RỒI ĐÓ SẾP!
                        SetTask("MainTask", "SIÊU VIP PRO | Tẩy Điểm & Gom Lỗ Đen cày " .. swordName) 
                        SetTask("SubTask", "Mastery: " .. tostring(currentMas) .. " / " .. tostring(maxMas))
                    end
                    
                    local char = lplr.Character
                    if not char or not char:FindFirstChild("HumanoidRootPart") then return end
                    
                    -- ====================================================
                    -- 1. HỆ THỐNG AUTO TẨY STATS VÀ CỘNG ĐIỂM CỰC MẠNH
                    -- ====================================================
                    local stats = lplr:FindFirstChild("Data") and lplr.Data:FindFirstChild("Stats")
                    local points = lplr.Data:FindFirstChild("Points")
                    
                    if stats and stats:FindFirstChild("Sword") and stats.Sword.Level.Value < 2800 then
                        if points and points.Value == 0 then
                            -- ÉP BẤM NÚT REFUND BẰNG MỌI THỦ ĐOẠN
                            local refundBtn = lplr.PlayerGui.Main.Stats:FindFirstChild("Refund")
                            if refundBtn and refundBtn.Visible then
                                -- Bóp cổ Executor: Bắn tín hiệu chìm
                                pcall(function()
                                    if firesignal then
                                        firesignal(refundBtn.Activated)
                                        firesignal(refundBtn.MouseButton1Click)
                                    end
                                end)
                                
                                -- Bóp cổ game: Dùng chuột vật lý bấm thẳng vào nút
                                pcall(function()
                                    local pos = refundBtn.AbsolutePosition
                                    local size = refundBtn.AbsoluteSize
                                    local centerX = pos.X + (size.X / 2)
                                    local centerY = pos.Y + (size.Y / 2) + 36 -- Cộng bù thanh Topbar
                                    vim:SendMouseButtonEvent(centerX, centerY, 0, true, game, 1)
                                    task.wait(0.05)
                                    vim:SendMouseButtonEvent(centerX, centerY, 0, false, game, 1)
                                end)
                                task.wait(1.5) -- Chờ server nhả điểm về
                            end
                        end
                        
                        -- DỒN ĐIỂM NGAY LẬP TỨC
                        if points and points.Value > 0 then
                            CommF:InvokeServer("AddPoint", "Defense", 2800)
                            CommF:InvokeServer("AddPoint", "Melee", 2800)
                            CommF:InvokeServer("AddPoint", "Sword", 2800)
                        end
                    end
                    
                    -- ====================================================
                    -- 2. ÉP CẦM KIẾM VÀ BẬT HAKI
                    -- ====================================================
                    local sword = lplr.Backpack:FindFirstChild(swordName) or char:FindFirstChild(swordName)
                    if sword then char.Humanoid:EquipTool(sword) end
                    if not char:FindFirstChild("HasBuso") then CommF:InvokeServer("Buso") end

                    -- ====================================================
                    -- 3. HÚT QUÁI LỖ ĐEN BÁN KÍNH 1000 STUDS (VÉT SẠCH MAP)
                    -- ====================================================
                    local farmMobs = {
                        "Reborn Skeleton", "Living Zombie", "Demonic Soul", "Posessed Mummy", 
                        "Head Baker", "Baking Staff", "Cookie Crafter", "Cake Guard"
                    }
                    
                    local targetMob = nil
                    for _, v in pairs(workspace.Enemies:GetChildren()) do
                        if table.find(farmMobs, v.Name) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                            targetMob = v
                            break
                        end
                    end
                    
                    if targetMob then
                        local tRoot = targetMob.HumanoidRootPart
                        local mRoot = char.HumanoidRootPart
                        
                        -- Treo ngược mày trên đầu quái để chém đéo bao giờ mất máu
                        mRoot.CFrame = tRoot.CFrame * CFrame.new(0, 6, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                        
                        -- Thuật hút vạn vật
                        for _, v in pairs(workspace.Enemies:GetChildren()) do
                            if table.find(farmMobs, v.Name) and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") then
                                if (v.HumanoidRootPart.Position - tRoot.Position).Magnitude < 1000 then
                                    v.HumanoidRootPart.CFrame = tRoot.CFrame
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Humanoid.JumpPower = 0
                                    if v.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                                        v.HumanoidRootPart.BodyVelocity:Destroy()
                                    end
                                end
                            end
                        end
                        
                        -- Chém M1 Fast Attack
                        if CombatController and CombatController.Attack then
                            CombatController.Attack({targetMob.Name})
                        end
                        
                        -- Nhấp chuột bồi thêm
                        if sword and sword.Parent == char then sword:Activate() end
                    else
                        if CombatController and CombatController.Attack then
                            CombatController.Attack(farmMobs)
                        end
                    end
                end
            end)
        end
    end)

end -- ĐÓNG KÍN CÁI HÀM hoangtuveu() Ở TÍT TRÊN CÙNG LẠI

hoangtuveu() -- KÍCH HOẠT CHẠY SCRIPT NÈ
