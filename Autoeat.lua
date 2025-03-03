local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local client = Players.LocalPlayer

-- 🎯 กำหนดค่า Hunger ที่ต้องจัดการ
local HUNGER_THRESHOLD = 20  -- ✅ เริ่มกินหรือซื้อเมื่อ Hunger ต่ำกว่านี้
local HUNGER_MAX = 100       -- ✅ กินจนกว่าจะถึงค่านี้

-- ✅ ฟังก์ชันเดินไปยังตำแหน่งที่กำหนด
local function moveToPosition(targetPosition)
    local character = client.Character
    local humanoid = character and character:FindFirstChildOfClass("Humanoid")
    local rootPart = character and character:FindFirstChild("HumanoidRootPart")

    if not humanoid or not rootPart then
        warn("❌ ไม่พบตัวละครของผู้เล่นหรือ HumanoidRootPart!")
        return
    end

    humanoid:MoveTo(targetPosition)

    while (rootPart.Position - targetPosition).Magnitude > 2 do
        RunService.Heartbeat:Wait()

        if humanoid.MoveDirection.Magnitude == 0 then
            humanoid:MoveTo(targetPosition)
        end
    end

    humanoid.MoveToFinished:Wait()
end

-- ✅ ฟังก์ชันเช็คค่าอาหาร (%)
local function getHungerPercent()
    local hungerUI = client.PlayerGui:FindFirstChild("Main")
        and client.PlayerGui.Main:FindFirstChild("HUD")
        and client.PlayerGui.Main.HUD:FindFirstChild("Hunger")
        and client.PlayerGui.Main.HUD.Hunger:FindFirstChild("Clipping")

    return hungerUI and (hungerUI.Size.X.Scale * 100) or 100
end

-- ✅ ฟังก์ชันเช็คว่าใน Backpack มี Chicken ไหม
local function hasChickenInBackpack()
    local backpack = client:FindFirstChild("Backpack")
    if not backpack then return false end

    for _, item in ipairs(backpack:GetChildren()) do
        if item:IsA("Tool") and item.Name == "Chicken" then
            return item -- ✅ คืนค่า Chicken ที่เจอ
        end
    end
    return false -- ❌ ไม่มี Chicken
end

-- ✅ ฟังก์ชันกิน Chicken จาก Backpack จนกว่าจะเต็ม
local function eatChickenUntilFull()
    while getHungerPercent() < HUNGER_MAX do
        local chicken = hasChickenInBackpack()
        if not chicken then
            warn("❌ ไม่มี Chicken ใน Backpack แล้ว! หยุดกิน")
            return false
        end
        
        print("🍗 Hunger ต่ำกว่า " .. HUNGER_MAX .. "% กำลังกิน Chicken...")
        client.Character.Humanoid:EquipTool(chicken)
        wait(0.3)
        chicken:Activate()
        wait(1)
    end
    print("✅ Hunger เต็ม 100%! หยุดกิน")
    return true
end

-- ✅ ฟังก์ชันซื้อ Chicken
local function buyChicken()
    local chickenModel = workspace:FindFirstChild("MapMisc")
        and workspace.MapMisc:FindFirstChild("Purchases")
        and workspace.MapMisc.Purchases:FindFirstChild("Chicken")
        and workspace.MapMisc.Purchases.Chicken:FindFirstChild("Chicken")

    if not chickenModel then
        warn("❌ ไม่พบโมเดล Chicken!")
        return
    end

    -- ✅ หา ClickDetector ใน Chicken Model ที่ถูกต้อง
    local clickDetector = chickenModel:FindFirstChild("ClickDetector")

    if not clickDetector then
        warn("❌ ไม่พบ ClickDetector ใน Chicken!")
        return
    end

    -- ✅ เดินไปจุดซื้อก่อน
    local handle = chickenModel:FindFirstChild("Handle")
    local targetPosition = handle and handle.Position or chickenModel:GetPivot().Position
    print("🚶‍♂️ กำลังเดินไปซื้อ Chicken ที่:", targetPosition)
    moveToPosition(targetPosition + Vector3.new(0, 0, 2))

    wait(0.5) -- ✅ รอให้ตัวละครอยู่ใกล้ๆ

    -- ✅ กดซื้อ
    print("🛒 กำลังกดซื้อ Chicken...")
    fireclickdetector(clickDetector)

    wait(2) -- ✅ รอให้เกมตอบสนอง

    -- ✅ เช็คว่าซื้อสำเร็จไหม แล้วกินเลย
    if hasChickenInBackpack() then
        print("✅ ซื้อ Chicken สำเร็จ! กำลังกิน...")
        eatChickenUntilFull() -- ✅ กินจนกว่าจะเต็ม
    else
        warn("❌ ซื้อ Chicken ไม่สำเร็จ! ลองเช็ค ClickDetector อีกที")
    end
end

-- ✅ **ลำดับตำแหน่งที่ต้องเดินไป**
local positions = {
    Vector3.new(-1949.08, 4.05, -1648.10),
    Vector3.new(-1951.02, 3.75, -1541.63),
    Vector3.new(-1701.96, 3.75, -1539.03),
    Vector3.new(-1728.35, 4.13, -1610.77),
    Vector3.new(-1740.56, 4.13, -1611.26) -- ✅ จุดสุดท้าย = จุดซื้อ Chicken
}

-- ✅ ฟังก์ชันเดินย้อนกลับไปที่จุดเริ่มต้น
local function moveBackThroughPositions()
    print("🔄 กำลังเดินย้อนกลับไปจุดเริ่มต้น...")

    for i = #positions, 1, -1 do
        local pos = positions[i]
        print("🚶‍♂️ กำลังเดินกลับไปที่:", pos)
        moveToPosition(pos)
    end

    print("✅ กลับถึงจุดเริ่มต้นแล้ว!")
end

-- ✅ ฟังก์ชันเดินไปซื้ออาหารและกลับ
local function moveThroughPositions()
    local hunger = getHungerPercent()
    
    -- ❌ ถ้า Hunger มากกว่าหรือเท่ากับ HUNGER_THRESHOLD ไม่ต้องเดินไปไหน
    if hunger >= HUNGER_THRESHOLD then
        print("✅ Hunger มากกว่าหรือเท่ากับ " .. HUNGER_THRESHOLD .. "%! ไม่ต้องเดินไปไหน")
        return
    end

    -- ✅ ถ้ามี Chicken อยู่แล้ว → กินเลย ไม่ต้องเดินไปซื้อ
    if hasChickenInBackpack() then
        print("🍗 มี Chicken ใน Backpack แล้ว! กินเลย...")
        eatChickenUntilFull()
        return
    end

    -- ✅ เริ่มเดินไปตามลำดับ
    for _, pos in ipairs(positions) do
        print("🚶‍♂️ กำลังเดินไปที่:", pos)
        moveToPosition(pos)
    end

    -- ✅ ซื้อและกิน Chicken
    buyChicken()

    -- ✅ เดินกลับไปจุดเริ่มต้น
    moveBackThroughPositions()
end

-- ✅ เรียกใช้เพื่อให้ตัวละครเดินไปซื้ออาหารและกลับ
moveThroughPositions()
