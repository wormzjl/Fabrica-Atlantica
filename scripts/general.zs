mods.jei.JEI.hide(<appliedenergistics2:facade:*>);
//mods.jei.JEI.hide(<buildcraftsilicon:plug_facade:*>);
mods.jei.JEI.hide(<microblockcbe:microblock:*>);


furnace.remove(<minecraft:coal:1>);

//Fuel values
furnace.setFuel(<contenttweaker:scrap8>, 800);

//misc
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);
mods.jei.JEI.removeAndHide(<minecraft:ender_chest>);
mods.jei.JEI.removeAndHide(<translocators:diamond_nugget>);

//Gated recipes
//Crafting table
//recipes.remove(<minecraft:crafting_table>);
//recipes.addShaped(<minecraft:crafting_table>, [[<betterwithmods:siding_wood:*>, <betterwithmods:siding_wood:*>], [<betterwithmods:siding_wood:*>, <betterwithmods:siding_wood:*>]]);

//Chest
recipes.removeShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [[<betterwithmods:material:14>, null, <betterwithmods:material:14>], [<betterwithmods:material:14>, <ore:chestWood>, <betterwithmods:material:14>], [null, <betterwithmods:material:14>, null]]);
recipes.addShaped(<minecraft:hopper>, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:chestWood>, <ore:ingotSteel>], [null, <ore:ingotSteel>, null]]);

//Charcoal pit
mods.jei.JEI.hide(<charcoal_pit:alchemical_coal>);
mods.jei.JEI.hide(<charcoal_pit:aeternalis_fuel>);
mods.jei.JEI.removeAndHide(<charcoal_pit:item_fertilizer>);

recipes.remove(<charcoal_pit:bloomery_hatch>);
recipes.addShaped(<charcoal_pit:bloomery_hatch>,
 [[<ore:plateBronze>, <ore:blockBronze>, <ore:plateBronze>],
  [<ore:plateBronze>, null, <ore:plateBronze>],
  [<ore:plateBronze>, <ore:blockBronze>, <ore:plateBronze>]]);

//Water strainer
recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped(<waterstrainer:strainer_base>, [[<minecraft:iron_bars:*>, null, <minecraft:iron_bars:*>], [<ore:plankWood>, <quark:chute>, <ore:plankWood>], [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>]]);

recipes.addShaped(<waterstrainer:net>, [[<ore:cordagePlant>, <ore:cordagePlant>, <ore:cordagePlant>]]);
recipes.addShaped(<waterstrainer:net:1> * 2, [[<ore:cordagePlant>, <ore:cordagePlant>, <ore:cordagePlant>], [<ore:cordagePlant>, <ore:cordagePlant>, <ore:cordagePlant>]]);
recipes.addShaped(<waterstrainer:strainer_fisherman>, [[<ore:cordagePlant>, <ore:cordagePlant>, <ore:cordagePlant>], [<ore:cordagePlant>, <waterstrainer:net>, <ore:cordagePlant>], [<ore:cordagePlant>, <ore:cordagePlant>, <ore:cordagePlant>]]);


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

