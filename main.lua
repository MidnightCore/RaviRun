-----------------------------------------------------------------------------------------
-- main.lua
-----------------------------------------------------------------------------------------

-- Include the Composer library
local composer = require( "composer" )
local menu = require( "menu" ) --เรียกหน้า menu มาแสดง

-- Create a new Composer scene
local scene = composer.newScene()

-- Removes status bar on iOS
-- https://docs.coronalabs.com/api/library/display/setStatusBar.html
display.setStatusBar( display.HiddenStatusBar )

-- Removes bottom bar on Android
if system.getInfo( "androidApiLevel" ) and system.getInfo( "androidApiLevel" ) < 19 then
	native.setProperty( "androidSystemUiVisibility", "lowProfile" )
else
	native.setProperty( "androidSystemUiVisibility", "immersiveSticky" )
end
