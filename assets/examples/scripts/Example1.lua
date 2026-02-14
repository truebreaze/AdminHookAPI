local AdminHookAPI = loadstring(game:HttpGet("https://raw.githubusercontent.com/truebreaze/AdminHookAPI/refs/heads/main/API.lua", true))()


local Players = game:GetService("Players")

local function SpawnDread() --Spawns Dread.
    local temp = game.workspace.CurrentRooms:FindFirstChild(tostring(game.ReplicatedStorage.GameData.LatestRoom.Value))
    if temp:GetAttribute("Shade") == false or temp:GetAttribute("Shade") == nil then --checks for Halt
    if game.workspace:FindFirstChild("SeekMovingNewClone") == nil and game.workspace:FindFirstChild("EyestalkMoving") == nil then --Checks if Seek or Eyestalk is there

        AdminHookAPI:SpawnServerEntity("Dread") --Calls the API, Spawns Dread

    end
end
end

local function GiveAllPlayers(Item) --i'll add this to the main api someday
    local temp = game.workspace.CurrentRooms:FindFirstChild(tostring(game.ReplicatedStorage.GameData.LatestRoom.Value))

    for _, player in Players:GetPlayers() do
        AdminHookAPI:AddItem(player, Item)
    end

    
end

local function GoldAllPlayers(Amount) --i might add this to the main api someday
    local temp = game.workspace.CurrentRooms:FindFirstChild(tostring(game.ReplicatedStorage.GameData.LatestRoom.Value))

    for _, player in Players:GetPlayers() do
        AdminHookAPI:Gold(player, Amount, true)
    end

    
end

local function newroom()
    task.wait()
    if game.ReplicatedStorage.GameData.LatestRoom.Value ~= 50 then --would be quite unfair, no?
    SpawnDread() --Calls the local SpawnDread Function
    GoldAllPlayers(15) --Gives the Player Gold, 15 in this case
    end
    if game.workspace.CurrentRooms:FindFirstChild(tostring(game.ReplicatedStorage.GameData.LatestRoom.Value)):GetAttribute("RequiresGenerator") == true then --would be quite unfair, no?
    GiveAllPlayers("Lockpick")
    end
end
-- Bind the function to the room creation event
AdminHookAPI:OnNewRoom(newroom) --doesn't work on end room's door

GiveAllPlayers("Multitool")

print("Outta Time Example LOADED")