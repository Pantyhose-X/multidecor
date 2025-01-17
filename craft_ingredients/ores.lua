minetest.register_node(":multidecor:wolfram_ore", {
    description = "Wolfram Ore",
    tiles = {"default_stone.png^multidecor_wolfram_mineral.png"},
    is_ground_content = true,
    paramtype = "light",
    light_source = 2,
    drop = {
		max_items = 4,
		items = {
			{
				rarity = 1000,
				items = {"multidecor:wolfram_lump"}
			}
		}
	},
    groups = {cracky=3.5},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_node(":multidecor:desert_wolfram_ore", {
    description = "Desert Wolfram Ore",
    tiles = {"default_desert_stone.png^multidecor_wolfram_mineral.png"},
    is_ground_content = true,
    paramtype = "light",
    light_source = 2,
    drop = {
		max_items = 4,
		items = {
			{
				rarity = 1000,
				items = {"multidecor:wolfram_lump"}
			}
		}
	},
    groups = {cracky=3.5},
    sounds = default.node_sound_stone_defaults()
})

minetest.register_ore({
    ore_type = "scatter",
    ore = "multidecor:wolfram_ore",
    wherein = "default:stone",
    clust_scarcity = 800,
    clust_num_ores = 4,
    clust_size = 2,
    height_min = -31000,
    height_max = -150
})

minetest.register_ore({
    ore_type = "scatter",
    ore = "multidecor:desert_wolfram_ore",
    wherein = "default:desert_stone",
    clust_scarcity = 800,
    clust_num_ores = 4,
    clust_size = 2,
    height_min = -31000,
    height_max = -150
})

minetest.register_craftitem(":multidecor:wolfram_lump",
{
	description = "Wolfram Lump",
	inventory_image = "multidecor_wolfram_lump.png"
})

minetest.register_craftitem(":multidecor:wolfram_ingot",
{
	description = "Wolfram Ingot",
	inventory_image = "multidecor_wolfram_ingot.png"
})

minetest.register_craft({
	type = "cooking",
	output = "multidecor:wolfram_ingot",
	recipe = "multidecor:wolfram_ore",
	cooktime = 8
})
