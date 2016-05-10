--2 or 3 player Pong, where a player controls the bar and the other controls the ball
require "Objective"
require "PlayerControls"
require "Main Menu"

function love.load()
--Images for the game
  playerBall = love.graphics.newImage("Images/Ball.png")
  bar = love.graphics.newImage("Images/Bar.png")
  playButton = love.graphics.newImage("Images/Play.png")
  controlsButton = love.graphics.newImage("Images/Controls.png")
  mouse = love.graphics.newImage("Images/Mouse.png")
  wasd = love.graphics.newImage("Images/WASD.png")
  arrowKeys = love.graphics.newImage("Images/ArrowKeys.png")
  highlightBox = love.graphics.newImage("Images/HighlightBox.png")
  controlsMenu = love.graphics.newImage("Images/ControlsMenu.png")
  computer = love.graphics.newImage("Images/Computer.png")
  barsWin = love.graphics.newImage("Images/BarsWin.png")
  ballWins = love.graphics.newImage("Images/BallWins.png")


menu = true
singlePlayer = false

--Point system
barPoints = 0
ballPoints = 0

--Initiates ball movement
gameStarted = true

--Coordinates for the objects
  ball = {
  x = 550,
  y = 300
  }

  bar1 = {
  x = 1125,
  y = 250
  }

  bar2 = {
  x = 25,
  y = 250
  }

end

function love.update(dt)
  if love.keyboard.isDown("escape") then
  menu = true
  end

--Hides the cursor
if menu == false then
love.mouse.setVisible(false)
elseif menu == true then
love.mouse.setVisible(true)
end

--Gets the mouse position
mouseX = love.mouse.getX()
mouseY = love.mouse.getY()

if menu == false then
  if ballPoints == 25 or barPoints == 25 then
    if love.mouse.isDown("l") or love.keyboard.isDown("return") or love.keyboard.isDown(" ") then
      ballPoints = 0
      barPoints = 0
      bar1.y = 250
      bar2.y = 250
      ball.y = 300
      ball.x = 550
      menu = true
    end

    else
controls(dt)
objective(dt)
end
else
love.mousereleased(x, y, button)
end
end

function love.draw()
if menu == true then
--For the main menu
  love.graphics.draw(controlsMenu, 100, 10, 0, 2, 1.5)
  love.graphics.draw(playButton, 300, 300)
  love.graphics.draw(mouse, 400, 150)
  love.graphics.draw(mouse, 400, 600)
  love.graphics.draw(wasd, 600, 150)
  love.graphics.draw(wasd, 600, 600)
  love.graphics.draw(arrowKeys, 800, 150)
  love.graphics.draw(arrowKeys, 800, 600)
  love.graphics.draw(highlightBox, highLightBox.x, highLightBox.y)
  love.graphics.draw(highlightBox, highLightBox.x2, highLightBox.y2)
  love.graphics.draw(computer, 800, 250)
  love.graphics.draw(computer, 800, 450)
end
--For the actual game

--FTW
if ballPoints == 25 then
  love.graphics.draw(ballWins, 0, 0, 0, 2.5, 1.5)
elseif barPoints == 25 then
  love.graphics.draw(barsWin, 0, 0, 0, 2.5, 1.5)
else
--The game
  love.graphics.draw(playerBall, ball.x, ball.y)
  love.graphics.draw(bar, bar1.x, bar1.y)
  love.graphics.draw(bar, bar2.x, bar2.y)
  love.graphics.print("Ball: " .. ballPoints, 1000, 10, 0, 2, 2)
  love.graphics.print("Bar: " .. barPoints, 10, 10, 0, 2, 2)
end
end