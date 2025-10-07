drive_over_tie = require("lib.functions")

data:extend(
{
	{
		type = "locomotive",
		name = "yir_loco_fut_red",
		icon = "__yi_railway__/graphics/icons/railway/future_red_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 0.5, result = "yir_loco_fut_red"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1200,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2000,
		max_speed = 2.50,
		max_power = "3000kW",
		reversing_power_modifier = 0.6,
		braking_force = 10,
		friction_force = 0.275,
		air_resistance = 0.00275,
		vertical_selection_shift = -0.5,
		energy_per_hit_point = 25,
		resistances = {{type = "impact",decrease = 50,percent = 60}},
		energy_source =
		{
			type = "burner",
			fuel_categories = {"yr_future"},
			effectivity = 1,
			fuel_inventory_size = 3,
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
		wheels = standard_train_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {03, 0},
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
		sound_minimum_speed = 0.3;
	},

	{
		type = "locomotive",
		name = "yir_loco_del_KR",
		icon = "__yi_railway__/graphics/icons/railway/kurts_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 0.5, result = "yir_loco_del_KR"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1600,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2000,
		max_speed = 1,
		max_power = "2700kW",
		reversing_power_modifier = 0.6,
		braking_force = 10,
		friction_force = 0.00275,
		air_resistance = 0.00275,
		vertical_selection_shift = -0.5,
		energy_per_hit_point = 5,
		resistances = {{type = "impact",decrease = 50,percent = 60}},

		energy_source =
		{
			type = "burner",
			fuel_categories = {"yr_diesel"},
			effectivity = 1.2,
			fuel_inventory_size = 3,
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
		wheels = standard_train_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {03, 0},
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
		sound_minimum_speed = 0.3;
	},

	{
		type = "locomotive",
		name = "y_loco_emd3000_white",
		icon = "__yi_railway__/graphics/icons/railway/emd_gp_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 0.5, result = "y_loco_emd3000_white"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1500,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2000,
		max_speed = 0.9,
		max_power = "1200kW",
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
			fuel_categories = {"yr_diesel"},
			effectivity = 1,
			fuel_inventory_size = 3,
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
		wheels = standard_train_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {03, 0},
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
		name = "yir_loco_de_bluegray",
		icon = "__yi_railway__/graphics/icons/railway/emd-gp_bluegray_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 0.5, result = "yir_loco_de_bluegray"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1600,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2000,
		max_speed = 0.8,
		max_power = "1300kW",
		reversing_power_modifier = 0.6,
		braking_force = 100,
		friction_force = 0.00275,
		air_resistance = 0.00275,
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
			fuel_categories = {"yr_diesel"},
			effectivity = 1.1,
			fuel_inventory_size = 3,
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
		wheels = standard_train_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {03, 0},
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
		sound_minimum_speed = 0.3;
	},

	{
		type = "locomotive",
		name = "yir_loco_del_mk1400",
		icon = "__yi_railway__/graphics/icons/railway/emd-gp_orange_icon.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation", "placeable-off-grid"},
		minable = {mining_time = 0.5, result = "yir_loco_del_mk1400"},
		mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
		max_health = 1600,
		corpse = "medium-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
		selection_box = {{-1, -3}, {1, 3}},
		drawing_box = {{-1, -4}, {1, 3}},
		connection_distance = 3, joint_distance = 4,
		weight = 2000,
		max_speed = 0.75,
		max_power = "1400kW",
		reversing_power_modifier = 0.6,
		braking_force = 100,
		friction_force = 0.00275,
		air_resistance = 0.00275,
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
			fuel_categories = {"yr_diesel"},
			effectivity = 1.1,
			fuel_inventory_size = 3,
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
		wheels = standard_train_wheels,
		rail_category = "regular",
		stop_trigger =
		{
			-- left side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the left
				speed = {-03, 0},
				speed_multiplier = 0.75,
				speed_multiplier_deviation = 1.1,
				offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
			},
			-- right side
			{
				type = "create-trivial-smoke",
				repeat_count = 75,
				smoke_name = "smoke-train-stop",
				initial_height = 0,
				-- smoke goes to the right
				speed = {03, 0},
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
		sound_minimum_speed = 0.3;
	},
})