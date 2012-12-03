-- =============================================================
-- Copyright Roaming Gamer, LLC. 2009-2012
-- =============================================================
-- main.lua
-- =============================================================
-- Short and Sweet License: 
-- 1. You may use anything you find in the SSKCorona library and sampler to make apps and games for free or $$.
-- 2. You may not sell or distribute SSKCorona or the sampler as your own work.
-- 3. If you intend to use the art or external code assets, you must read and follow the licenses found in the
--    various associated readMe.txt files near those assets.
--
-- Credit?:  Mentioning SSKCorona and/or Roaming Gamer, LLC. in your credits is not required, but it would be nice.  Thanks!
--
-- =============================================================
-- 
-- =============================================================

print("\n\n\n****************************************************************")
print("*********************** \\/\\/ main.cs \\/\\/ **********************")
print("****************************************************************\n\n")
io.output():setvbuf("no") -- Don't use buffer for console messages

--require("ssk.autodoc")                            -- Auto documents SSKCorona library as they are loaded (NORMALLY NOT LOADED)
--timer.performWithDelay( 67, dumpIndexes )

----------------------------------------------------------------------
--	1.							GLOBALS								--
----------------------------------------------------------------------
local globals = require( "ssk.globals" ) -- Load Standard Globals

-- ================= OPEN CLOSE TESTING (BEGIN)
-- Note: This section is specific to the sampler and enables some basic testing/debugging.
-- Depending on the settings selected below, the sampler will automatically open (and
-- optionally close then reopen) one or more of the examples.  It will do this based
-- on the settings and timings provided below.  The ultimate goal of this is to find bugs
-- in the libraries and examples which often expose themselves as open-close-purge-reload
-- corner cases.
--
openCloseTestingMinDelay = 66 -- 250
openCloseTestingMaxDelay = 67 -- 1500

-- Automatically open-close-open-... first example in list
enableOpenCloseTesting = true
enableOpenCloseTesting = false

-- Automatically open-close-open-... random example in list
enableRandomOpenCloseTesting = true
enableRandomOpenCloseTesting = false

-- Automatically open first example in list (useful while editing that sample)
-- Above settings take precedence
enableAutoLoad = true
enableAutoLoad = false
-- ================= OPEN CLOSE TESTING (END)

----------------------------------------------------------------------
-- 2. LOAD MODULES													--
----------------------------------------------------------------------
-- STORYBOARD
local storyboard = require "storyboard"

-- PHYSICS
local physics = require("physics")
physics.start()

--physics.setGravity(0,0)
--physics.setDrawMode( "hybrid" )

-- SSKCorona Libraries
require("ssk.loadSSK")

-- Game Specific Modules
sampleManager = require("sampleMgr")

--========================================================================================
--========================================================================================
-- 'Register' SSKCorona Samples (EFM need secondary subcategory or better indexing method)
--========================================================================================
--========================================================================================

-- =============================================
-- Current WIP (move to proper location after testing)
-- =============================================
--sampleManager:addSample("Template", "Template 1", "ssk_sampler._templates.template1", true ) -- SMALL SCREEN BUTTONS
--sampleManager:addSample("Template", "Template 2", "ssk_sampler._templates.template2", true )  -- FULL SCREEN NO BUTTONS 
--sampleManager:addSample("Template", "Benchmark Template 1: Operations Per Second", "ssk_sampler._templates.template3_benchmark_OPS", true ) 
--sampleManager:addSample("Template", "Benchmark Template 2: Operation vs. Operation", "ssk_sampler._templates.template4_benchmark_OPVS", true ) 


-- =============================================
-- OFFLINE WIPs
-- =============================================
--sampleManager:addSample("SSKCorona Feature Testing", "Path Following", "ssk_sampler.featureTesting.c_components.pathfollowing" )


-- =============================================
-- Forums Help (EFM add forum entry links in each example)
-- =============================================
sampleManager:addSample("Forums Help", "121113 - Quick question on transitions", "ssk_sampler.forumhelp.121113_quick_question_on_transitions", true )  -- FULL SCREEN NO BUTTONS 
sampleManager:addSample("Forums Help", "121111 - Image objects size change ...", "ssk_sampler.forumhelp.121111_image_objects_size_change")
sampleManager:addSample("Forums Help", "121029 - ... changing .. orientation (alternative)", "ssk_sampler.forumhelp.121029_manually_changing_screen_orientation")
sampleManager:addSample("Forums Help", "121028 - Visually vibrating object", "ssk_sampler.forumhelp.121028_vibrating_object")
sampleManager:addSample("Forums Help", "121027 - Touch does not end ... offscreen", "ssk_sampler.forumhelp.121027_touch_does_not_end_offscreen" )
sampleManager:addSample("Forums Help", "121023 - Dragging objects ... like a puzzle", "ssk_sampler.forumhelp.121023_dragging-objects-specific-location-puzzle")
sampleManager:addSample("Forums Help", "121023 - Dragging objects ... like a puzzle (part 2)", "ssk_sampler.forumhelp.121023_dragging-objects-specific-location-puzzle2")
sampleManager:addSample("Forums Help", "121020 - Getting Sprite to Jump Forward", "ssk_sampler.forumhelp.121020_sprite_jump_forward" )
sampleManager:addSample("Forums Help", "121015 - Display ellipse with an angle", "ssk_sampler.forumhelp.121015_display_ellipse_with_angle" )
sampleManager:addSample("Forums Help", "121008 - Calculating intersecting lines", "ssk_sampler.forumhelp.121008_calculating_intersecting_lines" )
sampleManager:addSample("Forums Help", "121008 - Countdown Help", "ssk_sampler.forumhelp.121008_countdown_help" )
sampleManager:addSample("Forums Help", "120815 - Looking to make drawer", "ssk_sampler.forumhelp.120815_sliding_drawer" )


-- =============================================
-- SSKCorona Feature Testing (i.e. Validation)
-- =============================================
-- ==
-- Behavior Tests
-- ==
sampleManager:addSample("SSKCorona Feature Testing", "Drag-n-Drop", "ssk_sampler.featureTesting.c_components.dragNDrop_logic" )

-- ==
-- Component Tests
-- ==
-- Facing
sampleManager:addSample("SSKCorona Feature Testing", "Face Point (Touch)", "ssk_sampler.featureTesting.c_components.faceTouch_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Face Point (Touch) @ Fixed Rate", "ssk_sampler.featureTesting.c_components.faceTouchFixedRate_logic" ) 

-- Moving
sampleManager:addSample("SSKCorona Feature Testing", "Move To Point (Touch)", "ssk_sampler.featureTesting.c_components.moveToTouch_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Move To Point (Touch) @ Fixed Rate", "ssk_sampler.featureTesting.c_components.moveToTouchFixedRate_logic" )

-- Aiming (EFM broken; math?; behaviors?)
sampleManager:addSample("SSKCorona Feature Testing", "Aim At Object #1", "ssk_sampler.featureTesting.c_components.aimAtObject_logic" ) 
sampleManager:addSample("SSKCorona Feature Testing", "Aim At Object #2 (Distance Limit)", "ssk_sampler.featureTesting.c_components.aimAtObject2_logic" )

-- Wrapping
sampleManager:addSample("SSKCorona Feature Testing", "Wrap Point (Screen Wrap)", "ssk_sampler.featureTesting.c_components.wrapping1_logic" )

-- Path Following (EFM - WIP)
--sampleManager:addSample("SSKCorona Feature Testing", "Path Following", "ssk_sampler.featureTesting.c_components.pathfollowing" )

-- ==
-- Networking Utilities & External Networking Classes Tests
-- ==
sampleManager:addSample("SSKCorona Feature Testing", "UDP Auto-Connect", "ssk_sampler.featureTesting.u_networking.autoconnect" )
sampleManager:addSample("SSKCorona Feature Testing", "UDP Manual Connect", "ssk_sampler.featureTesting.u_networking.manualconnect" )

-- ==
-- Button Factory Tests
-- ==
sampleManager:addSample("SSKCorona Feature Testing", "Push Buttons", "ssk_sampler.featureTesting.f_buttons.pushButtonsTest_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Toggle Buttons", "ssk_sampler.featureTesting.f_buttons.toggleButtonsTest_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Radio Buttons", "ssk_sampler.featureTesting.f_buttons.radioButtonsTest_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Sliders", "ssk_sampler.featureTesting.f_buttons.slidersTest_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Standard Button Callbacks", "ssk_sampler.featureTesting.f_buttons.buttonCallbacksTest_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Push Button Masks", "ssk_sampler.featureTesting.f_buttons.pushButtonMasks", true )

-- ==
-- Label Factory Tests
-- ==
sampleManager:addSample("SSKCorona Feature Testing", "Labels", "ssk_sampler.featureTesting.f_labels.labels_logic" )

-- ==
-- HUDs (EFM need more snazzy huds soon)
-- ==
sampleManager:addSample("SSKCorona Feature Testing", "HUDs 1 - Numeric Meters", "ssk_sampler.featureTesting.f_huds.numericmeter_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "HUDs 2 - Percentage Dials", "ssk_sampler.featureTesting.f_huds.percentage_dials_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "HUDs 3 - Sliding Meters", "ssk_sampler.featureTesting.f_huds.visualmeters_logic" )

-- ==
-- Inputs
-- ==
sampleManager:addSample("SSKCorona Feature Testing", "Inputs - Joystick (Normal)", "ssk_sampler.featureTesting.f_inputs.joystick1_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Inputs - Horizontal Snap (Normal)", "ssk_sampler.featureTesting.f_inputs.horizSnap1_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Inputs - Vertical Snap (Normal)", "ssk_sampler.featureTesting.f_inputs.vertSnap1_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Inputs - Joystick (Virtual)", "ssk_sampler.featureTesting.f_inputs.joystick2_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Inputs - Horizontal Snap (Virtual)", "ssk_sampler.featureTesting.f_inputs.horizSnap2_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Inputs - Vertical Snap (Virtual)", "ssk_sampler.featureTesting.f_inputs.vertSnap2_logic" )

-- ==
-- Inputs (Applied)
-- ==
sampleManager:addSample("SSKCorona Feature Testing", "Inputs Applied - Horizontal Snap", "ssk_sampler.featureTesting.f_inputs.applied.horizSnap1_logic" )
sampleManager:addSample("SSKCorona Feature Testing", "Inputs Applied - Joystick", "ssk_sampler.featureTesting.f_inputs.applied.joystick1_logic" )

-- ==
-- Prototyping (Objects)
-- ==
--sampleManager:addSample("SSKCorona Feature Testing", "Sampler Template 1 Test", "ssk_sampler.featureTesting._templates.template1" )
--sampleManager:addSample("SSKCorona Feature Testing", "Sampler Template 2 Test", "ssk_sampler.featureTesting._templates.template2" )

-- ==
-- Image Sheet Mgr
-- ==
--sampleManager:addSample("SSKCorona Feature Testing", "Sampler Template 1 Test", "ssk_sampler.featureTesting._templates.template1" )
--sampleManager:addSample("SSKCorona Feature Testing", "Sampler Template 2 Test", "ssk_sampler.featureTesting._templates.template2" )
sampleManager:addSample("SSKCorona Feature Testing", "Image Sheet Manager", "ssk_sampler.featureTesting.c_imageSheets.imgSheetMgr" )

-- ==
-- Templates
-- ==
--sampleManager:addSample("SSKCorona Feature Testing", "Sampler Template 1 Test", "ssk_sampler._templates.template1" )
--sampleManager:addSample("SSKCorona Feature Testing", "Sampler Template 2 Test", "ssk_sampler._templates.template2" )
--sampleManager:addSample("SSKCorona Feature Testing", "Benchmark Template 1: Operations Per Second Test", "ssk_sampler._templates.template3_benchmark_OPS" ) 
--sampleManager:addSample("SSKCorona Feature Testing", "Benchmark Template 2: Operation vs. Operation Test", "ssk_sampler._templates.template4_benchmark_OPVS") 


-- =============================================
-- Mechanics
-- =============================================
-- ==
-- Camera
-- ==
sampleManager:addSample("Mechanics - Camera", "#1 - 3 Layer (random objects; fixed Rate)", "ssk_sampler.mechanics.camera.scrolling1_logic" )
sampleManager:addSample("Mechanics - Camera", "Left-Right Auto-Scroll", "ssk_sampler.mechanics.camera.lrautoscroll_logic" )
sampleManager:addSample("Mechanics - Camera", "Legend of Zelda Auto-Scroll", "ssk_sampler.mechanics.camera.zeldascroll_logic" )

-- ==
-- Movement
-- ==
sampleManager:addSample("Mechanics - Movement", "Linear Movement (L/R/U/D; Buttons)", "ssk_sampler.mechanics.movement.linearMovement_logic" )
sampleManager:addSample("Mechanics - Movement", "Step Movement (no Repeat; Buttons)", "ssk_sampler.mechanics.movement.stepNoRepeatMovement_logic" )
sampleManager:addSample("Mechanics - Movement", "Step Movement (w/ Repeat; Buttons)", "ssk_sampler.mechanics.movement.stepwRepeatMovement_logic" )
sampleManager:addSample("Mechanics - Movement", "Thrust Movement (L/R/U/D; Buttons)", "ssk_sampler.mechanics.movement.thrustMovement_logic" )
sampleManager:addSample("Mechanics - Movement", "Asteroids Movement (Buttons)", "ssk_sampler.mechanics.movement.asteroidsMovement_logic" )

-- ==
-- Platforming (Broken!)
-- ==
sampleManager:addSample("Mechanics - Platforming", "One-Way Platform", "ssk_sampler.mechanics.platforming.1wayplatform_logic" )

-- =============================================
-- Benchmarks
-- =============================================
sampleManager:addSample("Benchmarks", "math.sqrt() - Normal : Operations Per Second", "ssk_sampler.benchmarks.math_sqrt_remote", true ) 
sampleManager:addSample("Benchmarks", "math.sqrt() - Localized : Operations Per Second", "ssk_sampler.benchmarks.math_sqrt_local", true ) 
sampleManager:addSample("Benchmarks", "math.sqrt() - Localized vs. Normal", "ssk_sampler.benchmarks.math_sqrt_local_vs_remote", true ) 
sampleManager:addSample("Benchmarks", "ASCII85 Encoding : KB Per Second", "ssk_sampler.benchmarks.ascii85", true ) 


-- =============================================
-- Experiments
-- =============================================
sampleManager:addSample("Experiments", "Co-Routines", "ssk_sampler.experiments.coroutineTest", true )
sampleManager:addSample("Experiments", "GGCharts Test#1", "ssk_sampler.experiments.GlitchGames.test1", true )


-- =============================================
-- Games
-- =============================================
-- ==
-- Prototypes (May be incomplete and/or semi-functional)
-- ==
--sampleManager:addSample("Games (prototype)", "Ni", "ssk_sampler.games.prototypes.ni" )
--sampleManager:addSample("Games (prototype)", "4-in-a-row", "ssk_sampler.games.prototypes.4inarow" )
--sampleManager:addSample("Games (prototype)", "Something Green", "ssk_sampler.games.prototypes.something_green" )
--sampleManager:addSample("Games (prototype)", "Something Green2", "ssk_sampler.games.prototypes.something_green_w_collision" )

sampleManager:addSample("Puzzle Games #1", "Tic-Tac-Toe", "ssk_sampler.games.puzzle1.tictactoe.tictactoe" )
sampleManager:addSample("Puzzle Games #1", "4-in-a-row", "ssk_sampler.games.puzzle1.4inarow.4inarow" )
sampleManager:addSample("Puzzle Games #1", "Connect-3", "ssk_sampler.games.puzzle1.connect3.connect3" )
sampleManager:addSample("Action Games #1", "Asteroids", "ssk_sampler.games.action1.asteroids", true )

sampleManager:addSample("Misc", "Still Here?", "ssk_sampler.mechanics.stillhere", true )
sampleManager:addSample("Misc", "No Update", "ssk_sampler.mechanics.noupdate", true )

-- ==
-- Functional
-- ==


-- =============================================
-- Misc
-- =============================================



----------------------------------------------------------------------
-- 3. ONE-TIME INITIALIZATION										--
----------------------------------------------------------------------
-- Show device status bar?
display.setStatusBar(display.HiddenStatusBar)

-- Enable Multitouch
system.activate("multitouch")

-- set tap delay to 1/2 second to allow for double taps
system.setTapDelay(0.5)

-- Select standard font(s) (EFM move to ssk.fonts.lua or some such)
gameFont = native.systemFont
helpFont = native.systemFont
 
--	gameFont = "Abscissa"
--	helpFont = "Courier New"


-- Load Presets (Buttons, Labels, and Sounds)
--EFM local soundsInit = require("ssk.presets.sounds")
local labelsInit = require("ssk.presets.labels")
local buttonsInit = require("ssk.presets.buttons")

----------------------------------------------------------------------
-- 4. LOAD SPRITE / SET UP ANIMATIONS								--
----------------------------------------------------------------------
-- Load sprites and set up animations
--ssk.easysprites.createSpriteSet( "letterTiles", imagesDir .. "letterTiles.png", 80, 80, 54 )

----------------------------------------------------------------------
-- 5. LOAD NECESSARY BEHAVIORS										--
----------------------------------------------------------------------
local behaviorsList = 
{

	"mover_faceTouch",
	"mover_faceTouchFixedRate",
	"mover_moveToTouchFixedRate",
	"mover_moveToTouch",
	"mover_dragDrop",
--	"mover_onTouch_applyForwardForce",
--	"mover_onTouch_applyContinuousForce",
--	"mover_onTouch_applyTimedForce",
	
	"onCollisionEnded_ExecuteCallback",
	"onCollision_ExecuteCallback",

--	"onCollisionEnded_PrintMessage",
--	"onCollision_PrintMessage",
--	"onPostCollision_PrintMessage",
--	"onPreCollision_PrintMessage",
	
--	"physics_hasForce",

}

for k,v in ipairs( behaviorsList ) do
	require( "ssk.behaviors.b_" .. v )
end

----------------------------------------------------------------------
-- 6. CALCULATE COLLISION MATRIX									--
----------------------------------------------------------------------
--[[
	Done in individual examples.  Normally (for single simple game) would be done in main however.
--]]

----------------------------------------------------------------------
-- 7. LOAD AND APPLY PLAYER SPECIFIC SETTINGS						--
----------------------------------------------------------------------
--[[ EFM
-- Load name of last player (if any) or initialize default player
currentPlayer = ssk.datastore:new()
if( io.exists( "lastPlayer.txt", system.DocumentsDirectory ) ) then
	currentPlayer:load( "lastPlayer.txt" )
else
	currentPlayer:add( "name", "ThePlayer" )
	currentPlayer:add( "score", 0 )
	currentPlayer:save( "lastPlayer.txt" )
end

-- Load options for current player or initialize to defaults
ssk.gameoptions:loadPlayerOptions( currentPlayer:get("name") )

-- Setup sound levels
ssk.sounds:setEffectsVolume(0.5)
ssk.sounds:setMusicVolume(0.5)
soundVolumes.music   = ssk.gameoptions:get( "soundTrackVolume" )
soundVolumes.effects = ssk.gameoptions:get( "soundEffectsVolume" )


-- Start playing soundtrack if enabled
local newSoundTrack = ssk.gameoptions:get( "soundTrack" )
print(backgroundChannel)
audio.stop()

if(newSoundTrack == "Deliberate Thought") then
	audio.play(backgroundMusic1, { channel = backgroundChannel, loops=-1, fadein=1000})
elseif(newSoundTrack == "Finding The Balance") then
	audio.play(backgroundMusic2, { channel = backgroundChannel, loops=-1, fadein=1000})
end
audio.setVolume(soundVolumes.music , { channel=backgroundChannel } ) 
audio.setVolume(soundVolumes.effects , { channel=effectChannel } ) 

if(soundVolumes.effects == 0) then
	soundEnabled = true
else
	soundEnabled = true
end

print("soundVolumes.music == " .. soundVolumes.music )
print("soundVolumes.effects == " .. soundVolumes.effects )
--]]

--[[ EFM
-- Load list of known players
knownPlayers = ssk.datastore:new()
if( io.exists( "knownPlayers.txt", system.DocumentsDirectory ) ) then
	knownPlayers:load( "knownPlayers.txt" )
else
	-- If no players exist at all, add the current player to our list
	local playerName = currentPlayer:get( "name" )
	knownPlayers:add( playerName, playerName )
	knownPlayers:save( "knownPlayers.txt" )
end
function getKnownPlayersList()
	local tmpTable = {}
	for k,v in pairs(knownPlayers) do 
		if( ( k == v ) and ( type(v) == "string" ) ) then
			table.insert( tmpTable, v )
		end
	end
	return tmpTable
end
function saveKnownPlayersList()
	knownPlayers:save( "knownPlayers.txt" )
end
--]]


----------------------------------------------------------------------
-- 8. PRINT USEFUL DEBUG INFORMATION (BEFORE STARTING GAME)			--
----------------------------------------------------------------------
print("*********************************************************")
print("              USEFUL DEBUG INFO")
print("*********************************************************\n")
-- Print Lua Version
print("Corona SDK is using " .. _VERSION)

-- Print all known (loaded and useable) font names
--local sysFonts = native.getFontNames()
--for k,v in pairs(sysFonts) do print(v) end

-- Print information about the design and device resolution
ssk.misc.dumpScreenMetrics()

-- Print the collision matrix data
--collisionCalculator:dump()

--ssk.display.listDPP()

local monitorMem = function()

    collectgarbage()
    print( "MemUsage: " .. round(collectgarbage("count"),4))

    local textMem = system.getInfo( "textureMemoryUsed" ) / (1024 * 1024)
    print( "TexMem:   " .. textMem )
end

monitorMem()

print("\n****************************************************************")
print("*********************** /\\/\\ main.cs /\\/\\ **********************")
print("****************************************************************")
----------------------------------------------------------------------
--								LOAD FIRST SCENE					--
----------------------------------------------------------------------
storyboard.gotoScene( "s_MainMenu" )
--storyboard.gotoScene( "s_PlayGui" )
--storyboard.gotoScene( "ssk_sampler.interface_elements.numericmeter_scene")