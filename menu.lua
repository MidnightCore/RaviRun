
--หน้า MENU --
------------------------------------------------------
local composer = require( "composer" )
-- local button = require( "button" )
-- local stage1 = require( "stage1" )

-- Variables local to scene
local backgroundMusic = audio.loadStream( "sound/screen/titletheme.wav" )               --ใส่เสียงพื้นหลัง
--audio.play( backgroundMusic )                   --เรียกเสียงให้เล่น

local background = display.newImageRect( "image/background/testbg2.png", 2200 , 1280 )  --ใส่ภาพพื้นหลัง
background.x = display.contentCenterX           --ปรับขนาดพื้นหลัง
background.y = display.contentCenterY           --ปรับขนาดพื้นหลัง
local background = display.newImageRect( "image/background/title.png", 1000 , 600 )     --ใส่ title เกม
background.x = display.contentHeight-400        --ปรับตำแหน่งแนวนอน
background.y = display.contentHeight-900        --ปรับตำแหน่งแนวตั้ง
background.alpha = 0.9                          --ลด opacity ลง ให้มันโปร่งใส
local button = display.newImageRect( "image/button/buttonStart.png", 450, 160 )         --ใส่ปุ่ม Start
button.x = display.contentHeight-400            --ปรับตำแหน่งแนวนอน
button.y = display.contentHeight-450            --ปรับตำแหน่งแนวตั้ง
local button = display.newImageRect( "image/button/buttonHelp.png", 450, 150 )          -- ใส่ปุ่ม Help
button.x = display.contentHeight-400            --ปรับตำแหน่งแนวนอน
button.y = display.contentHeight-250            --ปรับตำแหน่งแนวตั้ง


-- Create a new Composer scene
local scene = composer.newScene()
