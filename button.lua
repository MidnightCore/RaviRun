
local composer = require( "composer" )
local widget = require( "widget" )

-- Function to handle button events
local function handleButtonEvent( event )

    if ( "ended" == event.phase ) then
        print( "Button was pressed and released" )
    end
end

local button1 = widget.newButton(
    {
        width = 450,
        height = 160,
        defaultFile = "image/button/buttonStart.png",
        overFile = "image/button/buttonStart.png",
        label = "button",
        -- onEvent = composer.gotoScene( "stage1" )
        onEvent = handleButtonEvent
    }
)
local button2 = widget.newButton(
    {
        width = 450,
        height = 150,
        defaultFile = "image/button/buttonHelp.png",
        overFile = "image/button/buttonHelp.png",
        label = "button",
        onEvent = handleButtonEvent
    }
)
-- Center the button
button1.x = display.contentHeight-400
button1.y = display.contentHeight-450
button2.x = display.contentHeight-400
button2.y = display.contentHeight-250

-- Change the button's label text
button1:setLabel( "2-Image" )
