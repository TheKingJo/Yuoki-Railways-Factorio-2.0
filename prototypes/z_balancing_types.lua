local resistance1 = {
	{
		type = "fire",
		decrease = 25,
		percent = 50
	},
	{
		type = "physical",
		decrease = 10,
		percent = 25
	},
	{
		type = "impact",
		decrease = 30,
		percent = 50
	},
	{
		type = "explosion",
		decrease = 20,
		percent = 35
	},
	{
		type = "acid",
		decrease = 10,
		percent = 30
	},
	{
		type = "laser",
		decrease = 20,
		percent = 45
	},
	{
		type = "electric",
		decrease = 20,
		percent = 45
	}
}
local resistance2 = {
	{
		type = "fire",
		decrease = 15,
		percent = 50
	},
	{
		type = "physical",
		decrease = 15,
		percent = 30
	},
	{
		type = "impact",
		decrease = 50,
		percent = 50
	},
	{
		type = "explosion",
		decrease = 15,
		percent = 30
	},
	{
		type = "acid",
		decrease = 3,
		percent = 20
	},
	{
		type = "laser",
		decrease = 10,
		percent = 20
	},
	{
		type = "electric",
		decrease = 5,
		percent = 20
	}
}
local resistance3 = {
	{
		type = "fire",
		decrease = 25,
		percent = 50
	},
	{
		type = "physical",
		decrease = 25,
		percent = 35
	},
	{
		type = "impact",
		decrease = 75,
		percent = 65
	},
	{
		type = "explosion",
		decrease = 25,
		percent = 40
	},
	{
		type = "acid",
		decrease = 10,
		percent = 30
	},
	{
		type = "laser",
		decrease = 15,
		percent = 25
	},
	{
		type = "electric",
		decrease = 10,
		percent = 20
	}
}
local resistanceU = {
	{
		type = "fire",
		decrease = 25,
		percent = 100
	},
	{
		type = "physical",
		decrease = 40,
		percent = 35
	},
	{
		type = "impact",
		decrease = 100,
		percent = 65
	},
	{
		type = "explosion",
		decrease = 50,
		percent = 60
	},
	{
		type = "acid",
		decrease = 20,
		percent = 45
	},
	{
		type = "laser",
		decrease = 25,
		percent = 30
	},
	{
		type = "electric",
		decrease = 25,
		percent = 25
	}
}

local workingSoundDiesel = data.raw["locomotive"]["locomotive"].working_sound
local workingSoundSteam = table.deepcopy(data.raw["locomotive"]["locomotive"].working_sound)
workingSoundSteam.main_sounds[2].sound.filename = "__base__/sound/steam-engine-90bpm.ogg"
workingSoundSteam.main_sounds[2].sound.volume = 0.5

local workingSoundAtom = table.deepcopy(data.raw["locomotive"]["locomotive"].working_sound)
workingSoundAtom.main_sounds[2].sound.filename = "__z_yira_UP__/sound/nuclear_engine_smooth.ogg"
workingSoundAtom.main_sounds[2].sound.volume = 0.5


local balancingTypes = {
    stats1 = {
        steam1  = {resistances = resistance1, max_speed = 0.5, max_power = "300kW", braking_force = 2,  friction_force = 0.0075, air_resistance = 0.008,  energy_per_hit_point = 10,reversing_power_modifier = 0.4, working_sound = workingSoundSteam},
        steam2  = {resistances = resistance1, max_speed = 0.6, max_power = "500kW", braking_force = 5,  friction_force = 0.0065, air_resistance = 0.0075, energy_per_hit_point = 9, reversing_power_modifier = 0.5, working_sound = workingSoundSteam},
        steam3  = {resistances = resistance1, max_speed = 0.8, max_power = "750kW", braking_force = 8,  friction_force = 0.0055, air_resistance = 0.005,  energy_per_hit_point = 8, reversing_power_modifier = 0.6, working_sound = workingSoundSteam},
        diesel1 = {resistances = resistance2, max_speed = 0.4, max_power = "300kW", braking_force = 4,  friction_force = 0.0050, air_resistance = 0.01,   energy_per_hit_point = 6, reversing_power_modifier = 1,   working_sound = workingSoundDiesel},
        diesel2 = {resistances = resistance2, max_speed = 0.5, max_power = "500kW", braking_force = 4,  friction_force = 0.0045, air_resistance = 0.0075, energy_per_hit_point = 6, reversing_power_modifier = 0.9, working_sound = workingSoundDiesel},
        diesel3 = {resistances = resistance2, max_speed = 0.8, max_power = "800kW", braking_force = 12, friction_force = 0.0040, air_resistance = 0.006,  energy_per_hit_point = 6, reversing_power_modifier = 0.8, working_sound = workingSoundDiesel},
	    diesel4 = {resistances = resistance2, max_speed = 0.9, max_power = "900kW", braking_force = 12, friction_force = 0.0040, air_resistance = 0.005,  energy_per_hit_point = 6, reversing_power_modifier = 0.6, working_sound = workingSoundDiesel},
        future  = {resistances = resistance3, max_speed = 2.0, max_power = "2000kW",braking_force = 20, friction_force = 0.0025, air_resistance = 0.006,  energy_per_hit_point = 4, reversing_power_modifier = 1,   working_sound = workingSoundDiesel},
	    futureU = {resistances = resistanceU, max_speed = 1.85185, max_power = "5000kW", braking_force = 30, friction_force = 0.1, air_resistance = 0.01, energy_per_hit_point = 3, reversing_power_modifier = 1, working_sound = workingSoundAtom},
    },
    stats2 = {
        steam1  = {fuel_inventory_size = 1, effectivity = 0.6},
        steam2  = {fuel_inventory_size = 3, effectivity = 0.7},
        steam3  = {fuel_inventory_size = 2, effectivity = 0.75},
        diesel1 = {fuel_inventory_size = 1, effectivity = 0.8},
        diesel2 = {fuel_inventory_size = 2, effectivity = 0.85},
        diesel3 = {fuel_inventory_size = 3, effectivity = 0.90},
	    diesel4 = {fuel_inventory_size = 3, effectivity = 0.90},
        future  = {fuel_inventory_size = 1, effectivity = 1},
	    futureU = {fuel_inventory_size = 1, effectivity = 0.1},
    }
}

return balancingTypes