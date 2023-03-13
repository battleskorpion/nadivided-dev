--NDefines = {

--NGame = {
	NDefines.NGame.START_DATE = "1936.1.1.12"
	NDefines.NGame.END_DATE = "1949.1.1.1"
	NDefines.NGame.MAP_SCALE_PIXEL_TO_KM = 3.150					-- Yes, we did the math
	NDefines.NGame.SAVE_VERSION = 15								-- 1.11.0 (Barbarossa)
	NDefines.NGame.LAG_DAYS_FOR_LOWER_SPEED = 10					-- Days of client lag for decrease of gamespeed
	NDefines.NGame.LAG_DAYS_FOR_PAUSE = 25							-- Days of client lag for pause of gamespeed.
	NDefines.NGame.GAME_SPEED_SECONDS = { 2.0, 0.5, 0.2, 0.1, 0.0 } -- game speeds for each level. Must be 5 entries with last one 0 for unbound
	NDefines.NGame.MAJOR_PARTICIPANTS_FOR_MAJOR_WAR = 3				-- Minimum number of major countries involved in a war to consider it major enough to not end the game even though the enddate has been reached.
	NDefines.NGame.COMBAT_LOG_MAX_MONTHS = 12
	NDefines.NGame.HANDS_OFF_START_TAG = "URG"						-- tag for player country for -hands_off runs. use an existing tag that is less likely to affect the game
--},

--NDiplomacy = {
	NDefines.NDiplomacy.EMBARGO_COST = 70							-- def 100 -- One-time cost
	NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 12			-- def 30

--},

--NCountry = {
	NDefines.NCountry.MIN_MAJOR_COUNTRIES	= 40					-- MIN_MAJOR_COUNTRIES countries with most factories will be considered as major countries
	NDefines.NCountry.ADDITIONAL_MAJOR_COUNTRIES_IC_RATIO = 0.7		-- Countries will also be considered major when having more factories that the average of top MIN_MAJOR_COUNTRIES countries' factories times ADDITIONAL_MAJOR_COUNTRIES_IC_RATIO
	NDefines.NCountry.BASE_TENSION_MAJOR_COUNTRY_INDEX = 1			-- Which major country should be considered the base country when scaling generated world tension. 0 is the country with the most factories, 1 is the second most-factories country etc. This number has to be lower than MIN_MAJOR_COUNTRIES

	NDefines.NCountry.MIN_FOCUSES_FOR_CONTINUOUS = 8				-- def 10 -- Focuses needed to unlock continuous focuses
	NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0.015			-- def 0.015 -- basic population growth per year, used for monthly manpower gain
--},

--NAI = {
	NDefines.NAI.VP_LEVEL_IMPORTANCE_MEDIUM = 10					-- default -- Victory points with values higher than or equal to this are considered to be of medium importance.
--},

--NTechnology = {
	NDefines.NTechnology.MAX_SUBTECHS = 5							-- def. 3 -- Max number of sub technologies a technology can have.
	NDefines.NTechnology.BASE_RESEARCH_POINTS_SAVED = 45.0			-- def 30 Base amount of research points a country can save per slot.
	NDefines.NTechnology.BASE_TECH_COST = 95						-- base 100

--},

--NFocus = {
	NDefines.NFocus.MAX_SAVED_FOCUS_PROGRESS = 21					-- def 10 -- This much progress can be saved while not having a focus selected

--},

--}