
-- Sample, The Singleplayer Template -- modmain.lua

PrefabFiles = {
	"templatechar",
}

Assets = {

-- Character Portrait
	Asset( "IMAGE", "bigportraits/templatechar.tex" ),
	Asset( "ATLAS", "bigportraits/templatechar.xml" ),

-- Menu Icons
	Asset( "IMAGE", "images/saveslot_portraits/templatechar.tex" ),
	Asset( "ATLAS", "images/saveslot_portraits/templatechar.xml" ),
	Asset( "IMAGE", "images/selectscreen_portraits/templatechar.tex" ),
	Asset( "ATLAS", "images/selectscreen_portraits/templatechar.xml" ),
	Asset( "IMAGE", "images/selectscreen_portraits/templatechar_silho.tex" ),
	Asset( "ATLAS", "images/selectscreen_portraits/templatechar_silho.xml" ),

-- Map Icons
	Asset( "IMAGE", "images/map_icons/templatechar.tex" ),
	Asset( "ATLAS", "images/map_icons/templatechar.xml" ),

-- Character Voice
--	Asset("SOUNDPACKAGE", "sound/templatechar.fev"),
--	Asset("SOUND", "sound/templatechar.fsb"),

-- Item Icons
--	Asset("ATLAS", "images/inventoryimages/templatechar_hat.xml"),
--	Asset("IMAGE", "images/inventoryimages/templatechar_hat.tex"),
}

-- Voice Patching
--	RemapSoundEvent( "dontstarve/characters/templatechar/death_voice", "templatechar/characters/templatechar/death_voice" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/hurt", "templatechar/characters/templatechar/hurt" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/talk_LP", "templatechar/characters/templatechar/talk_LP" )

--	GLOBAL.templatechar_voice = GetModConfigData("templatechar_voice")

--G = GLOBAL
--T = G.TUNING
--RECIPETABS = G.RECIPETABS
--TECH = G.TECH
--AddRecipe = G.Recipe
--Ingredient = G.Ingredient

--G.STRINGS.NAMES.TEMPLATECHAR_HAT = "Test Hat"
--G.STRINGS.RECIPE_DESC.TEMPLATECHAR_HAT = "Crafting description."
--G.STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEMPLATECHAR_HAT = "It's a hat for testing."

AddMinimapAtlas("images/map_icons/templatechar.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local _G = GLOBAL

-- Character Info
	STRINGS.CHARACTER_TITLES.templatechar = "The Singleplayer Template"
	STRINGS.CHARACTER_NAMES.templatechar = "Sample"
	STRINGS.CHARACTER_DESCRIPTIONS.templatechar = "*Perk 1\n*Perk 2\n*Perk 3"
	STRINGS.CHARACTER_QUOTES.templatechar = "\"Quote.\""

-- Custom Speech
	STRINGS.CHARACTERS.TEMPLATECHAR = require "speech_templatechar"

-- In-Game Name
	STRINGS.NAMES.TEMPLATECHAR = "Sample"

-- Add character to game and assign pronouns.
-- Possible pronouns are: MALE(he/his), FEMALE(she/her) and ROBOT(they/them)??.
table.insert(GLOBAL.CHARACTER_GENDERS.ROBOT, "templatechar")

-- AddModCharacter("templatechar")
