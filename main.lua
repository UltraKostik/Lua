-- develops by @UltraKostik

print("ATLRPG: Automatic Terminal Lua RPG")

-- entity

local fighter  = {name = "Fighter",  currentHP = 140, maxHP = 140, temporaryHP = 0,  minDamage = 3,  maxDamage = 9,  action = "bludgeoning"}
local wizard   = {name = "Wizard",   currentHP = 60,  maxHP = 60,  temporaryHP = 0,  minDamage = 8,  maxDamage = 18, action = "fire"}
local cleric   = {name = "Cleric",   currentHP = 100, maxHP = 100, temporaryHP = 10, minDamage = 4,  maxDamage = 10, action = "radiant"}
local rogue    = {name = "Rogue",    currentHP = 80,  maxHP = 80,  temporaryHP = 0,  minDamage = 5,  maxDamage = 20, action = "piercing"}
local bard     = {name = "Bard",     currentHP = 90,  maxHP = 90,  temporaryHP = 0,  minDamage = 4,  maxDamage = 12, action = "psychic"}

local monster  = {name = "Monster",  currentHP = 50,  maxHP = 50,  temporaryHP = 0,  minDamage = 2,  maxDamage = 6,  action = "slashing"}
local beast    = {name = "Beast",    currentHP = 60,  maxHP = 60,  temporaryHP = 0,  minDamage = 3,  maxDamage = 9,  action = "piercing"}
local giant    = {name = "Giant",    currentHP = 160, maxHP = 160, temporaryHP = 0,  minDamage = 6,  maxDamage = 14, action = "bludgeoning"}
local dragon   = {name = "Dragon",   currentHP = 220, maxHP = 220, temporaryHP = 0,  minDamage = 12, maxDamage = 28, action = "fire"}
local humanoid = {name = "Humanoid", currentHP = 90,  maxHP = 90,  temporaryHP = 0,  minDamage = 4,  maxDamage = 12, action = "slashing"}

local heroes = {fighter, wizard, cleric, rogue, bard}
local enemies = {monster, beast, humanoid, giant, dragon}

math.randomseed(os.time())

-- functions

local randomHero = heroes[math.random(1, #heroes)]

local function getStartMessage()
    local messages = {"The dark has been waiting.", "The way back is already lost.", "The stones remember every fool who tried.", "Something ancient stirs below.", "It has been expecting him."}
    return messages[math.random(1, #messages)]
end

local function getOneFloor()
        local messages = {"You descend deeper. The air grows cold.", "The stones drip with something old.", "Torches on the wall still burn. Someone was here.", "A distant howl echoes through the corridor.", "The floor is littered with bones."}
    local oneFloorEnimies = {"Mind Flayers", "Grells", "Undertakers"}
    return oneFloorEnimies[math.random(1, #oneFloorEnimies)]
end

local power = function(entity) return math.floor(entity.currentHP * (entity.minDamage + entity.maxDamage) / 2) end

-- game

-- while randomHero.currentHP > 0 do
    print(string.format("Your %s with %d power descends into Undermountain: %s", randomHero.name, power(randomHero), getStartMessage()))
    print(string.format("Your %s with %d power descends into Undermountain: %s", randomHero.name, power(randomHero), getStartMessage()))
-- end