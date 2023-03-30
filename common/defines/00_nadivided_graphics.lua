--NDefines_Graphics = {

-- NMapMode
	NDefines_Graphics.NMapMode.MAP_MODE_MANPOWER_RANGE_MAX = 5000000				-- default 20m -- When a state has that much manpower, it will be colored with the color MAP_MODE_MANPOWER_RANGE_COLOR_TO. Everything below that will have an interpolated color.

-- NGraphics
	NDefines_Graphics.NGraphics.TRAIN_MAP_SPEED = 6.0								-- def 3.0 -- Trains will move at this relative speed. This has no gameplay implications. Changing this value (originally 4.0) may cause audio effects to lose sync with animation.
	NDefines_Graphics.NGraphics.GRADIENT_BORDERS_COUNTRY_CENTER_THICKNESS = 1.4 	-- def 2.0 -- The center gradient is linear 1/255 per pixel for this many pixels

--}