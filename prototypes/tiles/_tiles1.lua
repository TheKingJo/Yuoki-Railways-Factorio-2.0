local tile_collision_masks = require("__base__/prototypes/tile/tile-collision-masks")

data:extend(
{

	--[[ 
	{
		type = "recipe",
		name = "y_path_labor",
		energy_required = 2,
		enabled = true,		
		ingredients = {{"iron-plate", 4},{"y-refined-yres2", 2}, {"y-crystal2", 1},},
		result= "y_path_labor",
		result_count = 12
	},
	]]
	{
		type = "item",
		name = "y_path_labor",
		icon = "__yi_railway__/graphics/path_tiles/floor004_icon.png", icon_size = 32,		
		subgroup = "yir_floor",		
		order = "b[concrete]",
		stack_size = 500,
		place_as_tile =
		{
			result = "y_path_labor",
			condition_size = 2,
			condition = {layers={water_tile=true}}
		}
	},
	
	
	
	{
		type = "tile",
		name = "y_path_labor",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_path_labor"},
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = tile_collision_masks.ground(),
		walking_speed_modifier = 1.2,
		layer = 59,
		decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__yi_railway__/graphics/path_tiles/floor004-32.png",
					count = 1,
					size = 1
				},
				{
					picture = "__yi_railway__/graphics/path_tiles/lab_floor_64.png",
					count = 1,
					size = 2,
					probability = 0,
				},
				{
					picture = "__yi_railway__/graphics/path_tiles/lab_floor001-128.png",
					count = 1,
					size = 4,
					probability = 0,
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
	
	-- vents-path
	--[[
	{
		type = "recipe",
		name = "y_path_science",
		energy_required = 2,
		enabled = true,		
		ingredients = {{"iron-plate", 4}, {"y-refined-yres1", 1},},
		result= "y_path_science",
		result_count = 8
	},
	]]
	{
		type = "item",
		name = "y_path_science",
		icon = "__yi_railway__/graphics/path_tiles/vent_icon.png", icon_size = 32,		
		subgroup = "yir_floor",		
		order = "b[concrete]",
		stack_size = 500,
		place_as_tile =
		{
			result = "y_path_science",
			condition_size = 2,
			condition = {layers={water_tile=true}}
		}
	},
	
	
	{
		type = "tile",
		name = "y_path_science",
		needs_correction = false,
		minable = {hardness = 0.2, mining_time = 0.5, result = "y_path_science"},
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		collision_mask = tile_collision_masks.ground(),
		walking_speed_modifier = 1.2,
		layer = 59, decorative_removal_probability = 1.0,
		variants =
		{
			main =
			{
				{
					picture = "__yi_railway__/graphics/path_tiles/vent003-32.png",
					count = 1,
					size = 1
				},
				{
					picture = "__yi_railway__/graphics/path_tiles/vent004-64.png",
					count = 1,
					size = 2,
					probability = 1,
				},
				{
					picture = "__yi_railway__/graphics/path_tiles/vent001-128.png",
					count = 1,
					size = 4,
					probability = 0,
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

	-- slag-path
	--[[
	{
		type = "recipe",
		name = "y_path_slag",
		energy_required = 2,
		enabled = true,		
		ingredients = {{"stone", 2}, {"y-slag", 6},},
		result= "y_path_slag",
		result_count = 4
	},
	]]
	
		
})
