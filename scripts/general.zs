mods.jei.JEI.hide(<appliedenergistics2:facade:*>);
mods.jei.JEI.hide(<microblockcbe:microblock:*>);

furnace.remove(<minecraft:coal:1>);

//Fuel values
furnace.setFuel(<contenttweaker:scrap8>, 1200);

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

//Water strainer
recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped(<waterstrainer:strainer_base>, [[<minecraft:iron_bars:*>, null, <minecraft:iron_bars:*>], [<ore:plankWood>, <quark:chute>, <ore:plankWood>], [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>]]);



recipes.remove(<waterstrainer:strainer_survivalist_dense>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense>, [[<ore:stickWood>, <ore:nuggetBronze>, <ore:stickWood>], [<ore:nuggetBronze>, <waterstrainer:net:1>, <ore:nuggetBronze>], [<ore:stickWood>, <ore:nuggetBronze>, <ore:stickWood>]]);

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

//DSE
mods.jei.JEI.hide(<dse:hyperthermic>);
mods.jei.JEI.hide(<dse:hypothermic>);

mods.jei.JEI.removeAndHide(<dse:dinghy>);
mods.jei.JEI.removeAndHide(<dse:vehiclestation>);
mods.jei.JEI.removeAndHide(<dse:upgrades:1>);
mods.jei.JEI.removeAndHide(<dse:upgrades:2>);

mods.jei.JEI.removeAndHide(<dse:hammeriron>);
mods.jei.JEI.removeAndHide(<dse:hammersteel>);
mods.jei.JEI.removeAndHide(<dse:components:1>);
mods.jei.JEI.removeAndHide(<dse:components:2>);
mods.jei.JEI.removeAndHide(<dse:components:6>);
mods.jei.JEI.removeAndHide(<dse:components:7>);
mods.jei.JEI.removeAndHide(<dse:components:10>);
mods.jei.JEI.removeAndHide(<dse:components:11>);
mods.jei.JEI.removeAndHide(<dse:components:12>);


recipes.remove(<dse:divinggoggles>);
recipes.addShaped(<dse:divinggoggles>, [[<ic2:crafting>, <ic2:crafting>, <ic2:crafting>], [<ore:paneGlassColorless>, <ore:paneGlassColorless>, <ore:paneGlassColorless>], [<ic2:crafting>, <ic2:crafting>, <ic2:crafting>]]);

recipes.remove(<nhc:frame>);
recipes.addShaped(<nhc:frame>, [[<ore:plateSteel>, <immersiveengineering:metal_decoration1>, <ore:plateSteel>], [<immersiveengineering:metal_decoration1>, <minecraft:redstone:*>, <immersiveengineering:metal_decoration1>], [<ore:plateSteel>, <immersiveengineering:metal_decoration1>, <ore:plateSteel>]]);

recipes.remove(<nhc:toolstation>);
recipes.addShaped(<nhc:toolstation>, [[<ore:plateSteel>, <minecraft:glass_pane:*>, <ore:plateSteel>], [<minecraft:piston>, <minecraft:comparator>, <minecraft:piston>], [<ore:plateSteel>, <nhc:frame>, <ore:plateSteel>]]);

recipes.remove(<dse:scubamask>);
recipes.addShaped(<dse:scubamask>, [[<ore:plateSteel>, <dse:divinggoggles>, <ore:plateSteel>], [<minecraft:redstone>, <minecraft:leather_helmet>, <minecraft:redstone>], [<ore:plateSteel>, <ore:circuitAdvanced>, <ore:plateSteel>]]);

recipes.remove(<dse:scubachest>);
recipes.addShaped(<dse:scubachest>, [[<ore:plateSteel>, <ic2:crafting>, <ore:plateSteel>], [<minecraft:redstone>, <minecraft:leather_chestplate>, <minecraft:redstone>], [<ore:plateSteel>, <ore:circuitAdvanced>, <ore:plateSteel>]]);

recipes.remove(<dse:scubalegs>);
recipes.addShaped(<dse:scubalegs>, [[<ore:plateSteel>, <ic2:crafting>, <ore:plateSteel>], [<minecraft:redstone>, <minecraft:leather_leggings>, <minecraft:redstone>], [<ore:plateSteel>, <ore:circuitAdvanced>, <ore:plateSteel>]]);

recipes.remove(<dse:scubaboots>);
recipes.addShaped(<dse:scubaboots>, [[<ore:plateSteel>, <ic2:crafting>, <ore:plateSteel>], [<minecraft:redstone>, <minecraft:leather_boots>, <minecraft:redstone>], [<ore:plateSteel>, <ore:circuitAdvanced>, <ore:plateSteel>]]);

recipes.remove(<dse:airtank_small>);
recipes.addShaped(<dse:airtank_small>, [[<ic2:crafting>, <ore:plateIron>, <ic2:crafting>], [<ore:plateIron>, <dse:components:9>, <ore:plateIron>], [<ore:plateIron>, <ore:denseplateIron>, <ore:plateIron>]]);

recipes.remove(<dse:airtank_large>);
recipes.addShaped(<dse:airtank_large>, [[<ic2:crafting>, <ore:plateSteel>, <ic2:crafting>], [<dse:airtank_small:*>, <ic2:crafting>, <dse:airtank_small:*>], [<ore:plateSteel>, <ore:denseplateSteel>, <ore:plateSteel>]]);

recipes.remove(<dse:airtank_highpressure>);
recipes.addShaped(<dse:airtank_highpressure>, [[<ore:plateInvar>, <ore:denseplateInvar>, <ore:plateInvar>], [<ore:plateInvar>, <dse:airtank_large:*>, <ore:plateInvar>], [<ore:plateInvar>, <ore:denseplateInvar>, <ore:plateInvar>]]);

recipes.remove(<dse:motorboat:*>);
recipes.addShaped(<dse:motorboat>, [[<nhc:frame>, <ore:circuitAdvanced>, <ore:platedenseSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<dse:upgrades>);
recipes.addShaped(<dse:upgrades>, [[<ic2:crafting>, null, <ic2:crafting>], [<ic2:crafting>, null, <ic2:crafting>], [<ore:plateIron>, null, <ore:plateIron>]]);

recipes.remove(<dse:flippers:*>);
recipes.addShaped(<dse:flippers>, [[<ore:dyeBlack>, null, <ore:dyeBlack>], [<ic2:crafting>, null, <ic2:crafting>], [<ic2:crafting>, null, <ic2:crafting>]]);

recipes.addShapeless(<dse:flippers:1>,[<dse:flippers>, <ore:dyeRed>]);
recipes.addShapeless(<dse:flippers:2>,[<dse:flippers>, <ore:dyeGreen>]);
recipes.addShapeless(<dse:flippers:3>,[<dse:flippers>, <ore:dyeBrown>]);
recipes.addShapeless(<dse:flippers:4>,[<dse:flippers>, <ore:dyeBlue>]);
recipes.addShapeless(<dse:flippers:5>,[<dse:flippers>, <ore:dyePurple>]);
recipes.addShapeless(<dse:flippers:6>,[<dse:flippers>, <ore:dyeCyan>]);
recipes.addShapeless(<dse:flippers:7>,[<dse:flippers>, <ore:dyeLightGray>]);
recipes.addShapeless(<dse:flippers:8>,[<dse:flippers>, <ore:dyeGray>]);
recipes.addShapeless(<dse:flippers:9>,[<dse:flippers>, <ore:dyePink>]);
recipes.addShapeless(<dse:flippers:10>,[<dse:flippers>, <ore:dyeLime>]);
recipes.addShapeless(<dse:flippers:11>,[<dse:flippers>, <ore:dyeYellow>]);
recipes.addShapeless(<dse:flippers:12>,[<dse:flippers>, <ore:dyeLightBlue>]);
recipes.addShapeless(<dse:flippers:13>,[<dse:flippers>, <ore:dyeMagenta>]);
recipes.addShapeless(<dse:flippers:14>,[<dse:flippers>, <ore:dyeOrange>]);
recipes.addShapeless(<dse:flippers:15>,[<dse:flippers>, <ore:dyeWhite>]);


//Autoverse
recipes.remove(<autoverse:pipe>);
recipes.remove(<autoverse:pipe:1>);
recipes.remove(<autoverse:pipe:2>);
recipes.remove(<autoverse:pipe:3>);

recipes.addShaped(<autoverse:pipe> * 4, [[<ore:ingotSteel>, <minecraft:cobblestone>, <ore:ingotSteel>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:ingotSteel>, <minecraft:cobblestone>, <ore:ingotSteel>]]);
recipes.addShaped(<autoverse:pipe:1> * 4, [[<ore:ingotSteel>, <minecraft:hopper>, <ore:ingotSteel>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<autoverse:pipe:2> * 4, [[<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>], [<ore:blockGlass>, <ore:blockGlass>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<autoverse:pipe:3> * 4, [[<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>], [<ore:blockGlass>, <minecraft:comparator>, <ore:blockGlass>], [<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>]]);

