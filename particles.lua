local physics = require('physics')
local particles = {}
function particles.pointFlow(imagePath, params)
	physics.start()
	local x = params.x or display.contentWidth / 2
	local y = params.y or display.contentHeight / 2
	local num = params.num or 100
	local dissapearTime = params.dissapearTime or 10000
	local collisionFilter = params.collisionFilter or { categoryBits = 1, maskBits = 2 }
	local deltaTime = params.deltaTime or 20
	local verticalForce = params.verticalForce or 5
	local horizontalForce = params.horizontalForce or 0
	local xDispersion = params.xDispersion or 0.5
	local yDispersion = params.yDispersion or 0.5
	local tint = params.tint or false
	local scaleDispersion = params.scaleDispersion or 0
	local particlesGroup = params.particlesGroup or false
	local bunch = params.bunch or 1
	local parts = num / bunch
	for i=1,parts do
		timer.performWithDelay( deltaTime * i, function()
				for j=1,bunch do
					local item = display.newImage( imagePath, x, y )
					if (particlesGroup) then
						particlesGroup:insert(item)
					end
					if (tint) then
						item:setFillColor( math.random(tint.r[1] * 1000, tint.r[2] * 1000 ) / 1000, 
										   math.random(tint.g[1] * 1000, tint.g[2] * 1000 ) / 1000, 
										   math.random(tint.b[1] * 1000, tint.b[2] * 1000 ) / 1000 )
					end
					if (scaleDispersion) then
						local dScale = math.random(-scaleDispersion * 1000, scaleDispersion * 1000 ) / 1000
						item.xScale = 1 + dScale
						item.yScale = 1 + dScale
					end
					physics.addBody( item, {filter = collisionFilter} )
					local dX = math.random(-xDispersion * 1000, xDispersion * 1000  )
					dX = dX / 1000
					local dY = math.random(-yDispersion * 1000, yDispersion * 1000 )
					dY = dY / 1000
					local currentVerticalForce = verticalForce + dY
					local currentHorizontalForce = horizontalForce + dX
					item:applyForce( currentHorizontalForce, -currentVerticalForce, item.x, item.y )
					timer.performWithDelay( dissapearTime, function()
						physics.removeBody( item )
						item:removeSelf()
						end, 1 )
				end
			end, 1 )
		
	end
end
return particles
