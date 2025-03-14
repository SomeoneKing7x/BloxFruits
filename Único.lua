--//PERMS
--//permanentes
ID = game.PlaceId


Notify = require(game:GetService("ReplicatedStorage").Notification)

--//UI
Notify.new("<Color=Yellow>Loading Settings<Color=/>"):Display();--Black, Yellow, Purple, Orange, Red, Blue, Cyan, Gray
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Read", -- Required
	Text = "Wait...I'll be back soon~", -- Required
	Icon = "rbxassetid://9709149431", -- Optional
	Duration = 15
})






--//TESTE








--//NOTICE 






--//INFOR
local function formatarNumero(numero)
    return string.reverse(string.gsub(string.reverse(tostring(numero)), "(%d%d%d)", "%1."))
        :gsub("^%.", "")  -- Remove o ponto inicial, se houver
end
local function formatarNumero(numero)
    return string.reverse(string.gsub(string.reverse(tostring(numero)), "(%d%d%d)", "%1."))
        :gsub("^%.", "")  -- Remove o ponto inicial, se houver
end
function CheckRace()
            local v113 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
            local v111 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1")
            if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
                return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V4"
            end
            if v113 == -2 then
                return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V3"
            end
            if v111 == -2 then
                return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V2"
            end
            return game:GetService("Players").LocalPlayer.Data.Race.Value .. " V1"
        end 

--/////////ACIENTE ONE//////////
function CheckAcientOneStatus()
--if game.Players.LocalPlayer.Character.RaceTransformed.Value then
--return "Race V4 Activated"
--end
            if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
                return "You have yet to achieve greatness"
            end
            local v227 = nil
            local v228 = nil
            local v229 = nil
            v229, v228, v227 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
            if v229 == 1 then
                return "Required Train More"
            elseif v229 == 2 or v229 == 4 or v229 == 7 then
                return "Can Buy Gear With " .. v227 .. "\198\146"
            elseif v229 == 3 then
                return "Required Train More"
            elseif v229 == 5 then
                return "You Are Done Your Race."
            elseif v229 == 6 then
                return "Upgrades completed: " .. v228 - 2 .. "/3, Need Trains More"
            end
            if v229 ~= 8 then
                if v229 == 0 then
                    return "Ready For Trial"
                else
                    return "You have yet to achieve greatness"
                end
            end
            return "Remaining " .. 10 - v228 .. " training sessionSettings."
        end
        --//////////////MIRAGEM PUZZZLE
        function CheckMiragemPuzzle()
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CheckTempleDoor") then
                return "✅"
            end
            return "❌"
        end 





--//////////MOON///////////

function CheckMoon()
local moonTextureId = game:GetService("Lighting").Sky.MoonTextureId
        if moonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
            return "🌕" -- Lua cheia
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
            return "🌔" -- Lua nova
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709150086" then
            return "🌓"  -- Lua crescente
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709139597" then
            return "🌒"  -- Lua minguante
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709135895" then
            return "🌑"  -- Lua gibe
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
            return "🌘"  -- Lua gibe
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
            return "🌗"  -- Lua gibe
        elseif moonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
            return "🌖"  -- Lua gibe
        end
    end
     
    --/////////CHECK MATERIAL//////////
    function CheckMaterial(materialcc)
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if (type(v) == "table") then
            if (v.Type == "Material") then
                if (v.Name == materialcc) then
                    return v.Count;
                end
            end
        end
    end
    return 0;
end

    --/)/////////CHECK HAKI//////////
    function CheckHakiColor()
            local v141, v142 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ColorsDealer", "1")
            if not v141 or v141 == 1 then
                return "None", "0\198\146"
            end
            if v141 ~= 1 then
                return v141, tostring(v142) .. "\198\146"
            end
        end        






--//FARM








--//SEA1







--//SEA2







--//SEA3
function EquipeHakiColor(Cor)
    local args = {
        [1] = {
            StorageName = Cor,
            Type = "AuraSkin",
            Context = "Equip"
        }
    };
    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/FruitCustomizerRF"):InvokeServer(unpack(args));
end







--//FRUITS








--//TELEPORT
if ID == 2753915549 then
 IslandList = {
                "WindMill",
                "Marine",
                "Middle Town",
                "Jungle",
                "Pirate Village",
                "Desert",
                "Snow Island",
                "Marine Fortress",
                "Colosseum",
                "Sky Island 1",
                "Sky Island 2",
                "Sky Island 3",
                "Prison",
                "Magma Village",
                "Under Water Island",
                "Fountain City",
                
}

elseif ID == 4442272183 then
       IslandList = {
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
  --      "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        

       }

elseif ID == 7449423635 then
    IslandList = {
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "Hydra Island",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        --"Cocoa Island",
        "Candy Island",
        "Tiki Outpost",
       }
    end

  if ID == 2753915549 then
    PortalPos = {
    	"Sky Island 2",
    "Sky Island 3",
    "Under Water City",
    "Under Water City Entrance"
      
    }
  elseif ID == 4442272183 then
    PortalPos = {
      "Flamingo Room",
      "Flamingo Room Entrace",
      "Cursed Ship",
      "Cursed Ship Entrace"
    }
  elseif ID == 7449423635 then
    PortalPos = {
    	"Mansion",
    "Hydra Island",
    "Castle on the Sea",
    "Temple of Time"
      Vector3.new(-12471, 374, -7551), -- Mansion
      Vector3.new(5756, 610, -282), -- Hydra Island
      Vector3.new(-5092, 315, -3130), -- Castle on the Sea
      Vector3.new(28286, 14897, 103) -- Temple of Time
    }
  end

if Sea1 then
    NPCList = {

"Blox Fruit Dealer [Pirate Starter Island]",
"Sword Dealer [Pirate Starter Island]",
"Blox Fruit Dealer [Marine Starter Island]",
"Sword Dealer [Marine Starter Island]",
"Weapon Dealer [Middle Town]",
"Blox Fruit Dealer [Middle Town]",
"Aura Editor [Middle Town]",
"robotmega [Middle Town]",
"Experienced Captain [Middle Town]",
"Blox Fruit Gacha [Jungle]",
"Sword Dealer of the West [Pirate Village]",
"Dark Step Teacher [Pirate Village]",
"Rich Man [Pirate Village]",
"Blacksmith [Pirate Village]",
"Hasan [Desert]",
"Sword Dealer of the East [Frozen Village]",
"Ability Teacher [Frozen Village]",
"Sick Man [Frozen Village]",
"Dog House (Indra) [Frozen Village]",
"Advanced Weapon Dealer [Marine Fortress]",
"Parlus [Marine Fortress]",
"Master Sword Dealer [Skylands]",
"Mad Scientist [Skylands]",
"Yoshi [Skylands]",
"Remove Blox Fruit [Prison]",
"Living Skeleton [Magma Village]",
"Ability Teacher [Magma Village]",
"Water Kung Fu Teacher [Underwater City]",
"Instinct Teacher [Upper Skylands]"

}
elseif Sea2 then
NPCList = {
"Cyborg [Kingdom of Rose]",
"Trevor [Kingdom of Rose]",
"Arowe [Kingdom of Rose]",
"Sabi [Kingdom of Rose]",
"Dog House [Kingdom of Rose]",
"Aura Editor [Kingdom of Rose]",
"Blacksmith [Kingdom of Rose]",
"Sea Captain [Kingdom of Rose]",
"King Red Head [Colosseum]",
"Tort [The Café]",
"Blox Fruit Gacha [The Café]",
"Bounty/Honor Expert [The Café]",
"Bartilo [The Café]",
"Awakenings Expert [The Café]",
"Barista [The Café]",
"Titles Specialist [The Café]",
"Nerd [The Café]",
"Plokster [Bridge]",
"Alchemist [Green Zone]",
"Mysterious Man [Green Zone]",
"Mr. Captain [Green Zone]",
"Crew Captain [Graveyard]",
"rip_indra [Graveyard]",
"Martial Arts Master [Snow Mountain]",
"Arlthmetic [Hot and Cold]",
"Mysterious Scientist [Hot and Cold]",
"El Rodolfo [Cursed Ship]",
"El Admin [Cursed Ship]",
"El Perro [Cursed Ship]",
"Experimic [Cursed Ship]",
"Guashiem [Cursed Ship]",
"Phoeyu The Reformed [Ice Castle]",
"Daigrock The Sharkman [Forgotten Island]",
"The Strongest God [Remote Island]"
}

elseif Sea3 then
NPCList = {
"Experienced Captain [Port Town]",

"Blox Fruit Dealer [Port Town]",

"Blacksmith [Port Town]",

"Arena Trainer [Hydra Island]",

"Dojo Trainer [Dragon Dojo]",

"Dragon Wizard [Dragon Dojo]",

"Dragon Hunter [Dragon Dojo]",

"Uzoth [Dragon Dojo]",

"Crew Captain [Great Tree]",

"Mysterious Force [Great Tree]",

"Crypt Master [Floating Turtle]",

"Citizen [Floating Turtle]",

"Ancient Monk [Floating Turtle]",

"Previous Hero [Floating Turtle]",

"Hungry Man [Floating Turtle]",

"Horned Man [Floating Turtle]",

"Barista [Floating Turtle]",

--"Mysterious Entity [Floating Turtle]",

"Death King [Haunted Castle]",

"Weird Machine [Haunted Castle]",

"Ghost [Haunted Castle]",

"Gravestone [Haunted Castle]",

"Sick Scientist [Sea of Treats]",

"Cake Scientist [Sea of Treats]",

"drip_mama [Sea of Treats]",

"Sweet Crafter [Sea of Treats]",

"Lunoven [Castle on the Sea]",

"Plokster [Castle on the Sea]",

"Butler [Castle on the Sea]",

"Mysterious Scientist [Castle on the Sea]",

"Tacomura [Castle on the Sea]",

"Aura Editor [Castle on the Sea]",
"Phoeyu The Reformed [Castle on the Sea]",

"Water Kung Fu Teacher [Castle on the Sea]",

"Dark Step Teacher [Castle on the Sea]",

"Mad Scientist [Castle on the Sea]",

"Daigrock The Sharkman [Castle on the Sea]",

"Martial Arts Master [Castle on the Sea]",

"Sabi [Castle on the Sea]",

"Elite Hunter [Castle on the Sea]",

"Player Hunter [Castle on the Sea]",

"Remove Blox Fruit [Castle on the Sea]",

--"Mysterious Force [Temple of Time]",

"Ancient One [Temple of Time]",

"Shafi [Tiki Outpost]",

"Dragon Talon Sage [Tiki Outpost]",

"Beast Hunter [Tiki Outpost]",

"Shark Hunter [Tiki Outpost]",

"Spy [Tiki Outpost]",

"Shipwright Teacher [Tiki Outpost]",

"Submarine Worker [Tiki Outpost]",

--"Advanced Fruit Dealer [Mirage Island]",

--"Kitsune Shrine [Kitsune Island]",

--"Ancient Relic [Prehistoric Island]"
   }
end



--//ILHAS








--//SEA EVENT








--//RACE








--//PLAYER 
function AtivarKen()
    local remote = game:GetService("ReplicatedStorage").Remotes.CommE
    if remote then
        remote:FireServer("Ken", true)
    end
end









--//STATS
CodeStatus = {
	              --        "Update10",
--	"XmasReset",
	"KITT_RESET",
	"SUB2GAMERROBOT_RESET1",
--	"Noob_Refund",
	"Sub2UncleKizaru"
--	"1MLIKES_RESET",
--	"RESET_5B",
--	"THIRDSEA",
	--"ADMINHACKED",
	--"JULYUPDATE_RESET",
	--"PointsReset"
                         }
	





--//ITEM








--//SHOP









--//VISUAL







--//SETTINGS
--[[[local function Tween2(targetPosition, maxSpeed)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Remover forças externas que possam estar puxando o player
    for _, v in pairs(humanoidRootPart:GetChildren()) do
        if v:IsA("Constraint") or v:IsA("BodyMover") then
            v:Destroy()
        end
    end

    humanoidRootPart.CanCollide = false
    humanoidRootPart.AssemblyLinearVelocity = Vector3.zero

    local minSpeed = 2  
    local stopDistance = 1  
    while (humanoidRootPart.Position - targetPosition).magnitude > stopDistance do
        local distance = (humanoidRootPart.Position - targetPosition).magnitude
        
        local speed
        if distance <= 50 then
            -- Desaceleração quando estiver a 50 ou menos de distância
            speed = math.max(minSpeed, maxSpeed * (distance / 50))
        else
            -- Velocidade máxima quando estiver longe
            speed = maxSpeed
        end
        
        local direction = (targetPosition - humanoidRootPart.Position).unit
        humanoidRootPart.CFrame = humanoidRootPart.CFrame + direction * speed * task.wait()
        
        humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
    end
end
]]--
local function Tween2(targetPosition, maxSpeed)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Remover forças externas que possam estar puxando o player
    for _, v in pairs(humanoidRootPart:GetChildren()) do
        if v:IsA("Constraint") or v:IsA("BodyMover") then
            v:Destroy()
        end
    end

    humanoidRootPart.CanCollide = false
    humanoidRootPart.AssemblyLinearVelocity = Vector3.zero

    local minSpeed = 2  -- Velocidade mínima para não ficar muito lento perto do destino
    local stopDistance = 1  -- Distância para considerar que chegou ao destino

    -- Lista de portais e suas coordenadas
    local portals = {
        ["Sky Island 2"] = Vector3.new(-4652, 873, -1754),
        ["Sky Island 3"] = Vector3.new(-7895, 5547, -380),
        ["Under Water City"] = Vector3.new(61164, 5, 1820),
        ["Under Water City Entrance"] = Vector3.new(3865, 5, -1926),
        ["Flamingo Mansion Entrance"] = Vector3.new(-317, 331, 597),
        ["Flamingo Mansion"] = Vector3.new(2283, 15, 867),
        ["Cursed Ship"] = Vector3.new(923, 125, 32853),
        ["Cursed Ship Entrance"] = Vector3.new(-6509, 83, -133),
        ["Mansion"] = Vector3.new(-12471, 374, -7551),
        ["Hydra Island"] = Vector3.new(5756, 610, -282),
        ["Castle on the Sea"] = Vector3.new(-5092, 315, -3130),
        ["Temple of Time"] = Vector3.new(-12471, 374, -7551)
    }

    -- Calcular a distância entre o jogador e o destino
    local distanceToPlayer = (humanoidRootPart.Position - targetPosition).magnitude

    -- Encontrar o portal mais próximo ao destino
    local closestPortal = nil
    local closestPortalDistance = math.huge  -- Um valor muito alto inicialmente

    for portalName, portalPosition in pairs(portals) do
        local distanceToPortal = (targetPosition - portalPosition).magnitude
        if distanceToPortal < closestPortalDistance then
            closestPortal = portalName
            closestPortalDistance = distanceToPortal
        end
    end

    -- Verificar se o portal mais próximo está mais perto do que o jogador
    if closestPortalDistance < distanceToPlayer then
        -- Se o portal está mais perto do destino do que o jogador, vamos usar o requestEntrance

        if closestPortal == "Sky Island 2" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4652, 873, -1754))
        elseif closestPortal == "Sky Island 3" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7895, 5547, -380))
        elseif closestPortal == "Under Water City" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61164, 5, 1820))
        elseif closestPortal == "Under Water City Entrance" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(3865, 5, -1926))
        elseif closestPortal == "Flamingo Mansion Entrance" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-317, 331, 597))
        elseif closestPortal == "Flamingo Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2283, 15, 867))
        elseif closestPortal == "Cursed Ship" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 125, 32853))
        elseif closestPortal == "Cursed Ship Entrance" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-6509, 83, -133))
        elseif closestPortal == "Mansion" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471, 374, -7551))
        elseif closestPortal == "Hydra Island" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5756, 610, -282))
        elseif closestPortal == "Castle on the Sea" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5092, 315, -3130))
        elseif closestPortal == "Temple of Time" then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12471, 374, -7551))
        end
    end

    -- Se o jogador está mais perto do destino, continua a viagem normal
    while (humanoidRootPart.Position - targetPosition).magnitude > stopDistance do
        local distance = (humanoidRootPart.Position - targetPosition).magnitude

        local speed
        if distance <= 50 then
            -- Desaceleração quando estiver a 50 ou menos de distância
            speed = math.max(minSpeed, maxSpeed * (distance / 50))
        else
            -- Velocidade máxima quando estiver longe
            speed = maxSpeed
        end
        
        local direction = (targetPosition - humanoidRootPart.Position).unit
        humanoidRootPart.CFrame = humanoidRootPart.CFrame + direction * speed * task.wait()
        
        humanoidRootPart.AssemblyLinearVelocity = Vector3.zero
    end
end
-- Garantir que o Player e o Workspace estejam disponíveis
local Player = game.Players.LocalPlayer
local Boats = workspace:WaitForChild("Boats", 9e9)

-- Função para teletransportar o barco
local function BoatTP(Boat, pos)
    if Boat then
        local distance = (Boat.PrimaryPart.Position - pos.p).Magnitude
        local tween = game:GetService("TweenService"):Create(
            Boat.PrimaryPart,
            TweenInfo.new(distance / 300, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
            {CFrame = pos}
        )
        tween:Play()
    end
end

-- Função para pegar o barco do jogador
local function GetBoat(Player)
    for _, boat in pairs(Boats:GetChildren()) do
        local humanoid = boat:FindFirstChild("Humanoid")
        if humanoid and humanoid.Value > 0 then
            local owner = boat:FindFirstChild("Owner")
            if owner and owner.Value.Name == Player.Name then
                return boat
            end
        end
    end
end





--//KAITUN










--//MORE




local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeoneKing7x/Library/refs/heads/main/LibraryV11"))()
local Window = redzlib:MakeWindow({
  Title = "Someone hub | Blox Fruits",
  SubTitle = " by Someone ",
  SaveFolder = "Someonehub.JSON"
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
imageButton.Position = UDim2.new(0,350, 0, 57)
imageButton.Parent = screenGui
imageButton.Image = "rbxassetid://134690662800551" -- Substitua pelo ID da sua imagem
imageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
imageButton.BorderSizePixel = 0
imageButton.BorderColor3 = Color3.fromRGB(255, 255, 255)
imageButton.Active = true

-- Variáveis para arraste
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
    
    --local player = game.Players.LocalPlayer
    --local character = player.Character or player.CharacterAdded:Wait()
--    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local formattedPos = string.format("%d, %d, %d", math.floor(pos.X), math.floor(pos.Y), math.floor(pos.Z))
        setclipboard(formattedPos)
   
--    Tween2(Vector3.new(humanoidRootPart.Position), 300)  -- Agora pega apenas a posição corretamente
end)
Teste = Window:MakeTab({Title = "Teste Tab", Icon = ""})
Notice = Window:MakeTab({Title = "Notice", Icon = "bell"})  
Infor = Window:MakeTab({Title = "Info", Icon = "info"})  

Farm = Window:MakeTab({Title = "Main", Icon = "sword"})  

Sea1 = Window:MakeTab({Title = "First Sea", Icon = "map"}) 
Sea2 = Window:MakeTab({Title = "Second Sea", Icon = "map"})  
Sea3 = Window:MakeTab({Title = "Third Sea", Icon = "map"})  


Fruits = Window:MakeTab({Title = "Fruits & Raid", Icon = "cherry"})  

Teleport = Window:MakeTab({Title = "Teleport", Icon = "move"})  
Island = Window:MakeTab({Title = "Island", Icon = "landmark"})  

SeaEvent = Window:MakeTab({Title = "Sea Events", Icon = "waves"})  
Race = Window:MakeTab({Title = "Race", Icon = "flag"})  

Player = Window:MakeTab({Title = "Player", Icon = "user"})  

Stats = Window:MakeTab({Title = "Stats", Icon = "bar-chart"})  

Item = Window:MakeTab({Title = "Viewer Items", Icon = "package"})  

Shop = Window:MakeTab({Title = "Shop", Icon = "shopping-cart"})  

Visual = Window:MakeTab({Title = "Visual", Icon = "eye"})  

SettingsTab = Window:MakeTab({Title = "Settings", Icon = "settings"})  

Kaitun = Window:MakeTab({Title = "Kaitun", Icon = "aperture"})
More = Window:MakeTab({Title = "More", Icon = "menu"})










--//PERMS








--//TESTE




--//NOTICE 






--//INFOR
Infor:AddSection("Player Infor")
if game.PlaceId == 2753915549 then
Infor:AddParagraph({Title = "Sea Status : First Sea"})
elseif game.PlaceId == 4442272183 then
Infor:AddParagraph({Title = "Sea Status : Second Sea"})
elseif game.PlaceId == 7449423635 then 
Infor:AddParagraph({Title = "Sea Status : Third Sea"})
end
local prgNome = Infor:AddParagraph({ Title = "Display Name / Permanent Name" })
--prgNome:SetDesc(player.DisplayName .. " (@" .. player.Name .. ")")
local prgLevel = Infor:AddParagraph({ Title = "Level" })

local prgRaca = Infor:AddParagraph({ Title = "Race" })

local prgAcientOne = Infor:AddParagraph({ Title = "Acient One Status" })

local prgMiragemPuzzle = Infor:AddParagraph({ Title = "Mirage Puzzle Status" })

local prgBeli = Infor:AddParagraph({ Title = "Beli" })

local prgFrag = Infor:AddParagraph({ Title = "Fragments" })

local prgVida = Infor:AddParagraph({ Title = "Life" })

local prgEnergia = Infor:AddParagraph({ Title = "Energy" })

local prgBH = Infor:AddParagraph({ Title = "Bounty / Honor" })

local prgBones = Infor:AddParagraph({ Title = "Bones" })

local prgHeart = Infor:AddParagraph({ Title = "Heart [Valentine Day]" })

local prgCandy = Infor:AddParagraph({ Title = "Candy" })

local prgFruta = Infor:AddParagraph({ Title = "Fruit Equipped" })
--local function AtualizarInformacoes()
spawn(function()
    while true do
       pcall(function()
        local player = game.Players.LocalPlayer
        if player and player.Character then  
            -- Atualiza o nome
            prgNome:SetDesc(player.DisplayName .. " (@" .. player.Name .. ")")

            -- Atualiza o nível
            prgLevel:SetDesc(formatarNumero(player.Data.Level.Value))

            -- Atualiza Raça e outros status
            prgRaca:SetDesc(tostring(CheckRace()))
            prgAcientOne:SetDesc(tostring(CheckAcientOneStatus()))
            prgMiragemPuzzle:SetDesc(tostring(CheckMiragemPuzzle()))

            -- Atualiza a lua
          
         
           
            -- Atualiza moedas e fragmentos
            prgBeli:SetDesc("$" .. formatarNumero(player.Data.Beli.Value))
            prgFrag:SetDesc("F " .. formatarNumero(player.Data.Fragments.Value))

            -- Atualiza Bounty / Honor
            prgBH:SetDesc(formatarNumero(player.leaderstats["Bounty/Honor"].Value))

            -- Atualiza Vida e Energia
            prgVida:SetDesc(formatarNumero(player.Character.Humanoid.Health) .. "/" .. formatarNumero(player.Character.Humanoid.MaxHealth))
            prgEnergia:SetDesc(formatarNumero(player.Character.Energy.Value) .. "/" .. formatarNumero(player.Character.Energy.MaxValue))

            -- Atualiza materiais
            local BonesCount = CheckMaterial("Bones")
            if BonesCount > 0 then
                prgBones:SetDesc("Total Bones : " .. formatarNumero(BonesCount) .. " Bones")
            else
                prgBones:SetDesc("You Have No Bones")
            end

            local HeartCount = CheckMaterial("Hearts")
            if HeartCount > 0 then
                prgHeart:SetDesc("Total Heart : " .. formatarNumero(HeartCount) .. " Hearts")
            else
                prgHeart:SetDesc("You Have No Hearts")
            end

            local CandyCount = CheckMaterial("Candy")
            if CandyCount > 0 then
                prgCandy:SetDesc("Total Candy : " .. formatarNumero(CandyCount) .. " Candys")
            else
                prgCandy:SetDesc("You Have No Candy")
            end

            -- Atualiza a fruta equipada
            prgFruta:SetDesc(player.Data.DevilFruit.Value)
        end

        task.wait() -- Aguarda 1 segundo antes de repetir
    end)
end
end)
-- Inicia a atualização em uma nova thread
--task.spawn(AtualizarInformacoes)






Infor:AddSection("Server Status")

local prgFrutaSpawn = Infor:AddParagraph({
	Title = "Fruta Spawned : ❌"})
	
spawn(function()
   while true do
      task.wait()
            pcall(function()
for i, v in pairs(game.Workspace:GetChildren()) do
    if string.find(v.Name, "Rocket Fruit") or string.find(v.Name, "Spin Fruit") or string.find(v.Name, "Chop Fruit") or string.find(v.Name, "Blade Fruit") or string.find(v.Name, "Spring Fruit") or string.find(v.Name, "Bomb Fruit") or string.find(v.Name, "Smoke Fruit") or string.find(v.Name, "Spike Fruit") or string.find(v.Name, "Flame Fruit") or string.find(v.Name, "Falcon Fruit") or string.find(v.Name, "Ice Fruit") or string.find(v.Name, "Sand Fruit") or string.find(v.Name, "Dark Fruit") or string.find(v.Name, "Ghost Fruit") or string.find(v.Name, "Diamond Fruit") or string.find(v.Name, "Light Fruit") or string.find(v.Name, "Rubber Fruit") or string.find(v.Name, "Barrier Fruit") or string.find(v.Name, "Magma Fruit") or string.find(v.Name, "Quake Fruit") or string.find(v.Name, "Buddha Fruit") or string.find(v.Name, "Love Fruit") or string.find(v.Name, "Spider Fruit") or string.find(v.Name, "Sound Fruit") or string.find(v.Name, "Phoenix Fruit") or string.find(v.Name, "Portal Fruit") or string.find(v.Name, "Rumble Fruit") or string.find(v.Name, "Pain Fruit") or string.find(v.Name, "Blizzard Fruit") or string.find(v.Name, "Gravity Fruit") or string.find(v.Name, "Mammoth Fruit") or string.find(v.Name, "TRex Fruit") or string.find(v.Name, "Dough Fruit") or string.find(v.Name, "Shadow Fruit") or string.find(v.Name, "Venom Fruit") or string.find(v.Name, "Control Fruit") or string.find(v.Name, "Spirit Fruit") or string.find(v.Name, "Dragon Fruit") or string.find(v.Name, "Leopard Fruit") or string.find(v.Name, "Kitsune Fruit") or string.find(v.Name, "Yeti Fruit") or string.find(v.Name, "Gas Fruit") or string.find(v.Name, "Berry") then

    -- Lógica do seu código
 prgFrutaSpawn:SetTitle("The "..v.Name.." Appeared On The Map")
      
    end
end
  end)
      end
          end)
if ID == 7449423635 then
local prgMoon = Infor:AddParagraph({ Title = "Check Moon Status" })
  spawn(function()
while true do
  task.wait()
     pcall(function()
    prgMoon:SetDesc(tostring(CheckMoon()))
      end)
   end
end)




local prgspy = Infor:AddParagraph({
Title = "Spy Status",
Description = ""
})
spawn(function()
        pcall(function()
            while wait(0.000001) do
                local v811 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "1")
                         if (v811 == 1) then
                    prgspy:SetDesc("I haven't heard a thing, mate. It's quiet as a ghost ship out there.")
                             elseif (v811 == 2) then
                    prgspy:SetDesc("Some citizens claim they heard something strange, I doubt it though..")
                             elseif (v811 == 3) then
                    prgspy:SetDesc("I heard it's been a bit chilly outside. That's a bit strange..")
                             elseif (v811 == 4) then
                    prgspy:SetDesc("It's just downright freezing outside! What's with all these ominous clouds? Something's happening..")
                elseif(v811 == 5) then
                    prgspy:SetDesc("Leviathan Is Out There")
                elseif (v811 == 0) then
                    prgspy:SetDesc("Defeat 20 Sea Events")
               
                    
                end
            end
        end)
    end)
    Infor:AddButton({
Title = "Bribe Spy",
Callback = function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "2")
    end
    })
 --leviata  
 local prgFD = Infor:AddParagraph({
    Title = "Frozen Dimension Spawned : ❌",    
})
spawn(function()
    pcall(function()
        while wait() do
        local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
if humanoidRootPart then
    local DistanceFD = tostring(math.floor((humanoidRootPart.Position -workspace.Map.FrozenDimension.WorldPivot.Position).Magnitude / 5))
end
            if game:GetService("Workspace").Map:FindFirstChild("FrozenDimension") then
                prgFD:SetTitle("Frozen Dimension Spawned: ✅️ | Distance : "..DistanceFD);
            else
                prgFD:SetTitle("Frozen Dimension Spawned : ❌️");
            end
        end
    end);
end);
 --kitsune
 local prgKI = Infor:AddParagraph({
    Title = "Kitsune Island Spawned : ❌",    
})

spawn(function()
    pcall(function()
        while wait() do
            local kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
            if kitsuneIsland then
                -- Garante que KitsuneIsland é um Model e tem um WorldPivot
                local distanceKI = tostring(math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - kitsuneIsland.WorldPivot.Position).Magnitude / 5))
                prgKI:SetTitle("Kitsune Island Spawned: ✅️ | Distance : " .. distanceKI)
            else
                prgKI:SetTitle("Kitsune Island Spawned : ❌️")
            end
        end
    end)
end)
 --vulcao
 local prgPI = Infor:AddParagraph({
    Title = "Prehistoric Island Spawned : ❌",    
})
spawn(function()
    pcall(function()
        while wait() do
        local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
if humanoidRootPart then
    local DistancePI = tostring(math.floor((humanoidRootPart.Position -workspace.Map.PrehistoricIsland.WorldPivot.Position).Magnitude / 5))
end
            if game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland") then
                prgPI:SetTitle("Prehistoric Island Spawned: ✅ | Distance : ️"..DistancePI);
            else
                prgPI:SetTitle("Prehistoric Island Spawned : ❌️");
            end
        end
    end);
end);
--miragem
 local prgMI = Infor:AddParagraph({
    Title = "Mirage Island Spawned : ❌",    
})
spawn(function()
    pcall(function()
        while wait() do
        local player = game.Players.LocalPlayer
local humanoidRootPart = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
if humanoidRootPart then
    local DistanceMI = tostring(math.floor((humanoidRootPart.Position -workspace.Map.MysticIsland.WorldPivot.Position).Magnitude / 5))
end
            if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                prgMI:SetTitle("Mirage Island Spawned: ✅️ | Distance : "..DistanceMI);
            else
                prgMI:SetTitle("Mirage Island Spawned : ❌️");
            end
        end
    end);
end);
 
 



end
--//FARM
Farm:AddSection("")
Farm:AddSection("Weapon")

Farm:AddSection("")
Farm:AddSection("Farm")

Farm:AddSection("")
Farm:AddSection("Cake Prince")

Farm:AddSection("")
Farm:AddSection("Bones")

Farm:AddSection("")
Farm:AddSection("Ectoplasm")

Farm:AddSection("")
Farm:AddSection("Elite")
Farm:AddSection("")
Farm:AddSection("Chest")
Farm:AddSection("")
Farm:AddSection("Bosses")
Farm:AddSection("")
Farm:AddSection("Berrys")
--//SEA1
Sea1:AddSection("")
Sea1:AddSection("Unlock Second Sea")
Sea1:AddSection("")
Sea1:AddSection("Puzzles")

Sea1:AddSection("")
Sea1:AddSection("Swords")

Sea1:AddSection("")
Sea1:AddSection("Guns")


--//SEA2
Sea2:AddSection("")
Sea2:AddSection("Unlock Third Sea")

Sea2:AddSection("")
Sea2:AddSection("Unlock Swan Room")

Sea2:AddSection("")
Sea2:AddSection("Puzzles")

Sea2:AddSection("")
Sea2:AddSection("Raid Boss")

Sea2:AddSection("")
Sea2:AddSection("Swords")

Sea2:AddSection("")
Sea2:AddSection("Guns")
--//SEA3
Sea3:AddSection("rip_indra True Form")
        
        
        if ID == 7449423635 then 
        Sea3:AddToggle({
	Title = "Activate Color Plate",
	Callback = function(Value)
	_G.Ativado = Value
	end})
spawn(function()
while wait(0.1) do
if _G.Ativado then
if not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") then
--elseif _G.SelectIsland == "Castle On The Sea" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5075, 314, -3150))
Tween2(Vector3.new(-5135, 313, -2957),350)
EquipeHakiColor("Snow White")
Tween2(Vector3.new(-4971, 325, -3719),350)
Tween2(Vector3.new(-4971, 335, -3719),350)
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5075, 314, -3150))
EquipeHakiColor("Pure Red")
Tween2(Vector3.new(-5414, 314, -2213),350)
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5075, 314, -3150))
EquipeHakiColor("Winter Sky")
Tween2(Vector3.new(-5421, 1089, -2667),350)
wait(0.5)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5075, 314, -3150))
Tween2(Vector3.new(-5135, 315, -2957),350)
   --break
   _G.Ativado = false
      end
    end
  end
end)
  end





--//FRUITS
Fruits:AddSection("Fruits")
local prgRandom = Fruits:AddParagraph({
Title = "Auto Random Fruit"
}) 
pcall(function()
   --while wait(0.1) do
    spawn(function()
    while wait(0.1) do
    
prgRandom:SetTitle(tostring(game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Cousin" , "Buy")))
         end
      end)
    end)
Fruits:AddToggle({
Title = "Auto Random Fruit",
Default  = false,
Callback = function()
game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Cousin" , "Buy")
    end})
    
   
Fruits:AddToggle({
Title = "Collect Fruits",
 
 Callback = function(Value)
        Tween_Fruit = Value
      
    end})
    
    spawn(function()
		while wait(0.0000000000000000000000000001) do
			if Tween_Fruit then
			Speed = 99999999999999999
				for i, v in pairs(game.Workspace:GetChildren()) do
					if v:IsA("Tool") then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
					end
				end
			end
        end
    end)
local toggle = Fruits:AddToggle({"Bring All Fruits ",
--Default = Settings.BringFruit,
Callback = function(value)
        _G.BringFruitBF = value
 --       Settings.BringFruit = value
    end})
    
    spawn(function()
        while wait(0.0000000000000001) do
            if _G.BringFruitBF then
                pcall(function()
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v:IsA("Tool") then
                            v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end	
                end)
            end
        end
    end)
    
local toggle = Fruits:AddToggle({
    "Store All Fruits",
 --   Default = Settings.AutoStoreFruit,
    Callback = function(value)
        _G.AutoStoreSsFruit = value
--        Settings.AutoStoreFruit = value
    end
})

local RunService = game:GetService("RunService")

spawn(function()
    RunService.Heartbeat:Connect(function()
        if _G.AutoStoreSsFruit then
            pcall(function()
                local player = game.Players.LocalPlayer
                local backpack = player.Backpack
                local character = player.Character
                local remote = game:GetService("ReplicatedStorage").Remotes.CommF_

                -- Função para armazenar frutas
                local function storeFruit(container)
                    for _, v in pairs(container:GetChildren()) do
                        if v:IsA("Tool") and string.find(v.Name, "Fruit") then
                            local fruitName = v:GetAttribute("OriginalName")
                            if fruitName then
                                local success, err = pcall(function()
                                    remote:InvokeServer("StoreFruit", fruitName, v)
                                end)
                                if success then
                                    Load.Text = "Keep Fruit Success"
                                else
                                    warn("Erro ao armazenar fruta:", err)
                                end
                            end
                        end
                    end
                end

                -- Armazenar no Backpack e Character
                storeFruit(backpack)
       --         storeFruit(character)

            end)
        end
    end)
end)







--//TELEPORT
--[[Teleport:AddButton({
    Title = "Get Cord",
    Callback = function()
        local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local formattedPos = string.format("%d, %d, %d", math.floor(pos.X), math.floor(pos.Y), math.floor(pos.Z))
        setclipboard(formattedPos)
    end
})]]--
Teleport:AddSection("Teleport World")

Teleport:AddButton({
    Title = "First Sea",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})



Teleport:AddButton({
    Title = "Second Sea",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})



Teleport:AddButton({
    Title = "Third Sea",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})


--Teleport:AddSection("")
Teleport:AddSection("Teleport Island")
local DropdownIsland = Teleport:AddDropdown({
    Title = "Select Island",
    Description = "",
    Options = IslandList,
    Multi = false,
    Default = nil,
    Callback = function(Value)
    _G.SelectIsland = Value
    
end})

Teleport:AddButton({
    Title = "Travel to Selected Island",
    Callback = function()
    local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
if math.abs(position.X) > 40000 or math.abs(position.Y) > 40000 or math.abs(position.Z) > 40000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3865, 5, -1926)) -- Under Water Island Entrace
end
        local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        local currentX = humanoidRootPart.Position.X
        local currentZ = humanoidRootPart.Position.Z
        
        -- Inicialmente, teleport para a posição base (Y = 16)
        Tween2(Vector3.new(currentX, 50, currentZ),350)
        Notify.new("<Color=Yellow>Lets Go!<Color=/>"):Display()

        if _G.SelectIsland == "WindMill" then
    Tween2(Vector3.new(1079, 16, 1442), 350)
elseif _G.SelectIsland == "Marine" then
    Tween2(Vector3.new(-2746, 24, 2045), 350)
elseif _G.SelectIsland == "Middle Town" then
    Tween2(Vector3.new(-782, 33, 1606), 350)
elseif _G.SelectIsland == "Jungle" then
    Tween2(Vector3.new(-1464, 61, -43), 350)
elseif _G.SelectIsland == "Pirate Village" then
    Tween2(Vector3.new(-1189, 4, 3870), 350)
elseif _G.SelectIsland == "Desert" then
    Tween2(Vector3.new(933, 6, 4480), 350)
elseif _G.SelectIsland == "Snow Island" then
    Tween2(Vector3.new(1398, 89, -1345), 350)
elseif _G.SelectIsland == "Marine Fortress" then
    Tween2(Vector3.new(-5116, 80, 4270), 350)
elseif _G.SelectIsland == "Colosseum" then
    Tween2(Vector3.new(-1879, 25, -3321), 350)
elseif _G.SelectIsland == "Sky Island 1" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4707, 872, -1667))
    Tween2(Vector3.new(-4824, 789, -2595), 350)
elseif _G.SelectIsland == "Sky Island 2" then  
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4707, 872, -1667))
elseif _G.SelectIsland == "Sky Island 3" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894, 5547, -380))
elseif _G.SelectIsland == "Prison" then
    Tween2(Vector3.new(5267, 161, 840), 350)
elseif _G.SelectIsland == "Magma Village" then
    Tween2(Vector3.new(-5386, 59, 8559), 350)
elseif _G.SelectIsland == "Under Water Island" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163, 11, 1819))
elseif _G.SelectIsland == "Fountain City" then
    Tween2(Vector3.new(5287, 54, 4106), 350)
elseif _G.SelectIsland == "Shank Room" then
    Tween2(Vector3.new(), 350)
elseif _G.SelectIsland == "Mob Island" then
    Tween2(Vector3.new(), 350)
elseif _G.SelectIsland == "The Cafe" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-281, 306, 609))
    Tween2(Vector3.new(-383, 73, 289), 350)
elseif _G.SelectIsland == "Frist Spot" then
    Tween2(Vector3.new(-11, 29, 2771), 350)
elseif _G.SelectIsland == "Dark Area" then
    Tween2(Vector3.new(3688, 14, -3490), 350)
elseif _G.SelectIsland == "Flamingo Mansion" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-281, 306, 609))
elseif _G.SelectIsland == "Flamingo Room" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284, 15, 905))
elseif _G.SelectIsland == "Green Zone" then
    Tween2(Vector3.new(-2288, 72, -2755), 350)
elseif _G.SelectIsland == "Factory" then
    Tween2(Vector3.new(), 350)
elseif _G.SelectIsland == "Colossuim" then
    Tween2(Vector3.new(), 350)
elseif _G.SelectIsland == "Zombie Island" then
    Tween2(Vector3.new(-5646, 126, -707), 350)
elseif _G.SelectIsland == "Two Snow Mountain" then
    Tween2(Vector3.new(751, 408, -5277), 500)
elseif _G.SelectIsland == "Punk Hazard" then
    Tween2(Vector3.new(-6135, 15, -5044), 350)
elseif _G.SelectIsland == "Cursed Ship" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923, 125, 32885))
elseif _G.SelectIsland == "Ice Castle" then
    Tween2(Vector3.new(6008, 181, -6571), 350)
elseif _G.SelectIsland == "Forgotten Island" then
    Tween2(Vector3.new(-3114, 322, -10290), 350)
elseif _G.SelectIsland == "Ussop Island" then
    Tween2(Vector3.new(4765, 8, 2855), 350)
elseif _G.SelectIsland == "Mini Sky Island" then
    Tween2(Vector3.new(), 350)
elseif _G.SelectIsland == "???" then
    Tween2(Vector3.new(), 350)
elseif _G.SelectIsland == "Great Tree" then
    Tween2(Vector3.new(2683, 275, -7009), 350)
elseif _G.SelectIsland == "Castle On The Sea" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5075, 314, -3150))
elseif _G.SelectIsland == "MiniSky" then
    Tween2(Vector3.new(), 350)
elseif _G.SelectIsland == "Port Town" then
    Tween2(Vector3.new(-339, 20, 5532), 350)
elseif _G.SelectIsland == "Hydra Island" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661, 1013, -312))
elseif _G.SelectIsland == "Floating Turtle" then
    Tween2(Vector3.new(), 350)
elseif _G.SelectIsland == "Mansion" then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-12468, 375, -7554))
elseif _G.SelectIsland == "Haunted Castle" then
    Tween2(Vector3.new(-9518, 142, 5528), 350)
elseif _G.SelectIsland == "Ice Cream Island" then
    Tween2(Vector3.new(-703, 664, -11105), 350)
elseif _G.SelectIsland == "Peanut Island" then
    Tween2(Vector3.new(-2113, 192, -10237), 350)
elseif _G.SelectIsland == "Cake Island" then
    Tween2(Vector3.new(-2098, 69, -12129), 350)
elseif _G.SelectIsland == "Cocoa Island" then
    Tween2(Vector3.new(), 350)
elseif _G.SelectIsland == "Candy Island" then
    Tween2(Vector3.new(-1045, 24, -14143), 350)
elseif _G.SelectIsland == "Tiki Outpost" then
    Tween2(Vector3.new(-16224, 9, 439), 350)
end
end})
Teleport:AddSection("Portals")
Teleport:AddDropdown({
	Title = "Select Portal",
	Options = PortalPos,
	Callback = function(value)
_G.Portal = value
end})	
	Teleport:AddButton({
		Title = "Teleport Portal",
		Callback = function()
		if _G.Portal == "Sky Island 2" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4652, 873, -1754)), -- Sky Island 2
elseif _G.Portal == "Sky Island 3" then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7895, 5547, -380)), -- Sky Island 3
      elseif _G.Portal == "Under Water City" then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61164, 5, 1820)),
elseif _G.Portal == "Under Water City Entrace" then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3865, 5, -1926)) -- Under Water Island Entrace
      elseif _G.Portal == "Flamingo Room Entrace" then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-317, 331, 597)), -- Flamingo Mansion
elseif _G.Portal == "Flamingo Room" then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2283, 15, 867)), -- Flamingo Room
      elseif _G.Portal == "Cursed Ship"
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923, 125, 32853)), -- Cursed Ship
      elseif _G.Portal == "Curser Ship Entrace" then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6509, 83, -133)) -- Zombie Island0
elseif _G.Portal == "Mansion" then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471, 374, -7551)) -- Zombie Island0 
elseif _G.Portal == "Hydra Island" then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5756, 610, -282)) -- Zombie Island0
      elseif _G.Portal == "Castle on the Sea" then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5092, 315, -3130)) -- Zombie Island0
      elseif _G.Portal == "Temple of Time" then
      game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471, 374, -7551)) -- Zombie Island0
  end
end
})
Teleport:AddButton({"Server Hop", function()
	while wait() do
		local module = (loadstring(game:HttpGet("https://you.whimper.xyz/sources/relzhub/dep/Hop.lua")))();
		module:Teleport(game.PlaceId, "Singapore");
	end;
end});
spawn(function()
	while wait() do
		pcall(function()
			JobAiDee:Set("Server Job ID : " .. game.JobId);
		end);
	end;
end);





Teleport:AddSection("Special Places")









--//ILHAS








--//SEA EVENT
SeaEvent:AddSection("Settings")


SeaEvent:AddSection("Teleport")
SEANPCLIST= {
"Spy",
"Shark Hunter",
"Beast Hunter",
"Shipwright Teacher",
"Shafi"
}
SeaEvent:AddDropdown({
	Title = "Select NPC",
	Options = SEANPCLIST,
	Callback = function(Value)
	_G.SeaNPC = Value
	end})
	SeaEvent:AddButton({
		Title = "Travel To NPC",
		Callback = function()
		local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
if math.abs(position.X) > 40000 or math.abs(position.Y) > 40000 or math.abs(position.Z) > 40000 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3865, 5, -1926)) -- Under Water Island Entrace
end
        local humanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        local currentX = humanoidRootPart.Position.X
        local currentZ = humanoidRootPart.Position.Z
        
        -- Inicialmente, teleport para a posição base (Y = 16)
        Tween2(Vector3.new(currentX, 50, currentZ),350)
        Notify.new("<Color=Yellow>Lets Go!<Color=/>"):Display()
		if _G.SeaNPC == "Spy" then
		Tween2(Vector3.new(-16472, 527, 539),350)
		elseif _G.SeaNPC == "Shark Hunter" then
		Tween2(Vector3.new(-16526, 108, 751),350)
		elseif _G.SeaNPC == "Beast Hunter" then
		Tween2(Vector3.new(-16282, 72, 263),350)
		elseif _G.SeaNPC == "Shipwright Teacher" then
		Tween2(Vector3.new(-16527, 77, 309),350)
		elseif _G.SeaNPC == "Shafi" then
		Tween2(Vector3.new(-16513, 23, -184),350)
		end
  end
  })
SeaEvent:AddSection("Subclass")







--//RACE








--//PLAYER 








--//STATS
Stats:AddSection("Point Status")
local Pointstat = Stats:AddParagraph({Title = "Available Points"})
spawn(function()
    while wait() do
        pcall(function()
            Pointstat:SetTitle("Available point : "..(formatarNumero(game:GetService("Players")["LocalPlayer"].Data.Points.Value)))
        end)
    end
end)
local Melee = Stats:AddParagraph({Title = "Melee Points"})
spawn(function()
    while wait() do
        pcall(function()
            Melee:SetTitle("Melee : "..(formatarNumero(game.Players.localPlayer.Data.Stats.Melee.Level.Value)))
        end)
    end
end)

local Defense = Stats:AddParagraph({Title = "Defense Points"})
spawn(function()
    while wait() do
        pcall(function()
            Defense:SetTitle("Defense : "..(formatarNumero(game.Players.localPlayer.Data.Stats.Defense.Level.Value)))
        end)
    end
end)

local Sword = Stats:AddParagraph({Title = "Sword Point"})
spawn(function()
    while wait() do
        pcall(function()
            Sword:SetTitle("Sword : "..(formatarNumero(game.Players.localPlayer.Data.Stats.Sword.Level.Value)))
        end)
    end
end)

local Gun = Stats:AddParagraph({Title = "Gun Points"})
spawn(function()
    while wait() do
        pcall(function()
            Gun:SetTitle("Gun : "..(formatarNumero(game.Players.localPlayer.Data.Stats.Gun.Level.Value)))
        end)
    end
end)

local Fruit = Stats:AddParagraph({
Title = "Fruit Point"})
spawn(function()
    while wait() do
        pcall(function()
            Fruit:SetTitle("Fruit : "..(formatarNumero(game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value)))
        end)
    end
end)

  

  Stats:AddSection("Select Stats")
  Stats:AddSlider({
    Title = "Select Points",
    Min = 1,
    Max = 2600,
    Increase = 1,
    Default = 1,
    Callback = function(Value)
      PointSlider = Value
    end
  })
  
  Stats:AddToggle({"Auto Stats", false, function(value)
    _G.AutoPoint = value
end})
  Stats:AddToggle({"Auto Stats Melee", false, function(value)
    melee = value
end})

Stats:AddToggle({"Auto Stats Defense", false, function(value)
    defense = value  
end})

Stats:AddToggle({"Auto Stats Sword", false, function(value)
    sword = value 
    
end})

Stats:AddToggle({"Auto Stats Gun", false, function(value)
    gun = value  
    
    
end})

local toggle = Stats:AddToggle({
"Auto Stats Fruit",
false,
function(value)
    demonfruit = value  
    
end})

spawn(function()
    while wait(0.0000000001) do
        if game.Players.localPlayer.Data.Points.Value ==  PointSlider or game.Players.localPlayer.Data.Points.Value ~= PointSlider then
            if melee then
            if _G.AutoPoint then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Melee",PointSlider)
            end 
            end
            if defense then
            if _G.AutoPoint then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Defense",PointSlider)
            end 
            end
            if sword then
            if _G.AutoPoint then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Sword",PointSlider)
            end 
            end
            if gun then
            if _G.AutoPoint then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Gun",PointSlider)
            end 
            end
            if demonfruit then
            if _G.AutoPoint then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint","Demon Fruit",PointSlider)
            end
         end
        end
    end
end)

Stats:AddSection("Get Stats")
Stats:AddButton({"Reset Stats [ 2,500 Frags ]", function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","1")
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Refund","2")
end})
Stats:AddButton({
	Title = "Redeem Code Stats",
	Callback = function()
	function RedeemCode(value)
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(value)
    end
    for i,v in pairs(CodeStatus) do
        RedeemCode(v)
    end
 end})
Stats:AddSection("")



--//ITEM








--//SHOP
Shop:AddSection({"Christmas"})
Shop:AddButton({
    "Buy 2x EXP (15 mins)",
    Description = "50 Candies",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Check")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Buy", 1, 1)
    end
})

Shop:AddButton({
    "Stats Refund", 
    Description= "75 Candies",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Check")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Buy", 1, 2)
    end
})

Shop:AddButton({
    "Race Reroll", 
    Description = "100 Candies",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Check")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Buy", 1, 3)
    end
})

Shop:AddButton({
    "Buy 200 Frags", 
    Description = "50 Candies",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Check")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Buy", 2, 1)
    end
})

Shop:AddButton({
    "Buy 500 Frags", 
    Description = "100 Candies",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Check")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Buy", 2, 2)
    end
})
Shop:AddSection({"Bones"})
Shop:AddButton({
    "Buy Surprise", 
    Description = "50 Bones",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
    end
})

Shop:AddButton({
    "Stats Refund", 
    Description = "150 Bones",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 2)
    end
})

Shop:AddButton({
    "Race Reroll", 
    Description = "300 Bones",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 3)
    end
})
Shop:AddToggle({
    "Auto Random Bones", 
    Description = "",
    Default = false,
    function()
        while true do
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
            wait()
        end
    end
})


Shop:AddSection({"Ectoplasm"})

Shop:AddButton({
    "Midnight Blade", 
    Description = "100 Ectoplasm",
    function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 1) 
    end
})

Shop:AddButton({
    "Bizarre Revolver", 
    Description = "25 Ectoplasm",
    function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 3) 
    end
})

Shop:AddButton({
    "Ghoul Mask",
Description = "50 Ectoplasm", 
    function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 2) 
    end
})
Shop:AddToggle({
    "Buy All Items Ectoplasm", 
    Description = "If You Have The Necessary Ectoplasms You Can Buy All The Items",
    Default = false,
    Callback = function(state)
        if state then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 1)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 2)
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 3)
        end
    end
})

Shop:AddSection({"Frags"})

Shop:AddButton({
    "Race Rerol", 
    Description = "3,000 Frags",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})

Shop:AddButton({
    "Reset Stats", 
    Description = "2,500 Frags",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
    end
})
Shop:AddSection({"Fighting Style"})
Buy = game:GetService("ReplicatedStorage").Remotes.CommF_
Shop:AddButton({
    "Buy Black Leg", 
    Description = "$150,000",
    function() 
        Buy:InvokeServer("BuyBlackLeg") 
    end
})

Shop:AddButton({
    "Buy Electro", 
    Description = "$500,000",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro") 
    end
})

Shop:AddButton({
    "Buy Fishman Karate",
Description = "$750,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate") 
    end
})

Shop:AddButton({
    "Buy Dragon Claw", 
    Description = "1,500 Frags",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
})

Shop:AddButton({
    "Buy Superhuman", 
    Description = "$3.000,000",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman") 
    end
})

Shop:AddButton({
    "Buy Death Step", 
    Description = "$2.500,000 | 5,000 Frags | Need 400 Mastery In Black Leg | Library Key",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") 
    end
})

Shop:AddButton({
    "Buy Sharkman Karate",
Description = "$2.500,000 | 5,000 Frags | Need 400 Mastery In Fishman Karate | Water Key",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate") 
    end
})

Shop:AddButton({
    "Buy Electric Claw",
    Description = "$3.000,000 | 5,000 Frags | Need 400 Mastery In Eletric | Previous Hero Quest",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") 
    end
})

Shop:AddButton({
    "Buy Dragon Talon",
    Description = "$3.000,000 | 5,000 Frags | Need 400 Mastery In Dragon Claw | Fire Essence",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") 
    end
})

Shop:AddButton({
    "Buy GodHuman", 
    Description = "$5.000,000 | 5,000 Frags | Need 400 Mastery In All Fighting Style | More Materiais",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman") 
    end
})

Shop:AddButton({
    "Buy Sanguine Art", 
    Description = "$5.000,000 | 5,000 Frags | Need 1 Heart of Leviathan ",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt") 
    end
})

Shop:AddSection({"Ability Teacher"})
Shop:AddButton({
    "Buy Geppo",
    Description = "$10,000",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo") 
    end
})

Shop:AddButton({
    "Buy Buso",
Description = "$10,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso") 
    end
})

Shop:AddButton({
    "Buy Soru",
    Description = "$100,000",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru") 
    end
})
Shop:AddButton({
    "Buy Ken Haki", 
    Description = "$750,000 | Need Saber Puzzle Complete",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk","Buy") 
    end
})
Shop:AddButton({
    "Buy Ken Haki V2", 
    Description = "$5.000,000 | Need Fruit Bowl Quest",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2","Buy") 
    end
})


Shop:AddSection({"Sword"})

Shop:AddButton({
    "Buy Katana",
    Description = "$1,000",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana") 
    end
})

Shop:AddButton({
    "Buy Cutlass",
Description = "$1,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass") 
    end
})

Shop:AddButton({
    "Buy Dual Katana",
    Description = "$10,000",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual Katana") 
    end
})

Shop:AddButton({
    "Buy Iron Mace",
    Description = "$25,000",
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace") 
    end
})

Shop:AddButton({
    "Buy Triple Katana",
    Description = "$60,000",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana") 
    end
})

Shop:AddButton({
    "Buy Pipe",
    Description = "$100,000",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe") 
    end
})

Shop:AddButton({
    "Buy Dual-Headed Blade", 
    Description = "$400,000",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade") 
    end
})

Shop:AddButton({
    "Buy Soul Cane",
    Description = "$750,000",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane") 
    end
})

Shop:AddButton({
    "Buy Bisento",
Description = "$1.000,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento") 
    end
})

Shop:AddSection({"Gun"})
Shop:AddButton({
    "Buy Slingshot",
    Description = "$5,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot") 
    end
})
Shop:AddButton({
    "Buy Musket",
    Description = "$8,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket") 
    end
})


Shop:AddButton({
    "Buy Flintlock",
    Description = "$10,500", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock") 
    end
})

Shop:AddButton({
    "Buy Refined Slingshot",
    Description = "$30,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Slingshot") 
    end
})

Shop:AddButton({
    "Buy Dual Flintlock",
    Description = "$65,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock") 
    end
})

Shop:AddButton({
    "Buy Cannon", 
    Description = "$100,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon") 
    end
})

Shop:AddButton({
    "Buy Kabucha", 
    Description = "1,500 Frags", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
    end
})
Shop:AddSection({"Accessories"})

Shop:AddButton({
    "Buy Black Cape",
    Description = "$50,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape") 
    end
})

Shop:AddButton({
    "Buy Swordsman Hat",
    Description = "$150,000 | Need 300 Or More Points In Sword", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat") 
    end
})

Shop:AddButton({
    "Buy Tomoe Ring",
    Description = "$500,000", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring") 
    end
})

Shop:AddSection({"Race"})

Shop:AddButton({
    "Ghoul Race",
Description = "Nothing",  
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Change", 4) 
    end
})

Shop:AddButton({
    "Cyborg Race",
    Description = "2,500 Frags", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy") 
    end
})
if Sea3 then
Shop:AddButton({
    Title = "Buy Draco Race",
    Description = "Nothing",
    Callback = function()
    if game:GetService("Players").LocalPlayer.Data.Race.Value == "Draco" then
    Notify.new("<Color=Orange>Your Race Is Draco<Color=/>"):Display();
    else
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438, - 334.9649963378906))
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938))
        local v368 = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938)
        local v369 = game.Players.LocalPlayer
        local v370 = v369.Character or v369.CharacterAdded:Wait() 
        repeat
            wait()
        until (v370.HumanoidRootPart.Position - v368).Magnitude < 1
        local v371 = {
            [1] = {
                NPC = "Dragon Wizard",
                Command = "DragonRace"
            }
        }
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(v371))
    end
    end
})
end
Shop:AddSection("Dragon Update")
Shop:AddButton({
    Title = "Craft Volcanic Magnet",
    Description = "Need 15 Blaze Ember | Need 10 Scrap Metal",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","Volcanic Magnet");
    end
});
Shop:AddButton({
    Title = "Craft Dragonheart",
    Description = "Need 1 Dragon Egg | Need 6 Dinosaur Bones | Need 15 Blaze Ember",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","Dragonheart");
    end
});
Shop:AddButton({
    Title = "Craft Dragonstorm",
    Description = "Need 2 Dragon Egg | Need 10 Dinosaur Bones | Need 5 Dragon Scale | Need 30 Blaze Ember",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","Dragonstorm");
    end
});
Shop:AddButton({
    Title = "Craft Dino Hood",
    Description = "Need 25 Dinosaur Bones | Need 10 Mini Tusk",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","DinoHood");
    end
});
Shop:AddButton({
    Title = "Craft T-Rex Skull",
    Description = "Need 8 Dinosaur Bones | Need 5 Dragon Scale",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","TRexSkull");
    end
});
Shop:AddSection("Shark Hunter Craft")
Shop:AddButton({
    Title = "Craft Shark Tooth Necklace",
    Description = "Need 1 Mutant Tooth | Need 5 Shark Tooth",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","SharkTooth");
    end
});
Shop:AddButton({
    Title = "Craft Terror Jaw",
    Description = "Need 1 Terror Eye | Need 2 Mutant Tooth | Need 10 Fool's Gold | Need 5 Shark Tooth",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","TerrorJaw");
    end
});
Shop:AddButton({
    Title = "Craft Monster Magnet",
    Description = "Need 2 Mutant Tooth | Need ,10 Eletric Wing | Need 20 Fool's Gold | Need 10 Shark Tooth",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","SharkAnchor");
    end
});
Shop:AddSection("Beast Hunter Craft")
Shop:AddButton({
    Title = "Craft Leviathan Crown",
    Description = "Need 1 Dark Fragment | Need 10 Leviathan Scale | Need 5 Eletric Wing",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","LeviathanCrown");
    end
});
Shop:AddButton({
    Title = "Craft Leviathan Shield",
    Description = "Need 1 Mirror Fractal | Need 30 Leviathan Scale | Need 20 Fool's Gold | Need 10 Eletric Wing",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","LeviathanShield");
    end
});
Shop:AddButton({
    Title = "Craft Beast Hunter",
    Description = "Need 20 Leviathan Scale | Need 6 Eletric Wing | Need 2 Mutant Tooth | Need 30 Fool's Gold | Need 6 Shark Tooth",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","LeviathanBoat");
    end
});
Shop:AddSection("Craft Scrolls")
Shop:AddButton({
    Title = "Craft Common Scroll",
    Description = "Need 2 Eletric Wing | Need 5 Fool's Gold | Need 4 Shark Tooth",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","CommonScroll");
    end
});
Shop:AddButton({
    Title = "Craft Rare Scroll",
    Description = "Need 3 Fool's Gold | Need 2 Shark Tooth",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","RareScroll");
    end
});
Shop:AddButton({
    Title = "Craft Legendary Scroll",
    Description = "Need 5 Leviathan Scale | Need 3 Eletric Wing | Need 1 Mutant Tooth | Need 7 Fool's Gold",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","LegendaryScroll");
    end
});
Shop:AddButton({
    Title = "Craft Mythical Scroll",
    Description = "Need 1 Heart of Leviathan | Need 15 Leviathan Scale | Need 1 Terror Eye | Need 20 Fool's Gold",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","MythicalScroll");
    end
});








--//VISUAL







--//SETTINGS









--//KAITUN










--//MORE





















--//
More:AddSection("Free Items")
More:AddSection("")
More:AddSection("Emotes")
local MarketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer

-- Lista de itens e seus respectivos Asset IDs
local items = {
    ["Shrug"] = 3576968026,
    ["Applaud"] = 5915779043,
    ["Tilt"] = 3360692915,
    ["Salute"] = 3360689775,
    ["Stadium"] = 3360686498,
    ["Hello"] = 3576686446,
    ["Point2"] = 3576823880,  -- Novo item "Point2"
}

-- Função para verificar se o jogador já possui o emote
local function hasItem(assetId)
    local success, result = pcall(function()
        return MarketplaceService:PlayerHasAsset(player, assetId)
    end)
    return success and result
end

-- Remover itens que o jogador já possui
local availableItems = {}
for name, assetId in pairs(items) do
    if not hasItem(assetId) then
        table.insert(availableItems, name)
    end
end

-- Criar o dropdown
More:AddDropdown({
    Title = "Select Emote",  -- Título do dropdown
    Options = availableItems,  -- Itens disponíveis (não repetidos)
    Callback = function(value)  -- Função chamada quando o jogador escolhe um item
        _G.Item = value  -- Armazena o valor escolhido em uma variável global
    end
})

-- Criar o botão de compra
More:AddButton({
    Title = "Buy Emote",  -- Título do botão
    Callback = function()
        -- Verifica qual item foi selecionado no dropdown
        local assetId
        if _G.Item == "Shrug" then
            assetId = items["Shrug"]
        elseif _G.Item == "Applaud" then
            assetId = items["Applaud"]
        elseif _G.Item == "Tilt" then
            assetId = items["Tilt"]
        elseif _G.Item == "Salute" then
            assetId = items["Salute"]
        elseif _G.Item == "Stadium" then
            assetId = items["Stadium"]
        elseif _G.Item == "Hello" then
            assetId = items["Hello"]
        elseif _G.Item == "Point2" then
            assetId = items["Point2"]
        else
            warn("Nenhum item selecionado!")
            return
        end

        -- Tenta comprar o item selecionado
        local success, errorMessage = pcall(function()
            MarketplaceService:PromptPurchase(player, assetId)
        end)

        if not success then
            warn("Erro ao tentar comprar o item: " .. errorMessage)
        end
    end
})


More:AddSection("Complete Outfits")
local MarketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer

-- Lista de Bundles (adicionados manualmente)
local bundles = {
    ["John"] = 126,  -- Bundle John
    ["Mulher"] = 239,  -- Bundle Mulher
    ["ROBLOX Girl"] = 108,  -- Bundle ROBLOX Girl
    ["Linlin"] = 741,  -- Bundle Linlin (Grátis)
    ["Lixob"] = 589,  -- Bundle Lixob
    ["Cavaleiros de Redcliff Paladino"] = 338,  -- Bundle Cavaleiros de Redcliff Paladino
    ["Denny"] = 722,  -- Bundle Denny
    ["Casey"] = 127,  -- Bundle Casey
    ["Oliver"] = 573,  -- Bundle Oliver
    ["Kenneth"] = 608,  -- Bundle Kenneth
    ["Corpo base Glenn"] = 984,  -- Bundle Corpo base Glenn
    ["Corpo base Peyton"] = 982,  -- Bundle Corpo base Peyton
    ["Oakley"] = 125,  -- Bundle Oakley
    ["Lin"] = 130,  -- Bundle Lin
    ["Corpo base Charlie"] = 983,  -- Bundle Corpo base Charlie
    ["Corpo base Dawson"] = 991,  -- Bundle Corpo base Dawson
    ["Esquadrão Carnival: Tedd, O Morto Retrô"] = 341,  -- Bundle Esquadrão Carnival: Tedd, O Morto Retrô
    ["Corpo base Riley"] = 979,  -- Bundle Corpo base Riley
    ["Serena"] = 129,  -- Bundle Serena
    ["Corpo base Cameron"] = 980,  -- Bundle Corpo base Cameron
    ["Corpo base Andi"] = 993,  -- Bundle Corpo base Andi
    ["Corpo base Devin"] = 986,  -- Bundle Corpo base Devin
    ["Cindy"] = 606,  -- Bundle Cindy
    ["Corpo base Parker"] = 985,  -- Bundle Corpo base Parker
    ["Homem"] = 238,  -- Bundle Homem
    ["Skyler"] = 687,  -- Bundle Skyler
    ["Mulher urbana"] = 337,  -- Bundle Mulher urbana
    ["Ver-o"] = 572,  -- Bundle Ver-o
    ["Garoto ROBLOX"] = 109,  -- Bundle Garoto ROBLOX
}

-- Função para verificar se o jogador já tem o bundle
local function PlayerHasBundle(bundleId)
    local success, hasBundle = pcall(function()
        return player:HasPurchasedBundle(bundleId)
    end)

    return success and hasBundle
end

-- Função para atualizar a lista de opções no dropdown
local function UpdateDropdownOptions()
    local availableBundles = {}
    for name, bundleId in pairs(bundles) do
        if not PlayerHasBundle(bundleId) then
            table.insert(availableBundles, name)
        end
    end
    return availableBundles
end

-- Função para adicionar o dropdown
More:AddDropdown({
    Title = "Select Bundle",  -- Título do dropdown
    Options = UpdateDropdownOptions(),  -- Atualiza as opções, removendo os bundles que o jogador já possui
    Callback = function(value)
        _G.SelectedBundle = value  -- Armazena a escolha do usuário
    end
})

-- Criar o botão para comprar o bundle selecionado
More:AddButton({
    Title = "Buy Selected Bundle",  -- Título do botão
    Callback = function()
        -- Verifica qual bundle foi selecionado
        local selectedBundle = _G.SelectedBundle
        if selectedBundle then
            local assetId = bundles[selectedBundle]  -- Obtém o Asset ID do bundle selecionado

            -- Tenta comprar o Bundle
            local success, errorMessage = pcall(function()
                MarketplaceService:PromptPurchase(player, assetId)
            end)

            if not success then
                warn("Erro ao tentar comprar o bundle: " .. errorMessage)
            end
        else
            warn("Nenhum bundle selecionado.")
        end
    end
})

More:AddSection("Hats")
local player = game.Players.LocalPlayer
local MarketplaceService = game:GetService("MarketplaceService")

-- Lista de Chapéus (adicionados manualmente)
local hats = {
    ["Boné de Beisebol da Roblox"] = 607702162,
    ["Viseira da Roblox"] = 2646473721,
    ["Viseira com Logotipo da Roblox"] = 607700713,
    ["Robox"] = 4819740796,
    ["Boné de Beisebol com R de Roblox"] = 417457461,
    ["Óculos Escuros Laranja"] = 376527500,
    ["Fedora Internacional Japão"] = 4324158403,
    ["Fedora Internacional Brasil"] = 4047554959,
    ["Colar de Jade com Pingente de Concha"] = 376527115,
    ["Fedora Internacional Austrália"] = 4645400486,
    ["Fedora Internacional Rússia"] = 4391384843,
    ["Capuz Medieval do Mistério"] = 617605556,
    ["Fedora Internacional Espanha"] = 4246228452,
    ["Boné Roblox Vermelho"] = 48474313,
    ["Boné do Encerro"] = 3403874988,
    ["Fedora Internacional Turquia"] = 4381707497,
    ["Fedora Internacional Reino Unido"] = 4489239608,
    ["Fedora Internacional França"] = 3033908130,
    ["Fedora Internacional Alemanha"] = 3033910400,
    ["Tampon de Seis Pain Is"] = 11451538363,
    ["Fedora Internacional Filipinas"] = 3940375351,
    ["Fedora Internacional Coreia do Sul"] = 3656493304,
    ["Fedora Internacional Argentina"] = 3438342658,
    ["Fedora Internacional México"] = 4094878701,
    ["Fedora Internacional Peru"] = 3443038622,
    ["Fedora Internacional Indonésia"] = 3662265036,
    ["Fedora Internacional Tailândia"] = 4645404679,
    ["Fedora Internacional Polônia"] = 4584029953,
    ["Fedora Internacional Ucrânia"] = 3822880197,
    ["Fedora Internacional Colômbia"] = 3499972183,
    ["Fedora Internacional EUA"] = 3409612660,
    ["Cacto Simpático"] = 15697459,
    ["Fedora Internacional Vietnã"] = 3992084515,
    ["Fedora Internacional Canadá"] = 3398308134,
    ["Fedora Internacional China"] = 4622081834,
}

-- Função para verificar se o jogador já possui o chapéu
local function PlayerHasHat(hatId)
    local success, hasHat = pcall(function()
        return player:HasPurchasedAsset(hatId)
    end)

    return success and hasHat
end

-- Função para atualizar a lista de chapéus disponíveis no dropdown
local function UpdateDropdownOptions()
    local availableHats = {}
    for name, hatId in pairs(hats) do
        if not PlayerHasHat(hatId) then
            table.insert(availableHats, name)
        end
    end
    return availableHats
end

-- Função para adicionar o dropdown
More:AddDropdown({
    Title = "Select Hat",  -- Título do dropdown
    Options = UpdateDropdownOptions(),  -- Atualiza as opções, removendo os chapéus que o jogador já possui
    Callback = function(value)
        _G.SelectedHat = value  -- Armazena a escolha do usuário
    end
})

-- Criar o botão para comprar o chapéu selecionado
More:AddButton({
    Title = "Buy Selected Hat",  -- Título do botão
    Callback = function()
        -- Verifica qual chapéu foi selecionado
        local selectedHat = _G.SelectedHat
        if selectedHat then
            local assetId = hats[selectedHat]  -- Obtém o Asset ID do chapéu selecionado

            -- Tenta comprar o Chapéu
            local success, errorMessage = pcall(function()
                MarketplaceService:PromptPurchase(player, assetId)
            end)

            if not success then
                warn("Erro ao tentar comprar o chapéu: " .. errorMessage)
            end
        else
            warn("Nenhum chapéu selecionado.")
        end
    end
})



More:AddSection("Hair")
local MarketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer

-- Lista de Hair
local hairItems = {
    ["Cabelo Azul Verdadeiro"] = 451221329,  -- Adicionando o item de cabelo anterior
    ["Cabelo Ruivo Longo da Musa de Belfast"] = 2956239660,  -- Adicionando o item de cabelo anterior
    ["Cabelo de Parceiro"] = 63690008,  -- Novo item de cabelo
    ["Tranças Coloridas"] = 3814476174,  -- Novo item de cabelo
    ["Raspado Lateral Maneiro"] = 3814474927,  -- Novo item de cabelo
    ["Penteado Alto de Lavanda"] = 451220849,  -- Novo item de cabelo
    ["Touca Laranja com Cabelo Preto"] = 1103003368,  -- Novo item de cabelo
    ["Ondulado partido no meio Marrom"] = 7193448258,  -- Novo item de cabelo
    ["Ondulado partido no meio Preto"] = 9244111257,  -- Novo item de cabelo
    ["Cabelo Loiro Espetado"] = 376524487,  -- Novo item de cabelo
    ["Franja lisa Preta"] = 6993754725,  -- Novo item de cabelo
    ["Rabo de cavalo Preto"] = 7193442167,  -- Novo item de cabelo
    -- Novos itens
    ["Curto e elegante Loiro"] = 9243987340,  -- Novo item de cabelo
    ["Cabelo Encantador Castanho"] = 376548738,  -- Novo item de cabelo
    ["Rabo de cavalo Loiro"] = 9244095135,  -- Novo item de cabelo
    ["Cabelo Loiro Liso"] = 376526888,  -- Novo item de cabelo
    ["Ondulado partido no meio Marrom"] = 7193448258,  -- Novo item de cabelo
    ["Dreads penteados Preto"] = 9174355709,  -- Novo item de cabelo
    ["Meio longo partido no meio Preto"] = 9244089488,  -- Novo item de cabelo
    ["Rabo de cavalo Vermelho"] = 7193444640,  -- Novo item de cabelo
    ["Rabo de Cavalo Preto"] = 376527350,  -- Novo item de cabelo
    ["Penteado pro lado Preto"] = 9244021842,  -- Novo item de cabelo
    ["Franja lisa Vermelha"] = 9244122897,  -- Novo item de cabelo
    ["Amarrado em cima Preto"] = 9174354743,  -- Novo item de cabelo
    ["Surfista Preto"] = 9174353649,  -- Novo item de cabelo
    ["Rabo de cavalo Marrom"] = 9244097555,  -- Novo item de cabelo
    ["Franja lisa Loira"] = 7193448988,  -- Novo item de cabelo
    -- Novos itens
    ["Curto e elegante Preto"] = 9243992729,  -- Novo item de cabelo
    ["Afro encaracolado Preto"] = 7193450455,  -- Novo item de cabelo
    ["Ondulado partido no meio Loiro"] = 7193445686,  -- Novo item de cabelo
    ["Penteado pro lado Loiro"] = 7193386173,  -- Novo item de cabelo
    ["Franjas lisas Marrom"] = 7193449810,  -- Novo item de cabelo
    ["Cabelo Trançado Vermelho"] = 7193455510,  -- Novo item de cabelo
    ["Curto e elegante Vermelho"] = 9243995099,  -- Novo item de cabelo
    ["Dreads penteados Marrom"] = 9244070571,  -- Novo item de cabelo
    ["Cabelo Castanho"] = 62234425,  -- Novo item de cabelo
    ["Ondulado partido no meio Vermelho"] = 9244114211,  -- Novo item de cabelo
    -- Adicionados agora
    ["Penteado pro lado Vermelho"] = 9244024443,  -- Novo item de cabelo
    ["Penteado pro lado Marrom"] = 7193419595,  -- Novo item de cabelo
    ["Encaracolado curto Preto"] = 7193452166,  -- Novo item de cabelo
    ["Cabelo Trançado Loiro"] = 9244148336,  -- Novo item de cabelo
    ["Surfista Vermelho"] = 9244038785,  -- Novo item de cabelo
    ["Descoloração encaracolada Preto"] = 7193405096,  -- Novo item de cabelo
    ["Surfista Marrom"] = 9244033194,  -- Novo item de cabelo
    ["Descoloração encaracolada Marrom"] = 9244010432,  -- Novo item de cabelo
    ["Dreads penteados Loiro"] = 9244067444,  -- Novo item de cabelo
    ["Descoloração encaracolada Marrom"] = 9244010432,  -- Novo item de cabelo (repetido)
    ["Amarrado em cima Marrom"] = 9244060144,  -- Novo item de cabelo
    -- Novos itens
    ["Cabelo Trançado Preto"] = 7193454569,  -- Novo item de cabelo
    ["Afro encaracolado Marrom bacana"] = 7193451306,  -- Novo item de cabelo
    ["Amarrado em cima Vermelho"] = 9244064248,  -- Novo item de cabelo
    ["Curto e elegante Marrom"] = 6993758617,  -- Novo item de cabelo
    ["Franja curta Preta"] = 7193401217,  -- Novo item de cabelo
    ["Afro encaracolado Loiro"] = 9244125859,  -- Novo item de cabelo
    ["Amarrado em cima Loiro"] = 9244057408,  -- Novo item de cabelo
    ["Meio longo partido no meio Vermelho"] = 9244091757,  -- Novo item de cabelo
    ["Cabelo trançado Marrom bacana"] = 9244150641,  -- Novo item de cabelo
    ["Meio longo partido no meio Marrom"] = 7193437847,  -- Novo item de cabelo
    ["Meio longo partido no meio Loiro"] = 7193424874,  -- Novo item de cabelo
    ["Descoloração encaracolada Vermelho"] = 9244014391,  -- Novo item de cabelo
    ["Encaracolado curto Loiro"] = 9244134513,  -- Novo item de cabelo
    ["Dreads penteados Vermelho"] = 9244082349,  -- Novo item de cabelo
}

-- Função para verificar se o jogador já tem o item de cabelo
local function PlayerHasHairItem(hairId)
    local success, hasItem = pcall(function()
        return player:HasPurchased(hairId)
    end)
    return success and hasItem
end

-- Função para atualizar a lista de opções no dropdown
local function UpdateHairDropdownOptions()
    local availableHair = {}
    for name, hairId in pairs(hairItems) do
        if not PlayerHasHairItem(hairId) then
            table.insert(availableHair, name)
        end
    end
    return availableHair
end

-- Função para adicionar o dropdown
More:AddDropdown({
    Title = "Select Hair",  -- Título do dropdown
    Options = UpdateHairDropdownOptions(),  -- Atualiza as opções, removendo os itens que o jogador já possui
    Callback = function(value)
        _G.SelectedHair = value  -- Armazena a escolha do usuário
    end
})

-- Criar o botão para comprar o item de cabelo selecionado
More:AddButton({
    Title = "Buy Selected Hair",  -- Título do botão
    Callback = function()
        -- Verifica qual item de cabelo foi selecionado
        local selectedHair = _G.SelectedHair
        if selectedHair then
            local assetId = hairItems[selectedHair]  -- Obtém o Asset ID do item de cabelo selecionado

            -- Tenta comprar o item de cabelo
            local success, errorMessage = pcall(function()
                MarketplaceService:PromptPurchase(player, assetId)
            end)

            if not success then
                warn("Erro ao tentar comprar o item de cabelo: " .. errorMessage)
            end
        else
            warn("Nenhum item de cabelo selecionado.")
        end
    end
})
More:AddSection("Classic Heads")
local headsClassic = {
    ["Cabeça de Bloco"] = 6340101,  -- Cabeça de Bloco
    ["Redondinha"] = 6340213,  -- Redondinha
    ["Aparada"] = 6340227,  -- Aparada
}

-- Função para verificar se o jogador já tem o item de cabeça
local function PlayerHasHead(itemId)
    local success, hasItem = pcall(function()
        return player:HasPurchasedItem(itemId)
    end)

    return success and hasItem
end

-- Função para atualizar a lista de opções no dropdown
local function UpdateDropdownOptions()
    local availableHeads = {}
    for name, itemId in pairs(headsClassic) do
        if not PlayerHasHead(itemId) then
            table.insert(availableHeads, name)
        end
    end
    return availableHeads
end

-- Função para adicionar o dropdown
More:AddDropdown({
    Title = "Select Head",  -- Título do dropdown
    Options = UpdateDropdownOptions(),  -- Atualiza as opções, removendo os itens que o jogador já possui
    Callback = function(value)
        _G.SelectedHead = value  -- Armazena a escolha do usuário
    end
})

-- Criar o botão para comprar o item de cabeça selecionado
More:AddButton({
    Title = "Buy Selected Head",  -- Título do botão
    Callback = function()
        -- Verifica qual cabeça foi selecionada
        local selectedHead = _G.SelectedHead
        if selectedHead then
            local assetId = headsClassic[selectedHead]  -- Obtém o Asset ID do item de cabeça selecionado

            -- Tenta comprar o item
            local success, errorMessage = pcall(function()
                MarketplaceService:PromptPurchase(player, assetId)
            end)

            if not success then
                warn("Erro ao tentar comprar o item de cabeça: " .. errorMessage)
            end
        else
            warn("Nenhuma cabeça selecionada.")
        end
    end
})
More:AddSection("Head")
local MarketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer

-- Lista de itens (adicionados manualmente com base nos links)
local headItems = {
    ["Óculos de Aviador Estilosos"] = 376526673,  -- ID do item: Óculos de Aviador Estilosos
    ["Óculos Escuros Laranja"] = 376527500,  -- ID do item: Óculos Escuros Laranja
    ["Living Art User Ads"] = 18112503797,  -- ID do item: Living Art User Ads
    ["Colar de Jade com Pingente de Concha"] = 376527115,  -- ID do item: Colar de Jade com Pingente de Concha
    ["User Ads Backstage Pass"] = 18112476810,  -- ID do item: User Ads Backstage Pass
}

-- Função para verificar se o jogador já tem o item
local function PlayerHasItem(itemId)
    local success, hasItem = pcall(function()
        return player:HasPurchased(itemId)
    end)

    return success and hasItem
end

-- Função para atualizar a lista de opções no dropdown
local function UpdateDropdownOptions()
    local availableItems = {}
    for name, itemId in pairs(headItems) do
        if not PlayerHasItem(itemId) then
            table.insert(availableItems, name)
        end
    end
    return availableItems
end

-- Função para adicionar o dropdown
More:AddDropdown({
    Title = "Select Head Item",  -- Título do dropdown
    Options = UpdateDropdownOptions(),  -- Atualiza as opções
    Callback = function(value)
        _G.SelectedItem = value  -- Armazena a escolha do usuário
    end
})

-- Criar o botão para comprar o item selecionado
More:AddButton({
    Title = "Buy Selected Head Item",  -- Título do botão
    Callback = function()
        -- Verifica qual item foi selecionado
        local selectedItem = _G.SelectedItem
        if selectedItem then
            local itemId = headItems[selectedItem]  -- Obtém o ID do item selecionado

            -- Tenta comprar o item
            local success, errorMessage = pcall(function()
                MarketplaceService:PromptPurchase(player, itemId)
            end)

            if not success then
                warn("Erro ao tentar comprar o item: " .. errorMessage)
            end
        else
            warn("Nenhum item selecionado.")
        end
    end
})




More:AddSection("Face")
local MarketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer

-- Lista de Face Items (adicionados manualmente)
local faceItems = {
    ["Diversão Pateta"] = 7699174,  -- Face Diversão Pateta
    ["Cavaleiros de Redcliff Paladino Rosto"] = 2493587489,  -- Face Cavaleiros de Redcliff Paladino Rosto
    ["Rosto de Homem"] = 949,  -- Bundle Rosto de Homem
    ["Rosto de Mulher"] = 948,  -- Bundle Rosto de Mulher
    ["Stevie Standard"] = 946,  -- Bundle Stevie Standard
    ["Saca-S"] = 968,  -- Bundle Saca-S
}

-- Função para verificar se o jogador já tem o item
local function PlayerHasItem(itemId)
    local success, hasItem = pcall(function()
        return player:HasPurchased(itemId)
    end)

    return success and hasItem
end

-- Função para atualizar a lista de opções no dropdown
local function UpdateDropdownOptions()
    local availableItems = {}
    for name, itemId in pairs(faceItems) do
        if not PlayerHasItem(itemId) then
            table.insert(availableItems, name)
        end
    end
    return availableItems
end

-- Função para adicionar o dropdown
More:AddDropdown({
    Title = "Select Face Item",  -- Título do dropdown
    Options = UpdateDropdownOptions(),  -- Atualiza as opções
    Callback = function(value)
        _G.SelectedItem = value  -- Armazena a escolha do usuário
    end
})

-- Criar o botão para comprar o item selecionado
More:AddButton({
    Title = "Buy Selected Face Item",  -- Título do botão
    Callback = function()
        -- Verifica qual item foi selecionado
        local selectedItem = _G.SelectedItem
        if selectedItem then
            local itemId = faceItems[selectedItem]  -- Obtém o ID do item selecionado

            -- Tenta comprar o item
            local success, errorMessage = pcall(function()
                MarketplaceService:PromptPurchase(player, itemId)
            end)

            if not success then
                warn("Erro ao tentar comprar o item: " .. errorMessage)
            end
        else
            warn("Nenhum item selecionado.")
        end
    end
})


More:AddSection("Shirts and the Same")
local MarketplaceService = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer

-- Lista de Shirts (adicionados manualmente)
local shirts = {
    ["Dog Backpack"] = 98752422639730, -- Shirt Dog Backpack
    ["Camiseta Roblox Branca"] = 7178737816, 
    ["Camisa de manga longa de baseball Vermelha"] = 7178740556,
    ["Camiseta básica Cinza"] = 9112474888,
    ["Camiseta Roblox Preta"] = 7178736794,
    ["Camisa de manga longa de baseball P/B"] = 9120031517,
    ["Camiseta listrada Preta"] = 9119670803,
    ["Camiseta listrada Branca"] = 9112483644,
    ["Blusa de amarrar na frente Branca"] = 9240752338,
    ["Moletom tricotado Cinza"] = 9240758221,
    ["Moletom tricotado Bege"] = 6984769289,
    ["Moletom tricotado Preto"] = 9240757332,
    ["Jaqueta com capuz Cinza"] = 8516620262,
    ["Jaqueta de couro Preta"] = 7192549218,
    ["Jaqueta jeans Desbotado leve"] = 8516609675,
    ["Capote Branco"] = 8648380153,
    ["Moletom com capuz Preto"] = 7192553841,
    ["Parka Marrom"] = 8648397446,
    ["Casaco de negócios Cinza"] = 8516638468,
    ["Moletom com capuz Laranja"] = 6984765766,
    ["Jaqueta de couro com colarinho Branca"] = 7192546798,
    ["Jaqueta jeans Branca"] = 8516612751,
    ["Jaqueta de couro com colarinho Marrom"] = 7192547628,
    ["Jaqueta de couro Marrom"] = 6984767443,
    ["Casaco de negócios Salmão"] = 8516655378,
    ["Casaco de negócios Cinza listrado"] = 8516648620,
    ["Wolf Moon"] = 1593719,
    ["Blinggg"] = 1351714,
    ["Penguin Hoodie"] = 1376925,
    ["Pict0032 JPG"] = 1591779,
    ["PhoenixSkull"] = 1489578,
    ["Camiseta Verde"] = 382538059,
    ["Camisa de motoqueiro azul e preta"] = 144076358,
    ["Camisa Roblox Padrão Simples"] = 3670737444,
    ["Jaqueta Jeans com Moletom com Capuz Branco"] = 398633584,
    ["Jaqueta da Roblox"] = 607785314,
    ["Camiseta Roxa e Verde Azulada"] = 4047886060,
    ["Camisa da Minha Pizza Favorita"] = 4047884939,
    ["Top Estouro Estelar Pastel com Jaqueta Cinza"] = 398634295,
    ["Camisa de Flanela Xadrez Azul"] = 398635081,
    ["Camisa Verde Azulada"] = 382537702,
    ["Camisa Eu 3 Pizza"] = 382537085,
    ["Camisa Listrada com Jaqueta Jeans"] = 144076436,
    ["Camiseta de Guitarra com Jaqueta Preta"] = 382538295,
    ["Camiseta de Guitarra com Jaqueta Preta (Outro Link)"] = 4047884046,
    ["Spider Tux"] = 1803741,
    ["Patriot Jersey"] = 1600307,
    ["Shadow the Hedgehog"] = 1592971,
    ["Spread The Lulz"] = 24774766,
    ["Demon Naruto Shuippen"] = 1551714,
    ["Steelers"] = 1703301,
    ["Spyders Dog JPG"] = 1578767,
    ["Yum"] = 1591707,
    ["Smiley Flower"] = 1000003,
    ["Holy Tux"] = 1781671,
    ["Amulet of the Royal Knights Free for Members"] = 24819745,
    ["Slicer Clans 3rd Uniform"] = 1784405,
    ["Scatman Johns Vest"] = 1719488,
    ["Super Sonich"] = 1514887,
    ["Thomasjm2 Shirt Transparent"] = 1666959,
    ["This Cake is a Lie"] = 1635822,
    ["Old Day Sonich"] = 1523521,
    ["Phoenix"] = 1593739,
    ["Rivalry"] = 1289815,
    ["Scienceguy3's Pixel Shirt"] = 1608490,
    ["LOL Wut"] = 1683887,
    ["Content Deleted"] = 1725635,
    ["Non Admin Shirt"] = 1738160,
    ["Chibi Sesshomaru"] = 1786875,
    ["Black Yellow Smiley"] = 1649722,
    ["Call of Duty 4 Modern Warfare"] = 1774275,
    ["Telamons Mog Shirt Transparent"] = 1608316,
    ["Wool Hood So Cute X3 FREEEE"] = 1627363,
    ["The Classic VIP"] = 17578965036,
    ["Kirby Tux"] = 1788844,
    ["Shadow"] = 1633148,
    ["NFL Shirt"] = 1614142,
    ["Homestar Runner FB Team"] = 1597982,
    ["Colts Jersey"] = 1645979,
    ["Ch"] = 1755962,
    ["Toxic Sign"] = 1562150,
    ["Chidori Nagashi Sasuke"] = 1593027,
    ["Football 7"] = 1607335,
    ["Tux"] = 1772034,
    ["Hong Kong"] = 1487756,
    ["Film Negative Feather of Future Indians"] = 1377799,
    ["What is it"] = 1490574,
    ["Fjiskdgnjf"] = 1498354,
    ["Cyber Suit30"] = 1639361,
    ["Ninja Shirt"] = 1431511,
    ["Fire Flower"] = 1144544,
    ["Patrick Tux"] = 1738374,
    ["Shadow Peach"] = 1646064,
    ["Striped Suit"] = 1749694,
    ["Hobo Sweater"] = 1794125,
    ["What is it (Duplicate)"] = 1490574
}

-- Função para verificar se o jogador já tem o item
local function PlayerHasShirt(shirtId)
    local success, hasShirt = pcall(function()
        return player:HasPurchasedAsset(shirtId)
    end)

    return success and hasShirt
end

-- Função para atualizar a lista de opções no dropdown
local function UpdateDropdownOptions()
    local availableShirts = {}
    for name, shirtId in pairs(shirts) do
        if not PlayerHasShirt(shirtId) then
            table.insert(availableShirts, name)
        end
    end
    return availableShirts
end

-- Função para adicionar o dropdown
More:AddDropdown({
    Title = "Select Shirt",  -- Título do dropdown
    Options = UpdateDropdownOptions(),  -- Atualiza as opções, removendo os itens que o jogador já possui
    Callback = function(value)
        _G.SelectedShirt = value  -- Armazena a escolha do usuário
    end
})

-- Criar o botão para comprar o item selecionado
More:AddButton({
    Title = "Buy Selected Shirt",  -- Título do botão
    Callback = function()
        local selectedShirt = _G.SelectedShirt
        if selectedShirt then
            local assetId = shirts[selectedShirt]

            -- Tenta comprar o item
            local success, errorMessage = pcall(function()
                MarketplaceService:PromptPurchase(player, assetId)
            end)

            if not success then
                warn("Erro ao tentar comprar o item: " .. errorMessage)
            end
        else
            warn("Nenhum item selecionado.")
        end
    end
})

More:AddSection("Shorts and the Same")



More:AddSection("Shoes and the Same")


More:AddSection("Accessories")



More:AddSection("Item Codes")

