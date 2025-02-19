-- ตัวแปรที่เก็บข้อมูลในการโจมตี
local args = {
    [1] = {
        ["phsic"] = {
            ["Power"] = 100.42640686035156,
            ["Time"] = 0.15,
            ["Dir"] = Vector3.new(0.6150473356246948, 0.7071067690849304, -0.3488793671131134)
        },
        ["damage"] = 30,
        ["castPercent"] = 0,
        ["hitID"] = 1,
        ["isSetNetworkOwnerEnemy"] = true,
        ["skillID"] = 1
    },
    [2] = "" -- ชื่อโมเดลจะถูกกรอกที่นี่
}

-- การเรียกใช้งาน ReplicatedStorage เพื่อส่งข้อมูล
local function Killaura()
    -- ค้นหากลุ่มศัตรูใน Enemy
    local enemyFolder = workspace:FindFirstChild("\229\137\175\230\156\172\229\156\176\229\155\190")
    if enemyFolder then
        -- ค้นหาทุกๆ โฟลเดอร์ที่มีชื่อเป็นตัวเลข (1, 2, 3, 4, ..., 8)
        for i = 1, 8 do
            local folderName = tostring(i) -- สร้างชื่อโฟลเดอร์เป็นตัวเลข
            local enemySubFolder = enemyFolder:FindFirstChild(folderName)
            if enemySubFolder then
                local enemySubFolder2 = enemySubFolder:FindFirstChild("\229\156\176\229\155\190")
                if enemySubFolder2 then
                    local enemySubFolder3 = enemySubFolder2:FindFirstChild("Enemy")
                    if enemySubFolder3 then
                        -- ค้นหาทุกๆ โฟลเดอร์ที่มีชื่อรูปแบบ 1_1, 1_2, ...
                        for _, enemyGroup in pairs(enemySubFolder3:GetChildren()) do
                            -- ตรวจสอบว่าโฟลเดอร์มีชื่อเป็นรูปแบบเช่น 1_1, 1_2
                            if string.match(enemyGroup.Name, "^%d+_%d+$") then
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

-- เรียกใช้งานฟังก์ชันทุกๆ 0.1 วินาที
while true do
    Killaura()
    wait(0.1)
end
