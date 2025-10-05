data:extend({
	--YI-Railways
	{type = "recipe-category", name = "yir_fuel"}, --category for YIR-Fueltypes

	--YI-Railways
	{type = "item-group", name = "yuoki_railway", icon = "__yi_railway__/graphics/icons/yuoki_railway.png", icon_size = 128, inventory_order = "x", order = "yi-ra"},

	{type = "item-subgroup", group = "yuoki_railway", order = "a", name = "yir_workshop"}, 	--workshop
	{type = "item-subgroup", group = "yuoki_railway", order = "b", name = "yir_tiles"},
	{type = "item-subgroup", group = "yuoki_railway", order = "c", name = "yir_important"}, 	--coins and fuels
	{type = "item-subgroup", group = "yuoki_railway", order = "d", name = "yir_parts"}, 		--parts and lamps
	{type = "item-subgroup", group = "yuoki_railway", order = "e1", name = "yir_loco_small"},
	{type = "item-subgroup", group = "yuoki_railway", order = "e2", name = "yir_loco_big"},
	{type = "item-subgroup", group = "yuoki_railway", order = "f1", name = "yir_cargowagons_small"},
	{type = "item-subgroup", group = "yuoki_railway", order = "f2", name = "yir_cargowagons"},
	{type = "item-subgroup", group = "yuoki_railway", order = "g", name = "yir_fluidwagons"},

	{type = "recipe-category", name = "yir_rc_diesel_monument"}, 	--Diesel Monument
	{type = "recipe-category", name = "yir_rc_future_monument"}, 	--Future Monument
	{type = "recipe-category", name = "yir_rc_material"}, 			--Factory for Material
	{type = "recipe-category", name = "yir_rc_stuff"}, 				--YIR-Coin generation
	{type = "recipe-category", name = "yir_rc_tiles"}, 				--Factory for Tiles
	{type = "recipe-category", name = "yir_rc_wsl"}, 				--Workshop for Locomotives
	{type = "recipe-category", name = "yir_rc_wsw"}, 				--Workshop for Cargo Wagons
})