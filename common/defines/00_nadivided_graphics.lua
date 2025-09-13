--NDefines_Graphics = {

-- NMapMode
	NDefines_Graphics.NMapMode.MAP_MODE_MANPOWER_RANGE_MAX = 5000000				-- default 20m -- When a state has that much manpower, it will be colored with the color MAP_MODE_MANPOWER_RANGE_COLOR_TO. Everything below that will have an interpolated color.

-- NGraphics
	NDefines_Graphics.NGraphics.TRAIN_MAP_SPEED = 4.0								-- def 3.0 -- Trains will move at this relative speed. This has no gameplay implications. Changing this value (originally 4.0) may cause audio effects to lose sync with animation.
	NDefines_Graphics.NGraphics.GRADIENT_BORDERS_COUNTRY_CENTER_THICKNESS = 1.4 	-- def 2.0 -- The center gradient is linear 1/255 per pixel for this many pixels
	NDefines.NGraphics.COUNTRY_COLOR_SATURATION_MODIFIER = 0.85
	NDefines.NGraphics.COUNTRY_COLOR_BRIGHTNESS_MODIFIER = 0.8
	NDefines_Graphics.NMapMode.MAP_MODE_TERRAIN_TRANSPARENCY = 0.8
	NDefines_Graphics.NGraphics.BORDER_WIDTH = 1
	NDefines_Graphics.NGraphics.COMMANDGROUP_PRESET_COLORS_HSV = {
		0.0/360.0, 1.0, 1.0,	--red
		10.0/360.0, 1.0, 1.0,	--orange
		60.0/360.0, 1.0, 1.0,	--yellow
		120.0/360.0, 0.75, 1.0,	--green
		180.0/360.0, 1.0, 1.0,	--turq
		235.0/360.0, 1.0, 1.0,	--blue
		260.0/360.0, 1.0, 1.0,	--dark purple
		300.0/360.0, 1.0, 1.0,	--light purple
		330.0/360.0, 0, 1.0		--white
	}

--}