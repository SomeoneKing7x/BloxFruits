--[[local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Notify = ReplicatedStorage:WaitForChild("Notify") -- Certifique-se de que 'Notify' é um objeto que tem o método Display

if Notify then
    Notify("<Color=Yellow>Loading<Color=/>"):Display()
else
    warn("Notify ou o método Display não foram encontrados.")
end

--Notify = game:GetService("ReplicatedStorage").Notify;
--Notify("<Color=Yellow>Loading<Color=/>"):Display()
-- Agora você pode manipular a instância de Notify diretamente
print(Notify.Name)  -- Exemplo de como imprimir o nome da instância
]]--










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












--//QUEST










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
                            local targetHRP = targetPlayer.Character.HumanoidRootPart.Position
                            if game:GetService("Players"):FindFirstChild(_G.SelectPly).Character:FindFirstChildOfClass("Humanoid") and game:GetService("Players"):FindFirstChild(_G.SelectPly).Character:FindFirstChildOfClass("Humanoid").Health > 0 then
              NewtargetHRP = targetHRP + Vector3.new(0,30,0)
              Tween2(CFrame.new(NewtargetHRP))
              else
              NewtargetHRP = targetHRP + Vector3.new(0,0,0)
                            Tween2(CFrame.new(NewtargetHRP))
                                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/Revistar Morto", "All")
                            end
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
PVP:AddToggle({
    Title = "Auto Shoot",
    Callback = function(isActive)
        if isActive then
            -- Definir a taxa de clique por segundo
            local clicksPerSecond = 10 -- Ajuste o valor conforme necessário

            -- Função para simular o clique no centro da tela
            local function simulateClick()
                while isActive do
                    -- Obtém o centro da tela
                    local center = game:GetService("Workspace").CurrentCamera:WorldToScreenPoint(Vector3.new(0, 0, 0)) 

                    -- Simula o clique no centro
                    local mouse = game.Players.LocalPlayer:GetMouse()
                    local clickPosition = Vector2.new(center.X, center.Y)

                    -- Simula o evento de clique
                    mouse:ClickButton1()

                    -- Espera o tempo necessário entre cliques
                    wait(1 / clicksPerSecond)
                end
            end

            -- Inicia a simulação de cliques
            spawn(simulateClick)
        else
            -- Parar a simulação se o toggle for desmarcado
            -- Você pode adicionar lógica para parar a função se necessário
        end
    end
})
-- Função para detectar jogadores com vida 0 no MapaGeral e retornar a posição
local function detectarJogadoresComVidaZero()
  local jogador = game.Players.LocalPlayer -- Pega o jogador local
  local minhaPosicao = jogador.Character and jogador.Character:FindFirstChild("HumanoidRootPart") and jogador.Character.HumanoidRootPart.Position

  if not minhaPosicao then return end -- Retorna se não encontrar a posição do jogador

  for _, player in pairs(workspace.MapaGeral:GetChildren()) do
    if player:IsA("Model") and player:FindFirstChild("Humanoid") then
      local humanoid = player:FindFirstChild("Humanoid")
      if humanoid and humanoid.Health == 0 then
        -- Verifica se o jogador tem uma posição (model humanoid root part)
        local humanoidRootPart = player:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
        Tween2(CFrame.new(humanoidRootPart.Position)) --
          local distancia = (humanoidRootPart.Position - minhaPosicao).magnitude -- Calcula a distância

          -- Verifica se a distância é menor que 5 antes de mover ou enviar mensagem
          if distancia < 5 then
            -- Envia o comando de chat caso a distância seja menor que 5
            game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/revistar morto", "All")
            print("Comando enviado para revistar morto!")

            -- Chama a função Tween2 para mover algo para a posição do jogador com vida 0
            -- Mover para a posição do jogador com vida 0
          end
        end
      end
    end
  end
end
PVP:AddToggle({
	Title = "Pegar Copos Já Mortos",
	Callback = function(value)
	detectarJogadoresComVidaZero = value
end})
PVP:AddToggle({
  Title = "auto roubar (quando revistar)",
  Content = "sei",
  Callback = function()
    -- Função para deletar todas as NotifyGui
    local function deletarNotifyGui()
      local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
      for _, gui in ipairs(playerGui:GetChildren()) do
        if gui.Name == "NotifyGui" and gui:IsA("ScreenGui") then
          gui:Destroy() -- Deleta a NotifyGui
        end
      end
    end

    -- Lista de itens para pegar
    local itens = { "AK47", "Uzi", "Parafal", "Faca", "IA2", "G3", "IPhone 14", "Agua", "Hamburguer", "Hi Power", "Natalina", "AR-15" }

    -- Argumentos para a requisição
    local args = {
      [1] = "mudaInv",
      [2] = "2",
      [4] = "1"
    }

    -- Loop principal
    while true do
      -- Deletar todas as NotifyGui antes de pegar os itens
      deletarNotifyGui()

      -- Pegar itens
      for i, item in ipairs(itens) do
        if i <= 16 then -- Só tenta alocar até 16 slots
          args[3] = item -- Atualiza o item para o valor da vez
          args[2] = tostring(i) -- Atribui o slot dinamicamente (1, 2, 3, ..., 16)

          -- Usar task.spawn() para execução sem delay
          task.spawn(function()
            -- Envia a requisição para o servidor
            game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("InvRemotes"):WaitForChild("InvRequest"):InvokeServer(unpack(args))
          end)
        end
      end

      wait() -- Espera um frame para evitar lag
    end
  end
})
--//Teleport
Teleport:AddButton({
	Title = "Get Cord",
	Callback = function()
	setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
	end
	})

locais = {
	
	}
Teleport:AddDropdown({
	Title = "Select Local",
	Options = locais,
	Callback= function(value)
     _G.SelectLocal = value
    end})







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

--[[AINNNN MINHA XERECA]]--