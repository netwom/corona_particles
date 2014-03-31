local particles = require('particles')

particles.pointFlow('particle.png', {
	x = display.contentWidth / 2, 
	y = display.contentHeight / 2, 
	num = 1000, 
	dissapearTime = 10000, 
	deltaTime = 2,
	verticalForce = 5,
	horizontalForce = 0,
	xDispersion = 2,
	yDispersion = 5,
	scaleDispersion = 0.5,
	tint = {r = {0, 1}, g = {0, 1}, b = {0, 1}}

	} )




local myText = display.newText(display.fps, 30, 30, native.systemFont, 16)
	 
local function updateText()
    myText.txt = display.fps
end
 
Runtime:addEventListener("enterFrame", updateText)