//Fuel values
furnace.setFuel(<ore:plankWood>, 100);
furnace.setFuel(<ore:slabWood>, 25);
furnace.setFuel(<ore:stickWood>, 25);
furnace.setFuel(<ore:stairWood>, 75);
furnace.setFuel(<ore:fenceWood>, 25);
furnace.setFuel(<ore:fenceGateWood>, 100);
furnace.setFuel(<minecraft:sign>, 25);
furnace.setFuel(<minecraft:bowl>, 25);
furnace.setFuel(<minecraft:torch>, 0);
furnace.setFuel(<minecraft:paper>, 0);

furnace.setFuel(<betterwithmods:siding_wood:*>, 50);
furnace.setFuel(<betterwithmods:moulding_wood:*>, 25);
furnace.setFuel(<betterwithmods:corner_wood:*>, 0);
furnace.setFuel(<betterwithmods:wood_bench:*>, 25);
furnace.setFuel(<betterwithmods:wood_table:*>, 25);
furnace.setFuel(<betterwithmods:grate:*>, 25);

furnace.setFuel(<pyrotech:cog_wood>, 100);
furnace.setFuel(<pyrotech:log_pile>, 0);
furnace.setFuel(<pyrotech:wood_tar_block>, 0);
furnace.setFuel(<pyrotech:living_tar>, 6400);
furnace.setFuel(<pyrotech:rock:7>, 0);
furnace.setFuel(<pyrotech:pile_wood_chips:*>, 0);
furnace.setFuel(<pyrotech:material:20>, 0);
furnace.setFuel(<pyrotech:material:23>, 0);
furnace.setFuel(<pyrotech:material:30>, 0);
furnace.setFuel(<pyrotech:wool_tarred>, 0);
furnace.setFuel(<pyrotech:planks_tarred>, 0);

furnace.setFuel(<railcraft:generic:5>, 400);
furnace.setFuel(<railcraft:tank_water>, 0);
furnace.setFuel(<ic2:scaffold>, 50);
furnace.setFuel(<ic2:scaffold:1>, 50);
furnace.setFuel(<ore:logSplit>, 100);

furnace.setFuel(<immersiveengineering:treated_wood_stairs0>, 75);
furnace.setFuel(<immersiveengineering:treated_wood_stairs1>, 75);
furnace.setFuel(<immersiveengineering:treated_wood_stairs2>, 75);

furnace.setFuel(<blockcraftery:editable_fence>, 0);
furnace.setFuel(<blockcraftery:editable_fence_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_door>, 0);
furnace.setFuel(<blockcraftery:editable_door_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_block>, 0);
furnace.setFuel(<blockcraftery:editable_stairs>, 0);
furnace.setFuel(<blockcraftery:editable_slant>, 0);
furnace.setFuel(<blockcraftery:editable_outer_corner>, 0);
furnace.setFuel(<blockcraftery:editable_inner_corner>, 0);
furnace.setFuel(<blockcraftery:editable_block_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_stairs_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_slant_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_outer_corner_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_inner_corner_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_slab>, 0);
furnace.setFuel(<blockcraftery:editable_wall>, 0);
furnace.setFuel(<blockcraftery:editable_slab_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_wall_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_trap_door>, 0);
furnace.setFuel(<blockcraftery:editable_trap_door_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_pressure_plate_all>, 0);
furnace.setFuel(<blockcraftery:editable_pressure_plate_items>, 0);
furnace.setFuel(<blockcraftery:editable_pressure_plate_mobs>, 0);
furnace.setFuel(<blockcraftery:editable_pressure_plate_player>, 0);
furnace.setFuel(<blockcraftery:editable_pressure_plate_all_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_pressure_plate_items_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_pressure_plate_mobs_reinforced>, 0);
furnace.setFuel(<blockcraftery:editable_pressure_plate_player_reinforced>, 0);

//Planks and sticks recipe removal
recipes.removeByRegex("primal:planks.*");
recipes.removeByRegex("primal:stick.*");
recipes.removeByRegex("primal:wooden_slab.*");
recipes.removeByRegex("primal:thin_slab.*");
recipes.removeByRegex("betterwithmods:planks.*");

recipes.addShaped("slab_ironwood", <primal:slab_ironwood> * 2, [[<ore:toolSawFlint>], [<primal:planks>]]);
recipes.addShaped("slab_ironwood_2", <primal:slab_ironwood> * 2, [[<ore:toolSawGem>], [<primal:planks>]]);
recipes.addShaped("slab_ironwood_1", <primal:slab_ironwood> * 2, [[<ore:toolSawMetal>], [<primal:planks>]]);
recipes.addShaped("slab_corypha_2", <primal:slab_corypha> * 2, [[<ore:toolSawGem>], [<primal:planks:3>]]);
recipes.addShaped("slab_corypha_1", <primal:slab_corypha> * 2, [[<ore:toolSawMetal>], [<primal:planks:3>]]);
recipes.addShaped("slab_corypha", <primal:slab_corypha> * 2, [[<ore:toolSawFlint>], [<primal:planks:3>]]);

//Treated wood
//recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood_slab0");
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood_slab1");
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood_slab2");
recipes.removeByRecipeName("immersiveengineering:material/stick_treated");
mods.nuclearcraft.infuser.removeRecipeWithOutput(<immersiveengineering:treated_wood>);

mods.primal.Cauldron.addRecipe("treated_wood", 4, <liquid:wood_tar>*250, [<ore:plankWood>], [<immersiveengineering:treated_wood>]);
mods.primal.Cauldron.addRecipe("treated_wood_2", 4, <liquid:creosote>*250, [<ore:plankWood>], [<immersiveengineering:treated_wood>]);

mods.immersiveengineering.BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <ore:plankWood>, <liquid:wood_tar>*200);
mods.immersiveengineering.BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <ore:plankWood>, <liquid:creosote>*200);

mods.pyrotech.Chopping.addRecipe("treated_slab_1", <immersiveengineering:treated_wood_slab>, <immersiveengineering:treated_wood>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("treated_slab_2", <immersiveengineering:treated_wood_slab:1>, <immersiveengineering:treated_wood:1>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("treated_slab_3", <immersiveengineering:treated_wood_slab:2>, <immersiveengineering:treated_wood:2>, [4,2], [1,2]);

mods.pyrotech.StoneSawmill.addRecipe("treated_sticks", <immersiveengineering:material>, <ore:slabTreatedWood>, 40, <pyrotech:sawmill_blade_iron:*>.or(<pyrotech:sawmill_blade_diamond:*>).or(<pyrotech:sawmill_blade_obsidian:*>), 1);

mods.forestry.Carpenter.removeRecipe(<railcraft:tie>);
recipes.remove(<railcraft:tie>);
mods.forestry.Carpenter.addRecipe(<railcraft:tie>*3, [[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]], 60, <liquid:wood_tar> * 600);
mods.forestry.Carpenter.addRecipe(<railcraft:tie>*3, [[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]], 60, <liquid:creosote> * 600);


//Paper
recipes.removeByRecipeName("primal:paper");
mods.pyrotech.SoakingPot.removeRecipes(<pyrotech:material:25>);
mods.pyrotech.SoakingPot.addRecipe("pulp", <pyrotech:material:25>, <liquid:water>*250, <minecraft:reeds>, 2 * 60 * 20);
mods.primal.Cauldron.addRecipe("pulp", 6, <liquid:brine_netjry>*50, [<pyrotech:rock:7>], [<pyrotech:material:25>]);


//Pyrotech rebalancing
recipes.replaceAllOccurences(<pyrotech:material:20>, <ore:slabWood>);
recipes.replaceAllOccurences(<pyrotech:material:23>, <ore:slabTreatedWood>);
recipes.replaceAllOccurences(<pyrotech:planks_tarred>, <ore:plankTreatedWood>);

mods.pyrotech.StoneSawmill.removeRecipes(<minecraft:stick>);
mods.pyrotech.BrickSawmill.removeRecipes(<minecraft:stick>);

mods.pyrotech.StoneSawmill.removeRecipes(<pyrotech:material:20>);
mods.pyrotech.BrickSawmill.removeRecipes(<pyrotech:material:20>);

mods.pyrotech.StoneSawmill.removeRecipes(<pyrotech:material:23>);
mods.pyrotech.StoneSawmill.removeRecipes(<pyrotech:material:23>);

mods.pyrotech.Chopping.addRecipe("slab_1", <minecraft:wooden_slab>, <minecraft:planks>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("slab_2", <minecraft:wooden_slab:1>, <minecraft:planks:1>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("slab_3", <minecraft:wooden_slab:2>, <minecraft:planks:2>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("slab_4", <minecraft:wooden_slab:3>, <minecraft:planks:3>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("slab_5", <minecraft:wooden_slab:4>, <minecraft:planks:4>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("slab_6", <minecraft:wooden_slab:5>, <minecraft:planks:5>, [4,2], [1,2]);

mods.pyrotech.Chopping.addRecipe("slab_7", <primal:slab_ironwood>, <primal:planks>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("slab_8", <primal:slab_yew>, <primal:planks:1>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("slab_9", <primal:slab_lacquer>, <primal:planks:2>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("slab_10", <primal:slab_corypha>, <primal:planks:3>, [4,2], [1,2]);

mods.pyrotech.Chopping.addRecipe("thin_slab_1", <primal:thin_slab_oak>, <minecraft:wooden_slab>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("thin_slab_2", <primal:thin_slab_spruce>, <minecraft:wooden_slab:1>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("thin_slab_3", <primal:thin_slab_birch>, <minecraft:wooden_slab:2>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("thin_slab_4", <primal:thin_slab_jungle>, <minecraft:wooden_slab:3>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("thin_slab_5", <primal:thin_slab_acacia>, <minecraft:wooden_slab:4>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("thin_slab_6", <primal:thin_slab_bigoak>, <minecraft:wooden_slab:5>, [4,2], [1,2]);

mods.pyrotech.Chopping.addRecipe("thin_slab_7", <primal:thin_slab_ironwood>, <primal:slab_ironwood>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("thin_slab_8", <primal:thin_slab_yew>, <primal:slab_yew>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("thin_slab_9", <primal:thin_slab_lacquer>, <primal:slab_lacquer>, [4,2], [1,2]);
mods.pyrotech.Chopping.addRecipe("thin_slab_10", <primal:thin_slab_corypha>, <primal:slab_corypha>, [4,2], [1,2]);

mods.pyrotech.StoneSawmill.addRecipe("sticks", <minecraft:stick>, <ore:slabWood>, 40, <pyrotech:sawmill_blade_iron:*>.or(<pyrotech:sawmill_blade_diamond:*>).or(<pyrotech:sawmill_blade_obsidian:*>), 1);

//Industrial cutter (IC+AR)
