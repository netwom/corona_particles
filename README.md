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

First parameter is required. It's path to particle graphic element (bitmap)
Second parameter is lua table. All fields are not mandatory.

* *x* - x position of particles source
* *y* - y position of particles source
* *num* - number of particles to be generated
* *dissapearTime* - time in miliseconds when every particle will be collected and removed
* *deltaTime* - time in miliseconds between generations
* *verticalForce* - vertical flow force
* *horizontalForce* - horizontal flow force
* *xDispersion* - dispersion of elements in X axis
* *yDispersion* - dispersion of elements in Y axis
* *scaleDispersion* - dispersion of scale of elements
* *tint* - color dispersion in format: {r = {0.4, 0.5}, g = {0.1, 0.4}, b = {0, 0}},
* *particlesGroup* - display group where particles should be append
* *bunch* - size of elements bunch
