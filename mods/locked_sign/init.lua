--[[
	Mod by kotolegokot
	Version 2012.8.13.0
]]

minetest.register_node("locked_sign:sign_wall_locked", {
	description = "Locked Sign",
	drawtype = "signlike",
	tiles = {"locked_sign_sign_wall_lock.png"},
	inventory_image = "locked_sign_sign_wall_lock.png",
	wield_image = "locked_sign_sign_wall_lock.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = false,
	selection_box = {
		type = "wallmounted",
	},
	groups = {choppy=2,dig_immediate=2},
	legacy_wallmounted = true,
	sounds = default.node_sound_defaults(),
	after_place_node = function(pos, placer)
		local meta = minetest.get_meta(pos)
		meta:set_string("owner", placer:get_player_name() or "")
		meta:set_string("infotext", "\"\" [" .. placer:get_player_name() .. "]")
	end,
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_string("formspec", "field[text;;${text}]")
		meta:set_string("infotext", "\"\"")
	end,
	can_dig = function(pos, player)
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
		local pname = player:get_player_name()
		return pname == owner or pname == minetest.setting_get("name")
			or minetest.check_player_privs(pname, {access=true})
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		if not fields.text then return end
		local meta = minetest.get_meta(pos)
		local owner = meta:get_string("owner")
		local pname = sender:get_player_name() or ""
		if pname ~= owner and pname ~= minetest.setting_get("name")
		  and not minetest.check_player_privs(pname, {access=true}) then
			return
		end
		print(pname.." wrote \""..fields.text..
				"\" to locked sign at "..minetest.pos_to_string(pos))
		meta:set_string("text", fields.text)
		meta:set_string("infotext", "\"" .. fields.text .. "\" [" .. owner .. "]")
	end,
})

minetest.register_craft({
	output = "locked_sign:sign_wall_locked",
	recipe = {
		{"group:wood", "group:wood", "group:wood"},
		{"group:wood", "group:wood", "default:steel_ingot"},
		{"", "group:stick", ""},
	}
})

--Alternate recipe.
minetest.register_craft({
    	output = "locked_sign:sign_wall_locked",
    	recipe = {
        	{"default:sign_wall"},
        	{"default:steel_ingot"},
    },
})

minetest.register_alias("sign_wall_locked", "locked_sign:sign_wall_locked")