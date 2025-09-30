local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")

data:extend(
{

	--[[
	{
		type = "recipe",
		name = "yir_ground1_tile",
		energy_required = 2,
		enabled = true,
		ingredients = {{"stone", 4},},
		result= "yir_ground1_tile",
		category = "yir_rc_tiles",
		order = "ground-1",
		result_count = 4
	},

	{
		type = "item",
		name = "yir_ground1_tile",
		icon = "__yi_railway__/graphics/path_tiles/ground_1.png",
		icon_size = 32,
		subgroup = "yir_floor_line2",
		order = "ground-1",
		stack_size = 500,
		place_as_tile =
		{
			result = "yir_ground1_tile",
			condition_size = 2,
			condition = {"water-tile"}
		}
	},

	{
		type = "tile",
		name = "yir_ground1_tile",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "yir_ground1_tile"},
		mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
		collision_mask = tile_collision_masks.ground(),
		walking_speed_modifier = 1.3,
		layer = 59, decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__yi_railway__/graphics/path_tiles/ground_1.png",
					count = 1,
					size = 1
				},
			},
			inner_corner =
			{
				picture = "__yi_railway__/graphics/path_tiles/concrete-inner-corner.png",
				count = 8
			},
			outer_corner =
			{
				picture = "__yi_railway__/graphics/path_tiles/concrete-outer-corner.png",
				count = 8
			},
			side =
			{
				picture = "__yi_railway__/graphics/path_tiles/concrete-side.png",
				count = 8
			},
			u_transition =
			{
				picture = "__yi_railway__/graphics/path_tiles/concrete-u.png",
				count = 8
			},
			o_transition =
			{
				picture = "__yi_railway__/graphics/path_tiles/concrete-o.png",
				count = 1
			}
		},
		walking_sound = concrete_sounds,
		-- pollution_absorption_per_second = 0,

		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},

	{
		type = "recipe",
		name = "yir_plates2_tile",
		energy_required = 2,
		enabled = true,
		ingredients = {{"stone", 4},},
		result= "yir_plates2_tile",
		category = "yir_rc_tiles",
		order = "ground-2",
		result_count = 4
	},

	{
		type = "item",
		name = "yir_plates2_tile",
		icon = "__yi_railway__/graphics/path_tiles/plates_2.png",
		icon_size = 32,
		subgroup = "yir_floor_line2",
		order = "ground-2",
		stack_size = 500,
		place_as_tile =
		{
			result = "yir_plates2_tile",
			condition_size = 2,
			condition = {"water-tile"}
		}
	},

	{
		type = "tile",
		name = "yir_plates2_tile",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "yir_plates2_tile"},
		mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
		collision_mask = tile_collision_masks.ground(),
		walking_speed_modifier = 1.3,
		layer = 59, decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__yi_railway__/graphics/path_tiles/plates_2.png",
					count = 1,
					size = 1
				},
			},
			inner_corner =
			{
				picture = "__yi_railway__/graphics/path_tiles/concrete-inner-corner.png",
				count = 8
			},
			outer_corner =
			{
				picture = "__yi_railway__/graphics/path_tiles/concrete-outer-corner.png",
				count = 8
			},
			side =
			{
				picture = "__yi_railway__/graphics/path_tiles/concrete-side.png",
				count = 8
			},
			u_transition =
			{
				picture = "__yi_railway__/graphics/path_tiles/concrete-u.png",
				count = 8
			},
			o_transition =
			{
				picture = "__yi_railway__/graphics/path_tiles/concrete-o.png",
				count = 1
			}
		},
		walking_sound = concrete_sounds,
		-- pollution_absorption_per_second = 0,
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},
	]]

	{
		type = "recipe",
		name = "yir_muster1_tile",
		energy_required = 2,
		enabled = true,
		ingredients = {
			{type = "item", name = "stone",  amount=4},
			{type = "item", name = "coal",  amount=1},
		},
		results = {{type = "item", name = "yir_muster1_tile", amount=8},},
		main_product = "yir_muster1_tile",
		category = "yir_rc_tiles",
		order = "ground-3",
	},

	{
		type = "item",
		name = "yir_muster1_tile",
		icon = "__yi_railway__/graphics/path_tiles/muster-1.png",
		icon_size = 32,
		subgroup = "yir_floor_line2",
		order = "ground-3",
		stack_size = 500,
		place_as_tile =
		{
			result = "yir_muster1_tile",
			condition_size = 2,
			condition = {layers={water_tile=true}}
		}
	},

	{
		type = "tile",
		name = "yir_muster1_tile",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "yir_muster1_tile"},
		mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
		collision_mask = tile_collision_masks.ground(),
		walking_speed_modifier = 1.3,
		layer = 59, decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__yi_railway__/graphics/path_tiles/muster-1.png",
					count = 1,
					size = 1
				},
			},
			transition =
			{
				overlay_layout =
				{
					inner_corner =
					{
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-inner-corner.png",
						count = 8
					},
					outer_corner =
					{
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-outer-corner.png",
						count = 8
					},
					side =
					{
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-side.png",
						count = 8
					},
					u_transition =
					{
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-u.png",
						count = 8
					},
					o_transition =
					{
						spritesheet = "__yi_railway__/graphics/path_tiles/concrete-o.png",
						count = 1
					}
				},
			},
		},
		walking_sound = concrete_sounds,
		-- pollution_absorption_per_second = 0,
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},

})
