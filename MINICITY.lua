












        UserSettings():GetService("UserGameSettings").MasterVolume = 0

--//Settings
function Tween2(Pos)
TweenSpeed = 400
	local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
	local tween = ((game:GetService("TweenService")):Create((game:GetService("Players")).LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / TweenSpeed, Enum.EasingStyle.Linear), {
		CFrame = Pos
	})):Play();
	function stoppos:Stop()
		tween:Cancel();
	end;
	return stoppos;
end;






local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeoneKing7x/Library/refs/heads/main/LibraryV11"))()
local Window = redzlib:MakeWindow({
  Title = "Someone hub | MiniCity",
  SubTitle = " by Someone ",
  SaveFolder = "SomeoneHub/MiniCity.JSON"
})
Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://127950462202673", --127950462202673
BackgroundTransparency = 1000},
  Corner = { CornerRadius = UDim.new(0, 5) }
})
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local imageButton = Instance.new("ImageButton")
imageButton.Size = UDim2.new(0, 50, 0, 50)
imageButton.Position = UDim2.new(0, 100, 0, 57)
imageButton.Parent = screenGui
imageButton.Image = "rbxassetid://134690662800551"
imageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
imageButton.BorderSizePixel = 0
imageButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
imageButton.Active = true
local dragging = false
local dragStart = nil
local startPos = nil
local UserInputService = game:GetService("UserInputService")
local function startDragging(input)
    dragging = true
    dragStart = input.Position
    startPos = imageButton.Position
end
imageButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        startDragging(input)
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)
UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        imageButton.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
imageButton.MouseButton1Click:Connect(function()
    Tween2(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
end)
local DC = Window:MakeTab({Title = "Discord", Icon = "icicle-alert"})
local Quest = Window:MakeTab({Title = "Quest", Icon = "Swords"})
local PVP = Window:MakeTab({Title = "PvP", Icon = "Menu"})
local Teleport= Window:MakeTab({Title="Teleport", Icon = "map"})
local Settings = Window:MakeTab({Title = "Settings", Icon = "settings"})
--//discord
DC:AddDiscordInvite({
Name = "Someone Community",
Logo = "rbxassetid://127950462202673",
Invite = "Convite kkk"
})


















--//PVP
Playerslist = {}
for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local SelectedPly = PVP:AddDropdown({
Title = "Select Player",
Options = Playerslist,
Callback = function(value)
    _G.SelectPly = value
end})

PVP:AddButton({
Title = "Refresh Player List",
function()
    Playerslist = {}
    SelectedPly:Clear()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do  
        SelectedPly:Add(v.Name)
    end
end})
function RemoverDanosEColisao(personagem)
    if not personagem or not personagem:IsA("Model") then return end
    
    -- Removendo colisão dos objetos do personagem
    for _, parte in ipairs(personagem:GetDescendants()) do
        if parte:IsA("BasePart") then
            parte.CanCollide = false
            parte.CanTouch = false
        end
    end

    -- Evitando dano por queda (se aplicável ao jogo)
    local humanoide = personagem:FindFirstChildOfClass("Humanoid")
    if humanoide then
        humanoide:SetStateEnabled(Enum.HumanoidStateType.Freefall, false) -- Impede dano de queda
    end

    -- Evitando dano por impacto de velocidade
    local velocidadeMaximaSegura = 50  -- Ajuste esse valor conforme necessário
    
    personagem.DescendantAdded:Connect(function(obj)
        if obj:IsA("BodyVelocity") then
            obj.Velocity = obj.Velocity.unit * math.min(obj.Velocity.magnitude, velocidadeMaximaSegura)
        end
    end)
end
PVP:AddToggle({
"Spectate Selected Player",
false,
function(value)
    SpectatePlys = value
    local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
    local plr2 = game:GetService("Players"):FindFirstChild(_G.SelectPly)
    repeat wait(.1)
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.SelectPly).Character.Humanoid
    until SpectatePlys == false 
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end})
PVP:AddToggle({
    "Teleport To Player",
    false,
    function(value)
        _G.TeleportPly = value

        task.spawn(function()
            local localPlayer = game.Players.LocalPlayer
            local localCharacter = localPlayer.Character

            if localCharacter and localCharacter:FindFirstChild("HumanoidRootPart") then
                local localHRP = localCharacter.HumanoidRootPart

                -- Remover colisão e danos antes de iniciar o teleporte
                RemoverDanosEColisao(localCharacter)

                while _G.TeleportPly do
                    pcall(function()
                        local targetPlayer = game:GetService("Players"):FindFirstChild(_G.SelectPly)

                        if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                            local targetHRP = targetPlayer.Character.HumanoidRootPart
                            
                            -- Fase 1: Subir até 100 de altura na posição atual
                          --  Tween2(localHRP.CFrame * CFrame.new(0, 100, 0))
                        --    task.wait(0.05) -- Pequena pausa

                            -- Fase 2: Mover até 100 de altura do jogador alvo
                     --       Tween2(targetHRP.CFrame * CFrame.new(0, 100, 0))
                       --     task.wait(0.05)

                            -- Fase 3: Descer até 20 de altura do jogador alvo
                            Tween2(targetHRP.CFrame * CFrame.new(0, 20, 0))
                        end
                    end)

                    task.wait() -- Pequena pausa para evitar sobrecarga
                end
            end
        end)
    end
})
function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdatePlayerChams()
for i, v in pairs(game:GetService("Players"):GetChildren()) do
    if v.Name == _G.SelectPly then
    end
    pcall(function()
        if not isnil(v.Character) then
            if ESPPlayer then
                if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    local bill = Instance.new('BillboardGui',v.Character.Head)
                    bill.Name = 'NameEsp'..Number
                    bill.ExtentsOffset = Vector3.new(0, 1, 0)
                    bill.Size = UDim2.new(1,200,1,30)
                    bill.Adornee = v.Character.Head
                    bill.AlwaysOnTop = true
                    local name = Instance.new('TextLabel',bill)
                    name.Font = Enum.Font.GothamSemibold
                    name.FontSize = "Size14"
                    name.TextWrapped = true
                    name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance')
                    name.Size = UDim2.new(1,0,1,0)
                    name.TextYAlignment = 'Top'
                    name.BackgroundTransparency = 1
                    name.TextStrokeTransparency = 0.5
            --        if v.Team == game.Players.LocalPlayer.Team then
                        name.TextColor3 = Color3.new(0,255,0)
                   -- else
                        name.TextColor3 = Color3.new(255,255,255)
                    --end
                else
                    v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' Distance\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')
                end
            else
                if v.Character.Head:FindFirstChild('NameEsp'..Number) then
                    v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()
                end
            end
        end
    end)
end
end

PVP:AddToggle({
"ESP Player",
false,
function(value)
    _G.ESPPLayers = value
    ESPPlayer = value
    UpdatePlayerChams()
end})
spawn(function()
    pcall(function()
        while wait() do
            if _G.ESPPLayers then
                UpdatePlayerChams()
            end
        end
    end)
end)




PVP:AddToggle({
    "Aimbot to Selected Player",
    false,
    function(value)
        _G.AimbotEnabled = value

        -- Função que faz a câmera mirar diretamente no jogador
        function Aimbot()
            local localPlayer = game.Players.LocalPlayer
            local targetPlayer = game:GetService("Players"):FindFirstChild(_G.SelectPly)

            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local targetHRP = targetPlayer.Character.HumanoidRootPart
                local camera = game:GetService("Workspace").CurrentCamera
                local localHRP = localPlayer.Character:FindFirstChild("HumanoidRootPart")
                
                if localHRP then
                    -- Posição do jogador local e do jogador alvo
                    local direction = (targetHRP.Position - localHRP.Position).unit
                    -- Ajusta a posição da câmera
                    camera.CFrame = CFrame.new(camera.CFrame.Position, targetHRP.Position)
                end
            end
        end

        -- Atualiza o aimbot enquanto ativado
        while _G.AimbotEnabled do
            pcall(function()
                Aimbot()
            end)
            wait() -- Atualiza a cada 0.05 segundos
        end
    end
})


--//SETTINGS 
Settings:AddToggle({
"Walk Water",
true,
function(value)
    _G.WalkWater = value
end})

spawn(function()
			while task.wait() do
				pcall(function()
					if _G.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,116,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)
Teleport:AddButton({
	Title = "Get Cord",
	Callback = function()
	setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
	end
	})
--[[AINNNN MINHA XERECA]]--