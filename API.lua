local AdminHookAPI = {}

local APR = game:GetService("ReplicatedStorage"):WaitForChild("RemotesFolder"):WaitForChild("AdminPanelRunCommand")


--PLAYER 
function AdminHookAPI.Kill(Player)
    if not Player then print("No player arg was given") return end
local args = {
	"KillPlayer",
	{
		Players = {
			Player = Player.Name
		}
	}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.Explode(Player)
       if not Player then print("No player arg was given") return end
local args = {
	"ExplodePlayer",
	{
		Players = {
			Player = Player.Name
		}
	}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.Fling(Player)
          if not Player then print("No player arg was given") return end
local args = {
	"FlingPlayer",
	{
		Players = {
			Player = Player.Name
		}
	}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.Heal(Player)
    if not Player then print("No player arg was given") return end
local args = {
	"HealPlayer",
	{
		Players = {
			Player = Player.Name
		}
	}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.Revive(Player)
    if not Player then print("No player arg was given") return end
local args = {
	"RevivePlayer",
	{
		Players = {
			Player = Player.Name
		}
	}
}
APR:FireServer(unpack(args))
end

--PLAYER STATS
function AdminHookAPI.SetStat(Player, MH, AS, SS, SB, H, AJ, GM)
    if Player == nil then return end --Player, duh
    if MH == nil then return end -- Max Health
    if AS == nil then return end -- Allow Sliding
    if SS == nil then return end -- Star Shield
    if SB == nil then return end -- Speed Boost
    if H == nil then return end -- Health
    if AJ == nil then return end -- Allow Jumping
    if GM == nil then return end -- God Mode
    local args = {
	"Apply Changes",
	{
		Players = {
			Player = Player.Name
		},
		["Max Health"] = MH,
		["Allow Sliding"] = AS,
		["Star Shield"] = SS,
		["Speed Boost"] = SB,
		Health = H,
		["Allow Jumping"] = AJ,
		["God Mode"] = GM
	}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.Gold(Player, Amount, Add)
     if Player == nil then return end --Player
    if Amount == nil then return end -- Amount of Gold
    if Add == nil then return end -- if true, will add to instead of set to

local args = {
	"Give Gold",
	{
		Players = {
			Player = Player.Name
		},
		["Gold Amount"] = Amount,
		["Add To Current Gold"] = Add
	}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.AddItem(Player, Item)
    if Player == nil then return end --Player
    if Item == nil then return end -- Item, must be valid
        --EXAMPLE LIST
    local ValidList = {
            Crucifix = "Crucifix",
			LibraryHintPaper = "LibraryHintPaper",
			HintBook = "HintBook",
			Flashlight = "Flashlight",
			AloeVera = "AloeVera",
			BoxingGloves = "BoxingGloves",
			GoldGun = "GoldGun",
			Bulklight = "Bulklight",
			Compass = "Compass",
			Shears = "Shears",
			BatteryPack = "BatteryPack",
			Candle = "Candle",
			CarryPropTool = "CarryPropTool",
			LibraryHintPaperHard = "LibraryHintPaperHard",
			StarBottle = "StarBottle",
			KeyBackdoor = "KeyBackdoor",
			Straplight = "Straplight",
			StopSign = "StopSign",
			Lockpick = "Lockpick",
			RiftJar = "RiftJar",
			Cheese = "Cheese",
			Glowsticks = "Glowsticks",
			TipJar = "TipJar",
			Knockbomb = "Knockbomb",
			Smoothie = "Smoothie",
			AlarmClock = "AlarmClock",
			Bomb = "Bomb",
			NannerPeel = "NannerPeel",
			StarVial = "StarVial",
			Vitamins = "Vitamins",
			StarJug = "StarJug",
			Key = "Key",
			BigPropTool = "BigPropTool",
			SnakeBox = "SnakeBox",
			Bread = "Bread",
			Lighter = "Lighter",
			GweenSoda = "GweenSoda",
			Multitool = "Multitool",
			Donut = "Donut",
			Nanner = "Nanner",
			BandagePack = "BandagePack",
			RiftSmoothie = "RiftSmoothie",
			GeneratorFuse = "GeneratorFuse",
			KeyElectrical = "KeyElectrical",
			Shakelight = "Shakelight",
			Lantern = "Lantern",
			HolyGrenade = "HolyGrenade",
			KeyIron = "KeyIron",
			KeyRetro = "KeyRetro",
			LaserPointer = "LaserPointer",
			RiftCandle = "RiftCandle",
			SkeletonKey = "SkeletonKey",
			BigBomb = "BigBomb"
}

local args = {
	"Give Items",
	{
		Players = {
			Player = Player.Name
		},
		Items = {
            Item = tostring(Item)
		}
	}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.AddItems(Player, Item)
    if Player == nil then return end --Player
    if Item == nil then return end -- Items in a table, must be valid
        --EXAMPLE LIST
    local ValidList = {
            Crucifix = "Crucifix",
			LibraryHintPaper = "LibraryHintPaper",
			HintBook = "HintBook",
			Flashlight = "Flashlight",
			AloeVera = "AloeVera",
			BoxingGloves = "BoxingGloves",
			GoldGun = "GoldGun",
			Bulklight = "Bulklight",
			Compass = "Compass",
			Shears = "Shears",
			BatteryPack = "BatteryPack",
			Candle = "Candle",
			CarryPropTool = "CarryPropTool",
			LibraryHintPaperHard = "LibraryHintPaperHard",
			StarBottle = "StarBottle",
			KeyBackdoor = "KeyBackdoor",
			Straplight = "Straplight",
			StopSign = "StopSign",
			Lockpick = "Lockpick",
			RiftJar = "RiftJar",
			Cheese = "Cheese",
			Glowsticks = "Glowsticks",
			TipJar = "TipJar",
			Knockbomb = "Knockbomb",
			Smoothie = "Smoothie",
			AlarmClock = "AlarmClock",
			Bomb = "Bomb",
			NannerPeel = "NannerPeel",
			StarVial = "StarVial",
			Vitamins = "Vitamins",
			StarJug = "StarJug",
			Key = "Key",
			BigPropTool = "BigPropTool",
			SnakeBox = "SnakeBox",
			Bread = "Bread",
			Lighter = "Lighter",
			GweenSoda = "GweenSoda",
			Multitool = "Multitool",
			Donut = "Donut",
			Nanner = "Nanner",
			BandagePack = "BandagePack",
			RiftSmoothie = "RiftSmoothie",
			GeneratorFuse = "GeneratorFuse",
			KeyElectrical = "KeyElectrical",
			Shakelight = "Shakelight",
			Lantern = "Lantern",
			HolyGrenade = "HolyGrenade",
			KeyIron = "KeyIron",
			KeyRetro = "KeyRetro",
			LaserPointer = "LaserPointer",
			RiftCandle = "RiftCandle",
			SkeletonKey = "SkeletonKey",
			BigBomb = "BigBomb"
}

local args = {
	"Give Items",
	{
		Players = {
			Player = Player.Name
		},
		Items = Item
		
	}
}
APR:FireServer(unpack(args))
end


function AdminHookAPI.SpawnPlayerEntity(Player, Entity)
          if not Player then print("No player arg was given") return end
          if not Entity then print("No Valid Entity Given") return end
          local TempConverted
    if Entity == "Void" then
        TempConverted =  "VoidPlayer"
    end

    if Entity == "A-90" or "A90" then
        TempConverted =  "A90Player"
    end

    if Entity == "Screech" then
        TempConverted =  "ScreechPlayer"
    end

     if Entity == "Glitch" then
        TempConverted =  "GlitchPlayer"
    end

    if TempConverted == nil then print("No Valid Entity Given") return end

local args = {
	TempConverted,
	{
		Players = {
			Player = Player.Name
		}
	}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.SpawnServerEntity(Entity)
    --EXAMPLE LIST
    local ValidList = {
        "Rush",
      "Ambush",  
      "Figure",
      "Eyes",
      "Jack",
      "Dread",
      "Giggle",
      "Gloombats",
      "Blitz",
      "Lookman",
      "A-60",
      "A-120",
      "Jeff The Killer",
      "Sally",
      "Monument"

    }
     if not Entity then print("No Valid Entity Given") return end
     local args = {
	Entity
	{}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.SpawnCustomEntity(FogImage,FaceImage,FogColor,FarSound,LightColor,CloseSound,EnemySpeed,EnemyDelay,EnemyDamage,EnemyRebounds)
    --I AM NOT GOING TO CHECK EVERY SINGLE VARIABLES IN THIS COMMAND, NO!!!!
local args = {
	"Spawn Custom Entity",
	{
		["Fog Image ID"] = FogImage,
		["Face Image ID"] = FaceImage,
		["Fog Color"] = FogColor,
		Rebounds = EnemyRebounds,
		["Far Sound"] = FarSound,
		["Light Color"] = LightColor,
		Speed = EnemySpeed,
		["Close Sound"] = CloseSound,
		Delay = EnemyDelay,
		Damage = EnemyDamage
	}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.BreakLights(LightNumber, AllLights)
    if LightNumber == nil then LightNumber = 500 end
    if AllLights == nil then AllLights = true end
local args = {
	"Break Lights",
	{
		["Lights Affected"] = LightNumber,
		["Affect All Rooms"] = AllLights
	}
}
APR:FireServer(unpack(args))
end

function AdminHookAPI.FlickerLights(LightNumber, Duration, AllLights)
    if LightNumber == nil then LightNumber = 100 end
    if Duration == nil then Duration = 1.2 end
    if AllLights == nil then AllLights = true end
local args = {
	"Flicker Lights",
	{
		["Lights Affected"] = LightNumber,
        ["Flicker Duration"] = Duration,
		["Affect All Rooms"] = AllLights
	}
}
APR:FireServer(unpack(args))
end

return AdminHookAPI; 
