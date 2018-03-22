
-- Title: MovingImages
-- Name: Joelle Ishimwe
-- Course: ICS2O
-- This program displays a beetleship moving across the screen, aswell 
-- as another object moving in different direction
----------------------------------------------------------------------------------

print ("***Testing beetleship!")
----------------------------------------------------------------------------------

-- create sound
local music = audio.loadSound ("Sounds/littleidea.mp3")
local musicChannel 
music = audio.play(music)
----------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variable
scrollSpeed = 5

--background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transparent
beetleship.alpha = 0

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip( event )
	-- add the scroll speed to x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
 end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)
-------------------------------------------------------------------------------------------

-- global variable
scrollSpeed1 = 6

-- character image with width and height
local rocket = display.newImageRect("Images/rocket.png", 200, 400)

-- set the image to be transparent
rocket.alpha = 5

-- set the initial x and y position of rocket
rocket.x = 280
rocket.y = 1200

-- Function: MoveRocket
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the rocket
local function MoveRocket( event )
	-- add the scroll speed to y-value of the rocket
	rocket.y = rocket.y - scrollSpeed1
	-- change the transparency of the rocket every time it moves so that it fades out
	rocket.alpha = rocket.alpha + 0.01
 end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveRocket)





























