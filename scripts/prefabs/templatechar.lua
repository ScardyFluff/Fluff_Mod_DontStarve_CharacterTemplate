
-- Sample, The Singleplayer Template - templatechar.lua

-- References the player_common script file for all in-game animations.
local MakePlayerCharacter = require "prefabs/player_common"

-- Use the assets you've included in your anim folder.
local assets = {
	Asset("ANIM", "anim/templatechar.zip"),
}

-- Load non-character stuff. Like an item or pet.
local prefabs = 
{
--	"example_item",
}

-- Starting Items
-- What will appear in templatechar's inventory when starting a game.
-- NOTE: The items can stack, so you'll have 3 Flint and 3 Twigs in 2 inventory slots.
local start_inv = 
{
	"flint",
	"flint",
	"flint",
	"twigs",
	"twigs",
	"twigs",
	"gogglesnormalhat",
	"gasmaskhat"
--	"example_item"
}

-- Here's where you set up the stuff that will happen while you play.
local fn = function(inst)

-- Character Voice ------------------------------------------------------------------------------
-- todo: check dlc voices
	inst.soundsname = "wilson"

--	Base Game: wilson, willow, wolfgang, wendy, wx78, wickerbottom, woodie, wes, waxwell, wagstaff
--	DLC: wathgrithr, webber, walani, warly, wilbur, woodlegs, wilba, wormwood, wheeler

-- Map Icon -------------------------------------------------------------------------------------
	local minimap = inst.entity:AddMiniMapEntity()
	minimap:SetIcon( "templatechar.tex" )

-- Health Stats ---------------------------------------------------------------------------------
	inst.components.health:SetMaxHealth(150) -- Base Health. (Constant)
    inst.components.health.absorb = 0.10 -- The percentage of damage that will be nullified from the inflicted damage. (Percentage)

--	NOTES:
--	SetMaxHealth = Base Health.
--	absorb = ?????

-- Hunger Stats ---------------------------------------------------------------------------------
	inst.components.hunger:SetMax(5)
	inst.components.hunger.SetRate = 1 * TUNING.WILSON_HUNGER_RATE
	inst.components.hunger.SetKillRate = 1 * TUNING.WILSON_HEALTH/TUNING.STARVE_KILL_TIME

--	NOTES:
--	SetMax = Base Hunger.
--	SetRate = How quick your character will grow hungry. It takes around 7 seconds for it to lower by one point.
--	SetKillRate = How quick your health will lower when hunger is at 0. it takes around 1 second for it to lower by one point.

-- Sanity Stats ---------------------------------------------------------------------------------
	inst.components.sanity:SetMax(200) --Base Sanity (Constant)
	inst.components.sanity.night_drain_mult = 1 --Sanity drain at night and dusk.
--	inst.components.sanity.dapperness = TUNING.DAPPERNESS_SMALL --Constant sanity increase.
	
-- Combat Stats ---------------------------------------------------------------------------------
--	inst.components.combat:SetDefaultDamage(TUNING.UNARMED_DAMAGE)
    inst.components.combat.damagemultiplier = 1 --Your character's attack power.
	
-- Movement Stats -------------------------------------------------------------------------------
    inst.components.locomotor.walkspeed = 4 --Normal Walking Speed
    inst.components.locomotor.runspeed = 6 --Running speed when on roads or using a cane.

-- Temperature Stats ----------------------------------------------------------------------------
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
