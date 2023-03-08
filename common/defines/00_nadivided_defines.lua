NDefines = {

NGame = {
	START_DATE = "1936.1.1.12",
	END_DATE = "1949.1.1.1",
	MAP_SCALE_PIXEL_TO_KM = 3.150,					-- Yes, we did the math
	SAVE_VERSION = 15,								-- 1.11.0 (Barbarossa)
	LAG_DAYS_FOR_LOWER_SPEED = 10,					-- Days of client lag for decrease of gamespeed
	LAG_DAYS_FOR_PAUSE = 25,						-- Days of client lag for pause of gamespeed.
	GAME_SPEED_SECONDS = { 2.0, 0.5, 0.2, 0.1, 0.0 }, -- game speeds for each level. Must be 5 entries with last one 0 for unbound
	MAJOR_PARTICIPANTS_FOR_MAJOR_WAR = 3,			-- Minimum number of major countries involved in a war to consider it major enough to not end the game even though the enddate has been reached.
	COMBAT_LOG_MAX_MONTHS = 12,
	HANDS_OFF_START_TAG = "URG",					-- tag for player country for -hands_off runs. use an existing tag that is less likely to affect the game
},

NDiplomacy = {
},

NCountry = {
	MIN_MAJOR_COUNTRIES	= 40,						-- MIN_MAJOR_COUNTRIES countries with most factories will be considered as major countries
	ADDITIONAL_MAJOR_COUNTRIES_IC_RATIO = 0.7,		-- Countries will also be considered major when having more factories that the average of top MIN_MAJOR_COUNTRIES countries' factories times ADDITIONAL_MAJOR_COUNTRIES_IC_RATIO
	BASE_TENSION_MAJOR_COUNTRY_INDEX = 1,			-- Which major country should be considered the base country when scaling generated world tension. 0 is the country with the most factories, 1 is the second most-factories country etc. This number has to be lower than MIN_MAJOR_COUNTRIES
},

NAI = {
	VP_LEVEL_IMPORTANCE_MEDIUM = 10,			-- default -- Victory points with values higher than or equal to this are considered to be of medium importance.
},

}