-- Настройки
local SLOT_NUMBER = 2 -- Номер слота (предмет под цифрой 2)

local player = game.Players.LocalPlayer

local function equipItem()
    -- Ждем появления персонажа и рюкзака
    local character = player.Character or player.CharacterAdded:Wait()
    local backpack = player:WaitForChild("Backpack")
    
    -- Небольшая задержка, чтобы игра успела прогрузить предметы после ресета
    task.wait(0.5)
    
    -- Получаем список всех предметов в рюкзаке
    local items = backpack:GetChildren()
    
    -- Проверяем, есть ли предмет в нужном слоте
    if items[SLOT_NUMBER] then
        local item = items[SLOT_NUMBER]
        -- Экипируем предмет (переносим из Backpack в Character)
        player.Character.Humanoid:EquipTool(item)
        print("Предмет '" .. item.Name .. "' автоматически экипирован.")
    else
        warn("Предмет в слоте " .. SLOT_NUMBER .. " не найден.")
    end
end

-- Запуск при первом выполнении скрипта
task.spawn(equipItem)

-- Подписка на событие возрождения (CharacterAdded)
player.CharacterAdded:Connect(function()
    equipItem()
end)

-- Автокликер без кнопки (активируется сразу)
local VirtualUser = game:GetService("VirtualUser")

-- Сообщение в консоль (F9), что скрипт запущен
print("Hack Script: Auto-Clicker Started")

-- Чтобы скрипт не "крашнул" игру, используем spawn функцию
task.spawn(function()
    while true do
        -- Имитируем нажатие и отпускание левой кнопки мыши
        VirtualUser:CaptureController()
        VirtualUser:ClickButton1(Vector2.new(851, 158), workspace.CurrentCamera.CFrame)
        
        -- Скорость кликов (0.05 = 20 кликов в секунду)
        task.wait(0.05) 
    end
end)
local player = game:GetService("Players").LocalPlayer

while true do
wait(15)
player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Bosses.Waiting.Titan.qw.CFrame
wait(8)
if game:GetService("Workspace").RespawnMobs.Titan.Titan.Titan  then
	player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RespawnMobs.Titan.Titan.CFrame
end
wait (27)
player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Bosses.Waiting.Muscle.qw.CFrame
wait(8)
if game:GetService("Workspace").RespawnMobs.Muscle.Muscle then
	player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").RespawnMobs.Muscle.Muscle.CFrame
end
task.wait(1)
end
