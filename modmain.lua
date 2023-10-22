
-- Sample, The Singleplayer Template - modmain.lua

-- Make sure to add all the ZIP's names from inside the anim folder.(?)
PrefabFiles = {
	"templatechar",
}

-- These are the files that aren't part of the ZIPs.
Assets = {
-- Character Portrait
-- This is the big image that appears on the left when you select a character.
	Asset( "IMAGE", "bigportraits/templatechar.tex" ),
	Asset( "ATLAS", "bigportraits/templatechar.xml" ),

-- Menu Icons
-- This is the image that appears when loading a savefile...
	Asset( "IMAGE", "images/saveslot_portraits/templatechar.tex" ),
	Asset( "ATLAS", "images/saveslot_portraits/templatechar.xml" ),

-- ...and these are for the character select screen!
-- NOTE: The templatechar_silho image is basically unused for your custom character.
	Asset( "IMAGE", "images/selectscreen_portraits/templatechar.tex" ),
	Asset( "ATLAS", "images/selectscreen_portraits/templatechar.xml" ),

	Asset( "IMAGE", "images/selectscreen_portraits/templatechar_silho.tex" ),
	Asset( "ATLAS", "images/selectscreen_portraits/templatechar_silho.xml" ),

-- Map Icon
-- This appears in the map, to mark where your character is.
	Asset( "IMAGE", "images/map_icons/templatechar.tex" ),
	Asset( "ATLAS", "images/map_icons/templatechar.xml" ),

-- Character Voice
-- If you want a custom voice, make sure to edit the file in the sound folder.
--	Asset("SOUNDPACKAGE", "sound/templatechar.fev"),
--	Asset("SOUND", "sound/templatechar.fsb"),

-- Item Icons
--	Asset("ATLAS", "images/inventoryimages/templatechar_hat.xml"),
--	Asset("IMAGE", "images/inventoryimages/templatechar_hat.tex"),
}

-- Voice Patching
-- I'm not sure if this is needed... or complete.
--	RemapSoundEvent( "dontstarve/characters/templatechar/talk_LP", "templatechar/characters/templatechar/talk_LP" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/hurt", "templatechar/characters/templatechar/hurt" )
--	RemapSoundEvent( "dontstarve/characters/templatechar/death_voice", "templatechar/characters/templatechar/death_voice" )

--	GLOBAL.templatechar_voice = GetModConfigData("templatechar_voice")

-- These are for shortening the names used when refering to stuff in code.
-- Don't touch unless you know what you're doing!
G = GLOBAL
T = G.TUNING
RECIPETABS = G.RECIPETABS
TECH = G.TECH
AddRecipe = G.Recipe
Ingredient = G.Ingredient

--G.STRINGS.NAMES.TEMPLATECHAR_HAT = "Test Hat"
--G.STRINGS.RECIPE_DESC.TEMPLATECHAR_HAT = "Crafting description."
--G.STRINGS.CHARACTERS.GENERIC.DESCRIBE.TEMPLATECHAR_HAT = "It's a hat for testing."

-- Adds the map icon to the proper place.
AddMinimapAtlas("images/map_icons/templatechar.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local _G = GLOBAL

-- Character Info
-- These strings are what are shown in in the character select screen.
-- Note: STRINGS.CHARACTER_NAMES.templatechar only appears once you beat the game.
	STRINGS.CHARACTER_TITLES.templatechar = "The Singleplayer Template"
	STRINGS.CHARACTER_NAMES.templatechar = "Sample"
	STRINGS.CHARACTER_DESCRIPTIONS.templatechar = "*Perk 1\n*Perk 2\n*Perk 3"
	STRINGS.CHARACTER_QUOTES.templatechar = "\"Quote.\""

-- Custom Speech
-- Here is EVERYTHING your character will say in the game.
	STRINGS.CHARACTERS.TEMPLATECHAR = require "speech_templatechar"

-- In-Game Name
-- This is just the first name of your character, I guess.
	STRINGS.NAMES.TEMPLATECHAR = "Sample"

-- Add character to game and assign pronouns.
-- Possible pronouns are: MALE(he/his), FEMALE(she/her) and ROBOT(they/their).
table.insert(GLOBAL.CHARACTER_GENDERS.ROBOT, "templatechar")

AddModCharacter("templatechar")
