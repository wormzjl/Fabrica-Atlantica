//mods.betterwithmods.Crucible.remove(IItemStack[] outputs);


//removals and unifications
mods.jei.JEI.hide(<betterwithmods:material:37>);

mods.betterwithmods.Mill.remove([<betterwithmods:material:37>]);
mods.betterwithmods.Mill.addRecipe([<minecraft:coal:1>],[<thermalfoundation:material:769>]);

mods.jei.JEI.removeAndHide(<thermalfoundation:material:16>);
recipes.removeShaped(<betterwithmods:material:45>, [[<thermalfoundation:material:16>, <thermalfoundation:material:16>, <thermalfoundation:material:16>], [<thermalfoundation:material:16>, <thermalfoundation:material:16>, <thermalfoundation:material:16>], [<thermalfoundation:material:16>, <thermalfoundation:material:16>, <thermalfoundation:material:16>]]);

recipes.removeShaped(<minecraft:diamond_helmet>, [[<primal:diamond_plate>, <primal:diamond_plate>, <primal:diamond_plate>], [<primal:iron_ring>, <minecraft:leather_helmet:*>, <primal:iron_ring>]]);
recipes.removeShaped(<minecraft:diamond_chestplate>, [[<primal:iron_ring>, null, <primal:iron_ring>], [<primal:diamond_plate>, <minecraft:leather_chestplate:*>, <primal:diamond_plate>], [<primal:diamond_plate>, <primal:diamond_plate>, <primal:diamond_plate>]]);
recipes.removeShaped(<minecraft:diamond_leggings>, [[<primal:iron_ring>, <minecraft:leather_leggings:*>, <primal:iron_ring>], [<primal:diamond_plate>, null, <primal:diamond_plate>], [<primal:diamond_plate>, null, <primal:diamond_plate>]]);
recipes.removeShaped(<minecraft:diamond_boots>, [[<primal:iron_ring>, null, <primal:iron_ring>], [<primal:diamond_plate>, <minecraft:leather_boots:*>, <primal:diamond_plate>]]);

recipes.removeShapeless(<minecraft:stick> * 2, [<ore:plankWood>]);

//Machine recipes
mods.betterwithmods.Crucible.remove([<minecraft:iron_nugget>]);

mods.betterwithmods.Cauldron.remove([<betterwithmods:material:1>]);
mods.betterwithmods.Cauldron.addStoked([<betterwithmods:material:16>,<ore:dustCarbon>],[<betterwithmods:material:1>]);

mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap2>],[<contenttweaker:scrapmetal1>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap6>],[<contenttweaker:scrapmetal1>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap7>],[<contenttweaker:scrapmetal1>]);
mods.betterwithmods.Mill.addRecipe([<ic2:crafting:10>],[<contenttweaker:scrapmetal3>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap9>],[<contenttweaker:scrapmetal6>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap4>],[<contenttweaker:scrapmetal5>,<minecraft:redstone>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap3>],[<contenttweaker:scrapmetal2>]);
mods.betterwithmods.Mill.addRecipe([<contenttweaker:scrap5>],[<contenttweaker:scrapmetal3>,<minecraft:dye:4>]);

mods.betterwithmods.Mill.addRecipe([<primal:salt_dust_fire>],[<betterwithmods:material:26>]);


//crafting recipes
recipes.remove(<betterwithmods:single_machine>);
recipes.addShaped(<betterwithmods:single_machine>, [[<ore:stone>, <ore:gearBronze>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, <ore:stone>, <ore:stone>]]);

recipes.remove(<betterwithmods:hand_crank>);
recipes.addShaped(<betterwithmods:hand_crank>, [[null, null, <ore:nuggetIron>], [null, <ore:stickWood>, null], [<ore:cobblestone>, <ore:gearWood>, <ore:cobblestone>]]);
