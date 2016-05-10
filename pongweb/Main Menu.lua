--Main Menu for the Game--

highLightBox = {
	x = 360,
	y = 150,
	x2 = 800,
	y2 = 600

}

barControls = "mouse"
ballControls = "arrows"

function love.mousereleased(x, y, button)
if button == "l" and mouseX >= 300 and mouseX <= 500 and mouseY >= 300 and mouseY <= 500 and barControls == "computer" and ballControls == "computer" then
menu = false
elseif button == "l" and mouseX >= 300 and mouseX <= 500 and mouseY >= 300 and mouseY <= 500 and barControls == ballControls then

elseif button == "l" and mouseX >= 300 and mouseX <= 500 and mouseY >= 300 and mouseY <= 500 then
menu = false
elseif button == "l" and mouseX >= 400 and mouseX <= 600 and mouseY >= 150 and mouseY <= 200 then
	barControls = "mouse"
	highLightBox.x = 360
	highLightBox.y = 150
elseif button == "l" and mouseX >= 600 and mouseX <= 700 and mouseY >= 150 and mouseY <= 200 then
	barControls = "wasd"
	highLightBox.x = 550
	highLightBox.y = 150
elseif button == "l" and mouseX >= 800 and mouseX <= 1000 and mouseY >= 150 and mouseY <= 200 then
	barControls = "arrows"
	highLightBox.x = 800
	highLightBox.y = 150
elseif button == "l" and mouseX >= 400 and mouseX <= 600 and mouseY >= 600 and mouseY <= 650 then
	ballControls = "mouse"
	highLightBox.x2 = 360
	highLightBox.y2 = 600
elseif button == "l" and mouseX >= 600 and mouseX <= 700 and mouseY >= 600 and mouseY <= 650 then
	ballControls = "wasd"
	highLightBox.x2 = 550
	highLightBox.y2 = 600
elseif button == "l" and mouseX >= 800 and mouseX <= 1000 and mouseY >= 600 and mouseY <= 650 then
	ballControls = "arrows"
	highLightBox.x2 = 800
	highLightBox.y2 = 600
elseif button == "l" and mouseX >= 800 and mouseX <= 1050 and mouseY >= 250 and mouseY <= 300 then
    barControls = "computer"
    highLightBox.x = 800
    highLightBox.y = 250
elseif button == "l" and mouseX >= 800 and mouseX <= 1050 and mouseY >= 450 and mouseY <= 500 then
    ballControls = "computer"
    highLightBox.x2 = 800
    highLightBox.y2 = 450
end


end