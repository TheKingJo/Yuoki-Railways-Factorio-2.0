local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")

data:extend(
{

	{
		type = "recipe",
		name = "yir_tile1_tile",
		energy_required = 2,
		enabled = true,
		ingredients = {
			{type = "item", name = "iron-plate",  amount=1},
			{type = "item", name = "yir_color_blue",  amount=1},
		},
		results = {{type = "item", name = "yir_tile1_tile", amount=4},},
		main_product = "yir_tile1_tile",
		category = "yir_rc_tiles",
	},

	{
		type = "item",
		name = "yir_tile1_tile",
		icon = "__yi_railway__/graphics/path_tiles/tile_blue.png",icon_size = 32,
		subgroup = "yir_floor_line3",
		order = "tile-1",
		stack_size = 500,
		place_as_tile =
		{
			result = "yir_tile1_tile",
			condition_size = 2,
			condition = {layers={water_tile=true}}
		}
	},

	{
		type = "tile",
		name = "yir_tile1_tile",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "yir_tile1_tile"},
		mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
		collision_mask = tile_collision_masks.ground(),
		walking_speed_modifier = 1.3,
		layer = 59, decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__yi_railway__/graphics/path_tiles/tile_blue.png",
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
		walking_sound =
		{
			{
				filename = "__base__/sound/walking/concrete-01.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-02.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-03.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-04.ogg",
				volume = 1.2
			}
		},
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},
	{
		type = "recipe",
		name = "yir_tile2_tile",
		energy_required = 2,
		enabled = true,
		ingredients = {
			{type = "item", name = "iron-plate",  amount=1},
			{type = "item", name = "yir_color_green",  amount=1},
		},
		results = {{type = "item", name = "yir_tile2_tile", amount=4},},
		main_product = "yir_tile2_tile",
		category = "yir_rc_tiles",
	},

	{
		type = "item",
		name = "yir_tile2_tile",
		icon = "__yi_railway__/graphics/path_tiles/tile_green.png", icon_size = 32,
		subgroup = "yir_floor_line3",
		order = "tile-1",
		stack_size = 500,
		place_as_tile =
		{
			result = "yir_tile2_tile",
			condition_size = 2,
			condition = {layers={water_tile=true}}
		}
	},

	{
		type = "tile",
		name = "yir_tile2_tile",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "yir_tile2_tile"},
		mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
		collision_mask = tile_collision_masks.ground(),
		walking_speed_modifier = 1.3,
		layer = 59, decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__yi_railway__/graphics/path_tiles/tile_green.png",
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
		walking_sound =
		{
			{
				filename = "__base__/sound/walking/concrete-01.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-02.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-03.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-04.ogg",
				volume = 1.2
			}
		},
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},
	{
		type = "recipe",
		name = "yir_tile3_tile",
		energy_required = 2,
		enabled = true,
		ingredients = {
			{type = "item", name = "iron-plate",  amount=1},
			{type = "item", name = "yir_color_red",  amount=1},
		},
		results = {{type = "item", name = "yir_tile3_tile", amount=4},},
		main_product = "yir_tile3_tile",
		category = "yir_rc_tiles",
	},

	{
		type = "item",
		name = "yir_tile3_tile",
		icon = "__yi_railway__/graphics/path_tiles/tile_red.png", icon_size = 32,
		subgroup = "yir_floor_line3",
		order = "tile-1",
		stack_size = 500,
		place_as_tile =
		{
			result = "yir_tile3_tile",
			condition_size = 2,
			condition = {layers={water_tile=true}}
		}
	},

	{
		type = "tile",
		name = "yir_tile3_tile",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "yir_tile3_tile"},
		mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
		collision_mask = tile_collision_masks.ground(),
		walking_speed_modifier = 1.3,
		layer = 59, decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__yi_railway__/graphics/path_tiles/tile_red.png",
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
		walking_sound =
		{
			{
				filename = "__base__/sound/walking/concrete-01.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-02.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-03.ogg",
				volume = 1.2
			},
			{
				filename = "__base__/sound/walking/concrete-04.ogg",
				volume = 1.2
			}
		},
		map_color={r=90, g=70, b=50},
		ageing=0,
		vehicle_friction_modifier = stone_path_vehicle_speed_modifier
	},
})
