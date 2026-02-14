# AdminHookAPI

## 📌 Overview

**AdminHookAPI** is a modding API designed for Roblox DOORS with the
Admin Panel enabled (requires a Roblox injector).

It allows developers to execute Admin Panel features directly through
code, removing the need to manually trigger RemoteEvents for every
action.

This API also enables access to certain Admin-only functionality.

------------------------------------------------------------------------

## ⚠ Requirements

-   Roblox
-   DOORS (Admin Panel Enabled)
-   A Roblox injector
-   Script execution capability

------------------------------------------------------------------------

## 🚀 Installation

Add the following at the beginning of your script:

``` lua
local AdminHookAPI = loadstring(game:HttpGet("https://raw.githubusercontent.com/truebreaze/AdminHookAPI/refs/heads/main/API.lua", true))()
```

You can then use the API functions directly in your script.

------------------------------------------------------------------------

## ✨ Features

With AdminHookAPI, you can:

-   Execute Admin Panel actions via code
-   Spawn server and client entities
-   Modify player stats
-   Give developer / invalid items (Lotus, LotusPetal, CandyBag, Candy)
-   Spawn AdminPanel entities (Supports Dev Entities, like Bramble and Groundskeeper)
-   Control lighting
-   Handle room events
-   And more

------------------------------------------------------------------------

## 📚 API Reference

### Player Actions

``` lua
AdminHookAPI:Kill(Player)
```

Kills the given player.

``` lua
AdminHookAPI:Explode(Player)
```

Explodes the given player (fatal).

``` lua
AdminHookAPI:Fling(Player)
```

Flings the given player.

``` lua
AdminHookAPI:Heal(Player)
```

Fully heals the given player.

``` lua
AdminHookAPI:Revive(Player)
```

Revives the given player.

------------------------------------------------------------------------

### Player Stats

``` lua
AdminHookAPI:SetStat(Player, MaxHP, AllowSlide, StarShield, SpeedBoost, HP, AllowJumping, GodMode)
```

Sets custom stats for the given player.

``` lua
AdminHookAPI:Gold(Player, Amount, Add)
```

Sets or adds a gold amount to the player.

------------------------------------------------------------------------

### Items

``` lua
AdminHookAPI:AddItem(Player, Item)
```

Adds an item to the player's hotbar.

``` lua
AdminHookAPI:AddItems(Player, ItemList)
```

Adds multiple items to the player's hotbar.

Supports developer / invalid items such as: - Lotus - LotusPetal -
CandyBag - Candy

------------------------------------------------------------------------

### Entity Spawning

``` lua
AdminHookAPI:SpawnPlayerEntity(Player, Entity)
```

Spawns a client-side entity for a specific player.

``` lua
AdminHookAPI:SpawnServerEntity(Entity)
```

Spawns a server-side entity.

``` lua
AdminHookAPI:SpawnCustomEntity(
    FogImage,
    FaceImage,
    FogColor,
    FarSound,
    LightColor,
    CloseSound,
    EnemySpeed,
    EnemyDelay,
    EnemyDamage,
    EnemyRebounds
)
```

Spawns a fully customizable entity.\
Invalid values may cause errors.

------------------------------------------------------------------------

### Lighting Control

``` lua
AdminHookAPI:BreakLights(LightNumber, AllLights)
```

Breaks lights.

``` lua
AdminHookAPI:FlickerLights(LightNumber, Duration, AllLights)
```

Flickers lights for a given duration.

------------------------------------------------------------------------

### Extra Functions (Not Admin Panel Related)

``` lua
AdminHookAPI:OnNewRoom(callback)
```

Triggered whenever a new room is generated.\
This function originates from SimpleDoorAPI.

------------------------------------------------------------------------

## 🧠 Example Usage

``` lua
AdminHookAPI:Kill(game.Players.LocalPlayer)
AdminHookAPI:Gold(game.Players.LocalPlayer, 1000, true)
AdminHookAPI:SpawnServerEntity("Rush")
```

------------------------------------------------------------------------

## ⚠ Disclaimer

This API is intended for modding purposes in environments where the
Admin Panel is enabled.\
Use responsibly.
