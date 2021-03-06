-- Crafting for homedecor mod (includes folding) by Vanessa Ezekowitz
--
-- Mostly my own code; overall template borrowed from game default
--
-- Tweaked a lot for Craig-Server_game.

local S = homedecor.gettext

-- misc craftitems

minetest.register_craftitem("homedecor:terracotta_base", {
		description = S("Uncooked Terracotta Base"),
		inventory_image = "homedecor_terracotta_base.png",
})

minetest.register_craftitem("homedecor:roof_tile_terracotta", {
		description = S("Terracotta Roof Tile"),
		inventory_image = "homedecor_roof_tile_terracotta.png",
})

minetest.register_craftitem("homedecor:oil_extract", {
		description = S("Oil extract"),
		inventory_image = "homedecor_oil_extract.png",
})

minetest.register_craftitem("homedecor:paraffin", {
		description = S("Unprocessed paraffin"),
		inventory_image = "homedecor_paraffin.png",
})

minetest.register_alias("homedecor:plastic_base", "homedecor:paraffin")

minetest.register_craftitem("homedecor:plastic_sheeting", {
		description = S("Plastic sheet"),
		inventory_image = "homedecor_plastic_sheeting.png",
})

minetest.register_craftitem("homedecor:plastic_strips", {
		description = S("Plastic strips"),
		inventory_image = "homedecor_plastic_strips.png",
})

minetest.register_craftitem("homedecor:drawer_small", {
		description = S("Small Wooden Drawer"),
		inventory_image = "homedecor_drawer_small.png",
})

minetest.register_craftitem("homedecor:ic", {
	description = S("Simple Integrated Circuit"),
	inventory_image = "homedecor_ic.png",
})

minetest.register_craftitem("homedecor:heating_element", {
	description = S("Heating element"),
	inventory_image = "homedecor_heating_element.png",
})

minetest.register_craftitem("homedecor:motor", {
	description = S("Motor"),
	inventory_image = "homedecor_motor.png",
})

minetest.register_craftitem("homedecor:power_crystal", {
	description = S("Power Crystal"),
	inventory_image = "homedecor_power_crystal.png",
})

minetest.register_craftitem("homedecor:blank_canvas", {
	description = S("Blank Canvas"),
	inventory_image = "homedecor_blank_canvas.png"
})

minetest.register_craftitem("homedecor:vcr", {
	description = S("VCR"),
	inventory_image = "homedecor_vcr.png"
})

minetest.register_craftitem("homedecor:dvd_player", {
	description = S("DVD Player"),
	inventory_image = "homedecor_dvd_player.png"
})

minetest.register_craftitem("homedecor:copper_wire", {
	description = S("Spool of copper wire"),
	inventory_image = "homedecor_copper_wire.png"
})

minetest.register_craftitem("homedecor:steel_wire", {
	description = S("Spool of steel wire"),
	inventory_image = "homedecor_steel_wire.png"
})

minetest.register_craftitem("homedecor:speaker_driver", {
	description = S("Speaker driver"),
	inventory_image = "homedecor_speaker_driver.png"
})

minetest.register_craftitem("homedecor:fan_blades", {
	description = S("Fan blades"),
	inventory_image = "homedecor_fan_blades.png"
})

minetest.register_craftitem("homedecor:copper_strip", {
	description = S("Copper Strip"),
	inventory_image = "homedecor_copper_strip.png"
})

minetest.register_craftitem("homedecor:steel_strip", {
	description = S("Steel Strip"),
	inventory_image = "homedecor_steel_strip.png"
})

minetest.register_craftitem("homedecor:chainlink_steel", {
	description = "Steel chainlink",
	inventory_image = "homedecor_chainlink_steel.png"
})

minetest.register_craftitem("homedecor:chainlink_brass", {
	description = "Brass chainlink",
	inventory_image = "homedecor_chainlink_brass.png"
})

-- alternate crafting if mesecons is/isn't installed

if not minetest.get_modpath("mesecons") then

	minetest.register_craftitem(":mesecons_materials:silicon", {
		description = S("Silicon lump"),
		inventory_image = "homedecor_silicon.png",
	})

	minetest.register_craft( {
		output = "mesecons_materials:silicon 4",
		recipe = {
			{ "default:sand", "default:sand" },
			{ "default:sand", "default:steel_ingot" },
		},
	})

end

-- alternate crafting if technic is/isn't installed

if not minetest.get_modpath("technic") then

	minetest.register_craftitem(":technic:brass_ingot", {
			description = S("Brass Ingot"),
			inventory_image = "homedecor_brass_ingot.png",
	})

	minetest.register_craft( {
		type = "shapeless",
			output = "technic:brass_ingot 2",
		recipe = {
			"moreores:silver_ingot",
			"default:copper_ingot",
		},
	})
end

minetest.register_alias("homedecor:brass_ingot", "technic:brass_ingot")

-- the actual crafts

minetest.register_craft( {
	output = "homedecor:copper_strip 12",
	recipe = {
		{ "", "default:copper_ingot", "" },
		{ "default:copper_ingot", "", "" },
	},
})

minetest.register_craft( {
	output = "homedecor:steel_strip 12",
	recipe = {
		{ "", "default:steel_ingot", "" },
		{ "default:steel_ingot", "", "" },
	},
})

minetest.register_craft( {
	output = "homedecor:fan_blades 2",
	recipe = {
		{ "", "homedecor:plastic_sheeting", "" },
		{ "", "default:steel_ingot", "" },
		{ "homedecor:plastic_sheeting", "", "homedecor:plastic_sheeting" }
	},
})

minetest.register_craft( {
	output = "homedecor:steel_wire 4",
	recipe = {
		{ "", "homedecor:plastic_sheeting", "" },
		{ "default:steel_ingot", "homedecor:plastic_sheeting", "default:steel_ingot" },
		{ "", "homedecor:plastic_sheeting", "" }
	},
})

minetest.register_craft( {
	output = "homedecor:copper_wire 4",
	recipe = {
		{ "", "homedecor:plastic_sheeting", "" },
		{ "default:copper_ingot", "homedecor:plastic_sheeting", "default:copper_ingot" },
		{ "", "homedecor:plastic_sheeting", "" }
	},
})

minetest.register_craft( {
	output = "homedecor:plastic_strips 3",
	recipe = {
		{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" }
	},
})

minetest.register_craft( {
	output = "homedecor:heating_element 2",
	recipe = {
		{ "default:copper_ingot", "default:mese_crystal_fragment", "default:copper_ingot" }
	},
})

minetest.register_craft( {
	output = "homedecor:motor 2",
	recipe = {
		{ "default:mese_crystal_fragment", "homedecor:copper_wire", "homedecor:plastic_sheeting" },
		{ "default:copper_ingot", "default:steel_ingot", "default:steel_ingot" },
		{ "default:mese_crystal_fragment", "homedecor:copper_wire", "homedecor:plastic_sheeting" }
	},
})

minetest.register_craft({
	output = "homedecor:power_crystal 2",
	recipe = {
		{ "default:mese_crystal_fragment", "default:torch", "default:mese_crystal_fragment" },
		{ "default:diamond", "default:gold_ingot", "default:diamond" }
	},
})

minetest.register_craft({
	type = "fuel",
	recipe = "homedecor:power_crystal",
	burntime = 50,
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:terracotta_base 8",
	recipe = {
		"default:dirt",
		"default:clay_lump",
		"bucket:bucket_water"
	},
	replacements = { {"bucket:bucket_water", "bucket:bucket_empty"}, },
})

minetest.register_craft({
		type = "cooking",
		output = "homedecor:roof_tile_terracotta",
		recipe = "homedecor:terracotta_base",
})

minetest.register_craft( {
		output = "homedecor:shingles_terracotta",
		recipe = {
				{ "homedecor:roof_tile_terracotta", "homedecor:roof_tile_terracotta"},
				{ "homedecor:roof_tile_terracotta", "homedecor:roof_tile_terracotta"},
		},
})

minetest.register_craft( {
		output = "homedecor:roof_tile_terracotta 8",
		recipe = {
			{ "homedecor:shingles_terracotta", "homedecor:shingles_terracotta" }
		}
})

minetest.register_craft( {
		output = "homedecor:flower_pot_terracotta",
		recipe = {
				{ "homedecor:roof_tile_terracotta", "default:dirt", "homedecor:roof_tile_terracotta" },
				{ "homedecor:roof_tile_terracotta", "homedecor:roof_tile_terracotta", "homedecor:roof_tile_terracotta" },
		},
})

--

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:oil_extract 4",
	recipe = {
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves",
		"group:leaves"
	}
})

minetest.register_craft({
		type = "cooking",
		output = "homedecor:paraffin",
		recipe = "homedecor:oil_extract",
})

minetest.register_craft({
		type = "cooking",
		output = "homedecor:plastic_sheeting",
		recipe = "homedecor:paraffin",
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:oil_extract",
		burntime = 30,
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:paraffin",
		burntime = 30,
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:plastic_sheeting",
		burntime = 30,
})

minetest.register_craft( {
		output = "homedecor:flower_pot_green",
		recipe = {
				{ "", "dye:dark_green", "" },
				{ "homedecor:plastic_sheeting", "default:dirt", "homedecor:plastic_sheeting" },
				{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
		},
})

minetest.register_craft( {
		output = "homedecor:flower_pot_black",
		recipe = {
				{ "dye:black", "dye:black", "dye:black" },
				{ "homedecor:plastic_sheeting", "default:dirt", "homedecor:plastic_sheeting" },
				{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
		},
})

--

minetest.register_craft( {
		output = "homedecor:projection_screen 3",
		recipe = {
		{ "", "default:glass", "" },
				{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
				{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:projection_screen",
		burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:ceiling_paint 20",
		recipe = {
				"dye:white",
				"dye:white",
				"default:sand",
		"bucket:bucket_water",
		},
	replacements = { { "bucket:bucket_water","bucket:bucket_empty" } }
})

minetest.register_craft( {
		output = "homedecor:ceiling_tile 10",
		recipe = {
				{ "", "dye:white", "" },
				{ "default:steel_ingot", "default:stone", "default:steel_ingot" },

		},
})


-- =======================================================
--	Items/recipes not requiring smelting of anything new

minetest.register_craft( {
		output = "homedecor:glass_table_small_round_b 15",
		recipe = {
				{ "", "default:glass", "" },
				{ "default:glass", "default:glass", "default:glass" },
				{ "", "default:glass", "" },
		},
})

minetest.register_craft( {
		output = "homedecor:glass_table_small_square_b 2",
		recipe = {
		{"homedecor:glass_table_small_round", "homedecor:glass_table_small_round" },
	}
})

minetest.register_craft( {
		output = "homedecor:glass_table_large_b 2",
		recipe = {
		{ "homedecor:glass_table_small_square", "homedecor:glass_table_small_square" },
	}
})

--

minetest.register_craft( {
		output = "homedecor:wood_table_small_round_b 15",
		recipe = {
				{ "", "group:wood", "" },
				{ "group:wood", "group:wood", "group:wood" },
				{ "", "group:wood", "" },
		},
})

minetest.register_craft( {
		output = "homedecor:wood_table_small_square_b 2",
		recipe = {
		{ "homedecor:wood_table_small_round","homedecor:wood_table_small_round" },
	}
})

minetest.register_craft( {
		output = "homedecor:wood_table_large_b 2",
		recipe = {
		{ "homedecor:wood_table_small_square", "homedecor:wood_table_small_square" },
	}
})

--

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:wood_table_small_round_b",
		burntime = 30,
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:wood_table_small_square_b",
		burntime = 30,
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:wood_table_large_b",
		burntime = 30,
})

--

minetest.register_craft( {
		output = "homedecor:shingles_asphalt 6",
		recipe = {
				{ "default:gravel", "dye:black", "default:gravel" },
				{ "default:sand", "dye:black", "default:sand" },
				{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
		},
})

--

minetest.register_craft( {
		output = "homedecor:shingles_wood 12",
		recipe = {
				{ "group:stick", "group:wood"},
				{ "group:wood", "group:stick"},
		},
})

minetest.register_craft( {
		output = "homedecor:shingles_wood 12",
		recipe = {
				{ "group:wood", "group:stick"},
				{ "group:stick", "group:wood"},
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shingles_wood",
		burntime = 30,
})

--

minetest.register_craft( {
		output = "homedecor:skylight 4",
		recipe = {
			{ "homedecor:glass_table_large", "homedecor:glass_table_large" },
			{ "homedecor:glass_table_large", "homedecor:glass_table_large" },
		},
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:skylight_frosted",
		recipe = {
			"dye:white",
			"homedecor:skylight"
		},
})

minetest.register_craft({
		type = "cooking",
		output = "homedecor:skylight",
		recipe = "homedecor:skylight_frosted",
})

-- Various colors of shutters

minetest.register_craft( {
		output = "homedecor:shutter_oak 2",
		recipe = {
		{ "group:stick", "group:stick" },
		{ "group:stick", "group:stick" },
		{ "group:stick", "group:stick" },
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_oak",
		burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:shutter_black 4",
		recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:black"
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_black",
		burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:shutter_dark_grey 4",
		recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:dark_grey"
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_dark_grey",
		burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:shutter_grey 4",
		recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:grey"
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_grey",
		burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:shutter_white 4",
		recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:white"
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_white",
		burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:shutter_mahogany 4",
		recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:brown"
	},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_mahogany",
		burntime = 30,
})
minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:shutter_red 4",
		recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:red"
	},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_red",
		burntime = 30,
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:shutter_yellow 4",
		recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:yellow"
	},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_yellow",
		burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:shutter_forest_green 4",
		recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:dark_green"
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_forest_green",
		burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:shutter_light_blue 4",
		recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"unifieddyes:light_blue"
	},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_light_blue",
		burntime = 30,
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:shutter_violet 4",
		recipe = {
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"homedecor:shutter_oak",
		"dye:violet"
	},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:shutter_violet",
		burntime = 30,
})

--

minetest.register_craft( {
		output = "homedecor:drawer_small",
		recipe = {
				{ "group:wood", "default:steel_ingot", "group:wood" },
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:drawer_small",
		burntime = 30,
})

--

minetest.register_craft( {
		output = "homedecor:nightstand_oak_one_drawer",
		recipe = {
				{ "homedecor:drawer_small" },
				{ "group:wood" },
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:nightstand_oak_one_drawer",
		burntime = 30,
})

minetest.register_craft( {
		output = "homedecor:nightstand_oak_two_drawers",
		recipe = {
				{ "homedecor:drawer_small" },
				{ "homedecor:drawer_small" },
				{ "group:wood" },
		},
})

minetest.register_craft( {
		output = "homedecor:nightstand_oak_two_drawers",
		recipe = {
				{ "homedecor:nightstand_oak_one_drawer" },
				{ "homedecor:drawer_small" },
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:nightstand_oak_two_drawers",
		burntime = 30,
})

--

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:nightstand_mahogany_one_drawer",
		recipe = {
				"homedecor:nightstand_oak_one_drawer",
				"dye:brown",
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:nightstand_mahogany_one_drawer",
		burntime = 30,
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:nightstand_mahogany_two_drawers",
		recipe = {
				"homedecor:nightstand_oak_two_drawers",
				"dye:brown",
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:nightstand_mahogany_two_drawers",
		burntime = 30,
})

-- Table legs

minetest.register_craft( {
		output = "homedecor:table_legs_wrought_iron 3",
		recipe = {
				{ "", "default:iron_lump", "" },
				{ "", "default:iron_lump", "" },
				{ "default:iron_lump", "default:iron_lump", "default:iron_lump" },
		},
})

minetest.register_craft( {
		output = "homedecor:table_legs_brass 3",
	recipe = {
		{ "", "technic:brass_ingot", "" },
		{ "", "technic:brass_ingot", "" },
		{ "technic:brass_ingot", "technic:brass_ingot", "technic:brass_ingot" }
	},
})

minetest.register_craft( {
		output = "homedecor:utility_table_legs",
		recipe = {
				{ "group:stick", "group:stick", "group:stick" },
				{ "group:stick", "", "group:stick" },
				{ "group:stick", "", "group:stick" },
		},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:utility_table_legs",
		burntime = 30,
})

-- vertical poles/lampposts

minetest.register_craft( {
		output = "homedecor:pole_brass 4",
	recipe = {
		{ "", "technic:brass_ingot", "" },
		{ "", "technic:brass_ingot", "" },
		{ "", "technic:brass_ingot", "" }
	},
})

minetest.register_craft( {
		output = "homedecor:pole_wrought_iron 4",
		recipe = {
				{ "default:iron_lump", },
				{ "default:iron_lump", },
				{ "default:iron_lump", },
		},
})

-- Home electronics

minetest.register_craft( {
	output = "homedecor:ic 4",
	recipe = {
		{ "mesecons_materials:silicon", "mesecons_materials:silicon" },
		{ "mesecons_materials:silicon", "default:copper_ingot" },
	},
})

minetest.register_craft( {
	output = "homedecor:television",
	recipe = {
		{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
		{ "homedecor:plastic_sheeting", "moreblocks:glow_glass", "homedecor:plastic_sheeting" },
		{ "homedecor:ic", "homedecor:ic", "homedecor:ic" },
	},
})

minetest.register_craft( {
	output = "homedecor:television",
	recipe = {
		{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
		{ "homedecor:plastic_sheeting", "default:glass", "homedecor:plastic_sheeting" },
		{ "homedecor:ic", "homedecor:power_crystal", "homedecor:ic" },
	},
})

minetest.register_craft( {
	output = "homedecor:stereo",
	recipe = {
		{ "homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting" },
		{ "homedecor:plastic_sheeting", "homedecor:ic", "homedecor:plastic_sheeting" },
		{ "default:steel_ingot", "homedecor:ic", "default:steel_ingot" },
	},
})

-- ===========================================================
-- Recipes that require materials from wool (cotton alternate)

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:rug_small 8",
		recipe = {
			"wool:red",
		"wool:yellow",
		"wool:blue",
		"wool:black"
	},
})

-- cotton version:

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:rug_small 8",
		recipe = {
			"cotton:red",
		"cotton:yellow",
		"cotton:blue",
		"cotton:black"
	},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:rug_small",
		burntime = 30,
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:rug_large 2",
		recipe = {
		"homedecor:rug_small",
		"homedecor:rug_small",
	},
})

minetest.register_craft({
		type = "fuel",
		recipe = "homedecor:rug_large",
		burntime = 30,
})

-- Speakers

minetest.register_craft( {
		output = "homedecor:speaker_driver 2",
			recipe = {
		{ "", "default:steel_ingot", "" },
		{ "default:paper", "homedecor:copper_wire", "default:iron_lump" },
		{ "", "default:steel_ingot", "" },
	},
})

minetest.register_craft( {
		output = "homedecor:speaker_small",
			recipe = {
		{ "wool:black", "homedecor:speaker_driver", "group:wood" },
	},
})

minetest.register_craft( {
		output = "homedecor:speaker",
			recipe = {
		{ "wool:black", "homedecor:speaker_driver", "group:wood" },
		{ "wool:black", "homedecor:speaker_driver", "group:wood" },
		{ "wool:black", "group:wood", "group:wood" },
	},
})

-- Curtains

local curtaincolors = {
	"red",
	"green",
	"blue",
	"white",
	"pink",
	"violet"
}

for c in ipairs(curtaincolors) do
	local color = curtaincolors[c]
	minetest.register_craft( {
		output = "homedecor:curtain_"..color.." 3",
				recipe = {
			{ "wool:"..color, "", ""},
			{ "wool:"..color, "", ""},
			{ "wool:"..color, "", ""},
		},
	})
end

local mats = {
	{ "brass", "homedecor:pole_brass" },
	{ "wrought_iron", "homedecor:pole_wrought_iron" },
	{ "wood", "default:stick" }
}

for i in ipairs(mats) do
	local material = mats[i][1]
	local ingredient = mats[i][2]
	minetest.register_craft( {
		output = "homedecor:curtainrod_"..material.." 3",
		recipe = {
			{ ingredient, ingredient, ingredient },
		},
	})
end

-- Recycling recipes

-- Some glass objects recycle via the glass fragments item/recipe in the Vessels mod.

minetest.register_craft({
		type = "shapeless",
		output = "vessels:glass_fragments",
		recipe = {
		"homedecor:glass_table_small_round",
		"homedecor:glass_table_small_round",
		"homedecor:glass_table_small_round"
	}
})

minetest.register_craft({
		type = "shapeless",
		output = "vessels:glass_fragments",
		recipe = {
		"homedecor:glass_table_small_square",
		"homedecor:glass_table_small_square",
		"homedecor:glass_table_small_square"
	}
})

minetest.register_craft({
		type = "shapeless",
		output = "vessels:glass_fragments",
		recipe = {
		"homedecor:glass_table_large",
		"homedecor:glass_table_large",
		"homedecor:glass_table_large"
	}
})

minetest.register_craft({
		type = "shapeless",
		output = "vessels:glass_fragments",
		recipe = {
		"homedecor:skylight",
		"homedecor:skylight",
		"homedecor:skylight",
	}
})

-- Wooden tabletops can turn into sticks

minetest.register_craft({
		type = "shapeless",
		output = "default:stick 4",
		recipe = {
		"homedecor:wood_table_small_round",
		"homedecor:wood_table_small_round",
		"homedecor:wood_table_small_round"
	}
})

minetest.register_craft({
		type = "shapeless",
		output = "default:stick 4",
		recipe = {
		"homedecor:wood_table_small_square",
		"homedecor:wood_table_small_square",
		"homedecor:wood_table_small_square"
	}
})

minetest.register_craft({
		type = "shapeless",
		output = "default:stick 4",
		recipe = {
		"homedecor:wood_table_large",
		"homedecor:wood_table_large",
		"homedecor:wood_table_large"
	}
})

-- Kitchen stuff

minetest.register_craft({
		output = "homedecor:oven_steel",
		recipe = {
		{"homedecor:heating_element", "default:steel_ingot", "homedecor:heating_element", },
		{"default:steel_ingot", "moreblocks:iron_glass", "default:steel_ingot", },
		{"default:steel_ingot", "homedecor:heating_element", "default:steel_ingot", },
	}
})

minetest.register_craft({
		output = "homedecor:oven_steel",
		recipe = {
		{"homedecor:heating_element", "default:steel_ingot", "homedecor:heating_element", },
		{"default:steel_ingot", "default:glass", "default:steel_ingot", },
		{"default:steel_ingot", "homedecor:heating_element", "default:steel_ingot", },
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:oven",
	recipe = {
		"homedecor:oven_steel",
		"dye:white",
		"dye:white",
	}
})

minetest.register_craft({
		output = "homedecor:microwave_oven 2",
		recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot", },
		{"default:steel_ingot", "moreblocks:iron_glass", "homedecor:ic", },
		{"default:steel_ingot", "default:copper_ingot", "homedecor:power_crystal", },
	}
})

minetest.register_craft({
		output = "homedecor:microwave_oven 2",
		recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot", },
		{"default:steel_ingot", "default:glass", "homedecor:ic", },
		{"default:steel_ingot", "default:copper_ingot", "homedecor:power_crystal", },
	}
})

minetest.register_craft({
	output = "homedecor:refrigerator_steel_bottom",
	recipe = {
		{"default:steel_ingot", "homedecor:glowlight_small_cube_white", "default:steel_ingot", },
		{"default:steel_ingot", "default:copperblock", "default:steel_ingot", },
		{"default:steel_ingot", "default:clay", "default:steel_ingot", },
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:refrigerator_white_bottom",
	recipe = {
		"homedecor:refrigerator_steel_bottom",
		"dye:white",
		"dye:white",
		"dye:white",
	}
})

minetest.register_craft({
		output = "homedecor:kitchen_cabinet",
		recipe = {
		{"group:wood", "group:stick", "group:wood", },
		{"group:wood", "group:stick", "group:wood", },
		{"group:wood", "group:stick", "group:wood", },
	}
})

minetest.register_craft({
		output = "homedecor:kitchen_cabinet_steel",
		recipe = {
			{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"},
			{"", "homedecor:kitchen_cabinet", ""},
	}
})

minetest.register_craft({
	type = "shapeless",
		output = "homedecor:kitchen_cabinet_half 2",
		recipe = { "homedecor:kitchen_cabinet" }
})

minetest.register_craft({
		output = "homedecor:kitchen_cabinet_with_sink",
		recipe = {
		{"group:wood", "default:steel_ingot", "group:wood", },
		{"group:wood", "default:steel_ingot", "group:wood", },
		{"group:wood", "group:stick", "group:wood", },
	}
})

------- Lighting

-- candles

minetest.register_craft({
	output = "homedecor:candle_thin 4",
	recipe = {
		{"farming:string" },
		{"homedecor:paraffin" }
	}
})

minetest.register_craft({
	output = "homedecor:candle 2",
	recipe = {
		{"farming:string" },
		{"homedecor:paraffin" },
		{"homedecor:paraffin" }
	}
})

minetest.register_craft({
	output = "homedecor:oil_lamp 4",
	recipe = {
		{ "", "vessels:glass_bottle", "" },
		{ "", "farming:string", "" },
		{ "default:steel_ingot", "homedecor:oil_extract", "default:steel_ingot" }
	}
})

-- wood-lattice lamps

minetest.register_craft( {
		output = "homedecor:lattice_lantern_large 2",
		recipe = {
			{ "dye:black", "dye:yellow", "dye:black" },
			{ "group:stick", "default:glass", "group:stick" },
			{ "group:stick", "homedecor:power_crystal", "group:stick" }
		},
})

minetest.register_craft( {
		output = "homedecor:lattice_lantern_small 8",
		recipe = {
			{ "homedecor:lattice_lantern_large" },
		},
})

-- yellow glowlights

minetest.register_craft({
	output = "homedecor:glowlight_half_yellow 6",
	recipe = {
		{"default:glass", "homedecor:power_crystal", "default:glass", },
	}
})

minetest.register_craft({
	output = "homedecor:glowlight_half_yellow 6",
	recipe = {
		{"moreblocks:super_glow_glass", "moreblocks:glow_glass", "moreblocks:super_glow_glass", },
	}
})

minetest.register_craft({
		output = "homedecor:glowlight_quarter_yellow 6",
		recipe = {
		{"homedecor:glowlight_half_yellow", "homedecor:glowlight_half_yellow", "homedecor:glowlight_half_yellow", },
	}
})

minetest.register_craft({
	output = "homedecor:glowlight_small_cube_yellow 16",
	recipe = {
		{"default:glass" },
		{"homedecor:power_crystal" },
	}
})

minetest.register_craft({
		output = "homedecor:glowlight_small_cube_yellow 16",
		recipe = {
		{"moreblocks:glow_glass" },
		{"moreblocks:super_glow_glass" },
	}
})

minetest.register_craft({
		output = "homedecor:glowlight_small_cube_yellow 4",
		recipe = {
		{"homedecor:glowlight_half_yellow" },
	}
})

minetest.register_craft({
		output = "homedecor:glowlight_half_yellow",
		recipe = {
		{"homedecor:glowlight_small_cube_yellow","homedecor:glowlight_small_cube_yellow"},
		{"homedecor:glowlight_small_cube_yellow","homedecor:glowlight_small_cube_yellow"}
	}
})

-- white

minetest.register_craft({
	output = "homedecor:glowlight_half_white 6",
	recipe = {
		{ "dye:white", "dye:white", "dye:white" },
		{ "default:glass", "homedecor:power_crystal", "default:glass", },
	}
})

minetest.register_craft({
		output = "homedecor:glowlight_half_white 6",
		recipe = {
		{ "dye:white", "dye:white", "dye:white" },
		{"moreblocks:super_glow_glass", "moreblocks:glow_glass", "moreblocks:super_glow_glass", },
	}
})

minetest.register_craft({
	type = "shapeless",
		output = "homedecor:glowlight_half_white 2",
		recipe = {
		"dye:white",
		"homedecor:glowlight_half_yellow",
		"homedecor:glowlight_half_yellow",
	}
})

minetest.register_craft({
		output = "homedecor:glowlight_quarter_white 6",
		recipe = {
		{"homedecor:glowlight_half_white", "homedecor:glowlight_half_white", "homedecor:glowlight_half_white", },
	}
})

minetest.register_craft({
	output = "homedecor:glowlight_small_cube_white 8",
	recipe = {
		{ "dye:white" },
		{ "default:glass" },
		{ "homedecor:power_crystal" },
	}
})

minetest.register_craft({
		output = "homedecor:glowlight_small_cube_white 8",
		recipe = {
		{"dye:white" },
		{"moreblocks:super_glow_glass" },
	}
})

minetest.register_craft({
		output = "homedecor:glowlight_small_cube_white 4",
		recipe = {
		{"homedecor:glowlight_half_white" },
	}
})

minetest.register_craft({
		output = "homedecor:glowlight_half_white",
		recipe = {
		{"homedecor:glowlight_small_cube_white","homedecor:glowlight_small_cube_white"},
		{"homedecor:glowlight_small_cube_white","homedecor:glowlight_small_cube_white"}
	}
})

minetest.register_craft({
	output = "homedecor:plasma_lamp",
	recipe = {
		{"", "default:glass", ""},
		{"default:glass", "homedecor:power_crystal", "default:glass"},
		{"", "default:glass", ""}
	}
})

-- Brass/wrought iron fences


minetest.register_craft( {
		output = "homedecor:fence_brass 6",
	recipe = {
		{ "technic:brass_ingot", "technic:brass_ingot", "technic:brass_ingot" },
		{ "technic:brass_ingot", "technic:brass_ingot", "technic:brass_ingot" },
	},
})

minetest.register_craft( {
		output = "homedecor:fence_wrought_iron 6",
		recipe = {
				{ "default:iron_lump","default:iron_lump","default:iron_lump" },
				{ "default:iron_lump","default:iron_lump","default:iron_lump" },
		},
})

-- other types of fences


minetest.register_craft( {
		output = "homedecor:fence_picket 6",
		recipe = {
				{ "group:stick", "group:stick", "group:stick" },
				{ "group:stick", "", "group:stick" },
				{ "group:stick", "group:stick", "group:stick" }
		},
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_picket_corner",
	recipe = {
		"homedecor:fence_picket",
		"homedecor:fence_picket"
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_picket 2",
	recipe = {
		"homedecor:fence_picket_corner"
	},
})

--


minetest.register_craft( {
		output = "homedecor:fence_picket_white 6",
		recipe = {
				{ "group:stick", "group:stick", "group:stick" },
				{ "group:stick", "dye:white", "group:stick" },
				{ "group:stick", "group:stick", "group:stick" }
		},
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_picket_corner_white",
	recipe = {
		"homedecor:fence_picket_white",
		"homedecor:fence_picket_white"
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_picket_white 2",
	recipe = {
		"homedecor:fence_picket_corner_white"
	},
})

--


minetest.register_craft( {
		output = "homedecor:fence_privacy 6",
		recipe = {
				{ "group:wood", "group:stick", "group:wood" },
				{ "group:wood", "", "group:wood" },
				{ "group:wood", "group:stick", "group:wood" }
		},
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_privacy_corner",
	recipe = {
		"homedecor:fence_privacy",
		"homedecor:fence_privacy"
	},
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_privacy 2",
	recipe = {
		"homedecor:fence_privacy_corner"
	},
})

--


minetest.register_craft( {
		output = "homedecor:fence_barbed_wire 6",
		recipe = {
				{ "group:stick", "homedecor:steel_wire", "group:stick" },
				{ "group:stick", "", "group:stick" },
				{ "group:stick", "homedecor:steel_wire", "group:stick" }
		},
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_barbed_wire_corner",
	recipe = { "homedecor:fence_barbed_wire", "homedecor:fence_barbed_wire" },
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_barbed_wire 2",
	recipe = { "homedecor:fence_barbed_wire_corner" },
})

--


minetest.register_craft( {
		output = "homedecor:fence_chainlink 9",
		recipe = {
				{ "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" },
				{ "homedecor:steel_wire", "homedecor:steel_wire", "default:steel_ingot" },
				{ "homedecor:steel_wire", "homedecor:steel_wire", "default:steel_ingot" }
		},
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_chainlink_corner",
	recipe = { "homedecor:fence_chainlink", "homedecor:fence_chainlink" },
})

minetest.register_craft( {
	type = "shapeless",
	output = "homedecor:fence_chainlink 2",
	recipe = { "homedecor:fence_chainlink_corner" },
})


-- Gates

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:gate_picket_white_closed",
		recipe = {
		"homedecor:fence_picket_white"
		},
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:fence_picket_white",
		recipe = {
		"homedecor:gate_picket_white_closed"
		},
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:gate_picket_closed",
		recipe = {
		"homedecor:fence_picket"
		},
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:fence_picket",
		recipe = {
		"homedecor:gate_picket_closed"
		},
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:gate_barbed_wire_closed",
		recipe = {
		"homedecor:fence_barbed_wire"
		},
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:fence_barbed_wire",
		recipe = {
		"homedecor:gate_barbed_wire_closed"
		},
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:gate_chainlink_closed",
		recipe = {
		"homedecor:fence_chainlink"
		},
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:fence_chainlink",
		recipe = {
		"homedecor:gate_chainlink_closed"
		},
})

------ Doors

-- plain wood, non-windowed

minetest.register_craft( {
		output = "homedecor:door_wood_plain_bottom_left 2",
		recipe = {
		{ "group:wood", "group:wood", "" },
		{ "group:wood", "group:wood", "default:steel_ingot" },
		{ "group:wood", "group:wood", "" },
		},
})

-- fancy exterior

minetest.register_craft( {
		output = "homedecor:door_exterior_fancy_bottom_left 2",
		recipe = {
		{ "group:wood", "default:glass" },
		{ "group:wood", "group:wood" },
		{ "group:wood", "group:wood" },
		},
})

-- wood and glass (grid style)

-- bare

minetest.register_craft( {
		output = "homedecor:door_wood_glass_bottom_left 2",
		recipe = {
		{ "default:glass", "group:wood" },
		{ "group:wood", "default:glass" },
		{ "default:glass", "group:wood" },
		},
})

minetest.register_craft( {
		output = "homedecor:door_wood_glass_bottom_left 2",
		recipe = {
		{ "group:wood", "default:glass" },
		{ "default:glass", "group:wood" },
		{ "group:wood", "default:glass" },
		},
})

-- mahogany

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:door_wood_glass_mahogany_bottom_left 2",
		recipe = {
		"default:dirt",
		"default:coal_lump",
		"homedecor:door_wood_glass_bottom_left",
		"homedecor:door_wood_glass_bottom_left"
		},
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:door_wood_glass_mahogany_bottom_left 2",
		recipe = {
		"dye:brown",
		"homedecor:door_wood_glass_bottom_left",
		"homedecor:door_wood_glass_bottom_left"
		},
})

-- white

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:door_wood_glass_white_bottom_left 2",
		recipe = {
		"dye:white",
		"homedecor:door_wood_glass_bottom_left",
		"homedecor:door_wood_glass_bottom_left"
		},
})

-- Solid glass with metal handle

minetest.register_craft( {
		output = "homedecor:door_glass_bottom_left 2",
		recipe = {
		{ "default:glass", "default:glass" },
		{ "default:glass", "default:steel_ingot" },
		{ "default:glass", "default:glass" },
		},
})

-- Closet doors

-- oak

minetest.register_craft( {
		output = "homedecor:door_closet_oak_bottom_left 2",
		recipe = {
		{ "", "group:stick", "group:stick" },
		{ "default:steel_ingot", "group:stick", "group:stick" },
		{ "", "group:stick", "group:stick" },
		},
})

-- mahogany

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:door_closet_mahogany_bottom_left 2",
		recipe = {
		"homedecor:door_closet_oak_bottom_left",
		"homedecor:door_closet_oak_bottom_left",
		"default:dirt",
		"default:coal_lump",
		},
})

minetest.register_craft( {
	type = "shapeless",
		output = "homedecor:door_closet_mahogany_bottom_left 2",
		recipe = {
		"homedecor:door_closet_oak_bottom_left",
		"homedecor:door_closet_oak_bottom_left",
		"dye:brown"
		},
})

-- washer and dryer

minetest.register_craft( {
	output = "homedecor:washing_machine",
	recipe = {
		{ "default:steel_ingot", "default:steel_ingot", "homedecor:ic" },
		{ "default:steel_ingot", "bucket:bucket_water", "default:steel_ingot" },
		{ "default:steel_ingot", "homedecor:motor", "default:steel_ingot" }
	},
})

minetest.register_craft( {
	output = "homedecor:dryer",
	recipe = {
		{ "default:steel_ingot", "default:steel_ingot", "homedecor:ic" },
		{ "default:steel_ingot", "bucket:bucket_empty", "homedecor:motor" },
		{ "default:steel_ingot", "homedecor:heating_element", "default:steel_ingot" }
	},
})

-- dishwashers

minetest.register_craft( {
	output = "homedecor:dishwasher",
	recipe = {
		{ "homedecor:ic", "homedecor:fence_chainlink", "default:steel_ingot",  },
		{ "default:steel_ingot", "homedecor:shower_head", "homedecor:motor" },
		{ "default:steel_ingot", "homedecor:heating_element", "bucket:bucket_water" }
	},
})

-- more misc stuff here

minetest.register_craft({
		output = "homedecor:chimney 2",
		recipe = {
			{ "default:clay_brick", "", "default:clay_brick" },
			{ "default:clay_brick", "", "default:clay_brick" },
			{ "default:clay_brick", "", "default:clay_brick" },
		},
})

minetest.register_craft({
		output = "homedecor:fishtank",
		recipe = {
			{ "homedecor:plastic_sheeting", "homedecor:glowlight_small_cube_white", "homedecor:plastic_sheeting" },
			{ "default:glass", "bucket:bucket_water", "default:glass" },
			{ "default:glass", "default:gravel", "default:glass" },
		},
	replacements = { {"bucket:bucket_water", "bucket:bucket_empty"} }
})

minetest.register_craft({
	output = "homedecor:towel_rod",
	recipe = {
		{ "default:wood", "group:stick", "default:wood" },
		{ "", "wool:white", "" },
	},
})

minetest.register_craft({
	output = "homedecor:toilet_paper",
	recipe = {
		{ "", "default:paper", "default:paper" },
		{ "group:wood", "group:stick", "default:paper" },
		{ "", "default:paper", "default:paper" },
	},
})

minetest.register_craft({
	output = "homedecor:medicine_cabinet",
	recipe = {
		{ "group:stick", "default:glass", "group:stick" },
		{ "group:stick", "default:glass", "group:stick" },
		{ "group:stick", "default:glass", "group:stick" }
	},
})

minetest.register_craft({
	output = "homedecor:cardboard_box 2",
	recipe = {
		{ "default:paper", "", "default:paper" },
		{ "default:paper", "default:paper", "default:paper" },
	},
})

minetest.register_craft({
	output = "homedecor:desk",
	recipe = {
		{ "stairs:slab_wood", "stairs:slab_wood", "stairs:slab_wood" },
		{ "homedecor:drawer_small", "default:wood", "default:wood" },
		{ "homedecor:drawer_small", "", "default:wood" },
	},
})

minetest.register_craft({
	output = "homedecor:desk",
	recipe = {
		{ "moreblocks:slab_wood", "moreblocks:slab_wood", "moreblocks:slab_wood" },
		{ "homedecor:drawer_small", "default:wood", "default:wood" },
		{ "homedecor:drawer_small", "", "default:wood" },
	},
})

minetest.register_craft({
	output = "homedecor:filing_cabinet",
	recipe = {
		{ "", "default:wood", "" },
		{ "default:wood", "homedecor:drawer_small", "default:wood" },
		{ "", "default:wood", "" },
	},
})

minetest.register_craft({
	output = "homedecor:analog_clock_plastic 2",
	recipe = {
		{ "homedecor:plastic_sheeting", "dye:black", "homedecor:plastic_sheeting" },
		{ "homedecor:plastic_sheeting", "homedecor:ic", "homedecor:plastic_sheeting" },
		{ "homedecor:plastic_sheeting", "dye:black", "homedecor:plastic_sheeting" },
	},
})

minetest.register_craft({
	output = "homedecor:analog_clock_wood 2",
	recipe = {
		{ "group:stick", "dye:black", "group:stick" },
		{ "group:stick", "homedecor:ic", "group:stick" },
		{ "group:stick", "dye:black", "group:stick" },
	},
})

minetest.register_craft({
	output = "homedecor:digital_clock 2",
	recipe = {
		{ "homedecor:plastic_sheeting", "default:paper", "homedecor:plastic_sheeting" },
		{ "homedecor:plastic_sheeting", "homedecor:ic", "homedecor:plastic_sheeting" },
		{ "homedecor:plastic_sheeting", "homedecor:power_crystal", "homedecor:plastic_sheeting" },
	},
})

minetest.register_craft({
	output = "homedecor:alarm_clock",
	recipe = {
		{ "homedecor:plastic_sheeting", "homedecor:speaker_driver", "homedecor:plastic_sheeting" },
		{ "homedecor:plastic_sheeting", "homedecor:digital_clock", "homedecor:plastic_sheeting" },
		{ "homedecor:plastic_sheeting", "homedecor:power_crystal", "homedecor:plastic_sheeting" },
	},
})

minetest.register_craft({
	output = "homedecor:air_conditioner",
	recipe = {
		{ "default:steel_ingot", "homedecor:bars", "default:steel_ingot" },
		{ "default:steel_ingot", "technic:motor", "default:steel_ingot" },
		{ "default:steel_ingot", "technic:motor", "default:steel_ingot" },
	},
})

minetest.register_craft({
	output = "homedecor:ceiling_fan",
	recipe = {
		{ "homedecor:motor" },
		{ "homedecor:fan_blades" },
		{ "homedecor:glowlight_small_cube_white" }
	}
})

minetest.register_craft({
	output = "homedecor:welcome_mat_grey 2",
	recipe = {
		{ "", "dye:black", "" },
		{ "wool:grey", "wool:grey", "wool:grey" },
	},
})

minetest.register_craft({
	output = "homedecor:welcome_mat_brown 2",
	recipe = {
		{ "", "dye:black", "" },
		{ "wool:brown", "wool:brown", "wool:brown" },
	},
})

minetest.register_craft({
	output = "homedecor:welcome_mat_green 2",
	recipe = {
		{ "", "dye:white", "" },
		{ "wool:dark_green", "wool:dark_green", "wool:dark_green" },
	},
})

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:window_plain 8",
	recipe = {
		"dye:white",
		"dye:white",
		"dye:white",
		"dye:white",
		"default:glass"
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:window_quartered",
	recipe = {
		"dye:white",
		"group:stick",
		"group:stick",
		"homedecor:window_plain"
	}
})

minetest.register_craft({
	output = "homedecor:vcr 2",
	recipe = {
		{ "homedecor:ic", "default:steel_ingot", "homedecor:plastic_sheeting" },
		{ "default:iron_lump", "default:iron_lump", "default:iron_lump" },
		{ "homedecor:plastic_sheeting", "", "homedecor:plastic_sheeting" },
	},
})

minetest.register_craft({
	output = "homedecor:dvd_player 2",
	recipe = {
		{ "", "homedecor:plastic_sheeting", "" },
		{ "default:obsidian_glass", "homedecor:motor", "homedecor:motor" },
		{ "default:mese_crystal_fragment", "homedecor:ic", "homedecor:power_crystal" },
	},
})

minetest.register_craft({
	type = "shapeless",
	output = "homedecor:dvd_vcr",
	recipe = {
		"homedecor:vcr",
		"homedecor:dvd_player"
	},
})

minetest.register_craft({
	output = "homedecor:blinds_thin",
	recipe = {
		{ "group:stick", "homedecor:plastic_sheeting", "group:stick" },
		{ "farming:string", "homedecor:plastic_strips", "" },
		{ "", "homedecor:plastic_strips", "" },
	},
})

minetest.register_craft({
	output = "homedecor:blinds_thick",
	recipe = {
		{ "group:stick", "homedecor:plastic_sheeting", "group:stick" },
		{ "farming:string", "homedecor:plastic_strips", "homedecor:plastic_strips" },
		{ "", "homedecor:plastic_strips", "homedecor:plastic_strips" },
	},
})

minetest.register_craft( {
		output = "homedecor:openframe_bookshelf",
		recipe = {
			{"group:wood", "", "group:wood"},
			{"default:book", "default:book", "default:book"},
			{"group:wood", "", "group:wood"},
		},
})

minetest.register_craft( {
		output = "homedecor:desk_fan",
		recipe = {
			{"default:steel_ingot", "homedecor:fan_blades", "homedecor:motor"},
			{"", "default:steel_ingot", ""}
		},
})

minetest.register_craft( {
		output = "homedecor:space_heater",
		recipe = {
			{"homedecor:plastic_sheeting", "homedecor:heating_element", "homedecor:plastic_sheeting"},
			{"homedecor:plastic_sheeting", "homedecor:fan_blades", "homedecor:motor"},
			{"homedecor:plastic_sheeting", "homedecor:heating_element", "homedecor:plastic_sheeting"}
		},
})

minetest.register_craft( {
		output = "homedecor:radiator",
		recipe = {
			{ "default:steel_ingot", "homedecor:heating_element", "default:steel_ingot" },
			{ "homedecor:ic", "homedecor:heating_element", "" },
			{ "default:steel_ingot", "homedecor:heating_element", "default:steel_ingot" }
		},
})

-- misc electrical

minetest.register_craft( {
		output = "homedecor:power_outlet",
		recipe = {
			{"homedecor:plastic_sheeting", "homedecor:copper_strip"},
			{"homedecor:plastic_sheeting", ""},
			{"homedecor:plastic_sheeting", "homedecor:copper_strip"}
		},
})

minetest.register_craft( {
		output = "homedecor:light_switch",
		recipe = {
			{"", "homedecor:plastic_sheeting", "homedecor:copper_strip"},
			{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:copper_strip"},
			{"", "homedecor:plastic_sheeting", "homedecor:copper_strip"}
		},
})

-- doghouse

minetest.register_craft( {
		output = "homedecor:doghouse_base",
		recipe = {
			{"homedecor:shingles_terracotta", "homedecor:shingles_terracotta", "homedecor:shingles_terracotta"},
			{"group:wood", "", "group:wood"},
			{"group:wood", "wool:white", "group:wood"}
		},
})

-- japanese walls and mat

minetest.register_craft( {
		output = "homedecor:japanese_wall_top",
		recipe = {
			{"group:stick", "default:paper"},
			{"default:paper", "group:stick"},
			{"group:stick", "default:paper"}
		},
})

minetest.register_craft( {
		output = "homedecor:japanese_wall_top",
		recipe = {
			{"default:paper", "group:stick"},
			{"group:stick", "default:paper"},
			{"default:paper", "group:stick"}
		},
})

minetest.register_craft( {
		output = "homedecor:japanese_wall_middle",
		recipe = {
			{"homedecor:japanese_wall_top"}
		},
})

minetest.register_craft( {
		output = "homedecor:japanese_wall_bottom",
		recipe = {
			{"homedecor:japanese_wall_middle"}
		},
})

minetest.register_craft( {
		output = "homedecor:japanese_wall_top",
		recipe = {
			{"homedecor:japanese_wall_bottom"}
		},
})

minetest.register_craft( {
		output = "homedecor:tatami_mat",
		recipe = {
			{"farming:wheat", "farming:wheat", "farming:wheat"}
		},
})

minetest.register_craft( {
		output = "homedecor:wardrobe_bottom",
		recipe = {
			{ "homedecor:drawer_small", "homedecor:kitchen_cabinet" },
			{ "homedecor:drawer_small", "default:wood" },
			{ "homedecor:drawer_small", "default:wood" }
		},
})

minetest.register_craft( {
		output = "homedecor:pool_table",
		recipe = {
			{ "wool:dark_green", "wool:dark_green", "wool:dark_green" },
			{ "group:wood", "group:wood", "group:wood" },
			{ "group:stick", "", "group:stick" }
		},
})

minetest.register_craft( {
		output = "homedecor:trash_can 3",
		recipe = {
			{ "homedecor:steel_wire", "", "homedecor:steel_wire" },
			{ "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" }
		},
})

minetest.register_craft( {
		output = "homedecor:telephone",
		recipe = {
			{ "homedecor:speaker_driver", "homedecor:copper_wire", "homedecor:speaker_driver" },
			{ "homedecor:plastic_sheeting", "default:steel_ingot", "homedecor:plastic_sheeting" },
			{ "default:steel_ingot", "default:steel_ingot", "default:steel_ingot" }
		},
})

minetest.register_craft( {
		output = "homedecor:cobweb_corner 5",
		recipe = {
			{ "farming:string", "", "farming:string" },
			{ "", "farming:string", "" },
			{ "farming:string", "", "farming:string" }
		},
})

minetest.register_craft( {
		output = "homedecor:well_base",
		recipe = {
			{ "homedecor:shingles_wood", "homedecor:shingles_wood", "homedecor:shingles_wood" },
			{ "group:wood", "group:stick", "group:wood" },
			{ "default:cobble", "", "default:cobble" }
		},
})

minetest.register_craft( {
		output = "homedecor:coat_tree",
		recipe = {
			{ "group:stick", "group:stick", "group:stick" },
			{ "", "group:stick", "" },
			{ "", "group:wood", "" }
		},
})

minetest.register_craft( {
		output = "homedecor:coatrack_wallmount",
		recipe = {
			{ "group:stick", "homedecor:curtainrod_wood", "group:stick" },
		},
})

minetest.register_craft( {
		output = "homedecor:doorbell",
		recipe = {
			{ "homedecor:light_switch", "homedecor:power_crystal", "homedecor:speaker_driver" }
		},
})


minetest.register_craft( {
		output = "homedecor:bench_large_1_left",
		recipe = {
			{ "group:wood", "group:wood", "group:wood" },
			{ "group:wood", "group:wood", "group:wood" },
			{ "homedecor:pole_wrought_iron", "", "homedecor:pole_wrought_iron" }
		},
})

minetest.register_craft( {
		output = "homedecor:bench_large_2_left",
		recipe = {
			{ "homedecor:shutter_oak", "homedecor:shutter_oak", "homedecor:shutter_oak" },
			{ "group:wood", "group:wood", "group:wood" },
			{ "stairs:slab_wood", "", "stairs:slab_wood" }
		},
})

minetest.register_craft( {
		output = "homedecor:bench_large_2_left",
		recipe = {
			{ "homedecor:shutter_oak", "homedecor:shutter_oak", "homedecor:shutter_oak" },
			{ "group:wood", "group:wood", "group:wood" },
			{ "moreblocks:slab_wood", "", "moreblocks:slab_wood" }
		},
})

minetest.register_craft( {
		output = "homedecor:kitchen_faucet",
		recipe = {
			{ "", "default:steel_ingot" },
			{ "default:steel_ingot", "" },
			{ "homedecor:taps", "" }
		},
})

minetest.register_craft( {
		output = "homedecor:cutlery_set",
		recipe = {
			{ "", "vessels:drinking_glass", "" },
			{ "homedecor:steel_strip", "darkage:marble", "homedecor:steel_strip" },
		},
})

minetest.register_craft( {
		output = "homedecor:cutlery_set",
		recipe = {
			{ "", "vessels:drinking_glass", "" },
			{ "homedecor:steel_strip", "building_blocks:micro_marble_1", "homedecor:steel_strip" },
		},
})

minetest.register_craft( {
		output = "homedecor:simple_bench",
		recipe = {
			{ "stairs:slab_wood", "stairs:slab_wood", "stairs:slab_wood" },
			{ "stairs:slab_wood", "", "stairs:slab_wood" }
		},
})

minetest.register_craft( {
		output = "homedecor:simple_bench",
		recipe = {
			{ "moreblocks:slab_wood", "moreblocks:slab_wood", "moreblocks:slab_wood" },
			{ "moreblocks:slab_wood", "", "moreblocks:slab_wood" }
		},
})

minetest.register_craft( {
		output = "homedecor:bottle_green",
		recipe = {
			{ "vessels:glass_bottle", "dye:green" }
		},
})

minetest.register_craft( {
		output = "homedecor:bottle_brown",
		recipe = {
			{ "vessels:glass_bottle", "dye:brown" }
		},
})

if not minetest.get_modpath("glooptest") then

	minetest.register_alias("glooptest:chainlink", "homedecor:chainlink_steel")

	minetest.register_craft({
		output = "glooptest:chainlink 12",
		recipe = {
			{"", "default:steel_ingot", "default:steel_ingot"},
			{ "default:steel_ingot", "", "default:steel_ingot" },
			{ "default:steel_ingot", "default:steel_ingot", "" },
		},
	})

end

minetest.register_craft({
	output = "homedecor:chains 4",
	recipe = {
		{ "default:steel_ingot", "", "default:steel_ingot"},
		{ "homedecor:chainlink_steel", "", "homedecor:chainlink_steel" },
		{ "homedecor:chainlink_steel", "", "homedecor:chainlink_steel" },
	},
})

minetest.register_craft({
	output = "homedecor:chainlink_brass 12",
	recipe = {
		{"", "technic:brass_ingot", "technic:brass_ingot"},
		{ "technic:brass_ingot", "", "technic:brass_ingot" },
		{ "technic:brass_ingot", "technic:brass_ingot", "" },
	},
})

minetest.register_craft({
	output = "homedecor:coffee_maker",
	recipe = {
		{"homedecor:plastic_sheeting", "bucket:bucket_water", "homedecor:plastic_sheeting"},
		{"homedecor:plastic_sheeting", "default:glass", "homedecor:plastic_sheeting"},
		{"homedecor:plastic_sheeting", "homedecor:heating_element", "homedecor:plastic_sheeting"}
	},
})

minetest.register_craft({
	output = "homedecor:dartboard",
	recipe = {
		{"dye:black", "homedecor:plastic_sheeting", "dye:white"},
		{"homedecor:plastic_sheeting", "homedecor:plastic_sheeting", "homedecor:plastic_sheeting"},
		{"dye:dark_green", "homedecor:plastic_sheeting", "dye:red"}
	},
})

minetest.register_craft({
	output = "homedecor:piano_left",
	recipe = {
		{ "default:tree", "homedecor:steel_wire", "default:tree" },
		{ "homedecor:plastic_strips", "homedecor:steel_wire", "default:tree" },
		{ "default:tree", "default:steelblock", "default:tree" }
	},
})

minetest.register_craft({
	output = "homedecor:toaster",
	recipe = {
		{ "default:steel_ingot", "homedecor:heating_element", "default:steel_ingot" },
		{ "default:steel_ingot", "homedecor:heating_element", "default:steel_ingot" }
	},
})

minetest.register_craft({
	output = "homedecor:deckchair_foot",
	recipe = {
		{ "group:stick", "wool:white", "group:stick" },
		{ "group:stick", "wool:white", "group:stick" },
		{ "group:stick", "wool:white", "group:stick" }
	},
})

minetest.register_craft({
	output = "homedecor:wall_shelf 2",
	recipe = {
		{ "homedecor:wood_table_small_square", "homedecor:curtainrod_wood", "homedecor:curtainrod_wood" },
	},
})

minetest.register_craft({
	output = "homedecor:trophy 3",
	recipe = {
		{ "default:gold_ingot","","default:gold_ingot" },
		{ "","default:gold_ingot","" },
		{ "default:gold_ingot","default:gold_ingot","default:gold_ingot" }
	},
})

minetest.register_craft({
	output = "homedecor:grandfather_clock_bottom",
	recipe = {
		{ "group:wood","homedecor:analog_clock_wood","group:wood" },
		{ "group:wood","technic:brass_ingot","group:wood" },
		{ "group:wood","technic:brass_ingot","group:wood" }
	},
})

minetest.register_craft({
	output = "homedecor:sportbench",
	recipe = {
		{ "stairs:slab_steelblock","homedecor:pole_wrought_iron","stairs:slab_steelblock" },
		{ "default:steel_ingot","wool:black","default:steel_ingot" },
		{ "default:steel_ingot","wool:black","default:steel_ingot" }
	},
})

minetest.register_craft({
	output = "homedecor:skateboard",
	recipe = {
		{ "dye:yellow","dye:green","dye:blue" },
		{ "homedecor:wood_table_small_square","homedecor:wood_table_small_square","homedecor:wood_table_small_square" },
		{ "default:steel_ingot","","default:steel_ingot" }
	},
})

minetest.register_craft({
	output = "homedecor:copper_pans",
	recipe = {
		{ "homedecor:copper_strip","","homedecor:copper_strip" },
		{ "default:copper_ingot","","default:copper_ingot" },
		{ "default:copper_ingot","","default:copper_ingot" }
	},
})

minetest.register_craft( {
		output = "homedecor:window_flowerbox",
		recipe = {
				{ "homedecor:roof_tile_terracotta", "default:dirt", "homedecor:roof_tile_terracotta" },
				{ "", "homedecor:roof_tile_terracotta", "" },
		},
})

minetest.register_craft({
	output = "homedecor:paper_towel",
	recipe = {
		{ "homedecor:toilet_paper", "homedecor:toilet_paper" }
	},
})

minetest.register_craft({
	output = "homedecor:stonepath 16",
	recipe = {
		{ "stairs:slab_stone","","stairs:slab_stone" },
		{ "","stairs:slab_stone","" },
		{ "stairs:slab_stone","","stairs:slab_stone" }
	},
})

minetest.register_craft({
	output = "homedecor:stonepath 16",
	recipe = {
		{ "moreblocks:slab_stone","","moreblocks:slab_stone" },
		{ "","moreblocks:slab_stone","" },
		{ "moreblocks:slab_stone","","moreblocks:slab_stone" }
	},
})

minetest.register_craft({
	output = "homedecor:stonepath 3",
	recipe = {
		{ "moreblocks:micro_stone_1","","moreblocks:micro_stone_1" },
		{ "","moreblocks:micro_stone_1","" },
		{ "moreblocks:micro_stone_1","","moreblocks:micro_stone_1" }
	},
})

minetest.register_craft({
	output = "homedecor:barbecue",
	recipe = {
		{ "","homedecor:fence_chainlink","" },
		{ "default:steel_ingot","fake_fire:embers","default:steel_ingot" },
		{ "homedecor:pole_wrought_iron","default:steel_ingot","homedecor:pole_wrought_iron" }
	},
})

minetest.register_craft({
	output = "homedecor:beer_tap",
	recipe = {
		{ "group:stick","default:steel_ingot","group:stick" },
		{ "homedecor:kitchen_faucet","default:steel_ingot","homedecor:kitchen_faucet" },
		{ "default:steel_ingot","default:steel_ingot","default:steel_ingot" }
	},
})

minetest.register_craft({
	output = "homedecor:swing",
	recipe = {
		{ "farming:string","","farming:string" },
		{ "farming:string","","farming:string" },
		{ "farming:string","stairs:slab_wood","farming:string" }
	},
})

minetest.register_craft({
	output = "homedecor:swing",
	recipe = {
		{ "farming:string","","farming:string" },
		{ "farming:string","","farming:string" },
		{ "farming:string","moreblocks:slab_wood","farming:string" }
	},
})

minetest.register_craft({
	output = "homedecor:swing",
	recipe = {
		{ "farming:string","","farming:string" },
		{ "farming:string","","farming:string" },
		{ "farming:string","moreblocks:panel_wood_1","farming:string" }
	},
})
