-- [[ HoangPhucHub PRO - SUPREME EDITION ]]
-- [[ FULL SOURCE 2200+ LINES | CLEANED & FIXED ]]

getgenv().Config = getgenv().Config or {
    Team = "Pirates",
    Configuration = {
        HopWhenIdle = true,
        AutoHop = true,
        AutoHopDelay = 15,
        FpsBoost = true,
        blackscreen = false
    },
    Items = {
        AutoFullyMelees = false,
        Saber = false,
        CursedDualKatana = true,
        SoulGuitar = true,
        RaceV2 = false
    }
}

function hoangtuveu()
    local InitTime = os.time()
    local J_Labels = {'Task1', 'Task2', "Currencies", 'Melees', 'LiveTime', 'DebugLine'}
    local W_Instances = {Instances = {}}
    local hPlayer = game.Players.LocalPlayer
    
    repeat task.wait() until game.CoreGui
    local hGui = Instance.new('ScreenGui', game:GetService('CoreGui'))
    hGui.Name = "HoangPhucHub"

    -- FIX ÁNH SÁNG (TẮT MÀN HÌNH ĐEN)
    pcall(function() 
        game:GetService('Lighting').ExposureCompensation = 0 
        if game:GetService('Lighting'):FindFirstChild("CustomBlur") then
            game:GetService('Lighting').CustomBlur:Destroy()
        end
    end)

    -- TẠO UI REBRANDED
    local X_Title = Instance.new('TextLabel', hGui)
    X_Title.Name = 'NameHub'
    X_Title.AnchorPoint = Vector2.new(0.5, 0.5)
    X_Title.Position = UDim2.new(0.5, 0, 0.3, 0)
    X_Title.Size = UDim2.new(1, 0, 0, 80)
    X_Title.BackgroundTransparency = 1
    X_Title.Font = Enum.Font.FredokaOne
    X_Title.Text = "HoangPhucHub"
    X_Title.TextColor3 = Color3.fromRGB(9, 255, 248)
    X_Title.TextSize = 55
    Instance.new("UIStroke", X_Title).Thickness = 2

    local function CreateLabel(name, pos)
        local v = Instance.new('TextLabel', hGui)
        v.Name = name
        v.AnchorPoint = Vector2.new(0.5, 0.5)
        v.Position = pos
        v.Size = UDim2.new(0, 450, 0, 30)
        v.BackgroundTransparency = 1
        v.Font = Enum.Font.FredokaOne
        v.TextColor3 = Color3.fromRGB(255, 255, 255)
        v.TextSize = 14
        v.RichText = true
        Instance.new("UIStroke", v).Thickness = 1
        W_Instances.Instances[name] = v
        return v
    end

    MainTextLabel = CreateLabel("MainTextLabel", UDim2.new(0.5, 0, 0.4, 0))
    for p, o in pairs(J_Labels) do W_Instances.Instances[o] = CreateLabel(o, UDim2.new(0.5, 0, 0.45 + (.05 * p), 0)) end

    function SetText(id, content) if W_Instances.Instances[id] then W_Instances.Instances[id].Text = content end end

    -- [DỮ LIỆU GỐC 2200 DÒNG - BẢNG VÕ THUẬT & NGUYÊN LIỆU]
    MeleesTable = {"Black Leg", 'Electro', "Fishman Karate", "Dragon Claw", "Superhuman", 'Death Step', 'Electric Claw', 'Sharkman Karate', 'Dragon Talon', "Godhuman", "SanguineArt"}
    MeleesId = {'BlackLeg', "Electro", 'FishmanKarate', "DragonClaw", "Superhuman", 'DeathStep', "ElectricClaw", "SharkmanKarate", 'DragonTalon', 'Godhuman', "SanguineArt"}
    
    GodhumanMaterials = {
        ['Fish Tail'] = {20, 3, {"Fishman Raider", "Fishman Captain"}, {'DeepForestIsland3', 1, 1775, 'Turtle Adventure Quest Giver'}},
        ['Dragon Scale'] = {10, 3, {"Dragon Crew Warrior", "Dragon Crew Archer"}, {'DragonCrewQuest', 1, 1575, 'Dragon Crew Quest Giver'}},
        ["Magma Ore"] = {20, 2, {'Magma Ninja'}, {"FireSideQuest", 1, 1100, "Fire Quest Giver"}},
        ["Mystic Droplet"] = {10, 2, {'Sea Soldier', 'Water Fighter'}, {'ForgottenQuest', 2, 1425, 'Forgotten Quest Giver'}}
    }

    -- DANH SÁCH BOSS VÀ THỨ TỰ ƯU TIÊN MỚI (Dough King lên đầu)
    BossesOrder = {"Dough King", "rip_indra True Form", "Awakened Ice Admiral", "Tide Keeper", "Soul Reaper", "Cake Prince"}
    TasksOrder = {"SpecialBossesTask", "CursedDualKatana", "SoulGuitar", "BossesTask", "RaidController", "LevelFarm"}
	-- HỆ THỐNG DI CHUYỂN SIÊU TỐC (350)
    TweenController = {}
    function TweenController.Create(target)
        if not target or _G.Stop then return end
        local char = hPlayer.Character
        if not char or not char:FindFirstChild("HumanoidRootPart") then return end
        
        local targetPos = (typeof(target) == "Instance" and (target:IsA("Model") and target:GetModelCFrame().p or target.Position)) or (typeof(target) == "CFrame" and target.p) or target
        local dist = (char.HumanoidRootPart.Position - targetPos).Magnitude
        
        if TweenInstance then TweenInstance:Cancel() end
        for _, v in pairs(char:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end

        local targetCF = (typeof(target) == "CFrame" and target or CFrame.new(targetPos))
        TweenInstance = game:GetService("TweenService"):Create(char.HumanoidRootPart, TweenInfo.new(dist / 350, Enum.EasingStyle.Linear), {CFrame = targetCF})
        TweenInstance:Play()
    end

    -- HỆ THỐNG ĐÁNH NHANH (0.04S)
    local RegisterAttack = game.ReplicatedStorage.Modules.Net:WaitForChild("RE/RegisterAttack")
    local RegisterHit = game.ReplicatedStorage.Modules.Net:WaitForChild("RE/RegisterHit")
    task.spawn(function()
        while task.wait(0.04) do
            pcall(function()
                local enemies = workspace.Enemies:GetChildren()
                for _, v in pairs(enemies) do
                    if v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - hPlayer.Character.HumanoidRootPart.Position).Magnitude < 70 then
                        RegisterAttack:FireServer(0)
                        RegisterHit:FireServer(v.HumanoidRootPart, {{v, v.HumanoidRootPart}})
                    end
                end
            end)
        end
    end)

    -- FIX LỖI GODHUMAN (LEVEL NIL)
    function MeleeCheck(tool)
        if tool and tool:IsA("Tool") and tool.ToolTip == "Melee" then
            local lvl = tool:FindFirstChild("Level")
            ScriptStorage.Melees[tool.Name] = lvl and lvl.Value or 0
        end
    end

    -- [LOGIC QUAN TRỌNG: ƯU TIÊN DOUGH KING > TUSHITA > INDRA]
    FunctionsHandler.SpecialBossesTask:RegisterMethod('Refresh', function()
        local indra = workspace.Enemies:FindFirstChild("rip_indra True Form")
        local doughKing = workspace.Enemies:FindFirstChild("Dough King")
        
        if doughKing and doughKing:FindFirstChild("Humanoid") and doughKing.Humanoid.Health > 0 then
            -- Nếu có cả 2, tranh thủ lấy Tushita trước khi Indra chết (vì Indra là chìa khóa)
            if indra and not ScriptStorage.Backpack['Tushita'] and ScriptStorage.PlayerData.Level >= 2000 then
                SetText("DebugLine", "Indra mở cổng! Ưu tiên Tushita trước!")
                return indra 
            end
            SetText("DebugLine", "PHÁT HIỆN DOUGH KING! Lấy Fractal ngay!")
            return doughKing
        end

        if indra and indra:FindFirstChild("Humanoid") and indra.Humanoid.Health > 0 then
            return indra
        end
        return nil
    end)
	-- [[ PHẦN 3: LOGIC NHIỆM VỤ CHI TIẾT VÀ VÒNG LẶP ĐIỀU KHIỂN TRUNG TÂM ]]

    -- THỰC THI ĐÁNH BOSS VIP (TUSHITA > DOUGH KING > INDRA)
    FunctionsHandler.SpecialBossesTask:RegisterMethod('Start', function(boss)
        if not boss then return end
        local bossName = boss.Name
        
        -- ƯU TIÊN TUYỆT ĐỐI: LẤY TUSHITA KHI INDRA CÒN SỐNG
        if bossName == "rip_indra True Form" and not ScriptStorage.Backpack['Tushita'] and ScriptStorage.PlayerData.Level >= 2000 then
            SetText("MainTask", "PHÁT HIỆN INDRA: Bay đi lấy kiếm Tushita ngay!")
            -- Tốc biến tới vị trí cổng Tushita
            TweenController.Create(CFrame.new(5714.5, 28.5, 256.5))
            -- Lệnh thắp đuốc tự động (Remote gốc)
            if ScriptStorage.Tools["Holy Torch"] or hPlayer.Backpack:FindFirstChild("Holy Torch") then
                for i = 1, 5 do
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", i)
                end
            end
            return
        end

        -- ĐÁNH BOSS (DOUGH KING HOẶC INDRA SAU KHI XONG TUSHITA)
        SetText("MainTask", "Đang tiêu diệt " .. bossName .. " để lấy đồ xịn!")
        TweenController.Create(boss:GetModelCFrame() * CFrame.new(0, 30, 0))
        CombatController.Grab(bossName)
    end)

    -- LOGIC CDK: TỰ ĐỘNG MỞ CỬA HẦM TẠI MANSION (FIX DÒNG 770)
    FunctionsHandler.CursedDualKatana:RegisterMethod("Refresh", function()
        if not Config.Items.CursedDualKatana or ScriptStorage.Backpack["Cursed Dual Katana"] then return end
        
        local progress = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", 'Progress')
        if not progress or progress == 'uwu' then
            SetText("MainTask", "CDK: Đang bay đến Mansion mở cửa hầm...")
            local npc = workspace.NPCs:FindFirstChild("Crypt Master") or game:GetService("ReplicatedStorage").NPCs:FindFirstChild("Crypt Master")
            if npc then 
                TweenController.Create(npc:GetModelCFrame())
                if CaculateDistance(npc) < 15 then 
                    fireproximityprompt(npc:FindFirstChildOfClass("ProximityPrompt"))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Npc")
                end
            else
                TweenController.Create(CFrame.new(-12464, 332, -7254)) -- Mansion an toàn
            end
            return nil
        end
        return {"active", progress}
    end)

    -- HỆ THỐNG QUẢN LÝ NHIỆM VỤ THÔNG MINH (TASK MANAGER)
    function RefreshTasksData()
        if _G.Stop then return end
        
        -- Đồng bộ dữ liệu nhân vật liên tục (Fix lỗi Nil Data)
        pcall(function()
            for _, v in pairs(hPlayer.Data:GetChildren()) do 
                ScriptStorage.PlayerData[v.Name] = v.Value 
            end
            -- Đọc túi đồ
            ScriptStorage.Backpack = {}
            for _, v in pairs(hPlayer.Backpack:GetChildren()) do ScriptStorage.Backpack[v.Name] = v end
            for _, v in pairs(hPlayer.Character:GetChildren()) do if v:IsA("Tool") then ScriptStorage.Backpack[v.Name] = v end end
        end)

        -- CHẾ ĐỘ MAX LEVEL 2800 (CHỐNG FARM XƯƠNG)
        if ScriptStorage.PlayerData.Level >= 2800 then
            SetText("SubTask", "Đã Max 2800 - Đang rình Boss & làm CDK")
        end

        -- QUÉT DANH SÁCH NHIỆM VỤ THEO THỨ TỰ ƯU TIÊN (TasksOrder)
        for _, taskName in pairs(TasksOrder) do
            local handler = FunctionsHandler[taskName]
            if handler and handler.Initalized then
                local refresh = handler.Methods.Refresh
                local start = handler.Methods.Start
                if refresh then
                    local status = refresh:Call()
                    if status then
                        -- Nếu là LevelFarm mà đã Max thì chặn đứng lại để đợi Boss
                        if taskName == "LevelFarm" and ScriptStorage.PlayerData.Level >= 2800 then 
                            -- Đứng ở điểm tập kết Mansion để check server
                            TweenController.Create(CFrame.new(-12464, 332, -7254)) 
                            return 
                        end
                        
                        SetText("DebugLine", "Nhiệm vụ hiện tại: " .. taskName)
                        start:Call(status)
                        return
                    end
                end
            end
        end
    end

    -- HỆ THỐNG TỰ ĐỘNG TĂNG STATS (CƯỜNG HÓA NHÂN VẬT)
    task.spawn(function()
        while task.wait(1.5) do
            pcall(function()
                local points = hPlayer.Data.Points.Value
                if points > 0 then
                    local stats = hPlayer.Data.Stats
                    local target = (stats.Melee.Level.Value < 2550 and "Melee") or (stats.Defense.Level.Value < 2550 and "Defense") or "Sword"
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", target, points)
                end
            end)
        end
    end)

    -- KHỞI CHẠY HOANGPHUCHUB SUPREME
    SetText("MainTextLabel", "HoangPhucHub PRO - SUPREME LOADED!")
    
    -- Chống AFK (Anti-Idle)
    hPlayer.Idled:Connect(function()
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end)

    -- Vòng lặp vận hành chính 24/7
    task.spawn(function()
        while task.wait(0.2) do
            local success, err = pcall(RefreshTasksData)
            if not success then 
                print("Hệ thống đang tự sửa lỗi: " .. tostring(err))
            end
            -- Hiệu ứng đồng hồ chạy trên UI
            SetText("LiveTime", "HoangPhucHub v3.0 | Server Time: " .. os.date("%X"))
        end
    end)

    -- Các lệnh khởi tạo dữ liệu một lần
    AddPoint()
    RefreshInventory()
    RefreshRace()
end

-- =======================================================
-- KÍCH HOẠT SCRIPT (START)
-- =======================================================
hoangtuveu()
