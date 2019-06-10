mods.jei.JEI.hide(<appliedenergistics2:facade:*>);
mods.jei.JEI.hide(<microblockcbe:microblock:*>);

furnace.remove(<minecraft:coal:1>);

//Fuel values
furnace.setFuel(<contenttweaker:scrap8>, 1200);

//misc
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);
mods.jei.JEI.removeAndHide(<minecraft:ender_chest>);
mods.jei.JEI.removeAndHide(<translocators:diamond_nugget>);

recipes.addShaped(<contenttweaker:grassseed>, [[<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>], [<minecraft:dye:15>, <minecraft:wheat_seeds>, <minecraft:dye:15>], [<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>]]);
<contenttweaker:grassseed>.addTooltip("Use this on dirt to get a grass block!");

//Gated recipes
//Crafting table
//recipes.remove(<minecraft:crafting_table>);
//recipes.addShaped(<minecraft:crafting_table>, [[<betterwithmods:siding_wood:*>, <betterwithmods:siding_wood:*>], [<betterwithmods:siding_wood:*>, <betterwithmods:siding_wood:*>]]);

//Chest
//recipes.removeShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [[<betterwithmods:material:14>, null, <betterwithmods:material:14>], [<betterwithmods:material:14>, <ore:chestWood>, <betterwithmods:material:14>], [null, <betterwithmods:material:14>, null]]);
recipes.addShaped(<minecraft:hopper>, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:chestWood>, <ore:ingotSteel>], [null, <ore:ingotSteel>, null]]);

recipes.addShaped(<wopper:wopper>, [[<betterwithmods:siding_wood:*>, null, <betterwithmods:siding_wood:*>], [<betterwithmods:siding_wood:*>, <ore:chestWood>, <betterwithmods:siding_wood:*>], [null, <ore:plankWood>, null]]);


//Water strainer
recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped(<waterstrainer:strainer_base>, [[<minecraft:iron_bars:*>, null, <minecraft:iron_bars:*>], [<ore:plankWood>, <quark:chute>, <ore:plankWood>], [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>]]);

recipes.remove(<waterstrainer:strainer_survivalist_dense>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense>, [[<ore:stickWood>, <ore:nuggetBronze>, <ore:stickWood>], [<ore:nuggetBronze>, <waterstrainer:net:1>, <ore:nuggetBronze>], [<ore:stickWood>, <ore:nuggetBronze>, <ore:stickWood>]]);

recipes.remove(<waterstrainer:net>);
recipes.remove(<waterstrainer:net:1>);
recipes.addShaped(<waterstrainer:net>, [[<ore:cordagePlant>, <ore:cordagePlant>], [<ore:cordagePlant>, <ore:cordagePlant>]]);
recipes.addShaped(<waterstrainer:net:1>, [[<ore:cordagePlant>, <ore:cordagePlant>, <ore:cordagePlant>], [<ore:cordagePlant>, <ore:cordagePlant>, <ore:cordagePlant>]]);
recipes.addShaped(<waterstrainer:strainer_fisherman>, [[<ore:cordagePlant>, <ore:cordagePlant>, <ore:cordagePlant>], [<ore:cordagePlant>, <waterstrainer:net>, <ore:cordagePlant>], [<ore:cordagePlant>, <ore:cordagePlant>, <ore:cordagePlant>]]);

recipes.remove(<waterstrainer:strainer_survivalist_solid>);
recipes.addShaped(<waterstrainer:strainer_survivalist_solid>*2, [[<ore:ingotIron>, <minecraft:iron_bars:*>, <ore:ingotIron>], [<minecraft:iron_bars:*>, <waterstrainer:net>, <minecraft:iron_bars:*>], [<ore:ingotIron>, <minecraft:iron_bars:*>, <ore:ingotIron>]]);

recipes.remove(<waterstrainer:strainer_survivalist_dense_solid>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense_solid>*2, [[<ore:ingotIron>, <minecraft:iron_bars:*>, <ore:ingotIron>], [<minecraft:iron_bars:*>, <waterstrainer:net:1>, <minecraft:iron_bars:*>], [<ore:ingotIron>, <minecraft:iron_bars:*>, <ore:ingotIron>]]);

//Bedrock ore
recipes.remove(<bedrockores:bedrock_miner>);
recipes.addShaped(<bedrockores:bedrock_miner>, [[<ore:plateSteel>, <minecraft:dropper>, <ore:plateSteel>], [<ore:blockRedstone>, <minecraft:piston>, <ore:blockRedstone>], [<ore:obsidian>, <ore:gemDiamond>, <ore:obsidian>]]);


//Iron chests
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_white:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_orange:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_magenta:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_light_blue:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_yellow:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_lime:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_pink:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_gray:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_silver:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_cyan:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_purple:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_blue:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_brown:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_green:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_red:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_shulker_box_black:*>);
mods.jei.JEI.removeAndHide(<ironchest:iron_gold_shulker_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:gold_diamond_shulker_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:copper_silver_shulker_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:silver_gold_shulker_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:copper_iron_shulker_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:diamond_crystal_shulker_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:vanilla_copper_shulker_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:vanilla_iron_shulker_upgrade>);
mods.jei.JEI.removeAndHide(<ironchest:diamond_obsidian_shulker_upgrade>);
  

//Industrail renewal
mods.jei.JEI.removeAndHide(<industrialrenewal:solar_panel>);
mods.jei.JEI.removeAndHide(<industrialrenewal:sponge_iron>);
mods.jei.JEI.removeAndHide(<industrialrenewal:stick_iron>);

recipes.removeShaped(<industrialrenewal:catwalk_pillar>*6,
 [[<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>],
  [<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>],
  [<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>]]);

recipes.addShaped(<industrialrenewal:catwalk_pillar>*32,
 [[<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>],
  [<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>],
  [<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>]]);

recipes.remove(<industrialrenewal:catwalk>);
recipes.remove(<industrialrenewal:catwalk_stair>);

recipes.addShaped(<industrialrenewal:catwalk> * 8, [[<ore:stickIron>, null, <ore:stickIron>], [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>]]);

recipes.addShapeless(<industrialrenewal:catwalk_stair>,[<industrialrenewal:catwalk>]);
recipes.addShapeless(<industrialrenewal:catwalk>,[<industrialrenewal:catwalk_stair>]);

recipes.remove(<industrialrenewal:catwalk_column>);
recipes.addShaped(<industrialrenewal:catwalk_column>*24,
 [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>],
  [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);

recipes.remove(<industrialrenewal:catwalk_ladder>);
recipes.addShaped(<industrialrenewal:catwalk_ladder>*12,
 [[<ore:stickIron>, <minecraft:ladder>, <ore:stickIron>],
  [<ore:ingotIron>, <minecraft:ladder>, <ore:ingotIron>],
  [<ore:stickIron>, <minecraft:ladder>, <ore:stickIron>]]);

recipes.remove(<industrialrenewal:roof>);
recipes.addShaped(<industrialrenewal:roof>*16,
 [[<industrialrenewal:small_slab>, <industrialrenewal:small_slab>, null],
  [null, <industrialrenewal:small_slab>, <industrialrenewal:small_slab>],
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

recipes.remove(<industrialrenewal:window>);
recipes.addShaped(<industrialrenewal:window>*24,
 [[<ore:paneGlass>, <ore:stickIron>, <ore:paneGlass>],
  [<ore:paneGlass>, <ore:stickIron>, <ore:paneGlass>],
  [<ore:paneGlass>, <ore:stickIron>, <ore:paneGlass>]]);

recipes.remove(<industrialrenewal:platform>);
recipes.addShaped(<industrialrenewal:platform>*8,
 [[<ore:stickIron>, null, <ore:stickIron>],
  [<ore:stickIron>, <ore:plankWood>, <ore:stickIron>],
  [null, <industrialrenewal:catwalk_pillar>, null]]);
  
recipes.remove(<industrialrenewal:scaffold>);
recipes.addShaped(<industrialrenewal:scaffold> * 24, [[<ore:stickIron>, <ore:plankWood>, <ore:stickIron>], [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], [<ore:stickIron>, null, <ore:stickIron>]]);

recipes.remove(<industrialrenewal:frame>);
recipes.addShaped(<industrialrenewal:frame> * 12, [[<ore:stickIron>, <ore:ingotSteel>, <ore:stickIron>], [<ore:stickIron>, <ore:ingotSteel>, <ore:stickIron>], [<ore:stickIron>, <ore:ingotSteel>, <ore:stickIron>]]);

recipes.remove(<industrialrenewal:industrial_floor>);
recipes.addShaped(<industrialrenewal:industrial_floor> * 24, [[<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>], [null, null, null], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);

//Betterdiving
mods.jei.JEI.hide(<better_diving:titanium>);
mods.jei.JEI.hide(<better_diving:copper_ore>);
mods.jei.JEI.hide(<better_diving:silver_ore>);
mods.jei.JEI.hide(<better_diving:lead>);
mods.jei.JEI.hide(<better_diving:gold>);
mods.jei.JEI.hide(<better_diving:creepvine_seed_cluster>);
mods.jei.JEI.hide(<better_diving:limestone_outcrop>);
mods.jei.JEI.hide(<better_diving:sandstone_outcrop>);
mods.jei.JEI.hide(<better_diving:creepvine>);
mods.jei.JEI.hide(<better_diving:seagrass>);
mods.jei.JEI.hide(<better_diving:acid_mushroom>);
mods.jei.JEI.removeAndHide(<better_diving:titanium_ingot>);
mods.jei.JEI.removeAndHide(<better_diving:wiring_kit>);
mods.jei.JEI.removeAndHide(<better_diving:battery>);
mods.jei.JEI.removeAndHide(<better_diving:power_cell>);
mods.jei.JEI.removeAndHide(<better_diving:lubricant>);
mods.jei.JEI.removeAndHide(<better_diving:silicone_rubber>);
mods.jei.JEI.removeAndHide(<better_diving:fiber_mesh>);

recipes.remove(<better_diving:diving_mask>);
recipes.addShaped(<better_diving:diving_mask>, [[<immersiveengineering:material:5>, <minecraft:glass>, <immersiveengineering:material:5>]]);

recipes.remove(<better_diving:standard_o2_tank>);
recipes.addShaped(<better_diving:standard_o2_tank>, [[<ic2:crafting>, <ore:plateIron>, <ic2:crafting>], [<ore:plateIron>, null, <ore:plateIron>], [<ic2:crafting>, <ore:plateIron>, <ic2:crafting>]]);

recipes.remove(<better_diving:wetsuit_leggings>);
recipes.addShaped(<better_diving:wetsuit_leggings>, [[<immersiveengineering:material:5>, <ic2:crafting>, <immersiveengineering:material:5>], [<ic2:crafting>, null, <ic2:crafting>], [<ic2:crafting>, null, <ic2:crafting>]]);

recipes.remove(<better_diving:fins>);
recipes.addShaped(<better_diving:fins>, [[<ic2:crafting>, null, <ic2:crafting>], [<ic2:crafting>, null, <ic2:crafting>]]);

recipes.remove(<better_diving:rebreather>);
recipes.addShaped(<better_diving:rebreather>, [[<betterwithmods:material:14>, <better_diving:diving_mask>, <betterwithmods:material:14>], [<betterwithmods:material:14>, <immersiveengineering:material:5>, <betterwithmods:material:14>]]);

recipes.remove(<better_diving:high_capacity_o2_tank>);
recipes.addShaped(<better_diving:high_capacity_o2_tank>, [[<betterwithmods:material:14>, <better_diving:standard_o2_tank>, <betterwithmods:material:14>], [<betterwithmods:material:14>, <immersiveengineering:material:5>, <betterwithmods:material:14>]]);

recipes.remove(<better_diving:improved_wetsuit_leggings>);
recipes.addShaped(<better_diving:improved_wetsuit_leggings>, [[<betterwithmods:material:14>, <better_diving:wetsuit_leggings>, <betterwithmods:material:14>], [<betterwithmods:material:14>, <immersiveengineering:material:5>, <betterwithmods:material:14>]]);

recipes.remove(<better_diving:ultra_glide_fins>);
recipes.addShaped(<better_diving:ultra_glide_fins>, [[<betterwithmods:material:14>, <better_diving:fins>, <betterwithmods:material:14>], [<betterwithmods:material:14>, <immersiveengineering:material:5>, <betterwithmods:material:14>]]);

recipes.remove(<better_diving:reinforced_diving_mask>);
recipes.addShaped(<better_diving:reinforced_diving_mask>, [[<ore:plateSteel>, <better_diving:diving_mask>, <ore:plateSteel>], [<ore:plateSteel>, <immersiveengineering:material:5>, <ore:plateSteel>]]);

recipes.remove(<better_diving:reinforced_o2_tank>);
recipes.addShaped(<better_diving:reinforced_o2_tank>, [[<ore:plateSteel>, <better_diving:standard_o2_tank>, <ore:plateSteel>], [<ore:plateSteel>, <immersiveengineering:material:5>, <ore:plateSteel>]]);

recipes.remove(<better_diving:reinforced_wetsuit_leggings>);
recipes.addShaped(<better_diving:reinforced_wetsuit_leggings>, [[<ore:plateSteel>, <better_diving:wetsuit_leggings>, <ore:plateSteel>], [<ore:plateSteel>, <immersiveengineering:material:5>, <ore:plateSteel>]]);

recipes.remove(<better_diving:reinforced_fins>);
recipes.addShaped(<better_diving:reinforced_fins>, [[<ore:plateSteel>, <better_diving:fins>, <ore:plateSteel>], [<ore:plateSteel>, <immersiveengineering:material:5>, <ore:plateSteel>]]);

recipes.remove(<better_diving:seamoth>);
recipes.addShaped(<better_diving:seamoth>, [[<ore:denseplateInvar>, <ic2:glass>, <ore:denseplateInvar>], [<ic2:glass>, <ic2:boat:3>, <ic2:glass>], [<ore:denseplateInvar>, <ic2:glass>, <ore:denseplateInvar>]]);


//Autoverse
recipes.remove(<autoverse:pipe>);
recipes.remove(<autoverse:pipe:1>);
recipes.remove(<autoverse:pipe:2>);
recipes.remove(<autoverse:pipe:3>);

recipes.addShaped(<autoverse:pipe> * 4, [[<ore:ingotSteel>, <minecraft:cobblestone>, <ore:ingotSteel>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:ingotSteel>, <minecraft:cobblestone>, <ore:ingotSteel>]]);
recipes.addShaped(<autoverse:pipe:1> * 4, [[<ore:ingotSteel>, <minecraft:hopper>, <ore:ingotSteel>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<autoverse:pipe:2> * 4, [[<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>], [<ore:blockGlass>, <ore:blockGlass>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<autoverse:pipe:3> * 4, [[<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>], [<ore:blockGlass>, <minecraft:comparator>, <ore:blockGlass>], [<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>]]);
