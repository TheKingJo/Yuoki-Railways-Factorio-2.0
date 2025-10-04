drive_over_tie = require("lib.functions")

data:extend(
{
	{
		type = "locomotive",
		name = "y_loco_desw",
		icon = "__yi_railway__/graphics/icons/railway/des_green_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid",},
		minable = {mining_time = 1, result = "y_loco_desw"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 700,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.1}, {0.6, 1.1}},
		selection_box = {{-0.85, -1.5}, {0.9, 1.5}},
		drawing_box = {{-1, -1}, {1, 1}},
		weight = 1400,
		max_speed = 0.4,
		max_power = "400kW",
		braking_force = 6,
		friction_force = 0.005,
		reversing_power_modifier = 1.0,
		air_resistance = 0.005,
		vertical_selection_shift = -0.5,
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
		energy_source =
		{
			type = "burner",
			fuel_categories = {"yr_diesel"},
			effectivity = 1,
			fuel_inventory_size = 2,
			smoke =
			{
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
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
		wheels = no_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 125,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 125,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
			},
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/train-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		vehicle_impact_sound =  {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-engine.ogg",
				volume = 0.6
			},
			match_speed_to_activity = true,
		},
		open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
		close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
		sound_minimum_speed = 0.2;
	},

	{
		type = "locomotive",
		name = "y_loco_desw_orange",
		icon = "__yi_railway__/graphics/icons/railway/des_orange_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid",},
		minable = {mining_time = 1, result = "y_loco_desw_orange"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 800,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.1}, {0.6, 1.1}},
		selection_box = {{-0.85, -1.5}, {0.9, 1.5}},
		drawing_box = {{-1, -1}, {1, 1}},
		weight = 1600,
		max_speed = 0.375,
		max_power = "500kW",
		reversing_power_modifier = 1.0,
		braking_force = 8,
		friction_force = 0.0025,
		vertical_selection_shift = -0.5,
		air_resistance = 0.004,
		connection_distance = 3.5,
		joint_distance = 1.3,
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
			fuel_categories = {"yr_diesel"},
			effectivity = 1,
			fuel_inventory_size = 1,
			smoke =
			{
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
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
		wheels = no_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 125,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 125,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
			},
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/train-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		vehicle_impact_sound =  {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-engine.ogg",
				volume = 0.6
			},
			match_speed_to_activity = true,
		},
		open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
		close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
		sound_minimum_speed = 0.2;
	},

	{
		type = "locomotive",
		name = "y_loco_desw_blue",
		icon = "__yi_railway__/graphics/icons/railway/des_blue_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid",},
		minable = {mining_time = 1, result = "y_loco_desw_blue"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 900,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.1}, {0.6, 1.1}},
		selection_box = {{-0.85, -1.5}, {0.9, 1.5}},
		drawing_box = {{-1, -1}, {1, 1}},
		weight = 1800,
		max_speed = 0.35,
		max_power = "600kW",
		reversing_power_modifier = 1.0,
		braking_force = 10,
		friction_force = 0.003,
		vertical_selection_shift = -0.5,
		air_resistance = 0.004,
		connection_distance = 3.5,
		joint_distance = 1.3,
		energy_per_hit_point = 5,
		resistances =
		{
			{type = "fire", decrease = 15, percent = 50},
			{type = "physical", decrease = 15, percent = 30},
			{type = "impact", decrease = 50, percent = 60},
			{type = "explosion", decrease = 15, percent = 30},
			{type = "acid", decrease = 10, percent = 20}
		},
		energy_source =
		{
			type = "burner",
			fuel_categories = {"yr_diesel"},
			effectivity = 1,
			fuel_inventory_size = 2,
			smoke =
			{
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
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
		wheels = no_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 125,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 125,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
			},
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/train-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 30,
		vehicle_impact_sound =  {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/train-engine.ogg",
				volume = 0.6
			},
			match_speed_to_activity = true,
		},
		open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
		close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
		sound_minimum_speed = 0.2;
	},

	{
		type = "locomotive",
		name = "y_loco_ses_std",
		icon = "__yi_railway__/graphics/icons/railway/sea-ss-icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid",},
		minable = {mining_time = 1, result = "y_loco_ses_std"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 700,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.1}, {0.6, 1.1}},
		selection_box = {{-0.85, -1.5}, {0.9, 1.5}},
		drawing_box = {{-1, -1}, {1, 1}},
		weight = 1100,
		max_speed = 0.4,
		max_power = "300kW",
		reversing_power_modifier = 1.0,
		braking_force = 6,
		friction_force = 0.005,
		air_resistance = 0.005,
		vertical_selection_shift = -0.5,
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
		energy_source =
		{
			type = "burner",
			fuel_categories = {"chemical"},
			effectivity = 1,
			fuel_inventory_size = 1,
			smoke =
			{
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
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
		wheels = no_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 200,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 200,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
			},
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/train-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		vehicle_impact_sound =  {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/steam-engine-90bpm.ogg",
				--filename = "__yi_railway__/graphics/entity/railway/steam-locomotive-depart-01.ogg",
				volume = 0.6
			},
			match_speed_to_activity = true,
		},
		open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
		close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
		sound_minimum_speed = 0.2;
	},

	{
		type = "locomotive",
		name = "y_loco_ses_red",
		icon = "__yi_railway__/graphics/icons/railway/sea-sr-icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid",},
		minable = {mining_time = 1, result = "y_loco_ses_red"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 800,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.1}, {0.6, 1.1}},
		selection_box = {{-0.85, -1.5}, {0.9, 1.5}},
		drawing_box = {{-1, -1}, {1, 1}},
		weight = 900,
		max_speed = 1.4,
		max_power = "300kW",
		reversing_power_modifier = 0.6,
		braking_force = 6,
		friction_force = 0.002,
		air_resistance = 0.002,
		vertical_selection_shift = -0.5,
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
		energy_source =
		{
			type = "burner",
			fuel_categories = {"chemical"},
			effectivity = 1,
			fuel_inventory_size = 1,
			smoke =
			{
				{
					name = "train-smoke",
					deviation = {0.3, 0.3},
					frequency = 100,
					position = {0, 0},
					starting_frame = 0,
					starting_frame_deviation = 60,
					height = 2,
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
		wheels = no_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 200,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 200,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {0.03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
			},
			{
				type = "play-sound",
				sound =
				{
					{
						filename = "__base__/sound/train-breaks.ogg",
						volume = 0.6
					},
				}
			},
		},
		drive_over_tie_trigger = yir_drive_over_tie(),
		tie_distance = 50,
		vehicle_impact_sound =  {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
		working_sound =
		{
			sound =
			{
				--filename = "__base__/sound/steam-engine-90bpm.ogg",
				filename = "__yi_railway__/graphics/entity/railway/steam-locomotive-depart-01.ogg",
				volume = 0.6
			},
			match_speed_to_activity = true,
		},
		open_sound = {filename = "__base__/sound/car-door-open.ogg", volume = 0.7},
		close_sound = {filename = "__base__/sound/car-door-close.ogg", volume = 0.7},
		sound_minimum_speed = 0.2;
	},

	{
		type = "cargo-wagon",
		name = "y_wagon_trans",
		icon = "__yi_railway__/graphics/icons/railway/cws_trans_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid",},
		inventory_size = 20,
		minable = {mining_time = 1, result = "y_wagon_trans"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.1}},
		selection_box = {{-0.7, -2.6}, {1, 1.2}},
		weight = 1000,
		max_speed = 1.2,
		braking_force = 2,
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
		wheels = no_wheels,
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
		name = "y_wagon_coal",
		icon = "__yi_railway__/graphics/icons/railway/cws_rcoal_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid",},
		inventory_size = 20,
		minable = {mining_time = 1, result = "y_wagon_coal"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.1}},
		selection_box = {{-0.7, -2.6}, {1, 1.2}},
		weight = 1000,
		max_speed = 1.2,
		braking_force = 2,
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
		wheels = no_wheels,
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
		name = "y_wagon_copper",
		icon = "__yi_railway__/graphics/icons/railway/cws_rcopper_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid",},
		inventory_size = 20,
		minable = {mining_time = 1, result = "y_wagon_copper"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.1}},
		selection_box = {{-0.7, -2.6}, {1, 1.2}},
		weight = 1000,
		max_speed = 1.2,
		braking_force = 2,
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
		wheels = no_wheels,
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
		name = "y_wagon_iron",
		icon = "__yi_railway__/graphics/icons/railway/cws_riron_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid",},
		inventory_size = 20,
		minable = {mining_time = 1, result = "y_wagon_iron"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.1}},
		selection_box = {{-0.7, -2.6}, {1, 1.2}},
		weight = 1000,
		max_speed = 1.2,
		braking_force = 2,
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
		wheels = no_wheels,
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
		name = "y_wagon_stone",
		icon = "__yi_railway__/graphics/icons/railway/cws_rstone_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid",},
		inventory_size = 20,
		minable = {mining_time = 1, result = "y_wagon_stone"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 400,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -1.5}, {0.6, 1.1}},
		selection_box = {{-0.7, -2.6}, {1, 1.2}},
		weight = 1000,
		max_speed = 1.2,
		braking_force = 2,
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
		wheels = no_wheels,
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