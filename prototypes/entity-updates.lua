local modname = "__yi_railway__"
local item_sounds = require("__base__.prototypes.item_sounds")

local entityData = {
	locomotive = {
		y_loco_emd1500blue = 	{filename = "emd_1500blue_sheet_old", 	double = true, 	doublesided = false, size = {3296, 5760}, sizeSh = {3424, 6976}, shift = {0.42,-1.125}},
		y_loco_emd1500blue_v2 = {filename = "emd_1500blue_sheet", 		double = true, 	doublesided = false, size = {3296, 5760}, sizeSh = {3424, 6976}, shift = {0.42,-1.125}},
		y_loco_emd1500black = 	{filename = "emd_1500black_sheet_old",	double = true, 	doublesided = false, size = {3296, 5824}, sizeSh = {3424, 6976}, shift = {0.42,-1.125}},
		y_loco_emd1500black_v2= {filename = "DESW90_PU_sheet", 			double = true, 	doublesided = false, size = {3312, 5664}, sizeSh = {3840, 7040}, shift = {0.42,-1.125}},
		yir_loco_fesw_op = 		{filename = "DESW90_OP_sheet", 			double = true, 	doublesided = false, size = {3312, 5760}, sizeSh = {3424, 7040}, shift = {0.42,-1.125}},
		yir_loco_fut_red = 		{filename = "future_red_sheet", 		double = true, 	doublesided = false, size = {4032, 8096}, sizeSh = {4096, 8192}, shift = {0   ,-0.625}},
		yir_loco_del_KR = 		{filename = "kurts_sheet", 				double = true, 	doublesided = false, size = {4096, 8192}, sizeSh = {4096, 8192}, shift = {0.42,-1.125}},
		y_loco_emd3000_white = 	{filename = "emd_gp_white_sheet", 		double = true, 	doublesided = false, size = {4096, 6752}, sizeSh = {4096, 8064}, shift = {0.42,-1.125}},
		yir_loco_de_bluegray = {filename = "emd_gp2_gray_sheet", 		double = true, 	doublesided = false, size = {4096, 6688}, sizeSh = {4096, 8192}, shift = {0.42,-1.125}},
		yir_loco_del_mk1400 = 	{filename = "emd_gp2_yellow_sheet", 	double = true, 	doublesided = false, size = {4096, 6688}, sizeSh = {4096, 8064}, shift = {0.42,-1.125}},
		y_loco_fs_steam_green = {filename = "se_green_csheet", 			double = true, 	doublesided = false, size = {4096, 7456}, sizeSh = {4096, 8160}, shift = {0.45,-1.125}},
		yir_loco_sel_blue = 	{filename = "se_blue_sheet", 			double = true, 	doublesided = false, size = {4096, 6656}, sizeSh = {4096, 7232}, shift = {0.42,-1.125}},
		y_loco_steam_wt450 = 	{filename = "se_cbl_sheet", 			double = true, 	doublesided = false, size = {3936, 7744}, sizeSh = {4096, 8192}, shift = {0   ,-1.125}},
		y_loco_desw = 			{filename = "des_gs", 					double = true, 	doublesided = false, size = {3248, 5568}, sizeSh = {3264, 6144}, shift = {0.42,-1.125}},
		y_loco_desw_blue = 		{filename = "des_bs", 					double = true, 	doublesided = false, size = {3248, 5568}, sizeSh = {3248, 6144}, shift = {0.42,-1.125}},
		y_loco_desw_orange = 	{filename = "des_os", 					double = true, 	doublesided = false, size = {3248, 5600}, sizeSh = {3248, 6144}, shift = {0.42,-1.125}},
		y_loco_ses_std = 		{filename = "ses_std-x_sheet", 			double = true, 	doublesided = false, size = {3264, 5568}, sizeSh = {3296, 6016}, shift = {0.42,-1.125}},
		y_loco_ses_red = 		{filename = "ses_ared", 				double = true, 	doublesided = false, size = {3200, 5472}, sizeSh = {3232, 5888}, shift = {0.42,-1.125}},
	},
	["cargo-wagon"] = {
		yir_wagon2a_closed = 	{filename = "wcs_closed_sheet", 		double = false, doublesided = true,	size = {3216, 2736}, sizeSh = {3296, 3056}, shift = {0.42,-1.125}},
		y_wagon_hopper_yellow = {filename = "2a_hopper_y_sheet", 		double = false, doublesided = true,	size = {3344, 2832}, sizeSh = {3360, 3136}, shift = {0.42,-1.125}},
		y_wagon_corn_green = 	{filename = "2a_corn_green_sheet", 		double = false, doublesided = true,	size = {3344, 2848}, sizeSh = {3360, 3136}, shift = {0.42,-1.125}},
		y_wagon_corn_blue = 	{filename = "2a_corn_blue_sheet", 		double = false, doublesided = true,	size = {3344, 2848}, sizeSh = {3360, 3136}, shift = {0.42,-1.125}},
		yir_2acw_3blocks = 		{filename = "2a_cws_tf1_sheet", 		double = false, doublesided = true,	size = {3216, 2720}, sizeSh = {3216, 3056}, shift = {0.42,-1.125}},
		yir_2acw_wood = 		{filename = "2a_wood_sheet", 			double = true, 	doublesided = false,size = {3344, 5696}, sizeSh = {3360, 6272}, shift = {0.42,-1.125}},
		yir_4acw_purple = 		{filename = "4acw_pu_sheet", 			double = false, doublesided = true,	size = {4096, 3232}, sizeSh = {4096, 3616}, shift = {0.42,-1.125}},
		yir_4acw_oceanblue = 	{filename = "4acw_oc_sheet", 			double = false, doublesided = true,	size = {4096, 3216}, sizeSh = {4096, 3216}, shift = {0.42,-1.125}},
		yir_4acw_grey = 		{filename = "4acw_gr_sheet", 			double = false, doublesided = true,	size = {4096, 3216}, sizeSh = {4096, 3216}, shift = {0.42,-1.125}},
		yir_4acw_coal = 		{filename = "4aw_cw_coal_sheet", 		double = false, doublesided = true,	size = {4096, 4064}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_4acw_iron = 		{filename = "4aw_cw_iron_sheet", 		double = false, doublesided = true,	size = {4096, 4064}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_4acw_copper = 		{filename = "4aw_cw_copper_sheet", 		double = false, doublesided = true,	size = {4096, 4096}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_4acw_stone = 		{filename = "4aw_cw_stone_sheet", 		double = false, doublesided = true,	size = {4096, 4064}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_4acw_wood = 		{filename = "4aw_cw_wood_sheet", 		double = false, doublesided = true,	size = {4096, 4048}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_4acw_closed = 		{filename = "4aw_cw_closed_sheet", 		double = false, doublesided = true,	size = {4096, 4064}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_4acw_gold = 		{filename = "4aw_cw_gold_sheet", 		double = false, doublesided = true,	size = {4096, 4048}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_4acw_mun = 			{filename = "4aw_cw_mun_sheet", 		double = false, doublesided = true,	size = {4096, 4064}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_4acw_tf = 			{filename = "4aw_cw_tf_sheet", 			double = false, doublesided = true,	size = {4096, 4048}, sizeSh = {4096, 4096}, shift = {0.42,-1.125}},
		yir_4acw_vc = 			{filename = "4aw_cw_vc_sheet", 			double = false, doublesided = true,	size = {4080, 3984}, sizeSh = {4080, 4096}, shift = {0.42,-0.875}},
		y_wagon_zement_gray = 	{filename = "csw_zement_gray_sheet", 	double = false, doublesided = true,	size = {3216, 2736}, sizeSh = {3216, 3056}, shift = {0.42,-1.125}},
		y_wagon_zement_white = 	{filename = "csw_zement_white_sheet", 	double = false, doublesided = true,	size = {3216, 2736}, sizeSh = {3216, 3056}, shift = {0.42,-1.125}},
		y_wagon_tender_black = 	{filename = "tender_black_sheet", 		double = true, 	doublesided = false,size = {3216, 5472}, sizeSh = {3296, 6112}, shift = {0.42,-1.125}},
		y_wagon_tender_green =	{filename = "tender_green_sheet", 		double = true, 	doublesided = false,size = {3216, 5568}, sizeSh = {3296, 6112}, shift = {0.42,-1.125}},
		y_wagon_trans = 		{filename = "wcs_ts", 					double = false,	doublesided = true,	size = {3216, 2752}, sizeSh = {3216, 3056}, shift = {0.42,-1.125}},
		y_wagon_coal = 			{filename = "wcs_coal_s", 				double = false,	doublesided = true,	size = {3216, 2736}, sizeSh = {3232, 3056}, shift = {0.42,-1.125}},
		y_wagon_copper = 		{filename = "wcs_copper_s", 			double = false,	doublesided = true,	size = {3216, 2784}, sizeSh = {3232, 3056}, shift = {0.42,-1.125}},
		y_wagon_iron = 			{filename = "wcs_iron_s", 				double = false,	doublesided = true,	size = {3216, 2784}, sizeSh = {3216, 3056}, shift = {0.42,-1.125}},
		y_wagon_stone = 		{filename = "wcs_stone_s", 				double = false,	doublesided = true,	size = {3216, 2752}, sizeSh = {3232, 3056}, shift = {0.42,-1.125}},
	},
	["fluid-wagon"] = {
		y_wagon_tank_fm1 = 		{filename = "4atw_fm1_sheet", 		double = false,	doublesided = true,	size = {4096, 3360}, sizeSh = {4096, 3648}, shift = {0.42,-1.125}},
		y_wagon_tank_fm2 = 		{filename = "4atw_fm2_sheet", 		double = false,	doublesided = true,	size = {4096, 3376}, sizeSh = {4096, 3648}, shift = {0.42,-1.125}},
		yir_wagon_tank_orange =	{filename = "4aw_fw_acid_sheet", 	double = false,	doublesided = true,	size = {4080, 4000}, sizeSh = {4080, 4096}, shift = {0.42,-1}},
		yir_wagon_tank_blue = 	{filename = "4aw_fw_blue_sheet", 	double = false,	doublesided = true,	size = {4080, 4000}, sizeSh = {4080, 4096}, shift = {0.42,-1}},
		yir_fw4a_tank_oil = 	{filename = "4afw_oil_sheet", 		double = false,	doublesided = true,	size = {3840, 3760}, sizeSh = {3840, 4096}, shift = {0.42,-1}},
		yir_fw4_vc = 			{filename = "4aw_fw_vc_sheet", 		double = false,	doublesided = true,	size = {4080, 4000}, sizeSh = {4080, 4096}, shift = {0.42,-0.875}},
	},
}

local itemData = {
	large = {
		"yir_factory_loco",
		"yir_factory_wagon",
		"yir_factory_material",
		"yir_factory_wagon",
		"yir_factory_tiles",
		"yir_factory_chemical",

		"yir_factory_stuff",
		"yir_diesel_monument",
		"yir_future_monument",

		"yir_frame_loco_steam",
		"yir_frame_loco_diesel",
		"yir_frame_loco_future",

		"yir_frame_waggon",

		"yir_radsatz_locos",
		"yir_radsatz_waggon",
	},
	coin = {
		"yir_coin",
		"yir_diesel_coin",
		"yir_future_coin",
	},
	resource = {
		"yir_color_black",
		"yir_color_blue",
		"yir_color_green",
		"yir_color_red",
		"yir_color_white",

		"yir_fuel_coks",
		"yir_fuel_energy_u1",
	},
	electrical = {
		"yir_lamp_modern",
		"yir_lamp_old1",
		"yir_lamp_clock",

		"yir_fuel_energy",
	},
	tile = {
		"y_tgb",
		"y_tring",
		"y_path_checker",
		"y_path_science",
		"y_path_labor",
		"y_path_slag",
		"yir_brick1_tile",
		"yir_muster1_tile",
		"yir_metal2_tile",
		"yir_metal3_tile",
		"yir_metal4_tile",
		"yir_stony_tile",
		"yir_brick2_tile",
		"yir_grating_tile",
	},
	metal = {
		"yir_fuel_diesel",
	},
	fluid = {
		"yir_fuel_fluid_u1",
		"yir_fuel_fluid_u2",
		"yir_fuel_fluid_u3",
	}
}

local locoCategories = {
	steam = {
		"yir_loco_sel_blue",
		"y_loco_fs_steam_green",
		"y_loco_steam_wt450",
		"y_loco_ses_std",
		"y_loco_ses_red",
	},
	diesel = {
		"yir_loco_del_KR",
		"yir_loco_del_mk1400",
		"yir_loco_de_bluegray",
		"y_loco_emd3000_white",
		"y_loco_emd1500black_v2",
		"y_loco_emd1500blue_v2",
		"y_loco_emd1500black",
		"y_loco_emd1500blue",
		"y_loco_desw_orange",
		"y_loco_desw_blue",
		"y_loco_desw",
	},
	future = {
		"yir_loco_fut_red",
		"yir_loco_fesw_op",
	}
}
--yir_diesel_coin
local function filenameGen(name, count, shadow)
	local names = {}
	local sh =""
	if shadow ~= nil and shadow == true then
		sh = "_shadow"
	end
	if count == 1 then
			table.insert(names, modname.."/graphics/entity/railway/"..name..sh..".png")
	else
		for i = 0, count - 1, 1 do
			table.insert(names, modname.."/graphics/entity/railway/"..name..(i+1)..sh..".png")
		end
	end
	return names
end

local function makePictures(data)
	local width = 8
	local height = 8
	local dc = 128
	if data.double == true then
		height = 16
	end
	if data.doublesided == true then
		dc = 64
	end

	local pictures = {
		rotated = {
			layers = {
				{
					width = data.size[1] / width,
					height = data.size[2] / height,
					direction_count = dc,
					filenames = filenameGen(data.filename, 1),
					back_equals_front = data.doublesided,
					line_length = width,
					lines_per_file = height,
					shift = data.shift,
					scale = 0.5,
				},
				{
					width = data.sizeSh[1] / width,
					height = data.sizeSh[2] / height,
					direction_count = dc,
					filenames = filenameGen(data.filename, 1, true),
					back_equals_front = data.doublesided,
					line_length = width,
					lines_per_file = height,
					shift = data.shift,
					draw_as_shadow = true,
					scale = 0.5,
				},
			}
		}
	}
	return pictures
end

local types = {
	large = "metal_large",
	coin = "coin",
	resource = "resource",
	electrical = "electric_small",
	tile = "concrete",
	metal = "metal_chest",
	fluid = "fluid",
}

for type, items in pairs(itemData) do
	for _, name in pairs(items) do
		local item = data.raw["item"][name]

		if item ~= nil then
			item.inventory_move_sound = item_sounds[types[type].."_inventory_move"]
			item.pick_sound = 			item_sounds[types[type].."_inventory_pickup"]
			item.drop_sound = 			item_sounds[types[type].."_inventory_move"]
		end
	end
end

for type, typeData in pairs(entityData) do
	for name, datas in pairs(typeData) do
		local vehicle = data.raw[type][name]
		local item = data.raw["item"][name]

		if vehicle ~= nil then
			vehicle.pictures = makePictures(datas)
			vehicle.minimap_representation = data.raw[type][type].minimap_representation
			vehicle.selected_minimap_representation = data.raw[type][type].selected_minimap_representation
		end

		if item ~= nil then
			item.inventory_move_sound = data.raw["item-with-entity-data"][type].inventory_move_sound
			item.pick_sound = data.raw["item-with-entity-data"][type].pick_sound
			item.drop_sound = data.raw["item-with-entity-data"][type].drop_sound
		end

		log(name.." changed")
	end
end
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
	}
}
local stats1 = {
	steam1  = {resistances = resistance1, max_speed = 0.5, max_power = "300kW", braking_force = 6,  friction_force = 0.0075, air_resistance = 0.01,  energy_per_hit_point = 10,reversing_power_modifier = 0.4},
	steam2  = {resistances = resistance1, max_speed = 0.6, max_power = "500kW", braking_force = 7,  friction_force = 0.0065, air_resistance = 0.009, energy_per_hit_point = 9, reversing_power_modifier = 0.5},
	steam3  = {resistances = resistance1, max_speed = 0.8, max_power = "750kW", braking_force = 8,  friction_force = 0.0055, air_resistance = 0.007, energy_per_hit_point = 8, reversing_power_modifier = 0.6},
	diesel1 = {resistances = resistance2, max_speed = 0.4,	max_power = "300kW", braking_force = 15, friction_force = 0.0050, air_resistance = 0.007, energy_per_hit_point = 6, reversing_power_modifier = 1},
	diesel2 = {resistances = resistance2, max_speed = 0.5, max_power = "500kW", braking_force = 13, friction_force = 0.0045, air_resistance = 0.006, energy_per_hit_point = 6, reversing_power_modifier = 0.9},
	diesel3 = {resistances = resistance2, max_speed = 0.8, max_power = "800kW", braking_force = 12, friction_force = 0.0040, air_resistance = 0.006, energy_per_hit_point = 6, reversing_power_modifier = 0.8},
	future  = {resistances = resistance3, max_speed = 2.0,	max_power = "2000kW",braking_force = 20, friction_force = 0.0025, air_resistance = 0.003, energy_per_hit_point = 4, reversing_power_modifier = 1},
}
local stats2 = {
	steam1  = {fuel_inventory_size = 1, effectivity = 0.6},
	steam2  = {fuel_inventory_size = 3, effectivity = 0.7},
	steam3  = {fuel_inventory_size = 2, effectivity = 0.75},
	diesel1 = {fuel_inventory_size = 1, effectivity = 0.8},
	diesel2 = {fuel_inventory_size = 2, effectivity = 0.85},
	diesel3 = {fuel_inventory_size = 3, effectivity = 0.90},
	future  = {fuel_inventory_size = 1, effectivity = 1},
}

local function adjustStats(name, stat)
	local lok = data.raw["locomotive"][name]

	if not lok then
		return
	end
	for k, v in pairs(stats1[stat]) do
		lok[k] = v
	end
	for k, v in pairs(stats2[stat]) do
		lok.energy_source[k] = v
	end
end

adjustStats("y_loco_ses_std", "steam1")
adjustStats("y_loco_ses_red", "steam1")
adjustStats("y_loco_steam_wt450", "steam2")
adjustStats("y_loco_fs_steam_green", "steam3")
adjustStats("yir_loco_sel_blue", "steam3")

adjustStats("y_loco_desw", "diesel1")
adjustStats("y_loco_desw_orange", "diesel1")
adjustStats("y_loco_desw_blue", "diesel1")

adjustStats("y_loco_emd1500blue", "diesel2")
adjustStats("y_loco_emd1500blue_v2", "diesel2")
adjustStats("y_loco_emd1500black", "diesel2")
adjustStats("y_loco_emd1500black_v2", "diesel2")

adjustStats("yir_loco_del_KR", "diesel3")
adjustStats("y_loco_emd3000_white", "diesel3")
adjustStats("yir_loco_de_bluegray", "diesel3")
adjustStats("yir_loco_del_mk1400", "diesel3")

adjustStats("yir_loco_fesw_op", "future")
adjustStats("yir_loco_fut_red", "future")
--[[
Umsortierung:
- Factories
- Tiles
- Coins, colors
- parts, lamps
- loks (steam, diesel, fut)
- cargo (steam, diesel, fut)
- fluid (steam, diesel, fut)

steam era	oil-processing, railway erforschen oder herstellen
diesel era	advanced-oil-processing erforschen bzw leichtöl herstellen
future era	gelbe tränke erforscht

lamps	lamp

for name, _ in pairs(data.raw["locomotive"]) do
	log(name)
end
for name, _ in pairs(data.raw["cargo-wagon"]) do
	log(name)
end
for name, _ in pairs(data.raw["fluid-wagon"]) do
	log(name)
end
local vehicles = {
	"y_loco_ses_std",
	"y_loco_ses_red",
	"y_loco_steam_wt450",
	"y_loco_fs_steam_green",
	"yir_loco_sel_blue",

	"y_loco_desw",
	"y_loco_desw_orange",
	"y_loco_desw_blue",
	"y_loco_emd1500blue",
	"y_loco_emd1500blue_v2",
	"y_loco_emd1500black",
	"y_loco_emd1500black_v2",

	"yir_loco_del_KR",
	"y_loco_emd3000_white",
	"yir_loco_de_bluegray",
	"yir_loco_del_mk1400",

	"yir_loco_fesw_op",
	"yir_loco_fut_red",


	"yir_wagon2a_closed",
	"y_wagon_hopper_yellow",
	"y_wagon_corn_green",
	"y_wagon_corn_blue",
	"yir_2acw_3blocks",
	"yir_2acw_wood",
	"yir_4acw_purple",
	"yir_4acw_oceanblue",
	"yir_4acw_grey",
	"yir_4acw_coal",
	"yir_4acw_iron",
	"yir_4acw_copper",
	"yir_4acw_stone",
	"yir_4acw_wood",
	"yir_4acw_closed",
	"yir_4acw_gold",
	"yir_4acw_mun",
	"yir_4acw_tf",
	"yir_4acw_vc",
	"y_wagon_zement_gray",
	"y_wagon_zement_white",
	"y_wagon_tender_black",
	"y_wagon_tender_green",
	"y_wagon_trans",
	"y_wagon_coal",
	"y_wagon_copper",
	"y_wagon_iron",
	"y_wagon_stone",-----

	"y_wagon_tank_fm1",
	"y_wagon_tank_fm2",
	"yir_wagon_tank_orange",
	"yir_wagon_tank_blue",
	"yir_fw4a_tank_oil",
	"yir_fw4_vc",
}

local function returnEntity(name)
	if data.raw["locomotive"][name] ~= nil then
		return data.raw["locomotive"][name]
	end
	if data.raw["cargo-wagon"][name] ~= nil then
		return data.raw["cargo-wagon"][name]
	end
	if data.raw["fluid-wagon"][name] ~= nil then
		return data.raw["fluid-wagon"][name]
	end
end

for _, name in ipairs(vehicles) do
	--log(name)
	local filename = ""
	local double = false
	local doublesided = false
	local pic = returnEntity(name).pictures.rotated
	if pic.layers ~= nil then
		log("Layers exist")
		goto continue
	end
	if pic.filename ~= nil then
		filename = pic.filename
	end
	if pic.filenames ~= nil then
		filename = pic.filenames[1]
	end
	if pic.direction_count > 64 then
		double = true
	end
	if pic.back_equals_front and pic.back_equals_front == true then
		doublesided = true
	end

	filename = filename:match("([^/]+)%.%w+$")

	log(name.." = {filename = \""..filename.."\", double = "..tostring(double)..", doublesided = "..tostring(doublesided)..", size = {100, 100}, shift = {"..pic.shift[1]..","..pic.shift[2].."}},")
	::continue::
end
]]
