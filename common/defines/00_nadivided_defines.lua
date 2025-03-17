--NDefines = {

--NGame = {
	NDefines.NGame.START_DATE = "1936.1.1.12"
	NDefines.NGame.END_DATE = "1949.1.1.1"
	NDefines.NGame.MAP_SCALE_PIXEL_TO_KM = 3.150					-- adjusted for nadivided	-- Yes, we did the math
	NDefines.NGame.SAVE_VERSION = 25								-- 1.16.0 (Countenance)
	NDefines.NGame.GAME_SPEED_SECONDS = { 2.0, 0.5, 0.2, 0.1, 0.0 } -- game speeds for each level. Must be 5 entries with last one 0 for unbound
	NDefines.NGame.MAJOR_PARTICIPANTS_FOR_MAJOR_WAR = 3				-- Minimum number of major countries involved in a war to consider it major enough to not end the game even though the enddate has been reached.
	NDefines.NGame.COMBAT_LOG_MAX_MONTHS = 12
	NDefines.NGame.HANDS_OFF_START_TAG = "SWY"						-- tag for player country for -hands_off runs. use an existing tag that is less likely to affect the game
--},

--NDiplomacy = {
	NDefines.NDiplomacy.EMBARGO_COST = 70							-- def 100 -- One-time cost
	NDefines.NDiplomacy.VOLUNTEERS_DIVISIONS_REQUIRED = 12			-- def 30
	NDefines.NDiplomacy.TENSION_DECAY_DAILY = 0.017 				-- def 0.005
	NDefines.NDiplomacy.TENSION_SIZE_FACTOR = 0.8,					-- def 1.0
	NDefines.NDiplomacy.TENSION_TIME_SCALE_START_DATE = "1936.6.1.12"		
	NDefines.NDiplomacy.TENSION_TIME_SCALE_MONTHLY_FACTOR = -0.004	-- def -0.005
	NDefines.NDiplomacy.TENSION_TIME_SCALE_MIN = 0.25				-- def 0.25
	NDefines.NDiplomacy.TENSION_LIBERATE = -2,						-- def 2

	NDefines.NDiplomacy.PEACE_SCORE_SCALE_FACTOR = 1.40,                -- def 1.35		-- Losers' total value times this factor becomes the default total peace conference score that is distributed to the winners.

	NDefines.NDiplomacy.PEACE_SCORE_MINOR_BOOST_FRACTION = 0.05,        -- def 0.05 	-- Low-scoring winners are boosted by receiving more of their score earlier. This value, multiplied by the total score distributed this turn, is the minimum score they will receive (up until their total allocated score).
	-- Example: If 2000 score is distributed to winners this turn and this value is set to 0.05, each winner will receive a minimum of 100 score (clamped by the max score they will receive over the cource of the conference).

	NDefines.NDiplomacy.PEACE_SCORE_DISTRIBUTION = { 0.24, 0.20, 0.18, 0.15, 0.15, 0.08}, -- How much of the total peace conference score you get during the first n turns.
	-- More explanation of the peace score distribution above:
	-- {1.0} would give you all the score on the first turn.
	-- {0.5, 0.5, 0.5} would give you 50 % of the total score on each of the first three turns (in this case resulting in receiving 150 % of the total score).

	NDefines.NDiplomacy.PEACE_CONTEST_REFUND_FACTOR = { 1.0, 0.94, 0.88, 0.82, 0.75}, -- How much of the spent peace conference score that gets refunded in a contest. First element applies for the first round of conflicts, second element for the second round of conflicts, etc. The final element is used for each consecutive turn, so setting that to e.g. 0.7 means you get 70 % of the spent score back for every turn thereafter.

	NDefines.NDiplomacy.MAX_REMEMBERED_LEASED_IC = 1500,				-- Maximum of leased equipment value that is remembered for opinion bonus
	NDefines.NDiplomacy.MAX_OPINION_FOR_LEASED_IC = 35,					-- Positive opinion when remembering the MAX_REMEMBERED_LEASED_IC equipment

	NDefines.NDiplomacy.OPINION_FOR_DEMO_FROM_WT_GENERATION = -1.5,		-- How much less do democracies like us if we generate world tension

	NDefines.NDiplomacy.EMBARGO_RECIPIENT_IS_MAJOR_AI_WEIGHT = 5,		-- def 10 (so many majors in NAD)	-- Ai weight for recipient being major
	NDefines.NDiplomacy.EMBARGO_NEIGHBOUR_AI_WEIGHT = -5,									-- def -10				

--},

--NSupply = {
	NDefines.NSupply.CAPITAL_STARTING_PENALTY_PER_PROVINCE = 0.3
	NDefines.NSupply.CAPITAL_ADDED_PENALTY_PER_PROVINCE = 1.0
	NDefines.NSupply.NODE_INITIAL_SUPPLY_FLOW = 3.2 
	NDefines.NSupply.MIN_TRAIN_REQUIREMENT = 3
	NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_TRUCK_COST = 90

--},

--NCountry = {
	NDefines.NCountry.MIN_MAJOR_COUNTRIES	= 40					-- MIN_MAJOR_COUNTRIES countries with most factories will be considered as major countries
	NDefines.NCountry.ADDITIONAL_MAJOR_COUNTRIES_IC_RATIO = 0.7		-- Countries will also be considered major when having more factories that the average of top MIN_MAJOR_COUNTRIES countries' factories times ADDITIONAL_MAJOR_COUNTRIES_IC_RATIO
	NDefines.NCountry.BASE_TENSION_MAJOR_COUNTRY_INDEX = 1			-- Which major country should be considered the base country when scaling generated world tension. 0 is the country with the most factories, 1 is the second most-factories country etc. This number has to be lower than MIN_MAJOR_COUNTRIES

	NDefines.NCountry.MIN_FOCUSES_FOR_CONTINUOUS = 8				-- def 10 -- Focuses needed to unlock continuous focuses
	NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0.020			-- def 0.015 -- basic population growth per year, used for monthly manpower gain
	--},

--NAI = {
	NDefines.NAI.VP_LEVEL_IMPORTANCE_MEDIUM = 10					-- default -- Victory points with values higher than or equal to this are considered to be of medium importance.
	NDefines.NAI.DILPOMATIC_ACTION_DECLARE_WAR_WARGOAL_BASE = 40 				-- def 	50 lower
	--},

--NTechnology = {
	NDefines.NTechnology.MAX_SUBTECHS = 5							-- def. 3 -- Max number of sub technologies a technology can have.
	NDefines.NTechnology.BASE_RESEARCH_POINTS_SAVED = 45.0			-- def 30 Base amount of research points a country can save per slot.
	NDefines.NTechnology.BASE_TECH_COST = 95						-- base 100

--},

--NFocus = {
	NDefines.NFocus.MAX_SAVED_FOCUS_PROGRESS = 21					-- def 10 -- This much progress can be saved while not having a focus selected

--},

--NProduction = {
	NDefines.NProduction.BASE_FACTORY_EFFICIENCY_BALANCE_FACTOR = 0.20			-- def 0.1 -- more production
--},


--NMilitary = {
	FIELD_EXPERIENCE_ON_DIVISION_MULT = 0.005					-- default 0.005-- Victory points with values higher than or equal to this are considered to be of medium importance.
	NDefines.NMilitary.REINFORCEMENT_MANPOWER_CHUNK = 0.4				-- default 0.2-- MOREMANPOWER
	--},

--NRailwayGun = {
	RAILWAY_GUN_RANGE = 50					-- default 50 -- Victory points with values higher than or equal to this are considered to be of medium importance.
--},

--}