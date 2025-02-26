if game.PlaceId == 9164271501 then
    print("✅ สคริปต์กำลังทำงานใน PlaceId 9164271501")

    -- ใส่โค้ดหลักของคุณที่นี่
else
    print("❌ สคริปต์นี้ไม่รองรับในเกมนี้ (PlaceId: " .. game.PlaceId .. ")")
    return -- หยุดการทำงานของสคริปต์
end


local delayTime = 5 -- หน่วงเวลาก่อนโหลด UI 5 วินาที
wait(delayTime)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Moji - Script",
    SubTitle = "by Moji",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Auto = Window:AddTab({ Title = "Auto", Icon = "" }),
    Teleport = Window:AddTab({ Title = "Teleport", Icon = "" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

-- ฟังก์ชันในการดึง NPCs จาก workspace
local function teleportToNpc(npcName)
    local npc = workspace.Entities:FindFirstChild(npcName)

    if npc and npc:FindFirstChild("HumanoidRootPart") then
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame  -- Teleport ผู้เล่นไปหาตำแหน่งของ NPC
        print("Teleporting to: " .. npcName)
    else
        print(npcName .. " not found or doesn't have a HumanoidRootPart.")
    end
end

-- สร้าง Dropdown ให้ผู้เล่นเลือก NPC
local npcDropdown = Tabs.Teleport:AddDropdown("NpcDropdown", {
    Title = "[ Select Mob ]",
    Values = {"One-Tailed Hero", "Curse Mark Black Flames", "Koroma", "Bone", "Snake", "Stone Leo", "White Eyes", "Aruka", "Harukimao", "Rakura", "Traitor", "Demon Brother Left", "Demon Brother Right", "Icy", "Hidden Gas Demon", "Sound Brother", "Copycat", "Hat", "Bug", "Immortal", "Scarecrow", "Raven", "Byte", "Teleporter"},  -- ใช้ชื่อ NPC ที่ต้องการให้เลือก
    Default = "Select Mob",  -- ตั้งค่าเริ่มต้นเป็น One-Tailed Hero
})

    npcDropdown:OnChanged(function(selectedNpc)
        teleportToNpc(selectedNpc)  -- เมื่อเลือก NPC ให้ Teleport ผู้เล่นไปที่ NPC นั้น
    end)

            -- ฟังก์ชันในการดึง NPCs จาก workspace
        local function teleportToNpc(npcName)
            local npc = workspace.NPCs:FindFirstChild(npcName)
            
            if npc and npc:FindFirstChild("HumanoidRootPart") then
                local player = game.Players.LocalPlayer
                player.Character.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame  -- Teleport ผู้เล่นไปหาตำแหน่งของ NPC
                print("Teleporting to: " .. npcName)
            else
                print(npcName .. " not found or doesn't have a HumanoidRootPart.")
            end
        end

        -- สร้าง Dropdown ให้ผู้เล่นเลือก NPC
        local npcDropdown = Tabs.Teleport:AddDropdown("NpcDropdown", {
            Title = "[ Select NPC ]",
            Values = {"Aruka","BlackSmith", "Chiraku", "Dog", "Ekisu", "High Muty", "Ishikage", "Kaba", "Kenma", "Power", "Receptionist", "Stone Leo", "God", "Danzu", "Yamako", "Tazune", "Renegade Prisoner", "Toketsu"},  -- ใช้ชื่อ NPC ที่ต้องการให้เลือก
            Default = "Select NPC",  -- ตั้งค่าเริ่มต้นเป็น BlackSmith
        })

        npcDropdown:OnChanged(function(selectedNpc)
            teleportToNpc(selectedNpc)  -- เมื่อเลือก NPC ให้ Teleport ผู้เล่นไปที่ NPC นั้น
        end)

    local heartbeatConnection1
    local heartbeatConnection2

    local killaura1Toggle = Tabs.Main:AddToggle("Killaura1", {Title = "[ KillAura Log/Boulder ]", Default = false})
    killaura1Toggle:OnChanged(function(value)
        if value then
            -- Killaura1
            local attackRange = 50
            local playerName = game.Players.LocalPlayer.Name  -- ดึงชื่อของผู้เล่น
            local args = {
                [1] = {
                    [1] = "M1",
                    [2] = {
                        ["Character"] = workspace:WaitForChild("Entities"):WaitForChild(playerName),
                        ["Action"] = "HitConnection",
                        ["Tick"] = 1,
                        ["Air"] = false
                    }
                }
            }
            local function isInRange(character, target)
                local distance = (character.HumanoidRootPart.Position - target.Position).Magnitude
                return distance <= attackRange
            end

            -- ใช้ RunService.Heartbeat เพื่อทำงานได้ทุกเฟรม
            heartbeatConnection1 = game:GetService("RunService").Heartbeat:Connect(function()
                if not killaura1Toggle.Value then return end
                for _, object in pairs(workspace:WaitForChild("World"):WaitForChild("WorldObjects"):GetChildren()) do
                    if object:IsA("Model") then
                        if isInRange(workspace:WaitForChild("Entities"):WaitForChild(playerName), object.PrimaryPart or object:FindFirstChild("HumanoidRootPart") or object) then
                            args[1][2]["Victim"] = object
                            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Services"):WaitForChild("RNet"):WaitForChild("Bridges"):WaitForChild("CombatEvent_Event"):FireServer(unpack(args))
                        end
                    end
                end
                task.wait(0.1)
            end)
            print("KillAura1 Enabled")
        else
            print("KillAura1 Disabled")
            if heartbeatConnection1 then
                heartbeatConnection1:Disconnect()  -- Disconnect Heartbeat เมื่อ Toggle ปิด
            end
        end
    end)

    -- KillAura2 Toggle
    local killaura2Toggle = Tabs.Main:AddToggle("Killaura2", {Title = "[ KillAura Mob ]", Default = false})
    killaura2Toggle:OnChanged(function(value)
        if value then
            -- Killaura2
            local attackRange = 50
            local playerName = game.Players.LocalPlayer.Name  -- ดึงชื่อของผู้เล่น
            local args = {
                [1] = {
                    [1] = "M1",
                    [2] = {
                        ["Character"] = workspace:WaitForChild("Entities"):WaitForChild(playerName),
                        ["Action"] = "HitConnection",
                        ["Tick"] = 1,
                        ["Air"] = false
                    }
                }
            }
            local function isInRange(character, target)
                if target:FindFirstChild("HumanoidRootPart") then
                    local distance = (character.HumanoidRootPart.Position - target.HumanoidRootPart.Position).Magnitude
                    return distance <= attackRange
                end
                return false
            end

            local function isPlayer(entity)
                return game.Players:GetPlayerFromCharacter(entity) ~= nil
            end

            -- ใช้ RunService.Heartbeat เพื่อทำงานได้ทุกเฟรม
            heartbeatConnection2 = game:GetService("RunService").Heartbeat:Connect(function()
                if not killaura2Toggle.Value then return end
                for _, entity in pairs(workspace:WaitForChild("Entities"):GetChildren()) do
                    if entity:IsA("Model") then
                        if not isPlayer(entity) then
                            if isInRange(workspace:WaitForChild("Entities"):WaitForChild(playerName), entity) then
                                args[1][2]["Victim"] = entity
                                game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Services"):WaitForChild("RNet"):WaitForChild("Bridges"):WaitForChild("CombatEvent_Event"):FireServer(unpack(args))
                            end
                        end
                    end
                end
                task.wait(0.1)
            end)
            print("KillAura2 Enabled")
        else
            print("KillAura2 Disabled")
            if heartbeatConnection2 then
                heartbeatConnection2:Disconnect()  -- Disconnect Heartbeat เมื่อ Toggle ปิด
            end
        end
    end)


        local questIds = {
        "Defeat the Demon Brothers Rotate",
        "Defeat Harukimao Rotate",
        "Defeat Immortal Rotate",
        "Defeat One Tailed Rotate",
        "Defeat Hat Rotate",
        "Defeat Aruka Rotate",
        "Defeat By Rotate",
        "Defeat Snake Rotate",
        "Defeat Rakura Rotate",
        "Defeat Scarecrow Rotate",
        "Defeat Raven Rotate",
        "Defeat Black Flames Rotate"
        }

    local autoQuestEnabled = false
    local questConnection

    -- ฟังก์ชันสำหรับรับเควส
    local function takeQuest(questId)
        local args = {
            [1] = {
                [1] = {
                    ["QuestId"] = questId,
                    ["Job"] = "GiveQuest"
                }
            }
        }

        game:GetService("ReplicatedStorage"):WaitForChild("Modules")
            :WaitForChild("Services"):WaitForChild("RNet")
            :WaitForChild("Bridges"):WaitForChild("QuestEvent_Event")
            :FireServer(unpack(args))
        end

    -- ฟังก์ชันวนลูปรับเควสอัตโนมัติ
    local function autoTakeQuest()
        while autoQuestEnabled do
            for _, questId in ipairs(questIds) do
                if not autoQuestEnabled then return end
                takeQuest(questId)
                print("📜 Quest Accepted: " .. questId)
                wait(5) -- รอ 5 วินาทีก่อนรับเควสถัดไป
            end
            wait(2) -- รอ 2 วินาทีเมื่อวนครบทุกเควส
        end
    end

    -- เพิ่ม Toggle สำหรับ AutoQuest ใน UI
    local autoQuestToggle = Tabs.Auto:AddToggle("AutoQuest", { Title = "[ Auto Quest ]", Default = false })
    autoQuestToggle:OnChanged(function(value)
        autoQuestEnabled = value
        if value then
            print("✅ AutoQuest Started")
            autoTakeQuest()
        else
            print("❌ AutoQuest Stopped")
            if questConnection then
                questConnection:Disconnect()
            end
        end
    end)


    local runService = game:GetService("RunService")
    local player = game.Players.LocalPlayer
    local replicatedStorage = game:GetService("ReplicatedStorage")
    local TeleportService = game:GetService("TeleportService")
    local HttpService = game:GetService("HttpService")

    local placeId = game.PlaceId
    local currentJobId = game.JobId

    -- 🔥 ใช้รายชื่อบอสจาก `_G.selectedBosses`
    local selectedBosses = _G.selectedBosses or {
        "Koroma", "Bone", "One-Tailed Hero", "Curse Mark Black Flames"
    } -- ถ้า `_G.selectedBosses` ไม่มีค่า ให้ใช้ค่าดีฟอลต์แทน

    print("🔥 กำลังฟาร์มบอส:", table.concat(selectedBosses, ", "))

    local autoFarmEnabled = false
    local followConnection
    local attackConnection

    -- 🌍 **Hop Server เมื่อไม่พบบอส**
    local function hopServer()
        print("🔄 ไม่พบบอส กำลังหาเซิร์ฟเวอร์ใหม่...")
        local servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"))

        for _, server in pairs(servers.data) do
            if server.playing < server.maxPlayers and server.id ~= currentJobId then
                TeleportService:TeleportToPlaceInstance(placeId, server.id)
                return
            end
        end

        print("⚠️ ไม่มีเซิร์ฟเวอร์ใหม่ ลองใหม่อีกครั้ง...")
    end

    -- 🚶 **ฟังก์ชันติดตามอยู่ด้านหลังบอส**
    local function followBehindBoss(boss)
        if followConnection then followConnection:Disconnect() end
        followConnection = runService.Heartbeat:Connect(function()
            if not autoFarmEnabled or not boss or not boss:FindFirstChild("HumanoidRootPart") or boss.Humanoid.Health <= 0 then
                if followConnection then followConnection:Disconnect() end
                return
            end
            local hrp = boss.HumanoidRootPart
            local behindPosition = hrp.CFrame * CFrame.new(0, 0, 5)
            player.Character.HumanoidRootPart.CFrame = behindPosition
        end)
    end

    -- **ตรวจสอบบอสว่ามีชีวิตหรือไม่**
    local function isBossAlive(bossName)
        local boss = workspace.Entities:FindFirstChild(bossName)
        return boss and boss:FindFirstChild("HumanoidRootPart") and boss.Humanoid.Health > 0
    end

    -- ⚔️ **ฟังก์ชันโจมตีบอส**
    local function attackBoss(boss)
        if attackConnection then attackConnection:Disconnect() end
        attackConnection = runService.Heartbeat:Connect(function()
            if not autoFarmEnabled or not isBossAlive(boss.Name) then
                if attackConnection then attackConnection:Disconnect() end
                print("💀 บอสตายแล้ว:", boss.Name)
                return
            end
            local args = {
                [1] = {
                    [1] = "M1",
                    [2] = {
                        ["Character"] = player.Character,
                        ["Action"] = "HitConnection",
                        ["Tick"] = 1,
                        ["Air"] = false,
                        ["Victim"] = boss
                    }
                }
            }
            replicatedStorage:WaitForChild("Modules"):WaitForChild("Services")
                :WaitForChild("RNet"):WaitForChild("Bridges")
                :WaitForChild("CombatEvent_Event"):FireServer(unpack(args))
        end)
    end

    -- 🏹 **AutoFarm Bosses**
    local function autoFarmBosses()
        while autoFarmEnabled do
            local foundBoss = false

            for _, bossName in ipairs(selectedBosses) do
                if not autoFarmEnabled then return end

                local boss = workspace.Entities:FindFirstChild(bossName)
                if boss and isBossAlive(bossName) then
                    foundBoss = true
                    followBehindBoss(boss)
                    task.wait(5) -- รอให้โหลดบอส
                    attackBoss(boss)

                    -- รอจนกว่าบอสจะตาย
                    repeat task.wait(1) until not isBossAlive(bossName) or not autoFarmEnabled
                    if not autoFarmEnabled then return end

                    task.wait(2) -- รอ 2 วินาทีก่อนล่าบอสตัวต่อไป
                end
            end

            -- ถ้าไม่พบ **บอสที่เลือก** เลยให้ Hop Server
            if not foundBoss then
                print("⚠️ ไม่พบบอสที่ต้องการในเซิร์ฟเวอร์นี้ กำลัง Hop Server...")
                hopServer()
            else
                task.wait(5) -- ถ้ามีบอสก็รอ 5 วินาทีแล้ววนใหม่
            end
        end
    end

    -- 🔄 **สร้าง Toggle สำหรับ AutoFarm**
    local autoFarmToggle = Tabs.Auto:AddToggle("AutoFarm", { Title = "[ AutoFarm Boss ]", Default = false })
    autoFarmToggle:OnChanged(function(value)
        autoFarmEnabled = value
        if value then
            print("🚀 เริ่ม Auto Farm Boss")
            autoFarmBosses()
        else
            if followConnection then followConnection:Disconnect() end
            if attackConnection then attackConnection:Disconnect() end
            print("🛑 หยุด Auto Farm Boss")
        end
    end)




        -- สร้างฟังก์ชันแสดงสถานะมอนสเตอร์
    local monsterParagraph = nil

    local function updateMonsterStatus()
        local statusText = "📋 **สถานะมอนสเตอร์:**\n\n"
        local monsterNames = { "Bone", "Koroma", "One-Tailed Hero", "Curse Mark Black Flames" } -- แก้ไขชื่อให้ตรงกับในเกม

        for _, monsterName in ipairs(monsterNames) do
            local found = workspace.Entities:FindFirstChild(monsterName)
            if found then
                statusText = statusText .. "✅ " .. monsterName .. " - Alive\n"
            else
                statusText = statusText .. "🔴 " .. monsterName .. " - Die\n"
            end
        end

        -- ลบ paragraph เดิมแล้วสร้างใหม่
        if monsterParagraph then
            monsterParagraph:Destroy()
        end

        monsterParagraph = Tabs.Main:AddParagraph({
            Title = "Monster Status",
            Content = statusText
        })
    end

    -- ตรวจจับเมื่อมีการเพิ่มหรือลบมอนสเตอร์
    workspace.Entities.ChildAdded:Connect(function()
        updateMonsterStatus()
    end)

    workspace.Entities.ChildRemoved:Connect(function()
        updateMonsterStatus()
    end)

    -- อัปเดตสถานะทุก ๆ 1 วินาที
    task.spawn(function()
        while true do
            updateMonsterStatus()
            task.wait(60)
        end
    end)



-- Addons
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("MojiHub")
SaveManager:SetFolder("MojiHub/Ninja")
InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)
Window:SelectTab(2)
Fluent:Notify({
    Title = "Moji-Hub",
    Content = "กำลังโหลด Script",
    Duration = 8
})
SaveManager:LoadAutoloadConfig()
