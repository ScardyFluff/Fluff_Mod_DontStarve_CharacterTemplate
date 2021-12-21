local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
	Asset("ANIM", "anim/templatechar.zip"),
	Asset("SCRIPT", "scripts/prefabs/player_common.lua")
}

local prefabs = 
{
--	"example_item",
}

-- Starting Items
local start_inv = 
{
	"flint",
	"flint",
	"flint",
	"twigs",
	"twigs",
	"twigs"
--	"example_item"
}

local fn = function(inst)
-- Character Voice
	inst.soundsname = "wilson"

-- Minimap icon
	local minimap = inst.entity:AddMiniMapEntity()
	minimap:SetIcon( "templatechar.tex" )

-- Health Stats
	inst.components.health:SetMaxHealth(150) --Base Health
    inst.components.health.absorb = 0.10 --The percentage of damage that will be nullified from the inflicted damage.

-- Hunger Stats
    inst.components.hunger:SetMax(150) --Base Hunger
--	inst.components.hunger:SetRate = 1 * TUNING.WILSON_HUNGER_RATE
--	inst.components.hunger:SetKillRate(TUNING.WILSON_HEALTH/TUNING.STARVE_KILL_TIME)
--	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE --How quick will your character get hungry.

-- Sanity Stats
	inst.components.sanity:SetMax(200) --Base Sanity
	inst.components.sanity.night_drain_mult = 1 --Sanity drain at night and dusk.
--	inst.components.sanity.dapperness = TUNING.DAPPERNESS_SMALL --Constant sanity increase.
	
-- Combat Stats
	--inst.components.combat:SetDefaultDamage(TUNING.UNARMED_DAMAGE)
    inst.components.combat.damagemultiplier = 1 --Your character's attack power.
	
-- Movement Stats
    inst.components.locomotor.walkspeed = 4 --Normal Walking Speed
    inst.components.locomotor.runspeed = 6 --Running speed when on roads or using a cane.

-- Temperature Stats
    inst.components.temperature.hurtrate = 1 --Amount of Health lost from freezing and/or overheating per second.
    inst.components.temperature.inherentinsulation = 0 --Your character's cold resistance  
    inst.components.temperature.inherentsummerinsulation = 0 --Your character's heat resistance.

-- Below is your character's sensitivity to the heat or cold.
-- (You don't need to add both if you intend on making your character immune/vurnerable to high or only low temeratures.)
    inst.components.temperature.maxtemp = 80 -- Maximum temperature for your character.
    inst.components.temperature.mintemp = -10 -- Minimum temperature for your character.

-- Temperature Info:
-- Below 15 is cold.
-- Above 60 is hot.
-- Chracters start to freeze at temperature 0.
-- Chracters start to overheat at temperature 70.
-- The lowest temperature for characters is -25.
-- The highest temperature for characters is 95.
end

return MakePlayerCharacter("templatechar", prefabs, assets, fn, start_inv)
