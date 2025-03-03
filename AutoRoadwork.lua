local Players = game:GetService("Players")
local VirtualInputManager = game:GetService("VirtualInputManager")
local RunService = game:GetService("RunService")

local client = Players.LocalPlayer
local running = false -- ตัวแปรเก็บสถานะการวิ่ง

-- ✅ ฟังก์ชันตรวจสอบว่า Roadwork Training มีอยู่หรือไม่
local function hasRoadworkTraining()
    local character = workspace.Living:FindFirstChild(client.Name)
    local backpack = client:FindFirstChild("Backpack")
    return (character and character:FindFirstChild("Roadwork Training"))
        or (backpack and backpack:FindFirstChild("Roadwork Training"))
end

-- ✅ ฟังก์ชันเช็ค Stamina (%) จาก UI
local function getStaminaPercent()
    local staminaUI = client.PlayerGui:FindFirstChild("Main")
        and client.PlayerGui.Main:FindFirstChild("HUD")
        and client.PlayerGui.Main.HUD:FindFirstChild("Stamina")
        and client.PlayerGui.Main.HUD.Stamina:FindFirstChild("Clipping")

    return staminaUI and (staminaUI.Size.X.Scale * 100) or 100
end

-- ✅ ฟังก์ชันเลือกปุ่ม Stamina อัตโนมัติ
local function selectStaminaOption()
    local roadworkGUI = client.PlayerGui:FindFirstChild("RoadworkGain")
        and client.PlayerGui.RoadworkGain:FindFirstChild("Frame")

    if not roadworkGUI then return end

    local staminaButton = roadworkGUI:FindFirstChild("Stamina")

    if staminaButton and staminaButton:IsA("TextButton") then
        local clickX, clickY = staminaButton.AbsolutePosition.X + staminaButton.AbsoluteSize.X / 2,
                               staminaButton.AbsolutePosition.Y + staminaButton.AbsoluteSize.Y / 2
        VirtualInputManager:SendMouseButtonEvent(clickX, clickY, 0, true, game, 0)
        RunService.Heartbeat:Wait()
        VirtualInputManager:SendMouseButtonEvent(clickX, clickY, 0, false, game, 0)
    end
end

-- ✅ ฟังก์ชันวิ่งและหยุดวิ่งตามค่า Stamina (ควบคุมด้วย Heartbeat)
local function checkStaminaAndRun()
    RunService.Heartbeat:Connect(function()
        local stamina = getStaminaPercent()

        if stamina < 20 and running then
            print("⚠️ Stamina ต่ำกว่า 20%! หยุดวิ่งทันที")
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EventCore"):FireServer("Run", "Start", false)
            running = false
        elseif stamina >= 90 and not running then
            print("✅ Stamina สูงกว่า 90%! เริ่มวิ่งอีกครั้ง")
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("EventCore"):FireServer("Run", "Start", true, 1)
            running = true
        end
    end)
end

-- ✅ ฟังก์ชันเดินไปยังตำแหน่งที่กำหนด
local function moveToPosition(targetPosition)
    local character = client.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    local rootPart = character and character:FindFirstChild("HumanoidRootPart")

    if not humanoid or not rootPart then return end

    humanoid:MoveTo(targetPosition)

    while (rootPart.Position - targetPosition).Magnitude > 2 do
        RunService.Heartbeat:Wait()

        if humanoid.MoveDirection.Magnitude == 0 then
            humanoid:MoveTo(targetPosition)
        end
    end

    humanoid.MoveToFinished:Wait()
end

-- ✅ **ตำแหน่งที่ต้องเดินไปซื้อ Roadwork Training**
local buyPosition = Vector3.new(-2059.03, 8.37, -1643.66)

local function moveToAndBuyRoadwork()
    while not hasRoadworkTraining() do
        print("🚶‍♂️ กำลังเดินไปซื้อ Roadwork Training...")
        moveToPosition(buyPosition)

        local player = game.Players.LocalPlayer
        local character = player.Character or workspace.Living:FindFirstChild(player.Name)
        if not character or not character.PrimaryPart then
            warn("❌ ไม่พบตัวละครของผู้เล่น!")
            return
        end

        local playerPosition = character.PrimaryPart.Position
        local gymObjects = workspace:FindFirstChild("MapMisc")
            and workspace.MapMisc:FindFirstChild("Purchases")
            and workspace.MapMisc.Purchases:FindFirstChild("GYM")
            and workspace.MapMisc.Purchases.GYM:GetChildren()

        if gymObjects then
            local nearestGym = nil
            local minDistance = math.huge  

            -- 🔍 ค้นหา "Roadwork Training" ที่ใกล้ที่สุด
            for _, obj in pairs(gymObjects) do
                if obj:IsA("Model") and obj.Name == "Roadwork Training" then
                    local part = obj:FindFirstChildWhichIsA("BasePart") -- หา Part ที่ใช้คำนวณระยะทาง
                    if part then
                        local distance = (part.Position - playerPosition).Magnitude
                        if distance < minDistance then
                            minDistance = distance
                            nearestGym = obj
                        end
                    end
                end
            end

            -- 🎯 กด ClickDetector ของ "Roadwork Training" ที่ใกล้ที่สุด
            if nearestGym then
                local clickDetector = nearestGym:FindFirstChild("ClickDetector", true)
                if clickDetector then
                    print("✅ กำลังกด ClickDetector ของ Roadwork Training ที่ใกล้ที่สุด...")
                    fireclickdetector(clickDetector)
                else
                    warn("❌ ไม่พบ ClickDetector ใน Roadwork Training!")
                end
            else
                warn("❌ ไม่พบ Roadwork Training ในพื้นที่!")
            end
        else
            warn("❌ ไม่พบ MapMisc.Purchases.GYM!")
        end

        wait(0.5)
    end
end

-- ✅ ฟังก์ชันใช้ Roadwork Training
local function useRoadworkTraining()
    moveToAndBuyRoadwork()

    local character = workspace.Living:FindFirstChild(client.Name)
    local backpack = client:FindFirstChild("Backpack")
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")

    if not character or not humanoid then return end

    local roadworkTraining = character:FindFirstChild("Roadwork Training")
        or (backpack and backpack:FindFirstChild("Roadwork Training"))

    if not roadworkTraining then return end

    if backpack and backpack:FindFirstChild("Roadwork Training") then
        humanoid:EquipTool(backpack:FindFirstChild("Roadwork Training"))
        wait(0.3)
    end

    roadworkTraining:Activate()
    wait(0.5)

    selectStaminaOption()
end

-- ✅ **ตำแหน่งที่ต้องเดินไปตามลำดับ**
local positions = {
    Vector3.new(-1951.92, 4.05, -1646.66),
    Vector3.new(-1954.96, 4.00, -1486.99),
    Vector3.new(-1836.21, 4.00, -1487.24),
    Vector3.new(-1831.04, 4.00, -1306.54),
    Vector3.new(-1693.85, 4.00, -1306.44),
    Vector3.new(-1695.82, 4.00, -1493.95),
    Vector3.new(-1699.00, 4.00, -1555.24),
    Vector3.new(-1878.21, 4.00, -1554.24),
    Vector3.new(-1877.21, 4.00, -1730.90),
    Vector3.new(-1947.71, 4.01, -1731.99),
    Vector3.new(-1951.92, 4.05, -1646.66)
}

-- ✅ **กระบวนการทำงานหลัก (วนลูป Roadwork ตลอดไป)**
checkStaminaAndRun() -- เรียกใช้ Heartbeat สำหรับเช็ค Stamina

while true do
    print("🔄 เริ่มกระบวนการ Roadwork ใหม่! 🔄")

    moveToAndBuyRoadwork()
    useRoadworkTraining()

    for _, pos in ipairs(positions) do
        moveToPosition(pos)
    end

    print("✅ จบ Roadwork รอบนี้! เริ่มรอบใหม่อีกครั้ง... 🔄")
    wait(1)
end
