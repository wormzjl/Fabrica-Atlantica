mods.jei.JEI.hide(<appliedenergistics2:facade:*>);
mods.jei.JEI.hide(<buildcraftsilicon:plug_facade:*>);
mods.jei.JEI.hide(<microblockcbe:microblock:*>);

furnace.remove(<minecraft:coal:1>);

//Fuel values
furnace.setFuel(<contenttweaker:scrap8>, 800);

//foundry
//mods.jei.JEI.removeAndHide(<foundry:alloyfurnace>);
//mods.jei.JEI.removeAndHide(<foundry:refractoryhopper>);
//mods.jei.JEI.removeAndHide(<foundry:machine:5>);

//misc
//mods.jei.JEI.removeAndHide(<bibliocraft:typesettingtable>);
//mods.jei.JEI.removeAndHide(<bibliocraft:printingpress>);
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);
mods.jei.JEI.removeAndHide(<buildcraftcore:gear_wood>);
mods.jei.JEI.removeAndHide(<minecraft:ender_chest>);

//Gated recipes
//Crafting table
recipes.remove(<minecraft:crafting_table>);
recipes.addShaped(<minecraft:crafting_table>, [[<betterwithmods:siding_wood:*>, <betterwithmods:siding_wood:*>], [<betterwithmods:siding_wood:*>, <betterwithmods:siding_wood:*>]]);

//Chest
recipes.removeShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [[<betterwithmods:material:14>, null, <betterwithmods:material:14>], [<betterwithmods:material:14>, <ore:chestWood>, <betterwithmods:material:14>], [null, <betterwithmods:material:14>, null]]);
recipes.addShaped(<minecraft:hopper>, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:chestWood>, <ore:ingotSteel>], [null, <ore:ingotSteel>, null]]);


//Immersivecraft
mods.jei.JEI.removeAndHide(<immcraft:furnace>);
recipes.remove(<immcraft:rock>);

recipes.remove(<immcraft:chest>);
recipes.addShaped(<immcraft:chest>, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>], [<minecraft:planks>, null, <minecraft:planks>], [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]);

recipes.remove(<immcraft:cupboard>);
recipes.addShaped(<immcraft:cupboard>, [[<minecraft:planks>, <minecraft:planks>, <minecraft:planks>], [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>], [<minecraft:planks>, null, <minecraft:planks>]]);

recipes.remove(<immcraft:shelf>);
recipes.addShaped(<immcraft:shelf>, [[<minecraft:planks>, null, <minecraft:planks>], [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>], [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]);

recipes.remove(<immcraft:bookshelf>);
recipes.addShaped(<immcraft:bookshelf>, [[<minecraft:planks>, null, <minecraft:planks>], [<minecraft:planks>, <minecraft:book>, <minecraft:planks>], [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>]]);


//modular item frame
//mods.jei.JEI.removeAndHide(<modularitemframe:module_t1_tank>);
//mods.jei.JEI.removeAndHide(<modularitemframe:module_t3_tele>);
//mods.jei.JEI.removeAndHide(<modularitemframe:module_t3_xp>);


//Thermal foundation
mods.jei.JEI.hide(<thermalfoundation:upgrade:*>);
mods.jei.JEI.hide(<thermalfoundation:glass:*>);

//MO
mods.jei.JEI.removeAndHide(<matteroverdrive:solar_panel>);


//Charcoal pit
mods.jei.JEI.hide(<charcoal_pit:alchemical_coal>);
mods.jei.JEI.hide(<charcoal_pit:aeternalis_fuel>);
mods.jei.JEI.removeAndHide(<charcoal_pit:item_fertilizer>);

recipes.remove(<charcoal_pit:bloomery_hatch>);
recipes.addShaped(<industrialrenewal:catwalk_pillar>*32,
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
mods.jei.JEI.hide(<industrialrenewal:solar_panel>);
mods.jei.JEI.hide(<industrialrenewal:sponge_iron>);
mods.jei.JEI.hide(<industrialrenewal:stick_iron>);

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

//Aluminium modification
//mods.jei.JEI.removeAndHide(<foundry:machine:3>);
mods.jei.JEI.removeAndHide(<magneticraft:ingots:7>);
mods.jei.JEI.removeAndHide(<rockhounding_chemistry:metal_items:3>);
mods.jei.JEI.removeAndHide(<libvulpes:productingot:9>);

//furnace.remove(<thermalfoundation:material:132>);
//furnace.remove(<thermalfoundation:material:196>);
//furnace.remove(<thermalfoundation:material:132>);
furnace.remove(<rockhounding_chemistry:metal_items:3>);
furnace.remove(<magneticraft:ingots:7>);
furnace.remove(<immersiveengineering:metal:1>);

//mods.foundry.Melting.removeRecipe(<thermalfoundation:material:68>);
//mods.foundry.Melting.removeRecipe(<harderores:tinydust:18>);
//mods.foundry.Melting.removeRecipe(<magneticraft:chunks:7>);
//mods.foundry.Melting.removeRecipe(<magneticraft:rocky_chunks:7>);
//mods.foundry.Melting.removeRecipe(<jaopca:item_crushedaluminium>);
//mods.foundry.Melting.removeRecipe(<jaopca:item_crushedpurifiedaluminium>);
//mods.foundry.Melting.removeRecipe(<jaopca:item_clusteraluminium>);

//mods.foundry.Casting.removeRecipe(<liquid:liquidaluminium>, <foundry:mold>);
//mods.foundry.Casting.removeRecipe(<liquid:liquidaluminium>, <foundry:mold:1>);
//mods.foundry.Casting.removeRecipe(<liquid:liquidaluminium>, <foundry:mold:2>);
//mods.foundry.Casting.removeRecipe(<liquid:liquidaluminium>, <foundry:mold:4>);
//mods.foundry.Casting.removeRecipe(<liquid:liquidaluminium>, <foundry:mold:5>);
//mods.foundry.Casting.removeRecipe(<liquid:liquidaluminium>, <foundry:mold:26>);

//mods.foundry.CastingTable.removeBlockRecipe(<liquid:liquidaluminium>);
//mods.foundry.CastingTable.removeIngotRecipe(<liquid:liquidaluminium>);
//mods.foundry.CastingTable.removePlateRecipe(<liquid:liquidaluminium>);

//mods.foundry.Infuser.removeRecipe(<liquid:alumina>, <thermalfoundation:material:768>);
//mods.foundry.Infuser.removeRecipe(<liquid:alumina>, <thermalfoundation:material:769>);
//mods.foundry.Infuser.removeRecipe(<liquid:alumina>, <jaopca:item_dustsmallcoal>);
