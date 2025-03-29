
-- SKORPtm

-- DO NOT ADD COMMAS AFTER THE ENTRIES
-- paradox will divide by zero and blow up the earth 
-- DO NOT ADD COMMAS AFTER THE ENTRIES
-- DO NOT ADD COMMAS AFTER THE ENTRIES
-- DO NOT ADD COMMAS AFTER THE ENTRIES
-- DO NOT ADD COMMAS AFTER THE ENTRIES
-- DO NOT ADD COMMAS AFTER THE ENTRIES
-- DO NOT ADD COMMAS AFTER THE ENTRIES
-- DO NOT ADD COMMAS AFTER THE ENTRIES
-- DO NOT ADD COMMAS AFTER THE ENTRIES
-- DO NOT ADD COMMAS AFTER THE ENTRIES
-- DO NOT ADD COMMAS AFTER THE ENTRIES

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
	NDefines.NDiplomacy.TENSION_SIZE_FACTOR = 0.8					-- def 1.0
	NDefines.NDiplomacy.TENSION_TIME_SCALE_START_DATE = "1936.6.1.12"	-- Starting at this date, the tension values will be scaled down (will be equal to 1 before that)
	NDefines.NDiplomacy.TENSION_TIME_SCALE_MONTHLY_FACTOR = -0.004	-- def -0.005
	NDefines.NDiplomacy.TENSION_TIME_SCALE_MIN = 0.25				-- def 0.25
	NDefines.NDiplomacy.TENSION_LIBERATE = -2						-- def 2

	NDefines.NDiplomacy.PEACE_SCORE_SCALE_FACTOR = 1.40             -- def 1.35		-- Losers' total value times this factor becomes the default total peace conference score that is distributed to the winners.

	NDefines.NDiplomacy.PEACE_SCORE_MINOR_BOOST_FRACTION = 0.05     -- def 0.05 	-- Low-scoring winners are boosted by receiving more of their score earlier. This value, multiplied by the total score distributed this turn, is the minimum score they will receive (up until their total allocated score).
	-- Example: If 2000 score is distributed to winners this turn and this value is set to 0.05, each winner will receive a minimum of 100 score (clamped by the max score they will receive over the cource of the conference).

	NDefines.NDiplomacy.PEACE_SCORE_DISTRIBUTION = { 0.24, 0.20, 0.18, 0.15, 0.15, 0.08} -- How much of the total peace conference score you get during the first n turns.
	-- More explanation of the peace score distribution above:
	-- {1.0} would give you all the score on the first turn.
	-- {0.5, 0.5, 0.5} would give you 50 % of the total score on each of the first three turns (in this case resulting in receiving 150 % of the total score).

	NDefines.NDiplomacy.PEACE_CONTEST_REFUND_FACTOR = { 1.0, 0.94, 0.88, 0.82, 0.75} -- How much of the spent peace conference score that gets refunded in a contest. First element applies for the first round of conflicts, second element for the second round of conflicts, etc. The final element is used for each consecutive turn, so setting that to e.g. 0.7 means you get 70 % of the spent score back for every turn thereafter.

	NDefines.NDiplomacy.MAX_REMEMBERED_LEASED_IC = 1500				-- Maximum of leased equipment value that is remembered for opinion bonus
	NDefines.NDiplomacy.MAX_OPINION_FOR_LEASED_IC = 35				-- Positive opinion when remembering the MAX_REMEMBERED_LEASED_IC equipment

	NDefines.NDiplomacy.OPINION_FOR_DEMO_FROM_WT_GENERATION = -1.5	-- How much less do democracies like us if we generate world tension

	NDefines.NDiplomacy.EMBARGO_RECIPIENT_IS_MAJOR_AI_WEIGHT = 5	-- def 10 (so many majors in NAD)	-- Ai weight for recipient being major
	NDefines.NDiplomacy.EMBARGO_NEIGHBOUR_AI_WEIGHT = -5			-- def -10				

--},

--NSupply = {
	NDefines.NSupply.CAPITAL_STARTING_PENALTY_PER_PROVINCE = 0.3	-- def 0.5
	NDefines.NSupply.CAPITAL_ADDED_PENALTY_PER_PROVINCE = 1.0		-- def 1.2
	NDefines.NSupply.NODE_INITIAL_SUPPLY_FLOW = 3.2 				-- def 2.8
	NDefines.NSupply.MIN_TRAIN_REQUIREMENT = 3						-- def 2
	NDefines.NSupply.SUPPLY_HUB_FULL_MOTORIZATION_TRUCK_COST = 90	-- def 60

--},

--NCountry = {
	NDefines.NCountry.MIN_MAJOR_COUNTRIES = 40						-- MIN_MAJOR_COUNTRIES countries with most factories will be considered as major countries
	NDefines.NCountry.ADDITIONAL_MAJOR_COUNTRIES_IC_RATIO = 0.7		-- Countries will also be considered major when having more factories that the average of top MIN_MAJOR_COUNTRIES countries' factories times ADDITIONAL_MAJOR_COUNTRIES_IC_RATIO
	NDefines.NCountry.BASE_TENSION_MAJOR_COUNTRY_INDEX = 1			-- Which major country should be considered the base country when scaling generated world tension. 0 is the country with the most factories, 1 is the second most-factories country etc. This number has to be lower than MIN_MAJOR_COUNTRIES

	NDefines.NCountry.MIN_FOCUSES_FOR_CONTINUOUS = 8				-- def 10 -- Focuses needed to unlock continuous focuses
	NDefines.NCountry.POPULATION_YEARLY_GROWTH_BASE = 0.020			-- def 0.015 -- basic population growth per year, used for monthly manpower gain

	NDefines.NCountry.MIN_MANPOWER_RATIO = 0.10					-- Min manpower ratio to show manpower alert
	NDefines.NCountry.POLITICAL_POWER_LOWER_CAP = -400.0			-- Min amount of political power country should have
	NDefines.NCountry.POLITICAL_POWER_UPPER_CAP = 1600.0			-- Max amount of political power country should have
	NDefines.NCountry.BASE_TENSION_MAJOR_COUNTRY_INDEX = 2			-- def 1 (second) -- Which major country should be considered the base country when scaling generated world tension. 0 is the country with the most factories, 1 is the second most-factories country etc. This number has to be lower than MIN_MAJOR_COUNTRIES
	NDefines.NCountry.PARADROP_AIR_SUPERIORITY_RATIO = 0.75		-- def 0.7 	-- Min ratio of air superiority for paradropping
	
	NDefines.NCountry.STATE_VALUE_BASE = 10.0                     -- def 10 	-- Base value of a state (value is used to determine costs in e.g. peace conferences)
	NDefines.NCountry.STATE_VALUE_BUILDING_SLOTS_MULT = 4.0        -- def 4.0 	-- The value of each building slot in a state
	NDefines.NCountry.STATE_VALUE_MANPOWER_FACTOR = 0.2            -- def 0.1 	-- State cost increases with this for every 10k population (so 3.1M becomes 310 and then multiplied by this)

	NDefines.NCountry.CIVIL_WAR_INVOLVEMENT_MIN_TENSION = 0.55		-- def 0.5 	-- base value of world tension to involve other sides to the civil war
	NDefines.NCountry.UNCAPITULATE_LEVEL = 0.08                    -- def 0.1 	-- if we reclaim this much and our capital we reset capitulate status
	NDefines.NCountry.BASE_SURRENDER_LIMIT = 0.78							-- def 0.8 	-- Base level of occupation required for country surrender
	NDefines.NCountry.MIN_SURRENDER_LIMIT = 0.25							-- def 0.2 	-- Minimum non-forced surrender limit. valid 0-1
	
	NDefines.NCountry.MAX_BOMBING_WEEKLY_WAR_SUPPORT_PENALTY = -0.007				-- def -0.006 -- Max penalty that will gained per week from bomber's damage
	NDefines.NCountry.MAX_BOMBING_WAR_SUPPORT_IMPACT = -0.3						-- def -0.3	-- Max total penalty from bomber's damage
	NDefines.NCountry.MAX_HEROES_BEING_KILLED_WEEKLY_WAR_SUPPORT_PENALTY = -0.007	-- def -0.006 -- Max penalty that will gained per week from war heroes manpower lost
	NDefines.NCountry.MAX_HEROES_BEING_KILLED_WAR_SUPPORT_IMPACT = -0.2			-- def -0.3	-- Max total penalty from war heroes manpower lost
	NDefines.NCountry.MAX_CONVOYS_BEING_RAIDED_WEEKLY_WAR_SUPPORT_PENALTY = -0.007	-- def -0.006 -- Max penalty that will gained per week from trade convoy raided
	NDefines.NCountry.MAX_CONVOYS_BEING_RAIDED_WAR_SUPPORT_IMPACT = -0.35			-- def -0.5	-- Max total penalty from trade convoy raided

	NDefines.NCountry.CONVOYS_SUNK_MULTIPLIER_FOR_WAR_SUPPORT = 0.17	-- def 0.2 -- once a trade convoy ship sunk, you will get a larger negative impact on your war support
	NDefines.NCountry.CONVOYS_BEING_RAIDED_DAILY_WAR_SUPPORT_IMPACT_FROM_OVERSEA_STATES = 0.17	-- resource transfer convoys convoys from our states being raided will give a daily war support penalty depending on how important that resource is and how inefficent convoys are
	NDefines.NCountry.CONVOYS_SUNK_MULTIPLIER_FOR_WAR_SUPPORT_FROM_OVERSEA_STATES = 0.17			-- once a resource transfer convoys from our states ship sunk, you will get a larger negative impact on your war support
	NDefines.NCountry.CONVOYS_BEING_RAIDED_DAILY_WAR_SUPPORT_IMPACT = 0.17	-- trade convoys being raided will give a daily war support penalty depending on how important that resource is and how inefficent convoys are

	NDefines.NCountry.NUM_DAYS_TO_FULLY_DELETE_STOCKPILED_EQUIPMENT = 70	 -- def 90 -- time in days to fully delete equipments from stockpile. when you delete an equipment, they go to a temporary hidden pool which still can be seized
	NDefines.NCountry.AIR_SUPPLY_CONVERSION_SCALE = 0.015				-- def 0.01 -- Conversion scale for planes to air supply
	NDefines.NCountry.AIR_SUPPLY_DROP_EXPIRATION_HOURS = 168			-- def 168	-- Air drop length after being dropped

	NDefines.NCountry.STARTING_COMMAND_POWER = 20.0					-- def 0.0 -- starting command power for every country
	NDefines.NCountry.BASE_MAX_COMMAND_POWER = 90.0					-- def 80 -- base value for maximum command power
	NDefines.NCountry.BASE_COMMAND_POWER_GAIN = 0.4					-- def 0.4 -- base value for daily command power gain
	NDefines.NCountry.AIR_VOLUNTEER_BASES_CAPACITY_LIMIT = 0.15	-- def 0.1 -- Ratio for volunteer planes available for sending in relation to receiver air base capacity
	NDefines.NCountry.DAYS_OF_WAR_BEFORE_SURRENDER = 5			-- def 7 -- Number of days a war has to have existed before anyone can surrender in it
		-- NAD is smaller
	
	NDefines.NCountry.FUEL_LEASE_CONVOY_RATIO = 0.0010				-- num convoys needed per fuel land lease
	-- fuel is priceless, def 0.0005
	NDefines.NCountry.BASE_FUEL_CAPACITY = 40000						-- base amount of fuel capacity
	-- def 50000
	NDefines.NCountry.SCORCHED_EARTH_STATE_COST = 15					-- pp cost to scorch a state

--},

--NResistance = {
	NDefines.NResistance.INITIAL_STATE_RESISTANCE = 0.9			-- initial resistance percentage of a state once it is captured
	NDefines.NResistance.INITIAL_STATE_COMPLIANCE = 0.005								-- initial compliance percentage of a state once it is captured
	NDefines.NResistance.COMPLIANCE_FACTOR_ON_STATE_CONTROLLER_CHANGE = -0.3	-- compliance factor that applies when the state controller changes (in between allies, compliance is zeroed if it is taken by original country)

	NDefines.NResistance.RESISTANCE_TARGET_BASE = 38.0							-- base resistance target percentage
	-- def 35
	NDefines.NResistance.RESISTANCE_TARGET_MODIFIER_HAS_CLAIM = -15.0			-- resistance target modifier in % for states we have claim
	-- def -5
	NDefines.NResistance.RESISTANCE_TARGET_MODIFIER_PER_STABILITY_LOSS = 0.25	-- resistance target modifier per stability below 100%
	-- def 0.2
	NDefines.NResistance.RESISTANCE_TARGET_MODIFIER_PER_COMPLIANCE = -0.6		-- resistance target modifier per compliance %
	-- def -0.5
	NDefines.NResistance.RESISTANCE_TARGET_MODIFIER_IS_AT_PEACE = -7.0			-- resistance target modifier when we are at peace
	-- def -10

	NDefines.NResistance.RESISTANCE_TARGET_MODIFIER_STATE_VP = {	-- resistance target modifier pairs for vp. first entry is total vp in state and second entry is amount of target modifier that applies for that threshold
		0,   0.0, -- 0 - 5
		5,   5.0, -- 5 - 20
		20,  10.0, -- 20 - 50
		50,  20.0, -- 50 - ...
	}
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

--NProject = {
	NDefines.NProject.RAID_DEFAULT_TARGET_COOLDOWN_DAYS = 120 -- default 365 
--},
--}