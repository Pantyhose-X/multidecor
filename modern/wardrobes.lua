register.register_table("modern_cupboard_with_glass_doors", {
	style = "modern",
	material = "wood",
	description = "Wooden cupboard with glass doors",
	mesh = "multidecor_cupboard_with_glass_doors.b3d",
	visual_scale = 0.5,
	tiles = {"multidecor_jungle_wood.png", "multidecor_glass_material.png", "multidecor_metal_material.png"},
	inventory_image = "multidecor_cupboard_inv.png",
	bounding_boxes = {
		{-0.5, -0.5, -0.25, 0.5, 2.2, 0.5}
	},
	callbacks = {
		on_construct = function(pos)
			shelves.set_shelves(pos)
		end
	}
},
{
	shelves_data = {
		{
			type = "sym_doors",
			pos = {x=0.5, y=1.6625, z=0.25},
			pos2 = {x=-0.5, y=1.6625, z=0.25},
			object = "modern:wardrobe_wooden_glass_door",
			inv_size = {w=16,h=8}
		},
		{
			type = "sym_doors",
			pos = {x=0.5, y=0.2375, z=0.25},
			pos2 = {x=-0.5, y=0.2375, z=0.25},
			object = "modern:wardrobe_wooden_door",
			inv_size = {w=16,h=8}
		}
	}
},
{
	recipe = {
		{"multidecor:jungleboard", "multidecor:jungleboard", "xpanes:pane_flat"},
		{"multidecor:jungleboard", "multidecor:jungleboard", "xpanes:pane_flat"},
		{"multidecor:jungleboard", "multidecor:jungleboard", "multidecor:jungleboard"}
	}
})

minetest.register_entity("modern:wardrobe_wooden_glass_door", {
	visual = "mesh",
	visual_size = {x=5, y=5, z=5},
	mesh = "multidecor_wardrobe_wooden_glass_door.b3d",
	textures = {"multidecor_metal_material.png", "multidecor_jungle_wood.png^[resize:32x32", "multidecor_glass_material.png"},
	use_texture_alpha = true,
	physical = false,
	backface_culling = false,
	selectionbox = {-0.5, -0.53, 0, 0, 0.53, 0.075},
	static_save = true,
	on_activate = shelves.default_on_activate,
	on_rightclick = shelves.default_on_rightclick,
	on_step = shelves.default_door_on_step,
	get_staticdata = shelves.default_get_staticdata
})

minetest.register_entity("modern:wardrobe_wooden_door", {
	visual = "mesh",
	visual_size = {x=5, y=5, z=5},
	mesh = "multidecor_wardrobe_wooden_door.b3d",
	textures = {"multidecor_metal_material.png", "multidecor_jungle_wood.png^[resize:32x32"},
	physical = false,
	selectionbox = {-0.5, -0.53, 0, 0, 0.53, 0.075},
	static_save = true,
	backface_culling = false,
	on_activate = shelves.default_on_activate,
	on_rightclick = shelves.default_on_rightclick,
	on_step = shelves.default_door_on_step,
	get_staticdata = shelves.default_get_staticdata
})
