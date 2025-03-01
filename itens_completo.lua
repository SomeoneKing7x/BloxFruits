--//permanetes
Sea1 = false
Sea2 = false
Sea3 = false
local Id = game.PlaceId
if (Id == 2753915549) then
    Sea1 = true
elseif (Id == 4442272183) then
    Sea2 = true
elseif (Id == 7449423635) then
    Sea3 = true
end



--//INFOR
--acient one
function CheckAcientOneStatus()
--if  game.Players.LocalPlayer.Character:--FindFirstChild("RaceTransformed") then
---return "Race Activated"
--end
            if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
                return "You have yet to achieve greatness"
            end
            local v227 = nil
            local v228 = nil
            local v229 = nil
            v229, v228, v227 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("UpgradeRace", "Check")
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
            return "Remaining " .. 10 - v228 .. " training sessions."
        end
--lua.

  
--race 
function CheckRace()
            local v113 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Wenlocktoad", "1")
            local v111 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("Alchemist", "1")
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
        
        --miragem puzzle
        function CheckMiragemPuzzle()
            if game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CheckTempleDoor") then
                return "✅"
            end
            return "❌"
        end 
        function PlayersCount()
            return #game.Players:GetChildren()
        end 
        --material
        function CheckMaterial(matname)
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
if type(v) == "table" then
if v.Type == "Material" then
if v.Name == matname then
return v.Count
end
end
end
end
return 0
end
--haki
function CheckHakiColor()
            local v141, v142 = game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ColorsDealer", "1")
            if not v141 or v141 == 1 then
                return "None", "0\198\146"
            end
            if v141 ~= 1 then
                return v141, tostring(v142) .. "\198\146"
            end
        end  

--verificar fruta e berry





        

--//FARM





--//Seas
--sea1




--sea2





--sea3





--//Ilhas







--//sea event







--//FRUIT





--//TELEPORT




--//RAÇA 






--//PLAYER






--//STATUS






--//ITENS 
function CheckItem(itemcc)
            for k, v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventory")) do
                if v.Name == itemcc then
                    return v
                end
            end
        end





--//SHOP





--//VISUAL




--//SETTINGS
local function FogRemove()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        
    
    if v:FindFirstChild("SeaTerrorCC") then
        v.SeaTerrorCC:Destroy()
    end
    if v:FindFirstChild("LightingLayers") then
        if v.LightingLayers:FindFirstChild("Atmosphere") then
            v.LightingLayers.Atmosphere:Destroy()
        end
        wait()
        if v.LightingLayers:FindFirstChild("DarkFog") then
            v.LightingLayers.DarkFog:Destroy()
        end
    end
    v.FogEnd = 1000000000
end
end
end
--Lava
local function LavaRemove()
    local v406 = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava")
    if (v406 and v406:IsA("Model")) then
        v406:Destroy()
    end
    local v407 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
    if v407 then
        for v750, v751 in pairs(v407:GetDescendants()) do
            if (v751:IsA("Part") and v751.Name:lower():find("lava")) then
                v751:Destroy()
            end
        end
    end
    local v408 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
    if v408 then
        for v752, v753 in pairs(v408:GetDescendants()) do
            if v753:IsA("Model") then
                for v905, v906 in pairs(v753:GetDescendants()) do
                    if (v906:IsA("MeshPart") and v906.Name:lower():find("lava")) then
                        v906:Destroy()
                        for i, v in pairs(game.Workspace:GetDescendants()) do
		if v.Name == "Lava" then
			v:Destroy()
		end
	end
	for i, v in pairs(game.ReplicatedStorage:GetDescendants()) do
		if v.Name == "Lava" then
			v:Destroy()
		end
	end
                    end
                end
            end
        end
    end
end
--tween
function Tween2(Viajar)
    local Distancia = (Viajar.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
    local Velocidade= 350;
if   (Distancia < 200) then
      Velocidade = 35000;
    end
    local Info = TweenInfo.new(Distancia / Velocidade, Enum.EasingStyle.Linear);
    local Destino = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, Info, {
        CFrame = Viajar
    });
    Destino:Play();
    if _G.CancelTween2 then
        Destino:Cancel();
    end
    _G.Clip2 = true;
    wait(Distancia / Velocidade);
    _G.Clip2 = false;
end
--Bypass
function Bypass(v204)
    local v205 = (v204.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
    local v206 = 350000000000000000000000;
    if (v205 >= 350) then
        v206 = 3500000000000000000000000000;
    end
    local v207 = TweenInfo.new(v205 / v206, Enum.EasingStyle.Linear);
    local v208 = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, v207, {
        CFrame = v204
    });
    v208:Play();
    if _G.CancelTween2 then
        v208:Cancel();
    end
    _G.Clip2 = true;
    wait(v205 / v206);
    _G.Clip2 = false;
end

--KAITUN







--ui
MasterVolume = 0
        local SettingsFile = "Someone-Hub.json"
    function LoadSettings()
        local status, err = pcall(function()
            Settings = game:GetService('HttpService'):JSONDecode(readfile(SettingsFile))
        end)
        if not err then return Settings else return false end
    end

    function WriteSettings()
        writefile(SettingsFile, game:GetService('HttpService'):JSONEncode(getgenv().SomeoneSettings))
    end
    local DefaultSettings = {
        ["lastjobid"] = "", 
        ["uibutton"] = Enum.KeyCode.RightShift,
        ["killaura"] = false,
        ["autonextisland"] = false
    }
    getgenv().SomeoneSettings = DefaultSettings
    settings = LoadSettings()
    if settings then
        for i,v in pairs(settings) do
            getgenv().SomeoneSettings[i] = v
        end 
    end
    WriteSettings()

shared.LoaderTitle = "Subscribe to Someone Scripts Channel "
shared.LoaderKeyFrames = {
    [1] = {
        0,
        10
    },
    [2] = {
        0,
        90
    },
    [3] = {
        0,
        100
    }
}
local v2 = {
    LoaderData = {
        Name = shared.LoaderTitle or "Amo Acricia",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(0, 0, 0),
            Topic = Color3.fromRGB(200, 200, 200),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(40, 40, 40),
            LoaderSplash = Color3.fromRGB(169,169,169)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            0,
            10
        },
        [2] = {
            0,
            90
        },
        [3] = {
            0,
            100
        }
    }
}
local v3 = {
    [1] = "",
    [2] = "",
    [3] = ""
}
function TweenObject(v178, v179, v180)
    game.TweenService:Create(v178, TweenInfo.new(v179, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), v180):Play()
end
function CreateObject(v181, v182)
    local v183 = Instance.new(v181)
    local v184
    for v416, v417 in pairs(v182) do
        if (v416 ~= "Parent") then
            v183[v416] = v417
        else
            v184 = v417
        end
    end
    v183.Parent = v184
    return v183
end
local function v4(v186, v187)
    local v188 = Instance.new("UICorner")
    v188.CornerRadius = UDim.new(0, v186)
    v188.Parent = v187
end
local v5 = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
})
local v6 = CreateObject("Frame", {
    Name = "Main",
    Parent = v5,
    BackgroundColor3 = v2.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
})
v4(12, v6)
local v7 = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = v6,
    BackgroundTransparency = 1,
    Image = "rbxassetid://127950462202673",
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 50, 0, 50)
})
v4(25, v7)
local v8 = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = v6,
    BackgroundTransparency = 1,
    Text = "Youtube: Someone Script",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
})
local v9 = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = v6,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
})
local v10 = CreateObject("TextLabel", {
    Name = "Title",
    Parent = v6,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. v2.LoaderData.Name .. "</b>",
    TextColor3 = v2.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
})
local v11 = CreateObject("Frame", {
    Name = "BG",
    Parent = v6,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)
})
v4(8, v11)
local v12 = CreateObject("Frame", {
    Name = "Progress",
    Parent = v11,
    BackgroundColor3 = v2.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
})
v4(8, v12)
local v13 = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = v6,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = v2.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
})
function UpdateStepText(v191)
    v13.Text = v3[v191] or "" 
end
function UpdatePercentage(v193, v194)
    TweenObject(v12, 0.5, {
        Size = UDim2.new(v193 / 100, 0, 0, 24)
    })
    UpdateStepText(v194)
end
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
})
wait()
TweenObject(v9, 0.5, {
    TextTransparency = 0
})
TweenObject(v10, 0.5, {
    TextTransparency = 0
})
TweenObject(v11, 0.5, {
    BackgroundTransparency = 0
})
TweenObject(v12, 0.5, {
    BackgroundTransparency = 0
})
for v195, v196 in pairs(v2.Keyframes) do
    wait(v196[1])
    UpdatePercentage(v196[2], v195)
end
UpdatePercentage(100, 4)
TweenObject(v9, 0.5, {
    TextTransparency = 1
})
TweenObject(v10, 0.5, {
    TextTransparency = 1
})
TweenObject(v11, 0.5, {
    BackgroundTransparency = 1
})
TweenObject(v12, 0.5, {
    BackgroundTransparency = 1
})
wait(0.5)
TweenObject(v6, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
})
wait(0.25)
v5:Destroy()

--[[
local items = {
	
    "accessibility",
    "activity",
    "airvent",
    "airplay",
    "alarmcheck",
    "alarmclock",
    "alarmclockoff",
    "alarmminus",
    "alarmplus",
    "album",
    "alertcircle",
    "alertoctagon",
    "alerttriangle",
    "aligncenter",
    "aligncenterhorizontal",
    "aligncentervertical",
    "alignendhorizontal",
    "alignendvertical",
    "alignhorizontaldistributecenter",
    "alignhorizontaldistributeend",
    "alignhorizontaldistributestart",
    "alignhorizontaljustifycenter",
    "alignhorizontaljustifyend",
    "alignhorizontaljustifystart",
    "alignhorizontalspacearound",
    "alignhorizontalspacebetween",
    "alignjustify",
    "alignleft",
    "alignright",
    "alignstarthorizontal",
    "alignstartvertical",
    "alignverticaldistributecenter",
    "alignverticaldistributeend",
    "alignverticaldistributestart",
    "alignverticaljustifycenter",
    "alignverticaljustifyend",
    "alignverticaljustifystart",
    "alignverticalspacearound",
    "alignverticalspacebetween",
    "anchor",
    "angry",
    "annoyed",
    "aperture",
    "apple",
    "archive",
    "archiverestore",
    "armchair",
    "arrowbigdown",
    "arrowbigleft",
    "arrowbigright",
    "arrowbigup",
    "arrowdown",
    "arrowdowncircle",
    "arrowdownleft",
    "arrowdownright",
    "arrowleft",
    "arrowleftcircle",
    "arrowleftright",
    "arrowright",
    "arrowrightcircle",
    "arrowup",
    "arrowupcircle",
    "arrowupdown",
    "arrowupleft",
    "arrowupright",
    "asterisk",
    "atsign",
    "award",
    "axe",
    "axis3d",
    "baby",
    "backpack",
    "baggageclaim",
    "banana",
    "banknote",
    "barchart",
    "barchart2",
    "barchart3",
    "barchart4",
    "barcharthorizontal",
    "barcode",
    "baseline",
    "bath",
    "battery",
    "batterycharging",
    "batteryfull",
    "batterylow",
    "batterymedium",
    "beaker",
    "bed",
    "beddouble",
    "bedsingle",
    "beer",
    "bell",
    "bellminus",
    "belloff",
    "bellplus",
    "bellring",
    "bike",
    "binary",
    "bitcoin",
    "bluetooth",
    "bluetoothconnected",
    "bluetoothoff",
    "bluetoothsearching",
    "bold",
    "bomb",
    "bone",
    "book",
    "bookopen",
    "bookmark",
    "bookmarkminus",
    "bookmarkplus",
    "bot",
    "box",
    "boxselect",
    "boxes",
    "briefcase",
    "brush",
    "bug",
    "building",
    "building2",
    "bus",
    "cake",
    "calculator",
    "calendar",
    "calendarcheck",
    "calendarcheck2",
    "calendarclock",
    "calendardays",
    "calendarheart",
    "calendarminus",
    "calendaroff",
    "calendarplus",
    "calendarrange",
    "calendarsearch",
    "calendarx",
    "calendarx2",
    "camera",
    "cameraoff",
    "car",
    "carrot",
    "cast",
    "charge",
    "check",
    "checkcircle",
    "checkcircle2",
    "checksquare",
    "chefhat",
    "cherry",
    "chevrondown",
    "chevronfirst",
    "chevronlast",
    "chevronleft",
    "chevronright",
    "chevronup",
    "filescan",
"filesearch",
"filesearch2",
"filesignature",
"filespreadsheet",
"filesymlink",
"fileterminal",
"filetext",
"filetype",
"filetype2",
"fileup",
"filevideo",
"filevideo2",
"filevolume",
"filevolume2",
"filewarning",
"filex",
"filex2",
"files",
"film",
"filter",
"fingerprint",
"flag",
"flagoff",
"flagtriangleleft",
"flagtriangleright",
"flame",
"flashlight",
"flashlightoff",
"flaskconical",
"flaskround",
"fliphorizontal",
"fliphorizontal2",
"flipvertical",
"flipvertical2",
"flower",
"flower2",
"focus",
"folder",
"folders",
"forminput",
"forward",
"frame",
"framer",
"frown",
"fuel",
"functionsquare",
"gamepad",
"gamepad2",
"gauge",
"gavel",
"gem",
"ghost",
"gift",
"giftcard",
"gitbranch",
"gitbranchplus",
"gitcommit",
"gitcompare",
"gitfork",
"gitmerge",
"gitpullrequest",
"gitpullrequestclosed",
"gitpullrequestdraft",
"glass",
"glass2",
"glasswater",
"glasses",
"globe",
"globe2",
"grab",
"graduationcap",
"grape",
"grid",
"griphorizontal",
"gripvertical",
"hammer",
"hand",
"handmetal",
"harddrive",
"hardhat",
"hash",
"haze",
"headphones",
"heart",
"heartcrack",
"hearthandshake",
"heartoff",
"heartpulse",
"helpcircle",
"hexagon",
"highlighter",
"history",
"home",
"hourglass",
"x",
"xcircle",
"xoctagon",
"xsquare",
"zoomin",
"zoomout",
"chrome",
"circle",
"circledot",
"circleellipsis",
"circleslashed",
"citrus",
"clapperboard",
"clipboard",
"clipboardcheck",
"clipboardcopy",
"clipboardedit",
"clipboardlist",
"clipboardsignature",
"clipboardtype",
"clipboardx",
"clock",
"clock1",
"clock10",
"clock11",
"clock12",
"clock2",
"clock3",
"clock4",
"clock5",
"clock6",
"clock7",
"clock8",
"clock9",
"cloud",
"cloudcog",
"clouddrizzle",
"cloudfog",
"cloudhail",
"cloudlightning",
"cloudmoon",
"cloudmoonrain",
"cloudoff",
"cloudrain",
"cloudrainwind",
"cloudsnow",
"cloudsun",
"cloudsunrain",
"cloudy",
"clover",
"code",
"code2",
"codepen",
"codesandbox",
"coffee",
"cog",
"coins",
"columns",
"command",
"compass",
"component",
"conciergebell",
"connection",
"contact",
"contrast",
"cookie",
"copy",
"copyleft",
"copyright",
"cornerdownleft",
"cornerdownright",
"cornerleftdown",
"cornerleftup",
"cornerrightdown",
"cornerrightup",
"cornerupleft",
"cornerupright",
"cpu",
"croissant",
"crop",
"cross",
"crosshair",
"crown",
"cupsoda",
"curlybraces",
"currency",
"database",
"delete",
"diamond",
"dice1",
"dice2",
"dice3",
"dice4",
"dice5",
"dice6",
"dices",
"diff",
"disc",
"divide",
"dividecircle",
"dividesquare",
"dollarsign",
"download",
"downloadcloud",
"droplet",
"droplets",
"drumstick",
"edit",
"edit2",
"edit3",
"egg",
"eggfried",
"electricity",
"electricityoff",
"equal",
"equalnot",
"eraser",
"euro",
"expand",
"externallink",
"eye",
"eyeoff",
"factory",
"fan",
"fastforward",
"feather",
"figma",
"file",
"filearchive",
"fileaudio",
"fileaudio2",
"fileaxis3d",
"filebadge",
"filebadge2",
"filebarchart",
"filebarchart2",
"filebox",
"filecheck",
"filecheck2",
"fileclock",
"filecode",
"filecog",
"filecog2",
"filediff",
"filedigit",
"filedown",
"fileedit",
"fileheart",
"fileimage",
"fileinput",
"filejson",
"filejson2",
"filekey",
"filekey2",
"filelinechart",
"filelock",
"filelock2",
"fileminus",
"fileminus2",
"fileoutput",
"filepiechart",
"fileplus",
"fileplus2",
"filequestion"
}
math.randomseed(os.time())  -- Inicializa o gerador de nmeros aleatórios com base no tempo

-- Função para obter um item aleatório
local function getRandomItem()
    if #items == 0 then
        return nil -- Retorna nil se a tabela estiver vazia
    end
    local indice = math.random(1, #items) -- Escolhe um índice aleatório
    return items[indice] -- Retorna o item correspondente
end

-- Exemplo de uso
local Icon = getRandomItem()

]]--

local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeoneKing7x/Library/refs/heads/main/LibraryV4"))()
--local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SomeoneKing7x/Library/refs/heads/main/Keyless"))()
local Window = redzlib:MakeWindow({
  Title = "Someone hub | Blox Fruits",
  SubTitle = " by Someone ",
  SaveFolder = "Someonehub.JSON"
})
Window:AddMinimizeButton({
  Button = { Image = "rbxassetid://127950462202673", BackgroundTransparency = 1000},
  Corner = { CornerRadius = UDim.new(0, 5) }
})
Notice = Window:MakeTab({Title = "Notice",Icon = "hub"})

Infor = Window:MakeTab({ Title = "Info", Icon = "hub"})

Farm = Window:MakeTab({ Title = "Main", Icon = "hub"})

Quest = Window:MakeTab({Title = "Quest & Items", Icon = "hub"})

Island = Window:MakeTab({Title = "Island", Icon = "hub"})

SeaEvent = Window:MakeTab({Title = "Sea Events", Icon = "hub"})

Fruits = Window:MakeTab({Title = "Fruits & Raid", Icon = "hub"})

Teleport = Window:MakeTab({Title = "Teleport", Icon = "hub"})

Race = Window:MakeTab({Title = "Race", Icon = "hub"})

Player = Window:MakeTab({Title = "Player", Icon = "hub"})

Stats = Window:MakeTab({Title= "Stats", Icon = "hub"})

Item = Window:MakeTab({Title= " Viewer Items", Icon = "hub"})

Shop = Window:MakeTab({Title = "Shop", Icon = "hub"})

Visual = Window:MakeTab({Title = "Visual", Icon = "hub"})

Settings = Window:MakeTab({ Title = "Settings", Icon = "hub" })

Kaitun = Window:MakeTab({Title = "Kaitun", Icon = "hub"})
--Teste = Window:MakeTab({Title = "testando", Icon = "hub"})
--//NOTICE
if game:IsLoaded() then
redzlib:AddNotify("Loading...", 15, 127950462202673 ) -- -----Substitua pelo seu asset ID
end
--[[Notice:AddButton({
    Title = "Criar Imagem",
    Callback = function(value)
        -- Criar a tela e a imagem
        local ScreenGui = Instance.new("ScreenGui")
        ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

        -- Criar a ImageLabel
        local imagem = Instance.new("ImageLabel")
        imagem.Size = UDim2.new(0, 400, 0, 400)  -- Imagem maior
        imagem.Position = UDim2.new(0.5, -200, 0.5, -200)  -- Centralizar na tela
        imagem.Image = "https://www.roblox.com/asset/?id=9709143733"  -- Substitua pelo ID da sua imagem
        imagem.Parent = ScreenGui

        -- Criar o botão de fechar (X)
        local closeButton = Instance.new("TextButton")
        closeButton.Size = UDim2.new(0, 50, 0, 50)
        closeButton.Position = UDim2.new(0.5, 150, 0.5, -200)  -- Posição do botão X
        closeButton.Text = "X"
        closeButton.TextColor3 = Color3.fromRGB(255, 0, 0)  -- Cor vermelha para o X
        closeButton.Font = Enum.Font.SourceSansBold
        closeButton.TextSize = 30
        closeButton.BackgroundTransparency = 1
        closeButton.Parent = ScreenGui

        -- Função para remover a imagem e o botão X
        closeButton.MouseButton1Click:Connect(function()
            imagem:Destroy()
            closeButton:Destroy()
        end)
    end
})
function CheckMoon()
            moon8 = "http://www.roblox.com/asset/?id=9709150401"
            moon7 = "http://www.roblox.com/asset/?id=9709150086"
            moon6 = "http://www.roblox.com/asset/?id=9709149680"
            moon5 = "http://www.roblox.com/asset/?id=9709149431"
            moon4 = "http://www.roblox.com/asset/?id=9709149052"
            moon3 = "http://www.roblox.com/asset/?id=9709143733"
            moon2 = "http://www.roblox.com/asset/?id=9709139597"
            moon1 = "http://www.roblox.com/asset/?id=9709135895"]]--





Notice:AddSection("Made With Anger 😡😡")
Notice:AddSection("Discord")
Notice:AddDiscordInvite({
	Name = "Join Someone Community",
	Description = "Join for more information",
	Logo = "rbxassetid://127950462202673",
	Invite = "someone?"
})


--//INFOR
Infor:AddSection("Player Info")
if Sea1 then
local prgFirstSea = Infor:AddParagraph({
	Title = "In First Sea"
	})
 end
 if Sea2 then
 local prgSecondSea = Infor:AddParagraph({
 	Title = "In Second Sea"
 })
 end
 if Sea3 then
 local prgThirdSea = Infor: AddParagraph ({
 	Title="In Third Sea"
 })
 end
local prgNome = Infor:AddParagraph({
	Title = "Display Name / Permanent Name"
	})
	local prgLevel = Infor:AddParagraph({
	Title = "Level"
	})local prgRaca = Infor:AddParagraph({
	Title = "Race"
	})
	local prgAcientOne = Infor:AddParagraph({
	Title = "Acient One Status"
	})
	local prgMiragemPuzzle = Infor:AddParagraph({
	Title = "Mirage Puzzle"
	})
	local prgMoon = Infor:AddParagraph({
		Title = "Check Moon Status"
    })
    --[[local function checkLua()
    local lighting = game:GetService("Lighting")
    -- Mapeamento das texturas da Lua
    local moonTextures = {
        ["http://www.roblox.com/asset/?id=9709149431"] = "http://www.roblox.com/asset/?id=9709149431",
        ["http://www.roblox.com/asset/?id=9709149052"] = "http://www.roblox.com/asset/?id=9709149052",
        ["http://www.roblox.com/asset/?id=9709143733"] = "http://www.roblox.com/asset/?id=9709143733",
        ["http://www.roblox.com/asset/?id=9709150401"] = "http://www.roblox.com/asset/?id=9709150401",
        ["http://www.roblox.com/asset/?id=9709149680"] = "http://www.roblox.com/asset/?id=9709149680"
    }

    local player = game.Players.LocalPlayer
    local playerGui = player:FindFirstChild("PlayerGui")
    
    -- Criando GUI apenas uma vez
    local screenGui = playerGui:FindFirstChild("MoonStatusGui")
    if not screenGui then
        screenGui = Instance.new("ScreenGui")
        screenGui.Name = "MoonStatusGui"
        screenGui.Parent = playerGui
        screenGui.Enabled = false -- Começa invisível

        local imageLabel = Instance.new("ImageLabel")
        imageLabel.Parent = screenGui
        imageLabel.Size = UDim2.new(0, 300, 0, 300) -- Tamanho da imagem
        imageLabel.Position = UDim2.new(0.5, -150, 0.5, -150) -- Centraliza na tela
        imageLabel.BackgroundTransparency = 1

        -- Criando o botão de fechar (X)
        local closeButton = Instance.new("TextButton")
        closeButton.Parent = imageLabel
        closeButton.Size = UDim2.new(0, 30, 0, 30)
        closeButton.Position = UDim2.new(1, -35, 0, -35) -- Posição no canto superior direito
        closeButton.Text = "X"
        closeButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        closeButton.Font = Enum.Font.SourceSansBold
        closeButton.TextSize = 24

        -- Função para atualizar a textura da Lua
        local function updateMoonTexture()
            local moonId = lighting:FindFirstChild("Sky") and lighting.Sky.MoonTextureId
            if moonId and moonTextures[moonId] then
                imageLabel.Image = moonTextures[moonId]
            else
                imageLabel.Image = "" -- Se não houver correspondência, deixa vazio
            end
        end

        -- Função para esconder a imagem e o botão de fechar
        local function hideImage()
            screenGui.Enabled = false
        end

        -- Conectar a função de fechar ao botão
        closeButton.MouseButton1Click:Connect(hideImage)

        -- Criando o botão fixo apenas uma vez
        if not _G.viewMoonButton then
            if Infor and Infor.AddButton then
                Infor:AddButton({
                    Title = "View Moon Status",
                    Callback = function()
                        updateMoonTexture() -- Atualiza a imagem antes de exibir
                        screenGui.Enabled = not screenGui.Enabled
                    end
                })
                _G.viewMoonButton = true -- Marcar que o botão foi criado
            else
                warn("Infor:AddButton não está definido!")
            end
        end
    end
end


checkLua()]]--
	local prgBeli = Infor:AddParagraph({
	Title = "Beli"
	})
	local prgFrag = Infor:AddParagraph({
	Title = "Fragments"
	})
	local prgVida = Infor:AddParagraph({
	Title = "Life"
	})
    local prgEnergia = Infor:AddParagraph({
	Title = "Energy"
	})
	local prgBH = Infor:AddParagraph({
	Title = "Bounty / Honor"
	})
	local prgBone = Infor:AddParagraph({
		Title = "Bones"
		})
	local prgHeart = Infor:AddParagraph({
		Title = "Heart [ Valentine Day ]"
		})
		local prgCandy = Infor:AddParagraph({
			Title = "Candy"
			})
	local prgFruta = Infor:AddParagraph({
	Title = "Fruit Equipped"
	})
	local function formatarNumero(numero)
    return string.reverse(string.gsub(string.reverse(tostring(numero)), "(%d%d%d)", "%1."))
        :gsub("^%.", "")  -- Remove o ponto inicial, se houver
end
	local function atualizarInformacoes()
	
    while wait(0.000001) do
        -- Atualiza o nome
        prgNome:SetDesc(game.Players.LocalPlayer.DisplayName .. " (@" .. game.Players.LocalPlayer.Name .. ")")
        
        -- Atualiza o nível
        prgLevel:SetDesc(formatarNumero(game.Players.LocalPlayer.Data.Level.Value))
task.spawn(function()
    while task.wait(2) do  -- Espera de 2 segundos
        pcall(function()
            if game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149431" then
                prgMoon:SetDesc("🌕")
            elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
                prgMoon:SetDesc("🌖")
            elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
                prgMoon:SetDesc("🌗")
            elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709150401" then
                prgMoon:SetDesc("🌘")
            elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149680" then
                prgMoon:SetDesc("🌑")
            elseif    game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=http://www.roblox.com/asset/?id=9709150401" then
                prgMoon:SetDesc("🌒")
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709149052" then
                prgMoon:SetDesc("🌔")
                elseif game:GetService("Lighting").Sky.MoonTextureId == "http://www.roblox.com/asset/?id=9709143733" then
                prgMoon:SetDesc("🌓")
            end
        end)
    end
end)

        -- Atualiza o dinheiro (Beli)
        prgBeli:SetDesc("$"..formatarNumero(game.Players.LocalPlayer.Data.Beli.Value))
        
        -- Atualiza os fragmentos
        prgFrag:SetDesc("F "..formatarNumero(game.Players.LocalPlayer.Data.Fragments.Value))
        
        -- Atualiza a recompensa (Bounty/Honor)
        prgBH:SetDesc(formatarNumero(game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value))
        
        -- Atualiza a saúde
        prgVida:SetDesc(formatarNumero(game.Players.LocalPlayer.Character.Humanoid.Health .. "/" .. game.Players.LocalPlayer.Character.Humanoid.MaxHealth))
        
        -- Atualiza a energia
        prgEnergia:SetDesc(formatarNumero(game.Players.LocalPlayer.Character.Energy.Value .. "/" .. game.Players.LocalPlayer.Character.Energy.MaxValue))
        
        -- Atualiza a raça
        prgRaca:SetDesc(tostring(CheckRace()))
        prgAcientOne:SetDesc(tostring(CheckAcientOneStatus()))
        prgMiragemPuzzle:SetDesc(tostring(CheckMiragemPuzzle()))
        
        --atualizar miragem
        prgBone:SetDesc("Total Bone : "..(formatarNumero(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Check"))))
        local HeartCount = CheckMaterial("Hearts")
if HeartCount > 0 then
    prgHeart:SetDesc("Total Heart : " .. (formatarNumero(HeartCount )).. " Hearts")
else
    prgHeart:SetDesc("You Have No Hearts")
end

local CandyCount = CheckMaterial("Candy")
if CandyCount > 0 then
    prgCandy:SetDesc("Total Candy : " .. (formatarNumero(CandyCount )).. " Candys")
else
    prgCandy:SetDesc("You Have No Candy")
end
        -- Atualiza a fruta
        prgFruta:SetDesc(game.Players.LocalPlayer.Data.DevilFruit.Value)
        end
end
-- Chama a função para começar a atualização
task.spawn(atualizarInformacoes)

Infor:AddSection("Hours")
local prgday= Infor:AddParagraph({
    Title = "Date / Time",
    Content = ""
})
local function v101()
    local v285 = os.date("*t")
    local v286 = v285.hour % 24 
    local v287 = ((v286 < 12) and "AM") or "PM" 
    local v288 = string.format("%02i:%02i:%02i %s", ((v286 - 1) % 12) + 1, v285.min, v285.sec, v287)
    local v289 = string.format("%02d/%02d/%04d", v285.day, v285.month, v285.year)
    local v290 = game:GetService("LocalizationService")
    local v291 = game:GetService("Players")
    local v292 = v291.LocalPlayer
    local v293 = v292.Name
    local v294 = "Unknown"
    local v295, v296 = pcall(function()
        return v290:GetCountryRegionForPlayerAsync(v292)
    end)
    if v295 then
        v294 = v296
    end
    prgday:SetDesc(v289 .. "-" .. v288 .. " [ " .. v294 .. " ]")
end
spawn(function()
    while true do
        v101()
        game:GetService("RunService").RenderStepped:Wait()
    end
end)
Infor:AddSection("Server Info")
local prghora = Infor:AddParagraph({
    Title = "Life Time",
    Content = ""
})
 local function v103()
    local v297 = math.floor(workspace.DistributedGameTime + 0.5)
    local v298 = math.floor(v297 / (60 ^ 2)) % 24 
    local v299 = math.floor(v297 / 60) % 60 
    local v300 = v297 % 60 
    prghora:SetDesc(string.format("Hours : "..v298.." Minutes : "..v299.." Seconds : "..v300.."\nPlayer In Server: "..tostring(PlayersCount()).." / "..game.Players.MaxPlayers))
end
spawn(function()
    while task.wait(0.000000001) do
        pcall(v103)
    end
end)
--local frutas = {}  -- Tabela para armazenar as descrições das frutas
--[[local prgFruitSpawn = Infor:AddParagraph({
        Title = "Fruit Spawned",
       
        })
        while true do
for i, v in pairs(game.Workspace:GetChildren()) do
    if string.find(v.Name, "Fruit") then
 prgFruitSpawn:SetDesc(v.Name)
 else
 prgFruitSpawn:SetDesc("❌")
end
end
end

local prgBerrySpawn = Infor:AddParagraph({
        Title = "Berry Spawned",
        Description = "Waiting..."
        })
        while wait(0.001) do
for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
    if string.find(v.Name, "Berries") then
 prgBerrySpawn:SetDesc("Berry Spawned : "..v.Name)
 else
 prgBerrySpawn:SetDesc("❌")
end
end
end]]--
if Sea2 or Sea3 then
local prghki = Infor:AddParagraph({
Title = "Aura Skin | Barista Cousin"
})
--[[local KuyKoben = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1")
spawn(function()
    pcall(function()
        while wait(0.000001) do
            if game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer("ColorsDealer", "1") then]]--
            haki1 = CheckHakiColor()
                prghki:SetDesc("Recipe Color: " .. tostring(haki1) )
          --  else
         --       prghki:SetDesc("Not Found Barista ")
                end
                if Sea2 or Sea3 then
        Infor:AddButton({
Title = "Coletar Recipe Color",
Callback = function(value)
    _G.AutoBuyEnchancementColour = value
end})

spawn(function()
    while wait(0.0000001) do
        if _G.AutoBuyEnchancementColour then
            local args = {
                [1] = "ColorsDealer",
                [2] = "2"
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            
        end 
    end
end)  
end

if Sea2 then
local prgLS = Infor:AddParagraph({
Title = "Legendary Sword for Sale"
})
spawn(function()
    pcall(function()
        while wait(0.01) do
            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer", "1") then
                LegendSwords:Set("Sword Spawn : Shizu [ Shisui ]")
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2") then
                prgLS:SetDesc("Sword Spawn : Oroshi [ Wando ]")
            elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3") then
                prgLS:SetDesc("Sword Spawn : Saishi [ Saddi ]")
            else
                prgLS:SetDesc("Not Found Lengedary Sword")
            end
        end
    end)
end)

Infor:AddButton({
Title = "Buy Lengedary Sword",
Content = "" ,
Callback = function(value)
    _G.AutoBuyLegendarySword = value
end})
spawn(function()
    while wait(0.01) do
        if _G.AutoBuyLegendarySword then
            pcall(function()
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "1"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "3"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end 
    end
    end)
    end
if Sea3 then
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
                    prgspy:SetDesc("I Don't Know")
               
                    
                end
            end
        end)
    end)
    end
    if Sea3 then
    Infor:AddButton({
Title = "Bribe Spy",
Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "2")
    end
    })
    end
    --leviatã
    if Sea3 then
    local prgFD = Infor: AddParagraph({Title='Frozen Dimension Status'})
task.spawn(function()
    local Map = workspace:WaitForChild("Map", 9e9)
    task.spawn(function()
      while task.wait() do
         if Map:FindFirstChild("FrozenDimension") then
           local plrPP = Player.Character and Player.Character.PrimaryPart
           if plrPP then
         local Distance = tostring(math.floor((plrPP.Position -
Map.FrozenDimension.WorldPivot.p).Magnitude / 3))
           end
         end
      end
    end)
        while task.wait(0.001) do
      if Map:FindFirstChild("KitsuneIsland") then
        prgFD:SetDesc("Frozen Dimension : Spawned | Distance : " .. Distance)
      else
        prgFD:SetDesc("Frozen Dimension : not Spawn")
      end
   end
   end)
  --kitsune
  if Sea3 then
  local prgKI = Infor:AddParagraph({
  	Title = "Kitsune Island Status"
  })
task.spawn(function()
    local Map = workspace:WaitForChild("Map", 9e9)
    task.spawn(function()
      while task.wait() do
         if Map:FindFirstChild("KitsuneIsland") then
           local plrPP = Player.Character and Player.Character.PrimaryPart
           if plrPP then
         local Distance = tostring(math.floor((plrPP.Position -
Map.KitsuneIsland.WorldPivot.p).Magnitude / 3))
           end
         end
      end
    end)
        while task.wait(0.001) do
      if Map:FindFirstChild("KitsuneIsland") then
        prgKI:SetDesc("Kitsune Island : Spawned | Distance : " .. Distance)
      else
        prgKI:SetDesc("Kitsune Island : not Spawn")
      end
   end
   end)
   end
   end
   if Sea3 then
   local prgPI = Infor: AddParagraph ({
   	Title = "Prehistoric Island Status"})
task.spawn(function()
    local Map = workspace:WaitForChild("Map", 9e9)
    task.spawn(function()
      while task.wait() do
         if Map:FindFirstChild("PrehistoricIsland") then
           local plrPP = Player.Character and Player.Character.PrimaryPart
           if plrPP then
         local Distance = tostring(math.floor((plrPP.Position -
Map.PrehistoricIsland.WorldPivot.p).Magnitude / 3))
           end
         end
      end
    end)
        while task.wait(0.001) do
      if Map:FindFirstChild("PrehistoricIsland") then
        prgPI:SetDesc("Prehistoric Island : Spawned | Distance : " .. Distance)
      else
        prgPI:SetDesc("Prehistoric Island : not Spawn")
      end
   end
   end)
   end
   if Sea3 then
   local prgMI = Infor: AddParagraph ({
   	Title = "Mirage Island Status"
})
task.spawn(function()
    local Map = workspace:WaitForChild("Map", 9e9)
    task.spawn(function()
      while task.wait() do
         if Map:FindFirstChild("MysticIsland") then
           local plrPP = Player.Character and Player.Character.PrimaryPart
           if plrPP then
         local Distance = tostring(math.floor((plrPP.Position -
Map.MysticIsland.WorldPivot.p).Magnitude / 3))
           end
         end
  --    end
    
        while task.wait(0.001) do
      if Map:FindFirstChild("MysticIsland") then
        prgMI:SetDesc("Mirage Island : Spawned | Distance : " .. Distance)
      else
        prgMI:SetDesc("Mirage Island : not Spawn")
      end
   end
   end
   end)
   end)
   end
if Sea3 then
local prgelite = Infor:AddParagraph({
Title = "Elite Boss Status",
Description = ""
})

	spawn(function()
    while wait(0.0000001) do
        spawn(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") then
                prgelite:SetDesc("Elite Spawned : Diablo | Killed: " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))

            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") then 
                prgelite:SetDesc("Elite Spawned : Deandre | Killed: " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))

            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                prgelite:SetDesc("Elite Spawned : Urban | Killed: " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))	

            else
                prgelite:SetDesc("waiting...| Killed: " .. (formatarNumero(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"))))	
            end
        end)
    end
end)
end
if Sea3 then
	local prgrip = Infor:AddParagraph({
Title = "RIP_INDRA True Form",
Description = ""
})
spawn(function()
        while wait(0.001) do
            pcall(function()
if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") then
prgrip:SetDesc("Rip_Indra True Form Spawned")
else
prgrip:SetDesc("Not Spawn")
end
end)
end
end)
end
if Sea3 then
local MobKilled = Infor:AddParagraph({
        Title = "Cake Boss Status",
        Description = ""
    })
    
    
    spawn(function()
        while wait(0.00001) do
            pcall(function()
                if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
                    MobKilled:SetDesc("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
                    MobKilled:SetDesc("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40))
                elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
                    MobKilled:SetDesc("Defeat : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39))
                else
                    MobKilled:SetDesc("Boss Is Spawning")
                end
            end)
        end
    end)
end







--//FARM

Farm:AddSection("Farm")


Farm:AddToggle({
Title = "Auto Gift",
Default = false,
Callback = function(Value)
  getgenv().AutoGift = Value
  task.spawn(function()
    local function GetGift()
      for _,part in pairs(workspace["_WorldOrigin"]:GetChildren()) do
        if part.Name == "Present" then
          if part:FindFirstChild("Box") and
part.Box:FindFirstChild("ProximityPrompt") then
            return part, part.Box.ProximityPrompt
          end
        end
      end
    end

    while getgenv().AutoGift do task.wait()
      local Gift, Prompt = GetGift()

      if Gift and Gift.PrimaryPart then
        Tween2(Gift.PrimaryPart.CFrame)
        if Prompt then
          fireproximityprompt(Prompt)
        end
      elseif getgenv().TimeToGift < 90 then
        if Sea3 then
          Tween2(CFrame.new(-1076, 14, -14437))
        elseif Sea2 then
          Tween(CFrame.new(-5219, 15, 1532))
        elseif Sea1 then
          Tween2(CFrame.new(1007, 15, -3805))
        end
       end
    end
  end)
end})





--//QUEST





--ILHA
Island:AddSection("Leviathan")

Island:AddSection("Kitsune Island")


Island:AddSection("Prehistoric Island")
local prgPI = Island: AddParagraph ({
   	Title = "Prehistoric Island Status"})
task.spawn(function()
    local Map = workspace:WaitForChild("Map", 9e9)
    task.spawn(function()
      while task.wait() do
         if Map:FindFirstChild("PrehistoricIsland") then
           local plrPP = Player.Character and Player.Character.PrimaryPart
           if plrPP then
         local Distance = tostring(math.floor((plrPP.Position -
Map.PrehistoricIsland.WorldPivot.p).Magnitude / 3))
           end
         end
      end
    end)
        while task.wait(0.001) do
      if Map:FindFirstChild("PrehistoricIsland") then
        prgPI:SetDesc("Prehistoric Island : Spawned | Distance : " .. Distance)
      else
        prgPI:SetDesc("Prehistoric Island : not Spawn")
      end
   end
   end)
Island:AddButton({
    Title = "Destroy Lava",
    Callback = function()
        -- Lista de locais onde vamos procurar lava
        local searchAreas = {
            game.Workspace.Map.PrehistoricIsland.Core, 
            game.Workspace.Map, 
            game.Workspace, 
            game.ReplicatedStorage
        }

        -- Verificar cada área da lista
        for _, area in pairs(searchAreas) do
            if area then
                for _, obj in pairs(area:GetDescendants()) do
                    -- Se for um Model, Part ou MeshPart e contiver "lava" no nome, remove
                    if (obj:IsA("Model") or obj:IsA("Part") or obj:IsA("MeshPart")) and obj.Name:lower():find("lava") then
                        obj:Destroy()
                    end
                end
            end
        end
    end
})
Island:AddToggle({
    Title = "Travel to Prehistoric Island",
    Description = "",
    Default = false,
    Callback = function(v399)
    _G.TweenToPrehistoric = v399
end})
spawn(function()
    local Prehistoric;
    while not Prehistoric do
        Prehistoric = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
        wait();
    end
    while wait() do
        if _G.TweenToPrehistoric then
            local spawn = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
            if spawn then
                local Relic = spawn:FindFirstChild("Core") and spawn.Core:FindFirstChild("PrehistoricRelic") ;
                local Skull = Relic and Relic:FindFirstChild("Skull") ;
                if Skull then
                    Tween2(CFrame.new(Skull.Position));
                    _G.TweenToPrehistoric = false;
                end
            end
        end
    end
end);
Island:AddSection("Draco Trial")
Island:AddToggle({
    Title = "Travel To Draco Door",
    Description = "You Will Travel At Infinite Velocidade!",
    Default = false,
    Callback = function(v398)
    _G.AutoTrialTeleport = v398;
end});
spawn(function()
    while wait(0.0000000001) do
    Velocidade = 9999999999999999999999
        if _G.AutoTrialTeleport then
            local Door = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
            if (Door and Door:IsA("Part")) then
                Tween2(CFrame.new(Door.Position));
            end
        end
    end
end);







Island:AddSection("Mirage")
local prgMI = Island: AddParagraph ({
   	Title = "Mirage Island Status"
})
task.spawn(function()
    local Map = workspace:WaitForChild("Map", 9e9)
    task.spawn(function()
      while task.wait() do
         if Map:FindFirstChild("MysticIsland") then
           local plrPP = Player.Character and Player.Character.PrimaryPart
           if plrPP then
         local Distance = tostring(math.floor((plrPP.Position -
Map.MysticIsland.WorldPivot.p).Magnitude / 3))
           end
         end
  --    end
    
        while task.wait(0.001) do
      if Map:FindFirstChild("MysticIsland") then
        prgMI:SetDesc("Mirage Island : Spawned | Distance : " .. Distance)
      else
        prgMI:SetDesc("Mirage Island : not Spawn")
      end
   end
   end
   end)
   end)
   

local toggle = Island:AddToggle({
Title = "Auto Teleport To Mirage Island",
--Description = "Travel to Mirage Island",
Default = false,
Callback =  function(value)
    _G.AutoMysticIsland = value
    --StopTween(_G.AutoMysticIsland)
end})
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoMysticIsland then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    Tween2(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                    else
                    Tween2(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                end
            end
        end
    end)
end)
Island:AddButton({
        Title = "Travel To Highest Point",
        Description = "",
        Callback = function()
            TweenToHighestPoint();
        end
    });
    function TweenToHighestPoint()
        local topo = getHighestPoint();
        if topo then
            Tween2(topo.CFrame * CFrame.new(0, 211.88, 0));
        end
    end
    function getHighestPoint()
        if not game.Workspace.Map:FindFirstChild("MysticIsland") then
            return nil;
        end
        for _, top in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
            if top:IsA("MeshPart") then
                if (top.MeshId == "rbxassetid://6745037796") then
                    return top;
                end
            end
        --end
    end
end
Island:AddToggle({
    Title = "Spawn Blue Gear",
    Description = "",
    Default = false,
    Callback = function(v259)
    _G.AutoLockMoon = v259;
end})
spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.AutoLockMoon then
                local direcao = game.Lighting:GetMoonDirection();
                local cmr = game.Workspace.CurrentCamera.CFrame.p + (direcao * 10000) ;
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, cmr);
            end
        end);
    end
end);
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility");
            end
        end);
    end
end);
Island:AddToggle({
    Title = "Travel to Blue Gear",
    Description = "",
    Default = false,
    Callback = function(v258)
    _G.TweenToGear = v258;
end})
spawn(function()
    pcall(function()
        while wait(0.001) do
            if _G.TweenToGear then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    for _, gear in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                        if gear:IsA("MeshPart") then
                            if (gear.Material == Enum.Material.Neon) then
                                Tween2(gear.CFrame);
                            end
                        end
                    end
                end
            end
        end
    end);
end);
Island:AddToggle({
    Title = "Travel To Advanced Fruit Dealer",
    Description = "",
    Default = false,
    Callback = function(v257)
    _G.AutoTpAdvanced = v257;
end});
spawn(function()
    while wait(0.001) do
        if _G.AutoTpAdvanced then
            local AFD = game.ReplicatedStorage.NPCs:FindFirstChild("Advanced Fruit Dealer");
            if (AFD and AFD:IsA("Model")) then
                local AFDlocal = AFD.PrimaryPart and AFD.PrimaryPart.Position ;
                if AFDlocal then
                    Tween2(CFrame.new(AFDlocal));
                end
            end
        end
    end
end);




--//SEA EVENT


SeaEvent:AddSection("Teleport")
SeaEvent:AddButton({Title = "Teleport To Shark Hunter",Callback = function()

--    getgenv().NPCtween = Value
--    task.spawn(function()
      --while getgenv().NPCtween do task.wait()
         Tween2(CFrame.new(-16526, 108, 752))
      --end
   -- end)
  end})
  SeaEvent:AddButton({Title = "Teleport To Beast Hunter",Callback = function()
  --  getgenv().NPCtween = Value
   -- task.spawn(function()
    --  while getgenv().NPCtween do task.wait()
          Tween2(CFrame.new(-16281, 73, 263))
     --  end
   --  end)
  end})
  SeaEvent:AddButton({Title = "Teleport To Spy",Callback = function()
     --getgenv().NPCtween = Value
     --task.spawn(function()
     --  while getgenv().NPCtween do task.wait()
          Tween2(CFrame.new(-16471, 528, 539))
      -- end
    -- end)
  end})





--//FRUIT
Fruits:AddSection("Fruits")
Fruits:AddButton({
Title = "Random Fruit",
Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
    end})
    
local toggle = Fruits:AddToggle({
Title = "Auto Random Fruit",
--Default  = _G.Random_Auto,
Callback = function(value)
        _G.Random_Auto = value
    end})
    
    spawn(function()
        pcall(function()
            while wait(0.00000000001) do
                if _G.Random_Auto then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                end 
            end
        end)
    end)
local toggle = Fruits:AddToggle({ "Collect Fruits on the Map",--Defautl  = _G.Grabfruit,
Callback = function(value)
 _G.Grabfruit = value
end})

spawn(function()
			while wait(0.0000000000000000001) do
				if _G.Grabfruit then
					for i,v in pairs(game.Workspace:GetChildren()) do
						if string.find(v.Name, "Fruit") then
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
						end
					end
				end
end
end)
local toggle = Fruits:AddToggle({"Bring All Fruits ",
--Default = _G.BringFruitBF,
Callback = function(value)
        _G.BringFruitBF = value
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
 --   Default = _G.AutoStoreSsFruit,
    Callback = function(value)
        _G.AutoStoreSsFruit = value
    end
})

spawn(function()
    while true do
        wait(0.00000001) -- Evita sobrecarga no loop

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
                storeFruit(character)
            end)
        end
    end
end)


    --[[
    FruitList = {
        "Bomb-Bomb",
        "Spike-Spike",
        "Chop-Chop",
        "Spring-Spring",
        "Kilo-Kilo",
        "Spin-Spin",
        "Bird: Falcon",
        "Smoke-Smoke",
        "Flame-Flame",
        "Ice-Ice",
        "Sand-Sand",
        "Dark-Dark",
        "Revive-Revive",
        "Diamond-Diamond",
        "Light-Light",
        "Love-Love",
        "Rubber-Rubber",
        "Barrier-Barrier",
        "Magma-Magma",
        "Door-Door",
        "Quake-Quake",
        "Human-Human: Buddha",
        "String-String",
        "Bird-Bird: Phoenix",
        "Rumble-Rumble",
        "Paw-Paw",
        "Gravity-Gravity",
        "Dough-Dough",
        "Venom-Venom",
        "Shadow-Shadow",
        "Control-Control",
        "Soul-Soul",
        "Dragon-Dragon",
        "Leopard-Leopard"
    }
    
    local Remote_GetFruits = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
	Table_DevilFruitSniper = {}
	ShopDevilSell = {}
	for i,v in next,Remote_GetFruits do
		table.insert(Table_DevilFruitSniper,v.Name)
		if v.OnSale then 
			table.insert(ShopDevilSell,v.Name)
		end
	end
	
    _G.SelectFruit = ""
    local dropdown = Fruits:AddDropdown({
Title = "Select Fruits Sniper",
Options = Table_DevilFruitSniper,
Default = nil,
Multi = true,
Callback = function(value)
        _G.SelectFruit = value
    end})
    
    local toggle = Fruits:AddToggle({
Title = "Auto Buy Fruit Sniper",
Default = false,
Callback = function(value)
        _G.AutoBuyFruitSniper = value
    end})
    
local dropdown   Fruits:AddDropdown({
Title = "Select Fruits Eat",
Options = Table_DevilFruitSniper,
Multi = true,
Default = nil,
Callback = function(value)
        _G.SelectFruitEat = value
    end})
    
  local toggel =  Fruits:AddToggle({
Title = "Auto Eat Fruit",
Defautl = false,
Callback = function(value)
        _G.AutoEatFruit = value
    end})
    
    spawn(function()
        pcall(function()
            while wait(0.0001) do
                if _G.AutoEatFruit then
                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(_G.SelectFruitEat).EatRemote:InvokeServer()
                end
            end
        end)
    end)]]--




--//TELEPORT 
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



Teleport:AddSection("Teleport Island")

if Sea1 then
 IslandList = {
                "WindMill",
                "Marine",
                "Middle Town",
                "Jungle",
                "Pirate Village",
                "Desert",
                "Snow Island",
                "MarineFord",
                "Colosseum",
                "Sky Island 1",
                "Sky Island 2",
                "Sky Island 3",
                "Prison",
                "Magma Village",
                "Under Water Island",
                "Fountain City",
                "Shank Room",
                "Mob Island",
}

elseif Sea2 then
       IslandList = {
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island",
       }

elseif Sea3 then
    IslandList = {
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "MiniSky", 
        "Hydra Island",
        "Floating Turtle",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Cocoa Island",
        "Candy Island",
        "Tiki Outpost",
       }
    end

local DropdownIsland = Teleport:AddDropdown({
    Title = "Select Island",
    Description = "",
    Options = IslandList,
    Multi = false,
    Default = nil,
    Callback = function(Value)
    _G.SelectIsland = Value
    WriteSettings()
end})

Teleport:AddButton({
    Title = "Tween",
    Callback = function()
 --   for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
          --          if v:IsA("BasePart") then
                  --      v.CanCollide = false
            if _G.SelectIsland == "WindMill" then
                Tween2(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
            elseif _G.SelectIsland == "Marine" then
                Tween2(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
            elseif _G.SelectIsland == "Middle Town" then
                Tween2(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
            elseif _G.SelectIsland == "Jungle" then
                Tween2(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
            elseif _G.SelectIsland == "Pirate Village" then
                Tween2(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
            elseif _G.SelectIsland == "Desert" then
                Tween2(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
            elseif _G.SelectIsland == "Snow Island" then
                Tween2(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
            elseif _G.SelectIsland == "MarineFord" then
                Tween2(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
            elseif _G.SelectIsland == "Colosseum" then
                Tween2( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
            elseif _G.SelectIsland == "Sky Island 1" then
                Tween2(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
            elseif _G.SelectIsland == "Sky Island 2" then  
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
            elseif _G.SelectIsland == "Sky Island 3" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
            elseif _G.SelectIsland == "Prison" then
                Tween2( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
            elseif _G.SelectIsland == "Magma Village" then
                Tween2(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
            elseif _G.SelectIsland == "Under Water Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
            elseif _G.SelectIsland == "Fountain City" then
                Tween2(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
            elseif _G.SelectIsland == "Shank Room" then
                Tween2(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
            elseif _G.SelectIsland == "Mob Island" then
                Tween2(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
            elseif _G.SelectIsland == "The Cafe" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
                wait(0.5)
                Tween2(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
            elseif _G.SelectIsland == "Frist Spot" then
                Tween2(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
            elseif _G.SelectIsland == "Dark Area" then
                Tween2(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
            elseif _G.SelectIsland == "Flamingo Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-281.93707275390625, 306.130615234375, 609.280029296875))
            elseif _G.SelectIsland == "Flamingo Room" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625))
            elseif _G.SelectIsland == "Green Zone" then
                Tween2( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
            elseif _G.SelectIsland == "Factory" then
                Tween2(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
            elseif _G.SelectIsland == "Colossuim" then
                Tween2( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
            elseif _G.SelectIsland == "Zombie Island" then
                Tween2(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
            elseif _G.SelectIsland == "Two Snow Mountain" then
                Tween2(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
            elseif _G.SelectIsland == "Punk Hazard" then
                Tween2(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
            elseif _G.SelectIsland == "Cursed Ship" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.40197753906, 125.05712890625, 32885.875))
            elseif _G.SelectIsland == "Ice Castle" then
                Tween2(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
            elseif _G.SelectIsland == "Forgotten Island" then
                Tween2(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
            elseif _G.SelectIsland == "Ussop Island" then
                Tween2(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
            elseif _G.SelectIsland == "Mini Sky Island" then
                Tween2(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
            elseif _G.SelectIsland == "Great Tree" then
                Tween2(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
            elseif _G.SelectIsland == "Castle On The Sea" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5075.50927734375, 314.5155029296875, -3150.0224609375))
            elseif _G.SelectIsland == "MiniSky" then
                Tween2(CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125))
            elseif _G.SelectIsland == "Port Town" then
                Tween2(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
            elseif _G.SelectIsland == "Hydra Island" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5753.5478515625, 610.7880859375, -282.33172607421875))
            elseif _G.SelectIsland == "Floating Turtle" then
                Tween2(CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625))
            elseif _G.SelectIsland == "Mansion" then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12468.5380859375, 375.0094299316406, -7554.62548828125))
            elseif _G.SelectIsland == "Haunted Castle" then
                Tween2(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
            elseif _G.SelectIsland == "Ice Cream Island" then
                Tween2(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
            elseif _G.SelectIsland == "Peanut Island" then
                Tween2(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
            elseif _G.SelectIsland == "Cake Island" then
                Tween2(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
            elseif _G.SelectIsland == "Cocoa Island" then
                Tween2(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
            elseif _G.SelectIsland == "Candy Island" then
                Tween2(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
            elseif _G.SelectIsland == "Tiki Outpost" then
                Tween2(CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625))
            end
        end
    })

    Teleport:AddButton({
        Title = "Stop Tween",
        Callback = function()
           Tween2(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        end
    })




---//RACE






--//PLAYER
getgenv().WalkSpeedValue = 100
local textbox = Player:AddTextBox({
Title = "Velocidade Hack",
Description = "Default : 100 \n Recomended : 300",
Default = getgenv().WalkSpeedValue,
Callback = function(speedfunc)
    getgenv().WalkSpeedValue = speedfunc
    WriteSettings()
    end})
    task.spawn(function()
    while wait(0.001) do
    if getgenv().WalkSpeedValue then
        local Player = game:service'Players'.LocalPlayer
        Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
            Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
        end)
        Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue
        wait(0.000000000000000000000001)
    end
end
end)
JumpList = {
"Default",
200,
300,
400,
500,
600,
700
}
local dropdownjump = Player:AddDropdown({
Title = "Jump Hack",
Options = JumpList,
Multi = false,
Default = "Default",
 Callback = function(jumpfunc)
    getgenv().JumpValue = jumpfunc
    WriteSettings()
    end
    })
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = getgenv().JumpValue
    Player:AddButton({
    	Title = "Adjust Jump",
    Callback = function()
    if getgenv().JumpValue == "Default" then
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
    elseif getgenv().JumpValue == 200 then
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 200
    elseif getgenv().JumpValue == 300 then
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 300
    elseif getgenv().JumpValue == 400 then
   game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 400
    elseif getgenv().JumpValue == 500 then
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 500
    elseif getgenv().JumpValue == 600 then
    game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 600
    elseif getgenv().JumpValue == 700 then
   game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 700
    WriteSettings()
    end
    end})
    
local toggle = Player:AddToggle({
Title = "Infinite Jump",
Default = InfiniteJumpEnabled,
Callback = function(Value)
    InfiniteJumpEnabled = Value
    WriteSettings()
    end
    })
    
    if InfiniteJumpEnabled then
    while wait(0.000001) do
   game:GetService("UserInputService").JumpRequest:Connect(function()
           game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
        end)
    end
end

local toggle = Player:AddToggle({
Title = "No Clip",
Default =  getgenv().NoClip,
Callback =  function(clipf)
    getgenv().NoClip = clipf
    WriteSettings()
end})
task.spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if getgenv().NoClip then
                for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
local toggle = Player:AddToggle({
    Title = "No Stun", 
    Default = false, 
    Callback = function(value)
        NoStun = value
        end
        })
            -- Ativa o loop para monitorar e alterar o valor de Stun
            --while value do
              --  task.spawn(function()
              if NoStun then
    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
        game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
                    game.Players.LocalPlayer.Character.Stun.Value = 0;
                    end
                end)
            end)
            end
            end
--})
--//STATS
local Pointstat = Stats:AddParagraph({Title = "Available Points"})
spawn(function()
    while wait() do
        pcall(function()
            Pointstat:SetDesc("Available point : "..(formatarNumero(game:GetService("Players")["LocalPlayer"].Data.Points.Value)))
        end)
    end
end)
local Melee = Stats:AddParagraph({Title = "Melee Points"})
spawn(function()
    while wait() do
        pcall(function()
            Melee:SetDesc("Melee : "..(formatarNumero(game.Players.localPlayer.Data.Stats.Melee.Level.Value)))
        end)
    end
end)

local Defense = Stats:AddParagraph({Title = "Defense Points"})
spawn(function()
    while wait() do
        pcall(function()
            Defense:SetDesc("Defense : "..(formatarNumero(game.Players.localPlayer.Data.Stats.Defense.Level.Value)))
        end)
    end
end)

local Sword = Stats:AddParagraph({Title = "Sword Point"})
spawn(function()
    while wait() do
        pcall(function()
            Sword:SetDesc("Sword : "..(formatarNumero(game.Players.localPlayer.Data.Stats.Sword.Level.Value)))
        end)
    end
end)

local Gun = Stats:AddParagraph({Title = "Gun Points"})
spawn(function()
    while wait() do
        pcall(function()
            Gun:SetDesc("Gun : "..(formatarNumero(game.Players.localPlayer.Data.Stats.Gun.Level.Value)))
        end)
    end
end)

local Fruit = Stats:AddParagraph({
Title = "Fruit Point"})
spawn(function()
    while wait() do
        pcall(function()
            Fruit:SetDesc("Fruit : "..(formatarNumero(game.Players.localPlayer.Data.Stats["Demon Fruit"].Level.Value)))
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
     WriteSettings() 
    end
  })
  
  
  Stats:AddToggle({"Auto Stats Melee", false, function(value)
    melee = value  
    WriteSettings()
end})

Stats:AddToggle({"Auto Stats Defense", false, function(value)
    defense = value  
    WriteSettings()
end})

Stats:AddToggle({"Auto Stats Sword", false, function(value)
    sword = value 
 WriteSettings()
end})

Stats:AddToggle({"Auto Stats Gun", false, function(value)
    gun = value  
    WriteSettings()
end})

local toggle = Stats:AddToggle({"Auto Stats Fruit", false, function(value)
    demonfruit = value  
    WriteSettings()
end})

spawn(function()
    while wait(0.0000000001) do
        if game.Players.localPlayer.Data.Points.Value ==  PointSlider or game.Players.localPlayer.Data.Points.Value ~= PointSlider then
            if melee then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Melee",
                    [3] = PointSlider
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if defense then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Defense",
                    [3] = PointSlider
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if sword then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Sword",
                    [3] = PointSlider
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if gun then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Gun",
                    [3] = PointSlider
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end 
            if demonfruit then
                local args = {
                    [1] = "AddPoint",
                    [2] = "Demon Fruit",
                    [3] = PointSlider
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
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
  Title = "Redeem For Stats",
  Callback = function()
local Codes = {
	"Noob_Refund",
	"JULYUPDATE_RESET",
	"SUB2GAMERROBOT_RESET1",
	"Sub2UncleKizaru",
	"KITT_RESET",
	"THIRDSEA",
	"1MLIKES_RESET",
	"RESET_5B",
    "ADMINHACKED",
    "PointsReset",
    "XmasReset"
}
    for _,code in pairs(Codes) do
      task.spawn(function()ReplicatedStorage.Remotes.Redeem:InvokeServer(code)end)
    end
  end
})


--//ITEM
    Item:AddSection("Infor Build")
    spawn(function()
    while task.spaw() do
    local prgNerd = Item:AddParagraph({
        Title = "Nerd"
    })
    prgNerd:SetDesc(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Nerd", "1"))
    end
    end)
   --[[ local prgBS1 = Item:AddParagraph({
        Title = "Blacksmith : Sword"
    })
    local args = {
            [1] = {
                NPC = "Blacksmith",
                Command = "Sword"
            }
        };
        
    prgBS1:SetDesc(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))
    
    local prgBS2 = Item:AddParagraph({
        Title = "Blacksmith : Gun"
    })
    prgBS2:SetDesc(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Gun","2"))

    local prgBFD = Item:AddParagraph({
        Title = "Blox Fruit Dealer"
    })
    prgBFD:SetDesc(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BloxFruitDealer","1","1"))
    
   ]]--
Item:AddSection("Sword")
--comun
local prgKatana = Item:AddParagraph({
	Title = "<font color=\"rgb(179, 179, 179)\">Katana</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Katana")
    if item then
        prgKatana:SetDesc("<font color=\"rgb(179, 179, 179)\">Katana</font> : ✅")
    else
        prgKatana:SetDesc("<font color=\"rgb(179, 179, 179)\">Katana</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgDualKatana = Item:AddParagraph({
	Title = "<font color=\"rgb(179, 179, 179)\">Dual Katana</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Dual Katana")
    if item then
        prgDualKatana:SetDesc("<font color=\"rgb(179, 179, 179)\">Dual Katana</font> : ✅")
    else
        prgDualKatana:SetDesc("<font color=\"rgb(179, 179, 179)\">Dual Katana</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgCutlass = Item:AddParagraph({
	Title = "<font color=\"rgb(92, 140, 211)\">Cutlass</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Cutlass")
    if item then
        prgCutlass:SetDesc("<font color=\"rgb(179, 179, 179)\">Cutlass</font> : ✅")
    else
        prgCutlass:SetDesc("<font color=\"rgb(179, 179, 179)\">Cutlass</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
--incomun

local prgTwinHooks = Item:AddParagraph({
	Title = "<font color=\"rgb(92, 140, 211)\">TwinHooks</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Twin Hooks")
    if item then
        prgTwinHooks:SetDesc("<font color=\"rgb(92, 140, 211)\">Twin Hooks</font> : ✅")
    else
        prgTwinHooks:SetDesc("<font color=\"rgb(92, 140, 211)\">Twin Hooks</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgTripleKatana = Item:AddParagraph({
	Title = "<font color=\"rgb(92, 140, 211)\">Triple Katana</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Triple Katana")
    if item then
        prgTripleKatana:SetDesc("<font color=\"rgb(92, 140, 211)\">Triple Katana</font> : ✅")
    else
        prgTripleKatana:SetDesc("<font color=\"rgb(92, 140, 211)\">Triple Katana</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgSharkSaw = Item:AddParagraph({
	Title = "<font color=\"rgb(92, 140, 211)\">Shark Saw</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Shark Saw")
    if item then
        prgSharkSaw:SetDesc("<font color=\"rgb(92, 140, 211)\">Shark Saw</font> : ✅")
    else
        prgSharkSaw:SetDesc("<font color=\"rgb(92, 140, 211)\">Shark Saw</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgIronMace = Item:AddParagraph({
	Title = "<font color=\"rgb(92, 140, 211)\">Iron Mace</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Iron Mace")
    if item then
        prgIronMace:SetDesc("<font color=\"rgb(92, 140, 211)\">Iron Mace</font> : ✅")
    else
        prgIronMace:SetDesc("<font color=\"rgb(92, 140, 211)\">Iron Mace</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
--raros
local prgWardensSword = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Wardens Sword</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Wardens Sword")
    if item then
        prgWardensSword:SetDesc("<font color=\"rgb(140, 82, 255)\">Wardens Sword</font> : ✅")
    else
        prgWardensSword:SetDesc("<font color=\"rgb(140, 82, 255)\">Wardens Sword</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgTrident = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Trident</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Trident")
    if item then
        prgTrident:SetDesc("<font color=\"rgb(140, 82, 255)\">Trident</font> : ✅")
    else
        prgTrident:SetDesc("<font color=\"rgb(140, 82, 255)\">Trident</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgSoulCane = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Soul Cane</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Soul Cane")
    if item then
        prgSoulCane:SetDesc("<font color=\"rgb(140, 82, 255)\">Soul Cane</font> : ✅")
    else
        prgSoulCane:SetDesc("<font color=\"rgb(140, 82, 255)\">Soul Cane</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgPipe = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Pipe</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Pipe")
    if item then
        prgPipe:SetDesc("<font color=\"rgb(140, 82, 255)\">Pipe</font> : ✅")
    else
        prgPipe:SetDesc("<font color=\"rgb(140, 82, 255)\">Pipe</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgLongsword = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Longsword</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Longsword")
    if item then
        prgLongsword:SetDesc("<font color=\"rgb(140, 82, 255)\">Longsword</font> : ✅")
    else
        prgLongsword:SetDesc("<font color=\"rgb(140, 82, 255)\">Longsword</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgGravityBlade = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Gravity Blade</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Gravity Blade")
    if item then
        prgGravityBlade:SetDesc("<font color=\"rgb(140, 82, 255)\">Gravity Blade</font> : ✅")
    else
        prgGravityBlade:SetDesc("<font color=\"rgb(140, 82, 255)\">Gravity Blade</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgFlail = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Flail</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Flail")
    if item then
        prgFlail:SetDesc("<font color=\"rgb(140, 82, 255)\">Flail</font> : ✅")
    else
        prgFlail:SetDesc("<font color=\"rgb(140, 82, 255)\">Flail</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgDualHeadedBlade = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Dual-Headed Blade</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Dual-Headed Blade")
    if item then
        prgDualHeadedBlade:SetDesc("<font color=\"rgb(140, 82, 255)\">Dual-Headed Blade</font> : ✅")
    else
        prgDualHeadedBlade:SetDesc("<font color=\"rgb(140, 82, 255)\">Dual-Headed Blade</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgDragonTrident = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Dragon Trident</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Dragon Trident")
    if item then
        prgDragonTrident:SetDesc("<font color=\"rgb(140, 82, 255)\">Dragon Trident</font> : ✅")
    else
        prgDragonTrident:SetDesc("<font color=\"rgb(140, 82, 255)\">Dragon Trident</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
--lendarias
local prgYM = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Yama</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Yama")
    if item then
        prgYM:SetDesc("<font color=\"rgb(213, 43, 228)\">Yama</font> : ✅")
    else
        prgYM:SetDesc("<font color=\"rgb(213, 43, 228)\">Yama</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgTST = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Tushita</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Tushita")
    if item then
        prgTST:SetDesc("<font color=\"rgb(213, 43, 228)\">Tushita</font> : ✅")
    else
        prgTST:SetDesc("<font color=\"rgb(213, 43, 228)\">Tushita</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgSZ = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Shizu</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Shizu")
    if item then
        prgSZ:SetDesc("<font color=\"rgb(213, 43, 228)\">Shizu</font> : ✅")
    else
        prgSZ:SetDesc("<font color=\"rgb(213, 43, 228)\">Shizu</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgSSH = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Saishi</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Saishi")
    if item then
        prgSSH:SetDesc("<font color=\"rgb(213, 43, 228)\">Saishi</font> : ✅")
    else
        prgSSH:SetDesc("<font color=\"rgb(213, 43, 228)\">Saishi</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgORS = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Oroshi</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Oroshi")
    if item then
        prgORS:SetDesc("<font color=\"rgb(213, 43, 228)\">Oroshi</font> : ✅")
    else
        prgORS:SetDesc("<font color=\"rgb(213, 43, 228)\">Oroshi</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgSpikeyTrident = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Spikey Trident</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Spikey Trident")
    if item then
        prgSpikeyTrident:SetDesc("<font color=\"rgb(213, 43, 228)\">Spikey Trident</font> : ✅")
    else
        prgSpikeyTrident:SetDesc("<font color=\"rgb(213, 43, 228)\">Spikey Trident</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgSharkAnchor = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Shark Anchor</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Shark Anchor")
    if item then
        prgSharkAnchor:SetDesc("<font color=\"rgb(213, 43, 228)\">Shark Anchor</font> : ✅")
    else
        prgSharkAnchor:SetDesc("<font color=\"rgb(213, 43, 228)\">Shark Anchor</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgSaber = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Saber</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Saber")
    if item then
        prgSaber:SetDesc("<font color=\"rgb(213, 43, 228)\">Saber</font> : ✅")
    else
        prgSaber:SetDesc("<font color=\"rgb(213, 43, 228)\">Saber</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgRengoku = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Rengoku</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Rengoku")
    if item then
        prgRengoku:SetDesc("<font color=\"rgb(213, 43, 228)\">Rengoku</font> : ✅")
    else
        prgRengoku:SetDesc("<font color=\"rgb(213, 43, 228)\">Rengoku</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgPoleFirstForm = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Pole First Form</font>"	})
	local item = nil

while not item do
    item = CheckItem("Pole (1st Form)")
    if item then
        prgPoleFirstForm:SetDesc("<font color=\"rgb(213, 43, 228)\">Pole First Form</font> : ✅")
    else
        prgPoleFirstForm:SetDesc("<font color=\"rgb(213, 43, 228)\">Pole First Form</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgPoleSecondForm = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Pole Second Form</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Pole (2nd Form)")
    if item then
        prgPoleSecondForm:SetDesc("<font color=\"rgb(213, 43, 228)\">Pole Second Form</font> : ✅")
    else
        prgPoleSecondForm:SetDesc("<font color=\"rgb(213, 43, 228)\">Pole Second Form</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end

local prgMidnightBlade = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Midnight Blade</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Midnight Blade")
    if item then
        prgMidnightBlade:SetDesc("<font color=\"rgb(213, 43, 228)\">Midnight Blade</font> : ✅")
    else
        prgMidnightBlade:SetDesc("<font color=\"rgb(213, 43, 228)\">MidnightBlade</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgKoko = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Koko</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Koko")
    if item then
        prgKoko:SetDesc("<font color=\"rgb(213, 43, 228)\">Koko</font> : ✅")
    else
        prgKoko:SetDesc("<font color=\"rgb(213, 43, 228)\">Koko</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgFoxLamp = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Fox Lamp</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Fox Lamp")
    if item then
        prgFoxLamp:SetDesc("<font color=\"rgb(213, 43, 228)\">FoxLamp</font> : ✅")
    else
        prgFoxLamp:SetDesc("<font color=\"rgb(213, 43, 228)\">Fox Lamp</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgDragonheart = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Dragonheart</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Dragonheart")
    if item then
        prgDragonheart:SetDesc("<font color=\"rgb(213, 43, 228)\">Dragonheart</font> : ✅")
    else
        prgDragonheart:SetDesc("<font color=\"rgb(213, 43, 228)\">Dragonheart</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end

local prgDarkDagger = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Dark Dagger</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Dark Dagger")
    if item then
        prgDarkDagger:SetDesc("<font color=\"rgb(213, 43, 228)\">Dark Dagger</font> : ✅")
    else
        prgDarkDagger:SetDesc("<font color=\"rgb(213, 43, 228)\">Dark Dagger</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgCanvander = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Canvander</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Canvander")
    if item then
        prgCanvander:SetDesc("<font color=\"rgb(213, 43, 228)\">Canvander</font> : ✅")
    else
        prgCanvander:SetDesc("<font color=\"rgb(213, 43, 228)\">Canvander</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgBuddySword = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Buddy Sword</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Buddy Sword")
    if item then
        prgBuddySword:SetDesc("<font color=\"rgb(213, 43, 228)\">Buddy Sword</font> : ✅")
    else
        prgBuddySword:SetDesc("<font color=\"rgb(213, 43, 228)\">Buddy Sword</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgBisento = Item:AddParagraph({
	Title = "<font color=\"rgb(213, 43, 228)\">Bisento</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Bisento")
    if item then
        prgBisento:SetDesc("<font color=\"rgb(213, 43, 228)\">Bisento</font> : ✅")
    else
        prgBisento:SetDesc("<font color=\"rgb(213, 43, 228)\">Bisento</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
--mitica
local prgTrueTripleKatana = Item:AddParagraph({
	Title = "<font color=\"rgb(238, 47, 50)\">True Triple Katana</font>"
	})
	local item = nil

while not item do
    item = CheckItem("True Triple Katana")
    if item then
        prgTrueTripleKatana:SetDesc("<font color=\"rgb(238, 47, 50)\">True Triple Katana</font> : ✅")
    else
        prgTrueTripleKatana:SetDesc("<font color=\"rgb(238, 47, 50)\">True Triple Katana</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgHallowScythe = Item:AddParagraph({
	Title = "<font color=\"rgb(238, 47, 50)\">Hallow Scythe</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Hallow Scythe")
    if item then
        prgHallowScythe:SetDesc("<font color=\"rgb(238, 47, 50)\">Hallow Scythe</font> : ✅")
    else
        prgHallowScythe:SetDesc("<font color=\"rgb(238, 47, 50)\">Hallow Scythe</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgDarkBlade = Item:AddParagraph({
	Title = "<font color=\"rgb(238, 47, 50)\">Dark Blade</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Dark Blade")
    if item then
        prgDarkBlade:SetDesc("<font color=\"rgb(238, 47, 50)\">Dark Blade</font> : ✅")
    else
        prgDarkBlade:SetDesc("<font color=\"rgb(238, 47, 50)\">Dark Blade</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgCursedDualKatana = Item:AddParagraph({
	Title = "<font color=\"rgb(238, 47, 50)\">Cursed Dual Katana</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Cursed Dual Katana")
    if item then
        prgCursedDualKatana:SetDesc("<font color=\"rgb(238, 47, 50)\">Cursed Dual Katana</font> : ✅")
    else
        prgCursedDualKatana:SetDesc("<font color=\"rgb(238, 47, 50)\">Cursed Dual Katana</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
Item:AddSection("Gun")
--comun
local prgSlingshot = Item:AddParagraph({
	Title = "<font color=\"rgb(179, 179, 179)\">Slingshot</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Slingshot")
    if item then
        prgSlingshot:SetDesc("<font color=\"rgb(179, 179, 179)\">Slingshot</font> : ✅")
    else
        prgSlingshot:SetDesc("<font color=\"rgb(179, 179, 179)\">Slingshot</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
--imcomun
local prgMusket = Item:AddParagraph({
	Title = "<font color=\"rgb(92, 140, 211)\">Musket</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Musket")
    if item then
        prgMusket:SetDesc("<font color=\"rgb(92, 140, 211)\">Musket</font> : ✅")
    else
        prgMusket:SetDesc("<font color=\"rgb(92, 140, 211)\">Musket</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end

local prgFlintlock = Item:AddParagraph({
	Title = "<font color=\"rgb(92, 140, 211)\">Flintlock</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Flintlock")
    if item then
        prgFlintlock:SetDesc("<font color=\"rgb(92, 140, 211)\">Flintlock</font> : ✅")
    else
        prgFlintlock:SetDesc("<font color=\"rgb(92, 140, 211)\">Flintlock</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
--raro
local prgRefinedSlingshot = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Refined Slingshot</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Refined Slingshot")
    if item then
        prgRefinedSlingshot:SetDesc("<font color=\"rgb(140, 82, 255)\">Refined Slingshot</font> : ✅")
    else
        prgRefinedSlingshot:SetDesc("<font color=\"rgb(140, 82, 255)\">Refined Slingshot</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgMagmaBlaster = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Magma Blaster</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Magma Blaster")
    if item then
        prgMagmaBlaster:SetDesc("<font color=\"rgb(140, 82, 255)\">Magma Blaster</font> : ✅")
    else
        prgMagmaBlaster:SetDesc("<font color=\"rgb(140, 82, 255)\">Magma Blaster</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgDualFlintlock = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Dual Flintlock</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Dual Flintlock")
    if item then
        prgDualFlintlock:SetDesc("<font color=\"rgb(140, 82, 255)\">Dual Flintlock</font> : ✅")
    else
        prgDualFlintlock:SetDesc("<font color=\"rgb(140, 82, 255)\">Dual Flintlock</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgCannon = Item:AddParagraph({
	Title = "<font color=\"rgb(238, 47, 50)\">Cannon</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Cannon")
    if item then
        prgCannon:SetDesc("<font color=\"rgb(140, 82, 255)\">Cannon</font> : ✅")
    else
        prgCannon:SetDesc("<font color=\"rgb(140, 82, 255)\">Cannon</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgBizarreRevolver = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Bizarre Revolver</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Bizarre Revolver")
    if item then
        prgBizarreRevolver:SetDesc("<font color=\"rgb(140, 82, 255)\">Bizarre Revolver</font> : ✅")
    else
        prgBizarreRevolver:SetDesc("<font color=\"rgb(140, 82, 255)\">Bizarre Revolver</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgAcidumRifle = Item:AddParagraph({
	Title = "<font color=\"rgb(140, 82, 255)\">Acidum Rifle</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Acidum Rifle")
    if item then
        prgAcidumRifle:SetDesc("<font color=\"rgb(140, 82, 255)\">Acidum Rifle</font> : ✅")
    else
        prgAcidumRifle:SetDesc("<font color=\"rgb(140, 82, 255)\">Acidum Rifle</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
--lendsria
local prgVenomBow = Item:AddParagraph({
	Title = "<font color=\"rgb(238, 47, 50)\">Venom Bow</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Venom Bow")
    if item then
        prgVenomBow:SetDesc("<font color=\"rgb(238, 47, 50)\">Venom Bow</font> : ✅")
    else
        prgVenomBow:SetDesc("<font color=\"rgb(238, 47, 50)\">Venom Bow</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgKabucha = Item:AddParagraph({
	Title = "<font color=\"rgb(238, 47, 50)\">Kabucha</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Kabucha")
    if item then
        prgKabucha:SetDesc("<font color=\"rgb(238, 47, 50)\">Kabucha</font> : ✅")
    else
        prgKabucha:SetDesc("<font color=\"rgb(238, 47, 50)\">Kabucha</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
local prgBazooka = Item:AddParagraph({
	Title = "<font color=\"rgb(238, 47, 50)\">Bazooka</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Bazooka")
    if item then
        prgBazooka:SetDesc("<font color=\"rgb(238, 47, 50)\">Bazooka</font> : ✅")
    else
        prgBazooka:SetDesc("<font color=\"rgb(238, 47, 50)\">Bazooka</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
--mitica
local prgSkullGuitar = Item:AddParagraph({
	Title = "<font color=\"rgb(238, 47, 50)\">Skull Guitar</font>"
	})
	local item = nil

while not item do
    item = CheckItem("Skull Guitar")
    if item then
        prgSkullGuitar:SetDesc("<font color=\"rgb(238, 47, 50)\">Skull Guitar</font> : ✅")
    else
        prgSkullGuitar:SetDesc("<font color=\"rgb(238, 47, 50)\">Skull Guitar</font> : ❌")
        wait(1)  -- Espera 1 segundo antes de tentar novamente
    end
end
--//Acessórios 






--//Frutas



--//SHOP

Shop:AddSection({"Christmas"})
Shop:AddButton({
    "Buy 2x EXP (15 mins.) < 50 Candies >",
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Check")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Buy", 1, 1)
    end
})

Shop:AddButton({
    "Stats Refund < 75 Candies >", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Check")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Buy", 1, 2)
    end
})

Shop:AddButton({
    "Race Reroll < 100 Candies >", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Check")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Buy", 1, 3)
    end
})

Shop:AddSection({""})

Shop:AddButton({
    "Buy 200 Frags < 50 Candies >", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Check")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Buy", 2, 2)
    end
})

Shop:AddButton({
    "Buy 500 Frags < 100 Candies >", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Check")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Candies", "Buy", 2, 2)
    end
})

Shop:AddSection({"Bones"})

Shop:AddButton({
    "Buy Surprise < 50 Bones >", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1)
    end
})

Shop:AddButton({
    "Stats Refund < 150 Bones >", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 2)
    end
})

Shop:AddButton({
    "Race Reroll < 300 Bones >", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 3)
    end
})

Shop:AddSection({"Ectoplasm"})

Shop:AddButton({
    "Midnight Blade", 
    function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 1) 
    end
})

Shop:AddButton({
    "Bizarre Rifle", 
    function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 2) 
    end
})

Shop:AddButton({
    "Ghoul Mask", 
    function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Buy", 3) 
    end
})

Shop:AddSection({"Frags"})

Shop:AddButton({
    "Race Rerol", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end
})

Shop:AddButton({
    "Reset Stats", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
    end
})

Shop:AddSection({"Fighting Style"})

Shop:AddButton({
    "Buy Black Leg", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg") 
    end
})

Shop:AddButton({
    "Buy Electro", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro") 
    end
})

Shop:AddButton({
    "Buy Fishman Karate", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate") 
    end
})

Shop:AddButton({
    "Buy Dragon Claw", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    end
})

Shop:AddButton({
    "Buy Superhuman", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman") 
    end
})

Shop:AddButton({
    "Buy Death Step", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep") 
    end
})

Shop:AddButton({
    "Buy Sharkman Karate", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate") 
    end
})

Shop:AddButton({
    "Buy Electric Claw", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw") 
    end
})

Shop:AddButton({
    "Buy Dragon Talon", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon") 
    end
})

Shop:AddButton({
    "Buy GodHuman", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman") 
    end
})

Shop:AddButton({
    "Buy Sanguine Art", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt") 
    end
})

Shop:AddSection({"Ability Teacher"})

Shop:AddButton({
    "Buy Geppo", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo") 
    end
})

Shop:AddButton({
    "Buy Buso", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso") 
    end
})

Shop:AddButton({
    "Buy Soru", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru") 
    end
})

Shop:AddSection({"Sword"})

Shop:AddButton({
    "Buy Katana", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana") 
    end
})

Shop:AddButton({
    "Buy Cutlass", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass") 
    end
})

Shop:AddButton({
    "Buy Dual Katana", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual Katana") 
    end
})

Shop:AddButton({
    "Buy Iron Mace", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace") 
    end
})

Shop:AddButton({
    "Buy Triple Katana", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana") 
    end
})

Shop:AddButton({
    "Buy Pipe", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe") 
    end
})

Shop:AddButton({
    "Buy Dual-Headed Blade", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade") 
    end
})

Shop:AddButton({
    "Buy Soul Cane", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane") 
    end
})

Shop:AddButton({
    "Buy Bisento", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento") 
    end
})

Shop:AddSection({"Gun"})

Shop:AddButton({
    "Buy Musket", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Musket") 
    end
})

Shop:AddButton({
    "Buy Slingshot", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Slingshot") 
    end
})

Shop:AddButton({
    "Buy Flintlock", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Flintlock") 
    end
})

Shop:AddButton({
    "Buy Refined Slingshot", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Slingshot") 
    end
})

Shop:AddButton({
    "Buy Refined Flintlock", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Refined Flintlock") 
    end
})

Shop:AddButton({
    "Buy Cannon", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cannon") 
    end
})

Shop:AddButton({
    "Buy Kabucha", 
    function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Slingshot", "2")
    end
})

Shop:AddSection({"Accessories"})

Shop:AddButton({
    "Buy Black Cape", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Black Cape") 
    end
})

Shop:AddButton({
    "Buy Swordsman Hat", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Swordsman Hat") 
    end
})

Shop:AddButton({
    "Buy Tomoe Ring", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Tomoe Ring") 
    end
})

Shop:AddSection({"Race"})

Shop:AddButton({
    "Ghoul Race", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Change", 4) 
    end
})

Shop:AddButton({
    "Cyborg Race", 
    function() 
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy") 
    end
})
if Sea3 then
Shop:AddButton({
    Title = "Buy Draco Race",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438, - 334.9649963378906));
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938));
        local v368 = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938);
        local v369 = game.Players.LocalPlayer;
        local v370 = v369.Character or v369.CharacterAdded:Wait() ;
        repeat
            wait();
        until (v370.HumanoidRootPart.Position - v368).Magnitude < 1
        local args = {
            [1] = {
                NPC = "Dragon Wizard",
                Command = "DragonRace"
            }
        };
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(args));
    end
});
end
Shop:AddSection("Dragon Update")
Shop:AddButton({
    Title = "Craft Volcanic Magnet",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","Volcanic Magnet");
    end
});
Shop:AddButton({
    Title = "Craft Dragonheart",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","Dragonheart");
    end
});
Shop:AddButton({
    Title = "Craft Dragonstorm",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","Dragonstorm");
    end
});
Shop:AddButton({
    Title = "Craft Dino Hood",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","Dino Hood");
    end
});
Shop:AddButton({
    Title = "Craft T-Rex Skull",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CraftItem","Craft","T-Rex Skull");
    end
});
--//VISUAL
local NotifiFruits = true
local NotifiTime = 120

-- Verificar se a notificação de frutas está habilitada
if NotifiFruits then
    for i, v in pairs(game.Workspace:GetChildren()) do
        -- Verificar se o nome do objeto contém "Fruit"
        if string.find(v.Name, "Fruit") then  
            -- Verificar se o objeto é uma ferramenta (Tool) ou tem o nome contendo "Fruit"
            if v:IsA("Tool") or string.find(v.Name, "Fruit") then
                -- Adicionar a notificação
                redzlib:AddNotify(
    "The fruit '" .. v.Name .. "' Spawned on the Map",  -- Texto dinâmico usando v.Name
    NotifiTime,  -- Duração de 5 segundos
    127950462202673,  -- ID do ícone
    400,  -- Largura da notificação
    60,   -- Altura da notificação
    Color3.fromRGB(0, 0, 0),  -- Cor de fundo vermelha
    Color3.fromRGB(255, 255, 255),  -- Cor do texto branca
    0.5,  -- Tempo de animação de entrada
    0.5,  -- Tempo de animação de saída
    1,  -- Posição X para o canto direito
    0  -- Posição Y para o canto inferior
)
            end
        end
    end
end
Visual:AddSection({"Notifications"})
Visual:AddSlider({Title = "Nofication Time",Max = 120, Min = 5, Increase = 1,
Default = 120, Callback = function(Value)
  NotifiTime = Value
end, Flag = "Notify/Time"})
Visual:AddToggle({Name = "Fruit Spawn",Callback = function(Value)
  NotifiFruits = Value
end, Flag = "Notify/Fruit"})

--[[Visual:AddSection({"Fruits"})
  Visual:AddButton({"Rain Fruit", function(value)
    for _,Fruit in pairs(game:GetObjects("rbxassetid://14759368201")
[1]:GetChildren()) do
      Fruit.Parent = Map
      Fruit:MoveTo(Player.Character.PrimaryPart.Position +
Vector3.new(math.random(-50, 50), 80, math.random(-50, 50)))
      Fruit:WaitForChild("Handle").Touched:Connect(function(part)
        if part.Parent:FindFirstChild("Humanoid") then
           Fruit.Parent = Players[part.Parent.Name].Backpack
        end
      end)
      pcall(function()
        Fruit.Fruit["AnimationController"]:LoadAnimation(Fruit.Fruit.Idle):Play()
      end)
    end
  end})
 Visual:AddButton({"Bring Fruits", function()
    for _,Fruit in pairs(Map:GetChildren()) do
      if Fruit:IsA("Tool") or Fruit.Name:find("Fruit") then
        Fruit.Parent = Player.Backpack
      end
    end
  end})
Visual:AddSection({"Fake"})
Visual:AddParagraph({"Fake Stats"})

Visual:AddTextBox({
    Name = "Fake Defense", 
    Default = "", 
    PlaceholderText = "Defense", 
    Callback = function(Value)
        Player.Data.Points.Defense.Level.Value = Value
    end
})

Visual:AddTextBox({
    Name = "Fake Fruit", 
    Default = "", 
    PlaceholderText = "Fruit", 
    Callback = function(Value)
        Player.Data.Points["Demon Fruit"].Level.Value = Value
    end
})

Visual:AddTextBox({
    Name = "Fake Gun", 
    Default = "", 
    PlaceholderText = "Gun", 
    Callback = function(Value)
        Player.Data.Points.Gun.Level.Value = Value
    end
})

Visual:AddTextBox({
    Name = "Fake Melee", 
    Default = "", 
    PlaceholderText = "Melee", 
    Callback = function(Value)
        Players.localPlayer.Data.Stats.Melee.Level.Value = Value
    end
})

Visual:AddTextBox({
    Name = "Fake Sword", 
    Default = "", 
    PlaceholderText = "Sword", 
    Callback = function(Value)
    game:GetService("Players")['LocalPlayer'].Data.Points.Sword.Level.Value = Value
    end
})]]--

Visual:AddParagraph({"Fake Mode"})

Visual:AddTextBox({
    Name = "Fake Level", 
    Default = "", 
    PlaceholderText = "Level", 
    Callback = function(Value)
        game:GetService("Players")['LocalPlayer'].Data.Level.Value  = Value
    end
})

Visual:AddTextBox({
    Name = "Fake Points", 
    Default = "", 
    PlaceholderText = "Points", 
    Callback = function(Value)
        game:GetService("Players")['LocalPlayer'].Data.Points.Value  = Value
    end
})
Visual:AddTextBox({
    Name = "Fake Bounty", 
    Default = "", 
    PlaceholderText = "Bounty", 
    Callback = function(Value)
        game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value = Value
        end
})


Visual:AddTextBox({
    Name = "Fake Energy", 
    Default = "", 
    PlaceholderText = "Energy", 
    Callback = function(Value)
    game.Players.LocalPlayer.Character.Energy.Value  = Value
        --end
    end
})
Visual:AddTextBox({
    Name = "Fake Max Energy", 
    Default = "", 
    PlaceholderText = "Max Energy", 
    Callback = function(Value)
    game.Players.LocalPlayer.Character.Energy.MaxValue  = Value
        --end
    end
})
Visual:AddTextBox({
    Name = "Fake Health", 
    Default = "", 
    PlaceholderText = "Health", 
    Callback = function(Value)
        game:GetService("Players").LocalPlayer.Data.Health.Value  = Value
--        end
    end
})
Visual:AddTextBox({
    Name = "Fake Energy", 
    Default = "", 
    PlaceholderText = "Max Health", 
    Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.MaxHealth  = Value
        --end
    end
})
Visual:AddTextBox({
    Name = "Fake Money", 
    Default = "", 
    PlaceholderText = "Money", 
    Callback = function(Value)
        game:GetService("Players")['LocalPlayer'].Data.Beli.Value  = Value
    end
})

Visual:AddTextBox({
    Name = "Fake Fragments", 
    Default = "", 
    PlaceholderText = "Fragments", 
    Callback = function(Value)
        game:GetService("Players")['LocalPlayer'].Data.Fragments.Value = Value
    end
})
--game:GetService("Players")['LocalPlayer'].Data.Bones.Value 
--[[Visual:AddTextBox({
    Name = "Fake Bones", 
    Default = "", 
    PlaceholderText = "Fragments", 
    Callback = function(Value)
        game:GetService("Players")['LocalPlayer'].Data.Bones.Value = Value
    end
})

Visual:AddButton({
	Title = "Infinite EXP",
	Callback = function()
	local v321 = require(game.ReplicatedStorage:WaitForChild("EXPFunction"));
	    v319.new("Earned<Color=Yellow>9,999,999,999,999 Exp.<Color=/>(+None)"):Display();
	v318.Data.Exp.Value = 999999999999;
	end})]]--
--//SETTINGS
Settings:AddSection("Main Farm")
Settings:AddSlider({
Title = "Tween Velocidade",
Min = 50,
Max = 350,
Default = 300,
Increaseq = 5,
Callback = function(Value)
  getgenv().TweenVelocidade = Value
end})



Settings:AddSection("Redeem Codes")



Settings:AddSection("More FPS")
Settings:AddButton({
Title = "Remove Fog",
Callback = function(Value)
NoFog = Value
end	})
function NoFog()
    local c = game.Lighting
    c.FogEnd = 100000
    for r, v in pairs(c:GetDescendants()) do
        if v:IsA("Atmosphere") then
            v:Destroy()
        end
    end
end
--[[Settings:AddButton({
Title = "Remove Lava",
Callback = function(value)
if value then
local lv = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava")
    if (lv and lv:IsA("Model")) then
        lv:Destroy()
    end
    local lv2 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
    if lv2 then
        for i, v in pairs(lv2:GetDescendants()) do
            if (v:IsA("Part") and v.Name:lower():find("lava")) then
                v:Destroy()
            end
        end
    end
    local lv3 = game.Workspace.Map:FindFirstChild("PrehistoricIsland")
    if lv3 then
        for i, v in pairs(lv3:GetDescendants()) do
            if v:IsA("Model") then
                for k, v in pairs(v:GetDescendants()) do
                    if (v:IsA("MeshPart") and v.Name:lower():find("lava")) then
                        v:Destroy()
                        for i, v in pairs(game.Workspace:GetDescendants()) do
		if v.Name == "Lava" then
			v:Destroy()
		end
	end
	for i, v in pairs(game.ReplicatedStorage:GetDescendants()) do
		if v.Name == "Lava" then
			v:Destroy()
		end
		--end
end})]]--
--//KAITUN









--//teste
