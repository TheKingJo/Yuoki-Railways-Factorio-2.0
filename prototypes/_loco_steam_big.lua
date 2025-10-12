functions = require("lib.functions")

data:extend({
	{
		type = "locomotive",
		name = "y_loco_fs_steam_green",
		icon = "__yi_railway__/graphics/icons/railway/rsea_green_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 0.5, result = "y_loco_fs_steam_green"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1000,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2000,
		max_speed = 0.9,
		max_power = "1000kW",
		reversing_power_modifier = 0.6,
		braking_force = 10,
		friction_force = 0.003,
		air_resistance = 0.003,
		vertical_selection_shift = -0.5,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "fire", decrease = 15, percent = 50},
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "explosion",decrease = 15,percent = 30},
			{type = "acid",decrease = 10,percent = 20}
		},
		energy_source =
		{
			type = "burner",
			fuel_categories = {"chemical"},
			effectivity = 1,
			fuel_inventory_size = 1,
			smoke =
			{
				{
					name = "yir_loco_smoke_dark",
					deviation = {0.3, 0.3},
					frequency = 300,
					position = {0, -2.2},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2.5,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				}
			}
		},
		front_light =
		{
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -16},
				size = 2,
				intensity = 0.6
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -16},
				size = 2,
				intensity = 0.6
			}
		},
		wheels = functions.standard_train_wheels,
		drive_over_tie_trigger = functions.yir_drive_over_tie,
		tie_distance = 50,
		vehicle_impact_sound =  {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/steam-engine-90bpm.ogg",
				volume = 0.8
			},
			match_speed_to_activity = true,
		},
		open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
		close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
		sound_minimum_speed = 0.2;
	},

	{
		type = "locomotive",
		name = "yir_loco_sel_blue",
		icon = "__yi_railway__/graphics/icons/railway/rsea_blue_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 0.5, result = "yir_loco_sel_blue"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1200,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2000,
		max_speed = 0.85,
		max_power = "1100kW",
		reversing_power_modifier = 0.6,
		braking_force = 10,
		friction_force = 0.003,
		air_resistance = 0.002,
		vertical_selection_shift = -0.5,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "fire", decrease = 15, percent = 50},
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "explosion",decrease = 15,percent = 30},
			{type = "acid",decrease = 10,percent = 20}
		},
		energy_source =
		{
			type = "burner",
			fuel_categories = {"chemical"},
			effectivity = 1,
			fuel_inventory_size = 3,
			smoke =
			{
				{
					name = "yir_loco_smoke_dark",
					deviation = {0.3, 0.3},
					frequency = 300,
					position = {0, -2},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2.5,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				}
			}
		},
		front_light =
		{
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -16},
				size = 2,
				intensity = 0.6
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -16},
				size = 2,
				intensity = 0.6
			}
		},
		wheels = functions.standard_train_wheels,
		drive_over_tie_trigger = functions.yir_drive_over_tie,
		tie_distance = 50,
		vehicle_impact_sound =  {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/steam-engine-90bpm.ogg",
				volume = 0.8
			},
			match_speed_to_activity = true,
		},
		open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
		close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
		sound_minimum_speed = 0.2;
	},

	{
		type = "locomotive",
		name = "y_loco_steam_wt450",
		icon = "__yi_railway__/graphics/icons/railway/sewt_bl_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 0.5, result = "y_loco_steam_wt450"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 800,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2000,
		max_speed = 0.625,
		max_power = "450kW",
		reversing_power_modifier = 0.6,
		braking_force = 10,
		friction_force = 0.003,
		air_resistance = 0.003,
		vertical_selection_shift = -0.5,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "fire", decrease = 15, percent = 50},
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact",decrease = 50,percent = 60},
			{type = "explosion",decrease = 15,percent = 30},
			{type = "acid",decrease = 10,percent = 20}
		},
		energy_source =
		{
			type = "burner",
			fuel_categories = {"chemical"},
			effectivity = 1,
			fuel_inventory_size = 3,
			smoke =
			{
				{
					name = "yir_loco_smoke_dark",
					deviation = {0.3, 0.3},
					frequency = 300,
					position = {0, -3},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2.5,
					height_deviation = 0.5,
					starting_vertical_speed = 0.2,
					starting_vertical_speed_deviation = 0.1,
				}
			}
		},
		front_light =
		{
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {-0.6, -16},
				size = 2,
				intensity = 0.6
			},
			{
				type = "oriented",
				minimum_darkness = 0.3,
				picture =
				{
					filename = "__core__/graphics/light-cone.png",
					priority = "medium",
					scale = 2,
					width = 200,
					height = 200
				},
				shift = {0.6, -16},
				size = 2,
				intensity = 0.6
			}
		},
		wheels = functions.standard_train_wheels,
		drive_over_tie_trigger = functions.yir_drive_over_tie,
		tie_distance = 50,
		vehicle_impact_sound =  {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/steam-engine-90bpm.ogg",
				volume = 0.8
			},
			match_speed_to_activity = true,
		},
		open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
		close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
		sound_minimum_speed = 0.2;
	},
})