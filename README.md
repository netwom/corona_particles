# Particles System for Corona SDK

This is very symple lua library for Corona SDK.

## Documentation and example

    particles.pointFlow('particle.png', {
		x = display.contentWidth / 2, 
		y = display.contentHeight - 100,
		num = 1000, 
		dissapearTime = 5000,
		deltaTime = 20,
		verticalForce = 5,
		horizontalForce = 0,
		xDispersion = 3,
		yDispersion = 5,
		scaleDispersion = 1.5,
		tint = {r = {0.4, 0.5}, g = {0.1, 0.4}, b = {0, 0}},
		particlesGroup = group,
		bunch = 10,

	} )
