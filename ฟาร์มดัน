-- ตัวแปรที่เก็บข้อมูลในการโจมตี
local args = {
    [1] = {
        ["phsic"] = {
            ["Power"] = 100,
            ["Time"] = 0.05,
            ["Dir"] = Vector3.new(0.6150473356246948, 0.7071067690849304, -0.3488793671131134)
        },
        ["damage"] = 30,
        ["castPercent"] = 0,
        ["hitID"] = 1,
        ["isSetNetworkOwnerEnemy"] = true,
        ["skillID"] = 15020001
    },
    [2] = "" -- ชื่อโมเดลจะถูกกรอกที่นี่
}

-- การเรียกใช้งาน ReplicatedStorage เพื่อส่งข้อมูล
local function FastAttack()
    -- ค้นหากลุ่มศัตรูใน Enemy
    local enemyFolder = workspace:FindFirstChild("\229\137\175\230\156\172\229\156\176\229\155\190")
    if enemyFolder then
        -- ค้นหาทุกๆ โฟลเดอร์ที่มีชื่อเป็นตัวเลข (เช่น 1, 2, 3, ...)
        for i = 1, 10 do
            local folderName = tostring(i) -- สร้างชื่อโฟลเดอร์เป็นตัวเลข
            local enemySubFolder = enemyFolder:FindFirstChild(folderName)
            if enemySubFolder then
                local enemySubFolder2 = enemySubFolder:FindFirstChild("\229\156\176\229\155\190")
                if enemySubFolder2 then
                    local enemySubFolder3 = enemySubFolder2:FindFirstChild("Enemy")
                    if enemySubFolder3 then
                        -- ค้นหาทุกๆ โฟลเดอร์ที่มีชื่อเป็นตัวเลข (เช่น 1, 2, 3, ...)
                        for _, enemyGroup in pairs(enemySubFolder3:GetChildren()) do
                            -- ตรวจสอบว่าโฟลเดอร์มีชื่อเป็นรูปแบบเช่น 1, 2, 3
                            if tonumber(enemyGroup.Name) then
                                -- ค้นหาโมเดลที่มี Humanoid ในแต่ละโฟลเดอร์
                                for _, enemyModel in pairs(enemyGroup:GetChildren()) do
                                    if enemyModel:FindFirstChild("Humanoid") and enemyModel:FindFirstChild("HumanoidRootPart") then
                                        -- กำหนดชื่อของโมเดลให้กับ args[2]
                                        args[2] = enemyModel.Name
                                        
                                        -- รับข้อมูลเกี่ยวกับตำแหน่งและพลังโจมตีจาก args
                                        local humanoid = enemyModel.Humanoid
                                        local targetPosition = enemyModel.HumanoidRootPart.Position
                                        
                                        -- คำนวณระยะห่างระหว่างตัวเราและศัตรู
                                        local character = game.Players.LocalPlayer.Character
                                        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                                        local distance = (humanoidRootPart.Position - targetPosition).Magnitude
                                        
                                        -- ถ้าระยะห่างน้อยกว่าหรือเท่ากับ 10 studs
                                        if distance <= 10000 then
                                            -- ส่งข้อมูลการโจมตีไปที่ HitEvent
                                            game:GetService("ReplicatedStorage"):WaitForChild("Msg"):WaitForChild("HitEvent"):FireServer(unpack(args))
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

-- เรียกใช้งาน FastAttack ทุกๆ 0.1 วินาที เพื่อทำ Fast Attack
while true do
    FastAttack()
    wait(0.01)  -- การหน่วงเล็กน้อยเพื่อไม่ให้เกิดปัญหาการส่งข้อมูลเกินไป
end
