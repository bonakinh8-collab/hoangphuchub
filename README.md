Config = getgenv().Config or {
    Team = "Pirates",
    Configuration = {HopWhenIdle = true, AutoHop = true, AutoHopDelay = 10, FpsBoost = false, blackscreen = false},
    Items = {AutoFullyMelees = false, Saber = false, CursedDualKatana = true, SoulGuitar = true, RaceV2 = false},
    Settings = {StayInSea2UntilHaveDarkFragments = false}
}

function hoangtuveu()
    local InitTime = os.time()
    local J_Labels = {'Task1', 'Task2', "Currencies", 'Melees', 'LiveTime', 'DebugLine'}
    local W_Instances = {Instances = {}}
    local K_bool = true
    local a_bool = false
    local h_player = game.Players.LocalPlayer
    repeat task.wait() until game.CoreGui
    local h_gui = Instance.new('ScreenGui')
    local X_label = Instance.new('TextLabel')
    local w_stroke1 = Instance.new("UIStroke")
    local w_stroke2 = Instance.new('UIStroke')
    local w_label2 = Instance.new("TextLabel")
    local w_btn = Instance.new("ImageButton")
    local D_frame = Instance.new("Frame")
    local y_stroke = Instance.new("UIStroke")
    local L_toggle = Instance.new("TextLabel")
    local b_blur_objs = {}
    h_gui.Name = "HoangPhucHub" -- Đã đổi từ ARYA [cite: 724]
    h_gui.Parent = game:GetService('CoreGui')
    h_gui.Enabled = true
    h_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    h_gui.IgnoreGuiInset = true

    if Config.Configuration.blackscreen then game:GetService('Lighting').ExposureCompensation = -math.huge
    else game:GetService('Lighting').ExposureCompensation = 0 end

    X_label.Name = 'NameHub'
    X_label.Parent = h_gui
    X_label.AnchorPoint = Vector2.new(0.5, 0.5)
    X_label.Position = UDim2.new(0.5, 0, 0.3, 0)
    X_label.Size = UDim2.new(1, 0, 0, 80)
    X_label.BackgroundTransparency = 0.999
    X_label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    X_label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    X_label.BorderSizePixel = 0
    X_label.Font = Enum.Font.FredokaOne
    X_label.Text = "HoangPhucHub" -- Đã đổi từ ARYA [cite: 726]
    local C_ui_stroke = Instance.new("UIStroke")
    C_ui_stroke.Parent = X_label
    C_ui_stroke.Color = Color3.fromRGB(0, 0, 0)
    C_ui_stroke.Thickness = 1
    X_label.TextColor3 = Color3.fromRGB(9, 255, 248)
    X_label.TextSize = 50
    D_frame.Name = 'ToggleContainer'
    D_frame.Parent = h_gui
    D_frame.AnchorPoint = Vector2.new(1, 0)
    D_frame.Position = UDim2.new(1, -20.0, 0, 20)
    D_frame.Size = UDim2.new(0, 50, 0, 50)
    D_frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    D_frame.BackgroundTransparency = 0.2 [cite: 727]
    D_frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    D_frame.BorderSizePixel = 0
    D_frame.ClipsDescendants = true
    local C_corner = Instance.new('UICorner')
    C_corner.CornerRadius = UDim.new(1, 0)
    C_corner.Parent = D_frame
    y_stroke.Parent = D_frame
    y_stroke.Color = Color3.fromRGB(9, 255, 248)
    y_stroke.Thickness = 2
    w_btn.Name = 'ToggleButton'
    w_btn.Parent = D_frame
    w_btn.AnchorPoint = Vector2.new(0.5, 0.5)
    w_btn.Position = UDim2.new(0.5, 0, 0.5, 0)
    w_btn.Size = UDim2.new(1, 0, 1, 0)
    w_btn.BackgroundTransparency = 1 [cite: 728]
    w_btn.BorderSizePixel = 0
    L_toggle.Name = "ToggleIcon"
    L_toggle.Parent = D_frame
    L_toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    L_toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
    L_toggle.Size = UDim2.new(0.7, 0, 0.7, 0)
    L_toggle.BackgroundTransparency = 1
    L_toggle.BorderSizePixel = 0
    L_toggle.Font = Enum.Font.GothamBold
    L_toggle.Text = ""
    L_toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    L_toggle.TextSize = 24
    L_toggle.TextScaled = true
    local function CreateInfoLabel(p_txt, o_pos, z_unused)
        local z_s = Instance.new("UIStroke")
        local v_l = Instance.new('TextLabel')
        v_l.Name = "hmph ><"
        v_l.Parent = h_gui
        v_l.AnchorPoint = Vector2.new(0.5, 0.5)
        v_l.Position = o_pos
        v_l.Size = UDim2.new(0, 200, 0, 30)
        v_l.BackgroundTransparency = 0.999
        v_l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        v_l.BorderColor3 = Color3.fromRGB(0, 0, 0)
        v_l.BorderSizePixel = 0
        v_l.Font = Enum.Font.FredokaOne
        v_l.Text = p_txt
        v_l.TextColor3 = Color3.fromRGB(255, 255, 255)
        v_l.TextSize = 13
        v_l.RichText = true
        z_s.Parent = v_l
        z_s.Color = Color3.fromRGB(0, 0, 0)
        z_s.Thickness = 1 [cite: 731]
        return v_l
    end
    MainTextLabel = CreateInfoLabel(" ", UDim2.new(0.5, 0, 0.4, 0))
    W_Instances.Instances.MainTextLabel = MainTextLabel
    for p_idx, o_id in pairs(J_Labels) do W_Instances.Instances[o_id] = CreateInfoLabel("...", UDim2.new(0.5, 0, 0.45 + (.05 * p_idx), 0)) end
    local J_blur_handler = {}
    function J_blur_handler:Create()
        local C_blur_f = Instance.new('Frame')
        C_blur_f.Name = "BlurFrame"
        C_blur_f.Parent = h_gui
        C_blur_f.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        C_blur_f.BackgroundTransparency = 1
        C_blur_f.BorderSizePixel = 0
        C_blur_f.Size = UDim2.new(1, 0, 1, 0)
        C_blur_f.Position = UDim2.new(0, 0, 0, 0)
        C_blur_f.ZIndex = 0
        self.blurFrame = C_blur_f
        self.blurIntensity = 0
        return self
    end
    function J_blur_handler:SetIntensity(C_val)
        C_val = math.clamp(C_val, 0, 0.95)
        self.blurIntensity = C_val
        local p_tween_s = game:GetService('TweenService')
        local o_tween_info = TweenInfo.new(0.3, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out)
        local z_tween = p_tween_s:Create(self.blurFrame, o_tween_info, {BackgroundTransparency = 1 - C_val})
        z_tween:Play()
        if not self.blurEffect then
            self.blurEffect = Instance.new("BlurEffect")
            self.blurEffect.Name = 'CustomBlur'
            self.blurEffect.Parent = game.Lighting
            self.blurEffect.Enabled = true
        end
        local z_effect_tween = p_tween_s:Create(self.blurEffect, o_tween_info, {Size = C_val * 30})
        z_effect_tween:Play()
        for _, z_obj in pairs(b_blur_objs) do
            if z_obj and z_obj.Parent then
                local v_obj_tween = p_tween_s:Create(z_obj, o_tween_info, {BackgroundTransparency = z_obj._originalTransparency + (C_val * 0.5)})
                v_obj_tween:Play()
            end
        end
    end
    function J_blur_handler:RegisterUI(C_ui_obj)
        if C_ui_obj and C_ui_obj:IsA('GuiObject') then
            C_ui_obj._originalTransparency = C_ui_obj.BackgroundTransparency
            table.insert(b_blur_objs, C_ui_obj)
        end
    end
    local b_blur_mgr = J_blur_handler:Create()
    function SetText(J_name, C_content)
        task.spawn(function()
            local p_label_obj = W_Instances.Instances[J_name]
            if not p_label_obj then return end
            if not K_bool then p_label_obj.Text = C_content return end
            if p_label_obj.Text == C_content then return end
            local J_tween_s = game:GetService("TweenService")
            local o_fade_out_info = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local z_fade_out = J_tween_s:Create(p_label_obj, o_fade_out_info, {TextTransparency = 1, TextStrokeTransparency = 1})
            z_fade_out:Play()
            z_fade_out.Completed:Wait()
            p_label_obj.Text = C_content [cite: 738]
            local C_fade_in_info = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local o_fade_in = J_tween_s:Create(p_label_obj, C_fade_in_info, {TextTransparency = 0, TextStrokeTransparency = 0})
            o_fade_in:Play()
        end)
    end
    function ToggleUI(J_state)
        a_bool = J_state or not a_bool
        local J_labels_to_fade = {X_label, MainTextLabel}
        for _, X_ins in pairs(W_Instances.Instances) do table.insert(J_labels_to_fade, X_ins) end
        local X_tween_s = game:GetService("TweenService")
        local C_quart_info = TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut)
        if a_bool then
            L_toggle.Text = ""
            local p_rotate = X_tween_s:Create(L_toggle, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Rotation = 360})
            p_rotate:Play() [cite: 740]
            p_rotate.Completed:Connect(function() L_toggle.Rotation = 0 end)
            for _, p_lb in pairs(J_labels_to_fade) do
                p_lb.TextTransparency = 1
                local o_fade_in = X_tween_s:Create(p_lb, C_quart_info, {TextTransparency = 0})
                if p_lb:FindFirstChildOfClass('UIStroke') then
                    p_lb:FindFirstChildOfClass('UIStroke').Transparency = 1
                    local z_stroke_fade = X_tween_s:Create(p_lb:FindFirstChildOfClass('UIStroke'), C_quart_info, {Transparency = 0})
                    z_stroke_fade:Play()
                end
                o_fade_in:Play() [cite: 741]
            end
            b_blur_mgr:SetIntensity(0.4)
        else
            L_toggle.Text = ''
            local p_shrink = X_tween_s:Create(L_toggle, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Size = UDim2.new(0.3, 0, 0.3, 0)})
            p_shrink:Play()
            p_shrink.Completed:Connect(function()
                local p_grow = X_tween_s:Create(L_toggle, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0.7, 0, 0.7, 0)})
                p_grow:Play() [cite: 743]
            end)
            for _, p_lb in pairs(J_labels_to_fade) do
                local J_fade_out = X_tween_s:Create(p_lb, C_quart_info, {TextTransparency = 1})
                if p_lb:FindFirstChildOfClass('UIStroke') then
                    local o_stroke_fade = X_tween_s:Create(p_lb:FindFirstChildOfClass("UIStroke"), C_quart_info, {Transparency = 1})
                    o_stroke_fade:Play()
                end
                J_fade_out:Play() [cite: 744]
            end
            b_blur_mgr:SetIntensity(0)
        end
        K_bool = a_bool
    end
    function W_Instances.RegisterForBlur(J_obj) b_blur_mgr:RegisterUI(J_obj) end
    w_btn.MouseButton1Click:Connect(function() ToggleUI() end)
    w_btn.MouseEnter:Connect(function()
        local J_tween_s = game:GetService('TweenService')
        local X_anim = function()
            local C_size_tween = J_tween_s:Create(D_frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Size = UDim2.new(0, 55, 0, 55)})
            local p_color_tween = J_tween_s:Create(y_stroke, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Color = Color3.fromRGB(0, 255, 255), Thickness = 3})
            C_size_tween:Play()
            p_color_tween:Play() [cite: 746]
        end
        X_anim()
    end)
    w_btn.MouseLeave:Connect(function()
        local J_tween_s = game:GetService('TweenService')
        local X_info = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local w_size_back = J_tween_s:Create(D_frame, X_info, {Size = UDim2.new(0, 50, 0, 50)})
        local D_color_back = J_tween_s:Create(y_stroke, X_info, {Color = Color3.fromRGB(9, 255, 248), Thickness = 2})
        w_size_back:Play()
        D_color_back:Play() [cite: 747]
    end)
    function W_Instances.ToggleInterface(J_state)
        a_bool = J_state
        if J_state then
            h_gui.Enabled = false
            L_toggle.Text = ""
            b_blur_mgr:SetIntensity(0.4)
        else
            L_toggle.Text = ""
            b_blur_mgr:SetIntensity(0)
        end
        K_bool = J_state [cite: 748]
    end
    ToggleUI(true)
    W_Instances.SetText = SetText
    W_Instances.ToggleUI = ToggleUI
    W_Instances.BlurManager = b_blur_mgr
    if not isfile("fluent.lua") then
        writefile('fluent.lua', game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))
    end
    local J_fluent_lib = loadstring(readfile('fluent.lua'))()
    local K_animation = Instance.new('Animation')
    K_animation.AnimationId = 'http://www.roblox.com/asset/?id=1elutruahuabuahd'
    getgenv().alert = function(a_title, h_msg)
        pcall(function() J_fluent_lib:Notify({Title = a_title or '', Content = h_msg or '', Duration = 5}) end)
    end
    alert("HoangPhucHub", "Bản Clean Pro - Load Config") [cite: 749]
    OldSessionTime = isfile('.tdif-' .. game.Players.LocalPlayer.Name) and tonumber(readfile(".tdif-" .. game.Players.LocalPlayer.Name)) or 0
    repeat task.wait() game.ReplicatedStorage.Remotes.CommF_:InvokeServer("SetTeam", Config.Team) until game.Players.LocalPlayer.Character
    repeat wait() until game.Players.LocalPlayer.Character
    spawn(function()
        game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('NewIslandLOD', 9999):Destroy()
        game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild('IslandLOD', 9999):Destroy()
    end)
    local J_sys_modules = {'RawConstants', "Utilly", "QuestManager", 'SpawnRegionLoader', 'TweenController', "AttackController", 'CombatController', 'FunctionsHandler', "Hooks", "Debug", "Hop", "Storage"}
    StartTick = tick()
    repeat task.wait() until SetText
    SetText('MainTextLabel', 'Initalizing Script..')
    ScriptStorage = {IsInitalized = false, PlayerData = {}, Melees = {}, CurrentMeleeData = {}, Enemies = {}, Tools = {}, Backpack = {}, IgnoreStoreFruits = {}, Connections = {LocalPlayer = {}}, Task = {}, Tracebacks = {}, TaskController = {}, TracebackUpdater = {}, Interface = W_Instances, NPCs = {}, Map = {}} [cite: 751]
    Players = game.Players
    LocalPlayer = Players.LocalPlayer
    Character = Players.LocalPlayer.Character
    Humanoid = Character:WaitForChild('Humanoid')
    HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
    PlayerGui = LocalPlayer:WaitForChild('PlayerGui', 10)
    Lighting = game:GetService('Lighting')
    Services = {}
    setmetatable(Services, {__index = function(J_self, J_name) return game:GetService(J_name) end})
    setmetatable(ScriptStorage.Enemies, {__index = function(J_self, J_name) return Services.Workspace.Enemies:FindFirstChild(J_name) or Services.ReplicatedStorage:FindFirstChild(J_name) end})
    setmetatable(ScriptStorage.Map, {__index = function(J_self, J_name) return Services.Workspace.Map:FindFirstChild(J_name) or Services.Workspace:FindFirstChild(J_name) end})
    setmetatable(ScriptStorage.Tools, {__index = function(J_self, J_name) return LocalPlayer.Character:FindFirstChild(J_name) or LocalPlayer.Backpack:FindFirstChild(J_name) end})
    setmetatable(ScriptStorage.NPCs, {__index = function(J_self, J_name) if not J_name then return end; return workspace.NPCs:FindFirstChild(J_name) or game.ReplicatedStorage.NPCs:FindFirstChild(J_name) end}) [cite: 753]
    
    function CreateTraceback(J_task, W_msg) table.insert(ScriptStorage.Tracebacks, (GetCurrentDateTime() .. ' ( ' .. DispTime(os.time() - InitTime, true) .. ' ) after execution | ' .. J_task .. " | " .. W_msg)) end
    function SetTask(J_type, W_content)
        if ScriptStorage.Task[J_type] == W_content then return end
        local a_task_labels = {MainTask = "Task1", SubTask = 'Task2'}
        if a_task_labels[J_type] then if SetText then SetText(a_task_labels[J_type], J_type .. ' : ' .. W_content) end end
        ScriptStorage.Task[J_type] = W_content
        ScriptStorage.Task[J_type .. '-d'] = os.time() [cite: 754]
    end
	Remotes = {}
    BindedMeleeNPCNames = {BlackLeg = 'Dark Step Teacher', Electro = "Mad Scientist", FishmanKarate = "Water Kung-fu Teacher", DeathStep = "Phoeyu, the Reformed", SharkmanKarate = 'Sharkman Teacher', DragonTalon = "Uzoth", ElectricClaw = 'Previous Hero', Godhuman = "Ancient Monk"}
    local J_melee_cache = {}
    setmetatable(Remotes, {__index = function(W_idx, W_name)
        if W_name ~= 'CommF_' then return Services.ReplicatedStorage.Remotes[W_name] end
        local W_comm_func = {InvokeServer = function(a_self, ...)
            local a_args = {...}
            local a_cmd = a_args[1]
            local h_sec = a_args[2]
            if string.find(a_cmd, "Buy") == 1 and not h_sec then
                local h_melee_name = string.gsub(a_cmd, 'Buy', "")
                if BindedMeleeNPCNames then
                    if table.find(J_melee_cache, h_melee_name) then
                        local a_npc_obj = ScriptStorage.NPCs[BindedMeleeNPCNames[h_melee_name]]
                        if a_npc_obj then
                            local h_pivot = a_npc_obj.WorldPivot
                            if CaculateDistance(h_pivot) > 10 then
                                repeat
                                    wait(1)
                                    TweenController.Create(h_pivot.Position)
                                until CaculateDistance(h_pivot) < 10
                                task.wait(3)
                                Services.ReplicatedStorage.Remotes.CommF_:InvokeServer(...)
                            end
                        end
                    end
                end
            end
            return Services.ReplicatedStorage.Remotes.CommF_:InvokeServer(...)
        end}
        return W_comm_func
    end})

    function AddPoint()
        local W_stats_data = {}
        local a_stat_target
        for _, h_stat in pairs(LocalPlayer.Data.Stats:GetChildren()) do
            if h_stat and h_stat:FindFirstChild('Level') then W_stats_data[h_stat.Name] = h_stat.Level.Value end
        end
        if W_stats_data.Defense < MaxLevel and (W_stats_data.Defense < (ScriptStorage.PlayerData.Level / 80) or MaxLevel - W_stats_data.Melee < 100) then a_stat_target = 'Defense'
        elseif W_stats_data.Melee < MaxLevel then a_stat_target = "Melee"
        else a_stat_target = 'Sword' end
        Remotes.CommF_:InvokeServer("AddPoint", a_stat_target, 999)
    end

    function RefreshPlayerData()
        for _, a_child in pairs(LocalPlayer.Data:GetChildren()) do pcall(function() ScriptStorage.PlayerData[a_child.Name] = a_child.Value end) end
        local a_str = ""
        local W_colors = {Level = "#00FF48", Beli = "#FF7800", Fragments = "#6C00FF"}
        for h_k, X_v in pairs(ScriptStorage.PlayerData) do
            local w_c = W_colors[h_k]
            if w_c then a_str = a_str .. '<font color="' .. w_c .. '">' .. h_k .. "</font>: " .. X_v .. ' ' end
        end
        if ScriptStorage.Interface then SetText('Currencies', a_str) end
    end

    function MeleeCheck(W_tool_ins)
        if W_tool_ins and typeof(W_tool_ins) == "Instance" and W_tool_ins:IsA("Tool") then
            if W_tool_ins.ToolTip == "Melee" then
                local lvlObj = W_tool_ins:FindFirstChild("Level")
                if lvlObj and lvlObj:IsA("ValueBase") then -- CÔNG THỨC FIX LỖI NIL
                    if ScriptStorage.Connections.Melees then ScriptStorage.Connections.Melees:Disconnect() end
                    ScriptStorage.CurrentMeleeData.Name = W_tool_ins.Name
                    ScriptStorage.Connections.Melees = lvlObj.Changed:Connect(function(val)
                        ScriptStorage.Melees[W_tool_ins.Name] = val
                        RefreshMelees()
                    end)
                    ScriptStorage.Melees[W_tool_ins.Name] = lvlObj.Value
                    RefreshMelees()
                end
            elseif string.find(tostring(W_tool_ins), "Fruit") then
                task.spawn(function()
                    if table.find(ScriptStorage.IgnoreStoreFruits, W_tool_ins:GetAttribute('OriginalName')) then return end
                    pcall(function() Remotes.CommF_:InvokeServer("StoreFruit", W_tool_ins:GetAttribute("OriginalName"), W_tool_ins) end)
                end)
            end
        end
    end

    -- [[ HỆ THỐNG DATA TABLES KHỔNG LỒ CỦA BẠN - GIỮ NGUYÊN 100% ]]
    MeleesTable = {"Black Leg", 'Electro', "Fishman Karate", "Dragon Claw", "Superhuman", 'Death Step', 'Electric Claw', 'Sharkman Karate', 'Dragon Talon', "Godhuman", "SanguineArt"}
    MeleesId = {'BlackLeg', "Electro", 'FishmanKarate', "DragonClaw", "Superhuman", 'DeathStep', "ElectricClaw", "SharkmanKarate", 'DragonTalon', 'Godhuman', "SanguineArt"}
    MeleePrices = {["Black Leg"] = {Price = {Beli = 150000}, Id = "BlackLeg", NextLevelRequirement = 400, position = CFrame.new(), Requirements = function() return true end, Buy = function(W) return BuyMelee("BlackLeg", W, 'Dark Step Teacher') end}, ['Electro'] = {Price = {Beli = 500000}, Id = 'Electro', NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee('Electro', W, "Mad Scientist") end}, ['Fishman Karate'] = {Price = {Beli = 750000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee('FishmanKarate', W, 'Water Kung-fu Teacher') end}, ['Dragon Claw'] = {Price = {Fragments = 1500}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee("DragonClaw", W, "Sabi") end}, ["Superhuman"] = {Price = {Beli = 3000000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee("Superhuman", W, "Martial Arts Master") end}, ["Death Step"] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee("DeathStep", W, "Phoeyu, the Reformed") end}, ['Sharkman Karate'] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee('SharkmanKarate', W, 'Sharkman Teacher') end}, ['Electric Claw'] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee("ElectricClaw", W, 'Previous Hero') end}, ['Dragon Talon'] = {Price = {Beli = 2500000, Fragments = 5000}, NextLevelRequirement = 400, Requirements = function() return true end, Buy = function(W) return BuyMelee("DragonTalon", W, 'Uzoth') end}, ["Godhuman"] = {Price = {Beli = 5000000, Fragments = 5000}, NextLevelRequirement = 350, Requirements = function() return true end, Buy = function(W) return BuyMelee("Godhuman", W, 'Ancient Monk') end}}
    GodhumanMaterials = {['Fish Tail'] = {20, 3, {"Fishman Raider", "Fishman Captain"}, {'DeepForestIsland3', 1, 1775, 'Turtle Adventure Quest Giver'}}, ['Dragon Scale'] = {10, 3, {"Dragon Crew Warrior", "Dragon Crew Archer"}, {'DragonCrewQuest', 1, 1575, 'Dragon Crew Quest Giver'}}, ["Magma Ore"] = {20, 2, {'Magma Ninja'}, {"FireSideQuest", 1, 1100, "Fire Quest Giver"}}, ["Mystic Droplet"] = {10, 2, {'Sea Soldier', 'Water Fighter'}, {'ForgottenQuest', 2, 1425, 'Forgotten Quest Giver'}}}
    
    -- CÔNG THỨC ƯU TIÊN: Đưa SpecialBossesTask lên đầu
    TasksOrder = {"SpecialBossesTask", "Tushita", 'Yama', "RaidController", 'Trevor', "UtillyItemsActivitation", 'ColosseumPuzzle', "Wenlocktoad", "ThirdSeaPuzzle", "PirateRaid", "SecondSeaPuzzle", 'ThirdSeaPuzzle', "CollectDrops", 'BossesTask', "ExpRedeem", "LevelFarm"}
    
    -- [[ TOÀN BỘ LOGIC DI CHUYỂN & CHIẾN ĐẤU - CÔNG THỨC 350 SPEED & 0.04S ATTACK ]]
    function TweenController.Create(W_dest)
        if not W_dest or TweenDebounce then return end
        local a_cf = typeof(W_dest) ~= 'CFrame' and CFrame.new(W_dest) or W_dest
        if TweenInstance then pcall(function() TweenInstance:Cancel() end) end
        for _, v in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end
        local W_head = game.Players.LocalPlayer.Character:WaitForChild("Head")
        if not W_head:FindFirstChild("eltrul") then
            local h_bv = Instance.new('BodyVelocity')
            h_bv.Name = "eltrul"; h_bv.MaxForce = Vector3.new(0, math.huge, 0); h_bv.Velocity = Vector3.zero; h_bv.Parent = W_head
        end
        local W_dist = CaculateDistance(a_cf)
        -- CÔNG THỨC: Tốc độ 350
        TweenInstance = Services.TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(W_dist / 350, Enum.EasingStyle.Linear), {CFrame = a_cf})
        TweenInstance:Play()
    end

    task.spawn(function()
        while task.wait(.04) do -- CÔNG THỨC: Fast Attack 0.04s
            if _G.FastAttack == os.time() then pcall(function() h_attack_lib:Attack() end) end
        end
    end)
	-- [[ HỆ THỐNG ĐIỀU KHIỂN CHIẾN ĐẤU GỐC - GIỮ NGUYÊN 100% ]]
    CombatController = {GRAB = true, GRAB_DISTANCE = SeaIndex == 1 and 250 or 350, MAX_ATTACK_DURATION = 2, MAX_ATTACK_DURATION_2 = 60, LEVITATE_TIME = 0, CurrentIndex = 1}
    LastFound = os.time()
    function CombatController.Grab(h_target)
        pcall(sethiddenproperty, game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        if not CombatController.GRAB or GrabDebounce == os.time() then return end
        GrabDebounce = os.time()
        local X_vec, w_count = Vector3.zero, 0
        ForcePosition = nil
        local D_list = {}
        for _, y_mon in pairs(Services.Workspace.Enemies:GetChildren()) do
            if y_mon.Name == h_target then
                if y_mon:FindFirstChild('Humanoid') and y_mon:FindFirstChild("HumanoidRootPart") and y_mon.Humanoid.Health > 0 then
                    local h_pos = y_mon.HumanoidRootPart.Position
                    if h_pos and isnetworkowner(y_mon.PrimaryPart) then
                        if not ForcePosition or CaculateDistance(h_pos, ForcePosition) < CombatController.GRAB_DISTANCE then
                            w_count = w_count + 1
                            y_mon:SetAttribute("OldPosition", y_mon:GetAttribute('OldPosition') or h_pos)
                            X_vec = X_vec + h_pos
                            ForcePosition = ForcePosition or h_pos
                            table.insert(D_list, y_mon)
                        end
                    end
                end
            end
        end
        X_vec = CFrame.new(X_vec / w_count)
        table.foreach(D_list, function(_, h_ent)
            (function()
                if h_ent:GetAttribute("IgnoreGrab") then return end
                if (h_ent:GetAttribute("FailureCount") or 0) > 7 then return end
                local w_root = h_ent:FindFirstChild("HumanoidRootPart")
                local D_vel = w_root:FindFirstChild('FarmingVelocity')
                if not D_vel then
                    D_vel = Instance.new('BodyVelocity')
                    D_vel.Name = 'FarmingVelocity'
                    D_vel.MaxForce = Vector3.new(4000, 4000, 4000)
                    D_vel.Parent = w_root
                end
                D_vel.Velocity = Vector3.new(0, 0, 0)
                local D_pos = w_root:FindFirstChild("FarmingPosition")
                if not D_pos then
                    D_pos = Instance.new("BodyPosition")
                    D_pos.Name = 'FarmingPosition'
                    D_pos.MaxForce = Vector3.new(4000, 4000, 4000)
                    D_pos.P = 4.12
                    D_pos.D = 1000
                    D_pos.Parent = w_root
                end
                h_ent:SetAttribute('IsGrabbed', true)
                h_ent.HumanoidRootPart.CFrame = X_vec
                h_ent:SetAttribute("MidPoint", X_vec)
            end)()
        end)
    end

    function Sort1(h_ent) return h_ent and h_ent:FindFirstChild("HumanoidRootPart") and math.floor(CaculateDistance(h_ent.HumanoidRootPart.CFrame)) end
    function CombatController.Search(h_search_list)
        local X_arr = {}
        local w_found = false
        for _, D_mon in pairs(GetMonAsSortedRange()) do
            if table.find(h_search_list, D_mon.Name) and D_mon:FindFirstChild("Humanoid") and D_mon.Humanoid.Health > 0 then
                if (D_mon:GetAttribute('FailureCount') or 0) < 3 then
                    w_found = true
                    table.insert(X_arr, D_mon)
                end
            end
        end
        table.sort(X_arr, function(D_a, y_b) return Sort1(D_a) < Sort1(y_b) end)
        if w_found then return X_arr[1] end
        for _, X_name in pairs(h_search_list) do
            local h_res = game.ReplicatedStorage:FindFirstChild(X_name)
            if h_res then return h_res end
        end
    end

    function CombatController.Attack(h_at, X_at, w_at, D_at)
        if ScriptStorage.Tools["Sweet Chalice"] and getsenv(game.ReplicatedStorage.GuideModule)["_G"]['InCombat'] then TweenController.Create(Vector3.new(0, 0, 0)) return end
        sethiddenproperty(game.Players.LocalPlayer, 'SimulationRadius', math.huge)
        h_at = type(h_at) == "string" and {h_at} or (h_at or {})
        for _, L_name in pairs(h_at) do
            local b_str = tostring(L_name)
            if b_str == 'Deandre' or b_str == "Urban" or b_str == "Diablo" and (os.time() - (LastFire12 or 0)) > 180 then
                LastFire12 = os.time()
                Remotes.CommF_:InvokeServer("EliteHunter")
            end
            if X_at then
                local b_mon = GetMonAsSortedRange()[1]
                local C_pos = b_mon and b_mon:FindFirstChild('HumanoidRootPart') and b_mon.HumanoidRootPart.Position
                if C_pos and CaculateDistance(C_pos) < w_at then MonResult = b_mon end
            else
                MonResult = CombatController.Search(h_at)
            end
            if MonResult then
                LastFound = os.time()
                local h_val, w_val = 0, os.time()
                local w_tick, b_tick = 0, os.time()
                while task.wait() do
                    if _G.Stop then return end
                    if ScriptStorage.Tools["Sweet Chalice"] and getsenv(game.ReplicatedStorage.GuideModule)["_G"]["InCombat"] then TweenController.Create(Vector3.new(0, 0, 0)) return end
                    local C_hum = MonResult:FindFirstChild('Humanoid')
                    local p_root = MonResult:FindFirstChild('HumanoidRootPart')
                    if not C_hum or C_hum.Health <= 0 then
                        if MonResult.Name == "Don Swan" then Storage:Set("SwanDefeated", true) end
                        break
                    end
                    TweenController.Create(CaculateCircreDirection(p_root.CFrame) + Vector3.new(0, 35, 0))
                    if CaculateDistance(p_root.Position + Vector3.new(0, 35, 0)) < 150 then
                        _ = D_at and D_at()
                        CombatController.Grab(L_name or '')
                        if MonResult.Name ~= "Core" then
                            if ScriptStorage.PlayerData.Level > 100 and w_val >= CombatController.MAX_ATTACK_DURATION_2 and C_hum.Health - C_hum.MaxHealth == 0 then
                                SetTask('SubTask', 'Hop Server - Mob Health Unchanged ( ' .. C_hum.Health .. ' / ' .. C_hum.MaxHealth .. ')')
                                _G.Stop = true
                                game.Players.LocalPlayer:Kick('Rejoining..')
                            end
                            if h_val >= CombatController.MAX_ATTACK_DURATION and C_hum.Health - C_hum.MaxHealth == 0 then
                                h_val = 0
                                local D_old = MonResult:GetAttribute('OldPosition')
                                if D_old then
                                    MonResult:SetPrimaryPartCFrame(CFrame.new(D_old))
                                    MonResult:SetAttribute('IgnoreGrab', true)
                                    MonResult:SetAttribute('FailureCount', (MonResult:GetAttribute("FailureCount") or 0) + 1)
                                    MonResult.HumanoidRootPart.CFrame = (CFrame.new(D_old))
                                    task.wait()
                                    return
                                end
                            end
                        end
                        if (FarmFruitMastery or math.huge) - os.time() < 3 and math.floor(C_hum.Health / C_hum.MaxHealth * 100) < 30 and not FunctionsHandler.RaidController.Methods.GetCurrentRaidIsland:Call() then
                            TweenController.Create((p_root.CFrame) + Vector3.new(0, 25, 0))
                            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Blox Fruit')
                            LockAimPositionTo(MonResult.HumanoidRootPart.CFrame.p)
                            local D_keys = {'Z', 'X', "C", 'V'}
                            local y_k = D_keys[math.random(1, #D_keys)]
                            SendKey(y_k, .31)
                        else
                            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call(ScriptStorage.ForceToUseSword and 'Sword' or "Melee")
                        end
                        W_Instances.Attack(MonResult)
                        if os.time() ~= b_tick then
                            b_tick = os.time()
                            h_val = h_val + 1
                            w_val = w_val + 1
                        end
                        if h_val > 30 and MonResult.Name ~= "Core" then break end
                    end
                end
            elseif not X_at then
                if (os.time() - LastFound) > 200 then
                    game.Players.LocalPlayer:Kick('Rejoining..')
                    return
                end
                local h_reg = ScriptStorage.MobRegions[L_name]
                if not h_reg then
                    local X_e = Services.Workspace.Enemies:FindFirstChild(L_name) or game.ReplicatedStorage:FindFirstChild(L_name)
                    h_reg = X_e and {X_e:GetPrimaryPartCFrame().p}
                end
                if not h_reg then return end
                local X_target
                if not h_reg[CombatController.CurrentIndex] then CombatController.CurrentIndex = 1 end
                X_target = h_reg[CombatController.CurrentIndex]
                TweenController.Create(X_target + Vector3.new(0, 35, 35))
                if CaculateDistance(X_target + Vector3.new(0, 35, 35)) < 15 then CombatController.CurrentIndex = CombatController.CurrentIndex + 1 end
            end
        end
    end

    -- [[ HỆ THỐNG QUẢN LÝ NHIỆM VỤ GỐC (HƠN 1000 DÒNG TIẾP THEO) ]]
    LevelFarmTTL = 0
    LastTravel = os.time()
    FunctionsHandler = {Initalized = false}
    setmetatable(FunctionsHandler, {__index = function(h_f, X_f)
        QueryResult = rawget(h_f, X_f)
        if not QueryResult then
            return {
                Register = function(w_f)
                    if w_f == false then return end
                    Result = {CacheListener = {}, RealCache = {}, Methods = {}, Constants = {}, Events = {}, Initalized = true}
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
                end, Initalized = false
            }
        end
        return QueryResult
    end})

    -- ĐĂNG KÝ TOÀN BỘ MODULES GỐC CỦA ÔNG
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

    -- CÔNG THỨC: LOGIC BOSS VIP ƯU TIÊN
    FunctionsHandler.SpecialBossesTask:RegisterMethod('Start', function(k_boss)
        if FunctionsHandler.RaidController.Methods.GetCurrentRaidIsland:Call() then pcall(function() LocalPlayer.Character.Humanoid.Health = 0 end) end
        if k_boss then
            local bossName = tostring(k_boss)
            -- FORMULA: Ưu tiên Tushita khi có Indra sống
            if bossName == "rip_indra True Form" and not ScriptStorage.Backpack['Tushita'] then
                SetTask('MainTask', "VIP LOGIC: Thắp đuốc Tushita ngay!")
                TweenController.Create(CFrame.new(5714, 28, 256))
                for i = 1, 5 do game.ReplicatedStorage.Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", i) end
                return
            end
            SetTask('MainTask', "Auto Farm Boss - Defeating " .. bossName)
            CombatController.Attack(bossName)
        end
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
                (function()
                    local id_str = string.gsub(loc.Name, "Island ", "")
                    local id_num = tonumber(id_str)
                    table.insert(IslandsList[id_num], loc)
                end)()
            end
        end
        do
            for i = 5, 1, -1.0 do
                for _, isl in pairs(IslandsList[i]) do if CaculateDistance(isl.Position) < 2000 then return isl end end
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
            SetTask('MainTask', 'Auto Raid - Buying Chip - ' .. FunctionsHandler.RaidController:Get("CurrentChip"))
            if not ScriptStorage.Tools['Special Microchip'] then
                local f_item = FunctionsHandler.RaidController.Methods.GetRaidableFruit:Call()
                table.insert(ScriptStorage.IgnoreStoreFruits, f_item.Name)
                Remotes.CommF_:InvokeServer('LoadFruit', f_item.Name)
                Remotes.CommF_:InvokeServer("RaidsNpc", 'Select', FunctionsHandler.RaidController:Get('CurrentChip'))
                task.wait(2)
            end
            local raid_loc = ({nil, 'Circle Island', "Boat Castle"})[SeaIndex]
            if not ScriptStorage.Map[raid_loc] and not ScriptStorage.Map[raid_loc] then
                task.wait(1)
                game.Players.LocalPlayer:Kick("Rejoining..")
            end
            if not ScriptStorage.Map[raid_loc]:FindFirstChild('RaidSummon2') then
                task.wait(1)
                TweenController.Create(ScriptStorage.Map[raid_loc]:GetModelCFrame() or ScriptStorage.Map[raid_loc]:GetModelCFrame())
            end
            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Special Microchip')
            fireclickdetector((ScriptStorage.Map[raid_loc] or workspace.Map:FindFirstChild(raid_loc) or workspace:FindFirstChild(raid_loc)).RaidSummon2.Button.Main.ClickDetector)
            local start_t = os.time()
            SetTask("MainTask", "Auto Raid - Waiting Until Raid Is Started")
            repeat task.wait() until os.time() - (LastRaidAlert2 or 0) < 20 or os.time() - start_t > 30
            TweenController.Create(LocalPlayer.Character.HumanoidRootPart.CFrame)
            repeat task.wait() until os.time() - (LastRaidAlert or 0) < 20 or os.time() - start_t > 30
            task.wait(.5)
            if os.time() - start_t > 30 then
                game.Players.LocalPlayer:Kick("Rejoining..")
                SetTask('MainTask', "Auto Raid - Raid Is Not Stared?")
            end
            LastRaidAlert = 0
        else
            SetTask('MainTask', "Auto Raid - " .. curr_island.Name .. " /5")
            local hit_any = false
            for _, mon in pairs(GetMonAsSortedRange()) do
                local mon_start = os.time()
                while mon and mon:FindFirstChild("HumanoidRootPart") and mon.Humanoid.Health > 0 and CaculateDistance(mon.HumanoidRootPart.Position) < 1000 and os.time() - mon_start < 60 and task.wait(.05) do
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

    FunctionsHandler.CollectDrops:RegisterMethod("Refresh", function()
        local inv_names = {}
        for item_name in pairs(ScriptStorage.Backpack) do inv_names[FruitIdToName(item_name)] = item_name end
        for _, obj in pairs(workspace:GetChildren()) do
            if string.find(obj.Name, 'Fruit') and not obj:FindFirstChild(obj.Name) and obj:FindFirstChild("Handle") and not inv_names[tostring(obj)] and not ScriptStorage.Backpack[FruitNameToId(tostring(obj))] then
                FunctionsHandler.CollectDrops:Set('CurrentProgressLevel', obj)
                return obj
            end
        end
    end)

    FunctionsHandler.CollectDrops:RegisterMethod('Start', function()
        local drop_obj = FunctionsHandler.CollectDrops:Get('CurrentProgressLevel')
        FunctionsHandler.CollectDrops:Set('CurrentProgressLevel', nil)
        if drop_obj then
            SetTask("MainTask", "Auto Collect Drop Items - " .. tostring(drop_obj))
            TweenController.Create(drop_obj:GetModelCFrame())
        end
    end)

    FunctionsHandler.UtillyItemsActivitation:RegisterMethod('Refresh', function()
        pcall(function() if os.time() - InitTime < 20 then return end end)
        if not SpecialItems then
            SpecialItems = {}
            local excluded = {}
            IceAdmiralPassed = true
            if not ScriptStorage.Backpack.Rengoku then
                table.insert(SpecialItems, "Hidden Key")
                IceAdmiralPassed = false
            end
            if SeaIndex == 2 and Services.Workspace.Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor") then
                table.insert(SpecialItems, 'Library Key')
                IceAdmiralPassed = false
            end
            if IceAdmiralPassed then table.insert(excluded, 'Awakened Ice Admiral') end
            local karate_res = not ScriptStorage.Melees['Sharkman Karate'] and Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            SharkmanPassed = typeof(karate_res) == 'string'
            if typeof(karate_res) == "string" then table.insert(SpecialItems, 'Water Key')
            else TidePassed = true table.insert(excluded, 'Tide Keeper') end
            if ScriptStorage.Backpack.Yama then
                table.insert(excluded, "Deandre")
                table.insert(excluded, 'Urban')
                table.insert(excluded, 'Diablo')
            end
            local function sort_bosses()
                local filtered = {}
                for _, b_name in pairs(BossesOrder) do
                    local keep = true
                    for _, ex in pairs(excluded) do if ex == b_name then keep = false end end
                    if keep then table.insert(filtered, b_name) end
                end
                local b_count = #filtered
                for i = 1, b_count - 1 do
                    for j = 1, b_count - i do
                        if tostring(filtered[j]):lower() > tostring(filtered[j + 1]):lower() then filtered[j], filtered[j + 1] = filtered[j + 1], filtered[j] end
                    end
                end
                return filtered
            end
            BossesOrder = sort_bosses()
            for kItem, hItem in pairs(DropItemData) do
                if not ScriptStorage.Backpack[kItem] and SeaIndex == hItem.Sea then
                    if ScriptStorage.PlayerData.Level >= hItem.Level then
                        BossesOrderLevel[hItem.Boss] = hItem.Level
                        table.insert(BossesOrder, hItem.Boss)
                    end
                end
            end
            if FunctionsHandler.Trevor:Get("IsCompleted") and not Storage:Get('SwanDefeated') then
                BossesOrderLevel["Don Swan"] = 1100
                table.insert(BossesOrder, 'Don Swan')
                if SeaIndex == 2 and ScriptStorage.PlayerData.Level > 1500 and not ScriptStorage.Enemies['Don Swan'] then Hop() end
            end
        end
        for _, kVal in pairs(SpecialItems or {}) do
            if ScriptStorage.Tools[kVal] then
                FunctionsHandler.UtillyItemsActivitation:Set('CurrentProgressLevel', kVal)
                return kVal
            end
        end
        if SeaIndex == 3 and (ScriptStorage.Melees["Death Step"] or 0) >= 400 and (ScriptStorage.Melees["Black Leg"] or 0) >= 400 and ScriptStorage.PlayerData.Beli >= 2500000 and ScriptStorage.PlayerData.Fragments >= 5000 and not ScriptStorage.Melees['Electric Claw'] then
            FunctionsHandler.UtillyItemsActivitation:Set('CurrentProgressLevel', "Previous Hero")
            return 'Previous Hero'
        end
        if ScriptStorage.Tools["Red Key"] then
            FunctionsHandler.UtillyItemsActivitation:Set("CurrentProgressLevel", "Red Key")
            return 'Red Key'
        end
        if ScriptStorage.Tools['Hallow Essence'] then
            FunctionsHandler.UtillyItemsActivitation:Set("CurrentProgressLevel", 'Soul Reaper Spawner')
            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call("Fire Essence")
            return "Soul Reaper Spawner"
        end
        if ScriptStorage.Tools['Fire Essence'] then
            FunctionsHandler.UtillyItemsActivitation:Set('CurrentProgressLevel', "Uzoth")
            return 'Uzoth'
        end
    end)

    FunctionsHandler.UtillyItemsActivitation:RegisterMethod('Start', function()
        local util_id = FunctionsHandler.UtillyItemsActivitation:Get("CurrentProgressLevel")
        if util_id == 'Hidden Key' then Remotes.CommF_:InvokeServer("OpenRengoku")
        elseif util_id == 'Water Key' then
            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call("Water Key")
            Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
            Remotes.CommF_:InvokeServer("BuySharkmanKarate")
        elseif util_id == "Library Key" then
            Remotes.CommF_:InvokeServer("OpenLibrary")
            Services.Workspace.Map.IceCastle.Hall.LibraryDoor:FindFirstChild("PhoeyuDoor"):Destroy()
        elseif util_id == "Red Key" then
            Remotes.CommF_:InvokeServer('CakeScientist', "Check")
            ScriptStorage.Tools["Red Key"]:Destroy()
        elseif util_id == 'Previous Hero' then
            Remotes.CommF_:InvokeServer('BuyElectricClaw', "Start")
            task.wait(3)
            repeat
                task.wait()
                TweenController.Create(CFrame.new(-12548.0, 332.378 + math.random(-2.0, 2), -7617.0))
            until CaculateDistance(CFrame.new(-12548.0, 332.378, -7617.0)) < 30
            Data = MeleePrices["Electric Claw"]
            Data.Buy(1)
            FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Melee')
        elseif util_id == "Uzoth" then
            Remotes.CommF_:InvokeServer("BuyDragonTalon", true)
            Remotes.CommF_:InvokeServer('BuyDragonTalon')
            IsFireEssenceGave = true
        elseif util_id == "Soul Reaper Spawner" then
            if CaculateDistance(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame) < 100 then SpecialItems = nil end
            TweenController.Create(workspace.Map["Haunted Castle"].Summoner.Detection.CFrame)
        end
    end)
	FunctionsHandler.Trevor:RegisterMethod('GetFruit', function()
        for k, item in pairs(ScriptStorage.Backpack) do
            if string.find(FruitIdToName(item.Name), " Fruit") then
                if item.Value and item.Value > 1000000 and item.Value < 2500000 then return item end
            end
        end
    end)

    FunctionsHandler.Trevor:RegisterMethod('Refresh', function()
        pcall(function() if FunctionsHandler.Trevor:Get('IsCompleted') or os.time() - InitTime < 1 then return end end)
        if ScriptStorage.PlayerData.Level < 1100 then return end
        local target_fruit = FunctionsHandler.Trevor.Methods.GetFruit:Call()
        if target_fruit then FunctionsHandler.Trevor:Set('Fruit', target_fruit) end
        TrevorDebounce = os.time()
        if not FunctionsHandler.Trevor:Get('IsCompleted') then
            FunctionsHandler.Trevor:Set('IsCompleted', (Remotes.CommF_:InvokeServer("TalkTrevor", "1") == 0))
        end
        return not FunctionsHandler.Trevor:Get("IsCompleted") and target_fruit
    end)

    FunctionsHandler.Trevor:RegisterMethod("Start", function()
        local fruit_obj = FunctionsHandler.Trevor:Get("Fruit")
        FunctionsHandler.Trevor:Set('Fruit', nil)
        table.insert(ScriptStorage.IgnoreStoreFruits, fruit_obj.Name)
        Remotes.CommF_:InvokeServer('LoadFruit', fruit_obj.Name)
        task.wait()
        FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call(FruitIdToName(fruit_obj.Name))
        Remotes.CommF_:InvokeServer('TalkTrevor', '1')
        Remotes.CommF_:InvokeServer('TalkTrevor', "2")
        Remotes.CommF_:InvokeServer("TalkTrevor", "3")
        task.wait(1)
        FunctionsHandler.Trevor:Set('IsCompleted', true)
    end)

    FunctionsHandler.ThirdSeaPuzzle:RegisterMethod("Refresh", function()
        if ScriptStorage.PlayerData.Level < 1500 or SeaIndex ~= 2 then return end
        if nil == FunctionsHandler.ThirdSeaPuzzle:Get('State') then
            ZQuestProgress = Remotes.CommF_:InvokeServer("ZQuestProgress", 'Check')
            FunctionsHandler.ThirdSeaPuzzle:Set("State", ZQuestProgress == 0)
        end
        return FunctionsHandler.ThirdSeaPuzzle:Get('State')
    end)

    FunctionsHandler.ThirdSeaPuzzle:RegisterMethod('Start', function()
        local state = FunctionsHandler.ThirdSeaPuzzle:Get("State")
        if state then
            repeat
                task.wait(1)
                Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin")
            until CaculateDistance(Vector3.new(0, 0, 0)) > 20000
            task.spawn(function()
                task.wait(30)
                LocalPlayer:Kick('Teleporting to Sea 3...')
            end)
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
        local last_tick = FunctionsHandler.PirateRaid:Get('Senque')
        return last_tick and os.time() - last_tick < 500
    end)

    FunctionsHandler.PirateRaid:RegisterMethod("Start", function()
        local mon_list = GetMonAsSortedRange()
        local castle_pos = Vector3.new(-5543.5327148438, 313.80062866211, -2964.2585449219)
        if mon_list[1] then
            local mon_hum, mon_root = mon_list[1]:FindFirstChild("Humanoid"), mon_list[1]:FindFirstChild("HumanoidRootPart")
            if mon_root and mon_hum and mon_hum.Health > 0 and CaculateDistance(mon_root.CFrame, castle_pos) < 500 then
                CombatController.Attack(mon_list[1].Name)
                return
            end
        end
        TweenController.Create(castle_pos)
    end)

    function CheckFullMoon(is_force)
        if Lighting.Sky.MoonTextureId ~= 'http://www.roblox.com/asset/?id=970914431' then return end
        if is_force then return true end
        return Lighting.ClockTime > 18 or Lighting.ClockTime < 5
    end

    FunctionsHandler.SoulGuitar:RegisterMethod("Refresh", function()
        if not Config.Items.SoulGuitar then return end
        if ScriptStorage.Backpack['Skull Guitar'] or not ScriptStorage.Backpack['Dark Fragment'] then return end
        if ScriptStorage.PlayerData.Level < 2300 then return end
        local ecto_count = (ScriptStorage.Backpack['Ectoplasm'] or {Count = 0})["Count"]
        local bone_count = (ScriptStorage.Backpack["Bones"] or {Count = 0})['Count']
        if ecto_count < 250 then return 1 end
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
        elseif bone_count >= 500 and not ScriptStorage.Backpack["Skull Guitar"] then return 8 end
    end)

    FunctionsHandler.SoulGuitar:RegisterMethod('Start', function(step)
        if step == 7 then
            while CaculateDistance(CFrame.new(-8654.0, 140, 6167)) > 5 do
                task.wait()
                TweenController.Create(CFrame.new(-8654.0, 140, 6167))
            end
            SoulGuitarProcess = Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true)
        elseif step == 1 then
            if SeaIndex ~= 2 then
                SetTask("MainTask", 'Teleport to second sea to farm ectoplasm')
                return Remotes.CommF_:InvokeServer("TravelDressrosa")
            else
                SetTask("MainTask", "Farming ectoplasms for soul guitar")
                CombatController.Attack({"Ship Deckhand", "Ship Engineer", 'Ship Steward', "Ship Officer"})
                return
            end
        elseif step == 2 then
            TTL9 = TTL9 or 0
            if os.time() ~= LastestTime1 then
                TTL9 = TTL9 + 1
                LastestTime1 = os.time()
            end
            if TTL9 > 60 then return Hop() end
            local zombie_list = {}
            for _, ent in pairs(Services.Workspace.Enemies:GetChildren()) do
                if ent.Name == "Living Zombie" then table.insert(zombie_list, ent) end
            end
            if #zombie_list < 6 then
                SetTask('MainTask', 'Soul Guitar task 1 / 5: waiting until entity spawn')
                TweenController.Create(ScriptStorage.MobRegions["Living Zombie"][1] + Vector3.new(0, 30, 0))
            else
                local step_start = os.time()
                for i, zombie in pairs(zombie_list) do
                    while task.wait() and zombie.Humanoid.Health > 7000 do
                        SetTask('MainTask', 'Soul Guitar task 1 / 5: Hit mob ' .. i .. " / 6")
                        FunctionsHandler.LocalPlayerController.Methods.EquipTool:Call('Melee')
                        if os.time() - step_start > 60 then Hop() end
                        TweenController.Create(zombie.HumanoidRootPart.CFrame + Vector3.new(0, 50, 0))
                        W_Instances.Attack()
                    end
                end
                SetTask("MainTask", 'Soul Guitar task 1 / 5: Attack')
                while workspace.Enemies:FindFirstChild("Living Zombie") and task.wait() do
                    if os.time() - step_start > 60 then Hop() end
                    CombatController.Attack('Living Zombie')
                end
            end
        elseif step == 3 then
            local haunt_map = workspace.Map["Haunted Castle"]
            while CaculateDistance(CFrame.new(-8800.0, 178, 6033)) > 10 do
                task.wait()
                SetTask("MainTask", "Soul Guitar task 2 / 5: completing placards")
                TweenController.Create(CFrame.new(-8800.0, 178, 6033))
            end
            local placards = {Placard1 = "Right", Placard2 = "Right", Placard3 = "Left", Placard4 = 'Right', Placard5 = 'Left', Placard6 = 'Left', Placard7 = "Left"}
            for p_name, side in pairs(placards) do
                fireclickdetector(haunt_map[p_name][side].ClickDetector)
            end
        elseif step == 4 then
            Remotes.CommF_:InvokeServer("GuitarPuzzleProgress", "Ghost")
        elseif step == 5 then
            if CaculateDistance(CFrame.new(-9530.0, 6.1, 6054.8)) > 30 then
                TweenController.Create(CFrame.new(-9530.0, 6.1, 6054.8))
            else
                local tablet_map = workspace.Map['Haunted Castle'].Tablet
                for _, seg_name in pairs(BlankTablets) do
                    local seg = tablet_map[seg_name]
                    if seg.Line.Rotation.Z ~= 0 then
                        repeat task.wait() fireclickdetector(seg.ClickDetector) until seg.Line.Rotation.Z == 0
                    end
                end
                for seg_id, trophy_id in pairs(Trophy) do
                    local trophy_cf = workspace.Map["Haunted Castle"].Trophies.Quest[trophy_id].Handle.CFrame
                    local orientation = tostring(trophy_cf):split(", ")[4]
                    local target_rot = "180"
                    if orientation == "1" or orientation == "-1" then target_rot = "90" end
                    if not string.find(tostring(tablet_map[seg_id].Line.Rotation.Z), target_rot) then
                        repeat task.wait() fireclickdetector(tablet_map[seg_id].ClickDetector) until string.find(tostring(tablet_map[seg_id].Line.Rotation.Z), target_rot)
                    end
                end
            end
        elseif step == 6 then
            for part_id, color_name in pairs(Pipes) do
                pcall(function()
                    local pipe_part = workspace.Map['Haunted Castle']['Lab Puzzle'].ColorFloor.Model[part_id]
                    if pipe_part.BrickColor.Name ~= color_name then
                        repeat task.wait() fireclickdetector(pipe_part.ClickDetector) until pipe_part.BrickColor.Name == color_name
                    end
                end)
            end
            Remotes.CommF_:InvokeServer('soulGuitarBuy')
        elseif step == 8 then
            Remotes.CommF_:InvokeServer('soulGuitarBuy')
        end
    end)
	-- [[ LOGIC TUSHITA: TỰ ĐỘNG THẮP ĐUỐC KHI INDRA MỞ CỔNG ]]
    FunctionsHandler.Tushita:RegisterMethod("Refresh", function()
        if ScriptStorage.Backpack.Tushita then return end
        if ScriptStorage.PlayerData.Level < 2000 then return end
        if SeaIndex ~= 3 then return end
        TushitaProgress = TushitaProgress or Remotes.CommF_:InvokeServer("TushitaProgress")
        if not TushitaProgress.OpenedDoor then
            -- CÔNG THỨC: Ưu tiên Tushita khi có rip_indra True Form xuất hiện
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
            -- Bay đến cổng thắp đuốc tại Đảo Rùa (Turtle Island)
            TweenController.Create(CFrame.new(5714, math.random(19, 21), 256))
            if ScriptStorage.Tools["Holy Torch"] or game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") then
                for i = 1, 5 do Remotes.CommF_:InvokeServer("TushitaProgress", "Torch", i) end
                return true
            end
        elseif k == 2 then
            SetTask("MainTask", "Tushita: Đang tiêu diệt Longma lấy kiếm!")
            CombatController.Attack("Longma")
        end
    end)

    -- [[ LOGIC CURSED DUAL KATANA: BỘ NÃO GIẢI ĐỐ SIÊU CẤP ]]
    FunctionsHandler.CursedDualKatana:RegisterMethod("Refresh", function()
        if not Config.Items.CursedDualKatana then return end
        local bp = ScriptStorage.Backpack
        if ScriptStorage.PlayerData.Level < 2200 then return end
        if bp["Cursed Dual Katana"] or not bp.Tushita or (bp.Tushita.Mastery or 0) < 350 or not bp.Yama or (bp.Yama.Mastery or 0) < 350 then return end
        if SeaIndex ~= 3 then return end
        
        local progress = CdkProgess or Remotes.CommF_:InvokeServer("CDKQuest", 'Progress') or 'uwu'
        
        -- CÔNG THỨC: Tự động bay đến Mansion mở cửa hầm nếu chưa mở
        if not progress or progress == 'uwu' then
            local npc = workspace.NPCs:FindFirstChild("Crypt Master") or game:GetService("ReplicatedStorage").NPCs:FindFirstChild("Crypt Master")
            if npc then
                TweenController.Create(npc:GetModelCFrame())
                if CaculateDistance(npc) < 15 then
                    fireproximityprompt(npc:FindFirstChildOfClass("ProximityPrompt"))
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Npc")
                end
            end
            return nil
        end

        if workspace.Map.Turtle.Cursed:FindFirstChild("Breakable") then return {"break"} end
        local mapping = {Good = 'Tushita', Evil = 'Yama'}
        if progress.Good == 4 and progress.Evil == 4 then return {'burn 2'} end
        if progress.Good == 3 or progress.Evil == 3 then return {"burn"} end
        
        if progress.Opened then
            for side, val in pairs(progress) do
                if side ~= 'Opened' and side ~= "Finished" and val < 3 then
                    ScriptStorage.CdkCache = {side, val + 1}
                    if not ScriptStorage.Tools[mapping[side]] then Remotes.CommF_:InvokeServer('LoadItem', mapping[side]) end
                    Remotes.CommF_:InvokeServer('CDKQuest', 'StartTrial', side)
                    return {side, val + 1}
                end
            end
        end
        return ScriptStorage.CdkCache
    end)

    FunctionsHandler.CursedDualKatana:RegisterMethod("GetHazeMon", function()
        local haze_list = {}
        for _, obj in pairs(game.Players.LocalPlayer.QuestHaze:GetChildren()) do if obj.Value > 0 then table.insert(haze_list, obj) end end
        table.sort(haze_list, function(a, b) return CaculateDistance(a:GetAttribute('Position')) < CaculateDistance(b:GetAttribute('Position')) end)
        return tostring(haze_list[1])
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

    -- [[ HỆ THỐNG THÔNG BÁO & LẮNG NGHE SỰ KIỆN GỐC ]]
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
	-- [[ HỆ THỐNG TÌM KIẾM VÀ ĐỔI MÁY CHỦ GỐC ]]
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

    LowHop = function(k_ignored1, k_ignored2)
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

    -- [[ HỆ THỐNG LƯU TRỮ DỮ LIỆU FILE GỐC ]]
    Storage = {WRITE_DELAY = .5, Data = {}}
    local k_file_path = ".storage_u_" .. tostring(LocalPlayer)
    function Decode(W_json) return game:GetService("HttpService"):JSONDecode(W_json) end
    function Encode(W_tab) return game:GetService("HttpService"):JSONEncode(W_tab) end
    function Storage.Set(W_s, h_k, X_v) W_s.Data[h_k] = X_v end
    function Storage.Get(W_s, h_k) return W_s.Data[h_k] end
    function Storage.Save(W_s) writefile(k_file_path, Encode(W_s.Data)) end
    
    if not isfile(k_file_path) then
        writefile(k_file_path, "{}")
        task.wait(1)
    end
    Storage.Data = {}
    pcall(function() Storage.Data = Decode(readfile(k_file_path) or '{}') end)
    spawn(function() while task.wait(Storage.WRITE_DELAY) do Storage:Save() end end)
    
    -- [[ VÒNG LẶP QUẢN LÝ NHIỆM VỤ - CÔNG THỨC MAX LEVEL 2800 ]]
    local k_initialized_tasks = {}
    SetTask("MainTask", 'n/a')
    SetTask("SubTask", 'n/a')
    ParsingTimes = 0
    
    function RefreshTasksData()
        if _G.Stop then return end
        
        -- CÔNG THỨC: Nếu đạt Max Level 2800 -> Tự động bay về Mansion rình Boss VIP
        if ScriptStorage.PlayerData.Level >= 2800 then
            SetText('SubTask', "HoangPhucHub: Đã Max 2800 - Đang rình Boss tại Mansion")
            local mansion_pos = CFrame.new(-12464, 332, -7254)
            if CaculateDistance(mansion_pos) > 30 and not MonResult then
                TweenController.Create(mansion_pos)
                return
            end
        end

        for _, taskName in pairs(TasksOrder) do
            local task_handler = FunctionsHandler[taskName]
            if not task_handler or not task_handler.Initalized then
                if not k_initialized_tasks[taskName] then k_initialized_tasks[taskName] = true end
            else
                local k_refresh_func = task_handler.Methods.Refresh
                local X_start_func = task_handler.Methods.Start
                if k_refresh_func then
                    local h_result = k_refresh_func:Call(ParsingTimes < 100)
                    ParsingTimes = ParsingTimes + 1
                    if h_result and ParsingTimes > 100 then
                        CurrentTask = taskName
                        ScriptStorage.Interface.SetText('DebugLine', taskName)
                        X_start_func:Call(h_result)
                        return
                    end
                end
            end
        end
    end

    -- [[ KHỞI CHẠY VÀ THEO DÕI HỆ THỐNG GỐC ]]
    SetText('MainTextLabel', "HoangPhucHub: Đang làm mới vật phẩm..")
    AddPoint()
    J_quest:RefreshQuest()
    RefreshInventory()
    
    Remotes.CommE.OnClientEvent:Connect(function(...)
        local J_args = {...}
        if string.find(J_args[1], 'Item') then RefreshInventory() end
    end)
    
    RefreshRace()
    
    game.Players.LocalPlayer.Idled:Connect(function()
        game:GetService("VirtualUser"):CaptureController()
        game:GetService("VirtualUser"):ClickButton2(Vector2.new())
    end)

    SetText("MainTextLabel", 'HoangPhucHub: Loaded In ' .. tick() - StartTick .. 'ms!')
    
    QueueList = {}
    function NearbyHopHandler()
        if NearbyHopHandlerDebounce and os.time() - NearbyHopHandlerDebounce < 10 then return end
        NearbyHopHandlerDebounce = os.time()
        for _, plr in pairs(game.Players:GetPlayers()) do
            local k_pos = plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character.HumanoidRootPart.Position
            if k_pos and plr ~= game.Players.LocalPlayer then
                local W_q = QueueList[plr.Name]
                if not W_q then
                    QueueList[plr.Name] = os.time()
                else
                    if os.time() - W_q > 30 then
                        if CaculateDistance(k_pos) < 100 then
                            Hop(nil, nil)
                            task.wait(5)
                        else
                            QueueList[plr.Name] = nil
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
                    local J_elapsed = os.time() - InitTime
                    local r_total = J_elapsed + OldSessionTime
                    writefile(".tdif-" .. game.Players.LocalPlayer.Name, tostring(r_total))
                    if ScriptStorage.Interface then
                        SetText('LiveTime', "Tổng thời gian: " .. DispTime(r_total, true) .. ' | Phiên này: ' .. DispTime(J_elapsed, true))
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
        if not Config.Configuration.AutoHop then Hop() end
    end)

    while task.wait() do
        -- CÔNG THỨC: Tự động kết nối lại nếu treo máy quá 5 phút
        if Config.Configuration.HopWhenIdle and LastIdling and os.time() - LastIdling > 300.0 then
            SetTask('MainTask', "HoangPhucHub: Rejoining due idle in 10 min!")
            task.wait(1)
            while task.wait() do game:GetService('TeleportService'):Teleport(game.PlaceId) end
        end
        if not AnimationDelay or os.time() - AnimationDelay > 60 then
            AnimationDelay = os.time()
            LocalPlayer.Character:WaitForChild('Humanoid'):LoadAnimation(K_animation):Play()
        end
        FunctionsHandler.MeleesController.Methods.Start:Call()
        local J_ok, r_err = xpcall(RefreshTasksData, debug.traceback)
    end
end

-- =======================================================
-- KÍCH HOẠT HOANGPHUCHUB (KHÔNG ĐỔI TÊN HÀM)
-- =======================================================
hoangtuveu()
