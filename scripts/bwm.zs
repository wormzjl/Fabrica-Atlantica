//mods.betterwithmods.Crucible.remove(IItemStack[] outputs);


//removals and unifications
mods.betterwithmods.Mill.addRecipe([<minecraft:coal:1>],[<betterwithmods:material:37>]);

recipes.removeShaped(<betterwithmods:material:45>, [[<ore:nuggetDiamond>, <ore:nuggetDiamond>, <ore:nuggetDiamond>], [<ore:nuggetDiamond>, <ore:nuggetDiamond>, <ore:nuggetDiamond>], [<ore:nuggetDiamond>, <ore:nuggetDiamond>, <ore:nuggetDiamond>]]);

recipes.removeShaped(<minecraft:diamond_helmet>, [[<primal:diamond_plate>, <primal:diamond_plate>, <primal:diamond_plate>], [<primal:iron_ring>, <minecraft:leather_helmet:*>, <primal:iron_ring>]]);
recipes.removeShaped(<minecraft:diamond_chestplate>, [[<primal:iron_ring>, null, <primal:iron_ring>], [<primal:diamond_plate>, <minecraft:leather_chestplate:*>, <primal:diamond_plate>], [<primal:diamond_plate>, <primal:diamond_plate>, <primal:diamond_plate>]]);
recipes.removeShaped(<minecraft:diamond_leggings>, [[<primal:iron_ring>, <minecraft:leather_leggings:*>, <primal:iron_ring>], [<primal:diamond_plate>, null, <primal:diamond_plate>], [<primal:diamond_plate>, null, <primal:diamond_plate>]]);
recipes.removeShaped(<minecraft:diamond_boots>, [[<primal:iron_ring>, null, <primal:iron_ring>], [<primal:diamond_plate>, <minecraft:leather_boots:*>, <primal:diamond_plate>]]);

recipes.removeShapeless(<minecraft:stick> * 2, [<ore:plankWood>]);

//Machine recipes
mods.betterwithmods.Crucible.remove([<minecraft:iron_nugget>]);
mods.betterwithmods.Crucible.remove([<minecraft:iron_ingot>]);

mods.betterwithmods.Cauldron.remove([<betterwithmods:material:1>]);
mods.betterwithmods.Cauldron.addStoked([<betterwithmods:material:16>,<ore:dustCarbon>],[<betterwithmods:material:1>]);
furnace.setFuel(<betterwithmods:material:1>, 2000);

mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap2>],[<materialpart:iron:scrapmetal>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap6>],[<materialpart:iron:scrapmetal>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap7>],[<materialpart:iron:scrapmetal>]);
mods.betterwithmods.Mill.addRecipe([<ic2:crafting:10>],[<materialpart:tin:scrapmetal>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap9>],[<materialpart:silver:scrapmetal>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap4>],[<materialpart:lead:scrapmetal>,<minecraft:redstone>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap3>],[<materialpart:copper:scrapmetal>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap5>],[<materialpart:tin:scrapmetal>,<minecraft:dye:4>]);

mods.betterwithmods.Mill.addRecipe([<primal:salt_dust_fire>],[<betterwithmods:material:26>]);


//crafting recipes
recipes.remove(<betterwithmods:single_machine>);
recipes.addShaped(<betterwithmods:single_machine>, [[<ore:stone>, <ore:gearBronze>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);

recipes.remove(<betterwithmods:hand_crank>);
recipes.addShaped(<betterwithmods:hand_crank>, [[null, null, <ore:nuggetIron>], [null, <ore:stickWood>, null], [<ore:cobblestone>, <ore:gearWood>, <ore:cobblestone>]]);
