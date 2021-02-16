#priority 1000

//Fuel values
furnace.setFuel(<ore:plankWood>, 100);
furnace.setFuel(<ore:slabWood>, 25);
furnace.setFuel(<ore:stickWood>, 25);
furnace.setFuel(<ore:stairWood>, 75);
furnace.setFuel(<ore:fenceWood>, 25);
furnace.setFuel(<ore:fenceGateWood>, 100);
furnace.setFuel(<ore:barkWood>, 25);

furnace.setFuel(<minecraft:sign>, 25);
furnace.setFuel(<minecraft:bowl>, 25);
furnace.setFuel(<minecraft:torch>, 0);
furnace.setFuel(<minecraft:paper>, 0);

furnace.setFuel(<minecraft:boat>, 0);
furnace.setFuel(<minecraft:spruce_boat>, 0);
furnace.setFuel(<minecraft:birch_boat>, 0);
furnace.setFuel(<minecraft:jungle_boat>, 0);
furnace.setFuel(<minecraft:acacia_boat>, 0);
furnace.setFuel(<minecraft:dark_oak_boat>, 0);

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
//recipes.removeByRegex("primal:wooden_slab.*");
recipes.removeByRegex("primal:stone_slab.*");
recipes.removeByRegex("betterwithmods:planks.*");

//BWM overhaul
mods.betterwithmods.Saw.removeAll();

//Stage 1, log stripping
mods.betterwithmods.Saw.add(<minecraft:log>, [<primal:logs_stripped>, <primal:bark_oak>, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<minecraft:log:1>, [<primal:logs_stripped:1>, <primal:bark_spruce>, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<minecraft:log:2>, [<primal:logs_stripped:2>, <primal:bark_birch>, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<minecraft:log:3>, [<primal:logs_stripped:3>, <primal:bark_jungle>, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<minecraft:log2>, [<primal:logs_stripped:4>, <primal:bark_acacia>, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<minecraft:log2:1>, [<primal:logs_stripped:5>, <primal:bark_bigoak>, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:logs>, [<primal:logs_stripped:6>, <primal:bark_ironwood>, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:logs:1>, [<primal:logs_stripped:7>, <primal:bark_yew>, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:corypha_stalk>, [<primal:corypha_stalk:1>, <primal:bark_corypha>*4]);

//Stage 2, split log
mods.betterwithmods.Saw.add(<primal:logs_stripped>, [<primal:logs_split_oak>*4, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:logs_stripped:1>, [<primal:logs_split_spruce>*4, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:logs_stripped:2>, [<primal:logs_split_birch>*4, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:logs_stripped:3>, [<primal:logs_split_jungle>*4, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:logs_stripped:4>, [<primal:logs_split_acacia>*4, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:logs_stripped:5>, [<primal:logs_split_bigoak>*4, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:logs_stripped:6>, [<primal:logs_split_ironwood>*4, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:logs_stripped:7>, [<primal:logs_split_yew>*4, <betterwithmods:material:22>]);
mods.betterwithmods.Saw.add(<primal:corypha_stalk:1>, [<primal:logs_split_corypha>*4]);

//Stage 3, to planks
recipes.addShaped("plank_1", <minecraft:planks> * 4, [[<primal:logs_split_oak>, <primal:logs_split_oak>], [<primal:logs_split_oak>, <primal:logs_split_oak>]]);
recipes.addShaped("plank_2", <minecraft:planks:1> * 4, [[<primal:logs_split_spruce>, <primal:logs_split_spruce>], [<primal:logs_split_spruce>, <primal:logs_split_spruce>]]);
recipes.addShaped("plank_3", <minecraft:planks:2> * 4, [[<primal:logs_split_birch>, <primal:logs_split_birch>], [<primal:logs_split_birch>, <primal:logs_split_birch>]]);
recipes.addShaped("plank_4", <minecraft:planks:3> * 4, [[<primal:logs_split_jungle>, <primal:logs_split_jungle>], [<primal:logs_split_jungle>, <primal:logs_split_jungle>]]);
recipes.addShaped("plank_5", <minecraft:planks:4> * 4, [[<primal:logs_split_acacia>, <primal:logs_split_acacia>], [<primal:logs_split_acacia>, <primal:logs_split_acacia>]]);
recipes.addShaped("plank_6", <minecraft:planks:5> * 4, [[<primal:logs_split_bigoak>, <primal:logs_split_bigoak>], [<primal:logs_split_bigoak>, <primal:logs_split_bigoak>]]);
recipes.addShaped("plank_7", <primal:planks> * 4, [[<primal:logs_split_ironwood>, <primal:logs_split_ironwood>], [<primal:logs_split_ironwood>, <primal:logs_split_ironwood>]]);
recipes.addShaped("plank_8", <primal:planks:1> * 4, [[<primal:logs_split_yew>, <primal:logs_split_yew>], [<primal:logs_split_yew>, <primal:logs_split_yew>]]);
recipes.addShaped("plank_9", <primal:planks:3> * 4, [[<primal:logs_split_corypha>, <primal:logs_split_corypha>], [<primal:logs_split_corypha>, <primal:logs_split_corypha>]]);

//Stage 4, sidings
mods.betterwithmods.Saw.add(<minecraft:planks>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<minecraft:planks:1>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<minecraft:planks:2>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<minecraft:planks:3>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<minecraft:planks:4>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<minecraft:planks:5>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<primal:planks>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "ironwood"}, Name: "primal:planks"}})*2]);
mods.betterwithmods.Saw.add(<primal:planks:1>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "yew"}, Name: "primal:planks"}})*2]);
mods.betterwithmods.Saw.add(<primal:planks:3>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "corypha"}, Name: "primal:planks"}})*2]);
mods.betterwithmods.Saw.add(<immersiveengineering:treated_wood>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}})*2]);
mods.betterwithmods.Saw.add(<immersiveengineering:treated_wood:1>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "vertical"}, Name: "immersiveengineering:treated_wood"}})*2]);
mods.betterwithmods.Saw.add(<immersiveengineering:treated_wood:2>, [<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "packaged"}, Name: "immersiveengineering:treated_wood"}})*2]);

//Stage 5, Moulding
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "ironwood"}, Name: "primal:planks"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "ironwood"}, Name: "primal:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "yew"}, Name: "primal:planks"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "yew"}, Name: "primal:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "corypha"}, Name: "primal:planks"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "corypha"}, Name: "primal:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "vertical"}, Name: "immersiveengineering:treated_wood"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "vertical"}, Name: "immersiveengineering:treated_wood"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:siding_wood>.withTag({texture: {Properties: {type: "packaged"}, Name: "immersiveengineering:treated_wood"}}), [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "packaged"}, Name: "immersiveengineering:treated_wood"}})*2]);


//Stage 6, Corner
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "ironwood"}, Name: "primal:planks"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {type: "ironwood"}, Name: "primal:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "yew"}, Name: "primal:planks"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {type: "yew"}, Name: "primal:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "corypha"}, Name: "primal:planks"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {type: "corypha"}, Name: "primal:planks"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {type: "horizontal"}, Name: "immersiveengineering:treated_wood"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "vertical"}, Name: "immersiveengineering:treated_wood"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {type: "vertical"}, Name: "immersiveengineering:treated_wood"}})*2]);
mods.betterwithmods.Saw.add(<betterwithmods:moulding_wood>.withTag({texture: {Properties: {type: "packaged"}, Name: "immersiveengineering:treated_wood"}}), [<betterwithmods:corner_wood>.withTag({texture: {Properties: {type: "packaged"}, Name: "immersiveengineering:treated_wood"}})*2]);

//Thin slabs
//recipes.removeByRegex("primal:thin_slab.*");

mods.betterwithmods.Saw.add(<minecraft:wooden_slab>, [<primal:thin_slab_oak>*2]);
mods.betterwithmods.Saw.add(<minecraft:wooden_slab:1>, [<primal:thin_slab_spruce>*2]);
mods.betterwithmods.Saw.add(<minecraft:wooden_slab:2>, [<primal:thin_slab_birch>*2]);
mods.betterwithmods.Saw.add(<minecraft:wooden_slab:3>, [<primal:thin_slab_jungle>*2]);
mods.betterwithmods.Saw.add(<minecraft:wooden_slab:4>, [<primal:thin_slab_acacia>*2]);
mods.betterwithmods.Saw.add(<minecraft:wooden_slab:5>, [<primal:thin_slab_bigoak>*2]);
mods.betterwithmods.Saw.add(<primal:slab_ironwood>, [<primal:thin_slab_ironwood>*2]);
mods.betterwithmods.Saw.add(<primal:slab_yew>, [<primal:thin_slab_yew>*2]);
mods.betterwithmods.Saw.add(<primal:slab_corypha>, [<primal:thin_slab_corypha>*2]);
mods.betterwithmods.Saw.add(<primal:slab_lacquer>, [<primal:thin_slab_lacquer>*2]);
mods.betterwithmods.Saw.add(<primal:slab_glass>, [<primal:thin_slab_glass>*2]);
mods.betterwithmods.Saw.add(<primal:thatch>, [<primal:thin_slab_thatch>*2]);

//Primal slab vanilla style
recipes.removeByRegex("primal:slab.*");

recipes.addShaped("slab_primal_1", <primal:slab_ironwood> * 6, [[<primal:planks>, <primal:planks>, <primal:planks>]]);
recipes.addShaped("slab_primal_2", <primal:slab_yew> * 6, [[<primal:planks:1>, <primal:planks:1>, <primal:planks:1>]]);
recipes.addShaped("slab_primal_3", <primal:slab_corypha> * 6, [[<primal:planks:3>, <primal:planks:3>, <primal:planks:3>]]);
recipes.addShaped("slab_primal_4", <primal:slab_lacquer> * 6, [[<primal:planks:2>, <primal:planks:2>, <primal:planks:2>]]);
recipes.addShaped("slab_primal_5", <primal:slab_mud> * 6, [[<ore:blockMudDried>, <ore:blockMudDried>, <ore:blockMudDried>]]);
recipes.addShaped("slab_primal_6", <primal:slab_glass> * 6, [[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);
recipes.addShaped("slab_primal_7", <primal:slab_netherrack> * 6, [[<minecraft:netherrack>, <minecraft:netherrack>, <minecraft:netherrack>]]);
recipes.addShaped("slab_primal_8", <primal:slab_netherstone> * 6, [[<ore:stoneNether>, <ore:stoneNether>, <ore:stoneNether>]]);
recipes.addShaped("slab_primal_9", <primal:slab_soulglass> * 6, [[<primal:soulglass>, <primal:soulglass>, <primal:soulglass>]]);
recipes.addShaped("slab_primal_10", <primal:slab_netherearth> * 6, [[<ore:dirtNether>, <ore:dirtNether>, <ore:dirtNether>]]);


//Treated wood
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");
recipes.removeByRecipeName("immersiveengineering:material/stick_treated");
mods.nuclearcraft.Infuser.removeRecipeWithOutput(<immersiveengineering:treated_wood>);

mods.primal.Cauldron.addRecipe("treated_wood", 4, <liquid:wood_tar>*250, [<ore:plankWood>], [<immersiveengineering:treated_wood>]);
mods.primal.Cauldron.addRecipe("treated_wood_2", 4, <liquid:creosote>*250, [<ore:plankWood>], [<immersiveengineering:treated_wood>]);

mods.immersiveengineering.BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <ore:plankWood>, <liquid:wood_tar>*200);
mods.immersiveengineering.BottlingMachine.addRecipe(<immersiveengineering:treated_wood>, <ore:plankWood>, <liquid:creosote>*200);

mods.ic2.BlockCutter.addRecipe(<immersiveengineering:material>*4, <immersiveengineering:treated_wood:*>);

mods.forestry.Carpenter.removeRecipe(<railcraft:tie>);
recipes.remove(<railcraft:tie>);
mods.forestry.Carpenter.addRecipe(<railcraft:tie>*3, [[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]], 60, <liquid:wood_tar> * 600);
mods.forestry.Carpenter.addRecipe(<railcraft:tie>*3, [[<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]], 60, <liquid:creosote> * 600);

//Paper
recipes.removeByRecipeName("primal:paper");
mods.pyrotech.SoakingPot.removeRecipes(<pyrotech:material:25>);
mods.pyrotech.SoakingPot.addRecipe("pulp", <pyrotech:material:25>, <liquid:water>*250, <minecraft:reeds>, 2 * 60 * 20);
mods.primal.Cauldron.addRecipe("pulp", 6, <liquid:brine_netjry>*50, [<pyrotech:rock:7>], [<betterwithmods:material:22>]);


//Pyrotech tweaks
recipes.replaceAllOccurences(<pyrotech:material:20>, <ore:slabWood>);
recipes.replaceAllOccurences(<pyrotech:material:23>, <ore:slabTreatedWood>);
recipes.replaceAllOccurences(<pyrotech:planks_tarred>, <ore:plankTreatedWood>);

mods.pyrotech.StoneSawmill.removeAllRecipes();
mods.pyrotech.BrickSawmill.removeAllRecipes();


//Industrial cutter (IC+AR)
