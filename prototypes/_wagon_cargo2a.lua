require("lib.functions")-- require("__base__.prototypes.entity.trains")

data:extend(
{
	{
		type = "cargo-wagon",
		name = "yir_wagon2a_closed",
		icon = "__yi_railway__/graphics/icons/railway/wcs_closed_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 20,
		minable = {mining_time = 0.5, result = "yir_wagon2a_closed"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.5}},
		selection_box = {{-1, -2.1}, {1, 2.1}},
		weight = 500,
		max_speed = 1.2,
		braking_force = 1,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "fire", decrease = 15, percent = 50},
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "explosion",decrease = 15,percent = 30},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.5,
						
		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},

	{
		type = "cargo-wagon",
		name = "y_wagon_hopper_yellow",
		icon = "__yi_railway__/graphics/icons/railway/2a_hooper_y_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 10,
		minable = {mining_time = 0.5, result = "y_wagon_hopper_yellow"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.5}},
		selection_box = {{-1, -2.1}, {1, 2.1}},
		weight = 500,
		max_speed = 1.2,
		braking_force = 1,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "fire", decrease = 15, percent = 50},
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "explosion",decrease = 15,percent = 30},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.5,
				
		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},

	{
		type = "cargo-wagon",
		name = "y_wagon_corn_green",
		icon = "__yi_railway__/graphics/icons/railway/2a_corn_green_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 10,
		minable = {mining_time = 0.5, result = "y_wagon_corn_green"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.5}},
		selection_box = {{-1, -2.1}, {1, 2.1}},
		weight = 500,
		max_speed = 1.2,
		braking_force = 1,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "fire", decrease = 15, percent = 50},
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "explosion",decrease = 15,percent = 30},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.5,
						
		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},

	{
		type = "cargo-wagon",
		name = "y_wagon_corn_blue",
		icon = "__yi_railway__/graphics/icons/railway/2a_corn_blue_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 10,
		minable = {mining_time = 0.5, result = "y_wagon_corn_blue"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.5}},
		selection_box = {{-1, -2.1}, {1, 2.1}},
		weight = 500,
		max_speed = 1.2,
		braking_force = 1,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "fire", decrease = 15, percent = 50},
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "explosion",decrease = 15,percent = 30},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.5,
						
		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},

	{
		type = "cargo-wagon",
		name = "yir_2acw_3blocks",
		icon = "__yi_railway__/graphics/icons/railway/2a_cws_tf1-icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 10,
		minable = {mining_time = 0.5, result = "yir_2acw_3blocks"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.5}},
		selection_box = {{-1, -2.1}, {1, 2.1}},
		weight = 500,
		max_speed = 1.0,
		braking_force = 1,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "fire", decrease = 15, percent = 50},
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "explosion",decrease = 15,percent = 30},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.5,
						
		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},

	{
		type = "cargo-wagon",
		name = "yir_2acw_wood",
		icon = "__yi_railway__/graphics/icons/railway/2a_cws_tf1-icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		inventory_size = 10,
		minable = {mining_time = 0.5, result = "yir_2acw_wood"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.5}},
		selection_box = {{-1, -2.1}, {1, 2.1}},
		weight = 500,
		max_speed = 1.0,
		braking_force = 1,
		friction_force = 0.0015,
		air_resistance = 0.002,
		connection_distance = 3.6,
		joint_distance = 1.8,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "fire", decrease = 15, percent = 50},
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "explosion",decrease = 15,percent = 30},
			{type = "acid",decrease = 10,percent = 20}
		},
		vertical_selection_shift = -0.5,
		wheels = standard_train_wheels,
		rail_category = "regular",
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-wheels.ogg",
				volume = 0.5
			},
			match_volume_to_activity = true,
		},
		crash_trigger = crash_trigger(),
		open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
		close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
		sound_minimum_speed = 0.5;
		vehicle_impact_sound =  {filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0},
	},
})