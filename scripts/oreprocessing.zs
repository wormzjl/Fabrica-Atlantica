//Charcoal pit stuff
mods.charcoalpit.addAlloyRecipe(<minecraft:iron_nugget>, 4, true, false, [<materialpart:iron:scrapmetal>]);
mods.charcoalpit.addAlloyRecipe(<minecraft:gold_nugget>, 4, false, false, [<materialpart:gold:scrapmetal>]);
mods.charcoalpit.addAlloyRecipe(<railcraft:nugget:1>, 4, false, false, [<materialpart:copper:scrapmetal>]);
mods.charcoalpit.addAlloyRecipe(<railcraft:nugget:2>, 4, false, false, [<materialpart:tin:scrapmetal>]);
mods.charcoalpit.addAlloyRecipe(<railcraft:nugget:3>, 4, false, false, [<materialpart:lead:scrapmetal>]);
mods.charcoalpit.addAlloyRecipe(<railcraft:nugget:4>, 4, false, false, [<materialpart:silver:scrapmetal>]);

mods.charcoalpit.addAlloyRecipe(<railcraft:nugget:5>, 16, false, false, [<materialpart:copper:scrapmetal>,<materialpart:copper:scrapmetal>,<materialpart:copper:scrapmetal>,<materialpart:tin:scrapmetal>]);

//Scrap advanced processing
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:iron_nugget>*5, <materialpart:iron:scrapmetal>, 500);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:gold_nugget>*5, <materialpart:gold:scrapmetal>, 400);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:1>*5, <materialpart:copper:scrapmetal>, 400);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:2>*5, <materialpart:tin:scrapmetal>, 400);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:3>*5, <materialpart:lead:scrapmetal>, 400);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:4>*5, <materialpart:silver:scrapmetal>, 400);

//MgC processing
mods.magneticraft.Grinder.removeRecipe(<minecraft:iron_ore>);
mods.magneticraft.Grinder.removeRecipe(<minecraft:gold_ore>);
mods.magneticraft.Grinder.removeRecipe(<ic2:resource:1>);
mods.magneticraft.Grinder.removeRecipe(<ic2:resource:2>);
mods.magneticraft.Grinder.removeRecipe(<ic2:resource:3>);
mods.magneticraft.Grinder.removeRecipe(<magneticraft:ores:2>);
mods.magneticraft.Grinder.removeRecipe(<magneticraft:ores:3>);
mods.magneticraft.Grinder.removeRecipe(<magneticraft:ores:4>);
mods.magneticraft.Grinder.removeRecipe(<libvulpes:ore0:9>);
//mods.magneticraft.Grinder.removeRecipe(<railcraft:ore_metal:3>);
//mods.magneticraft.Grinder.removeRecipe(<railcraft:ore_metal:4>);
//mods.magneticraft.Grinder.removeRecipe(<railcraft:ore_metal:5>);
mods.magneticraft.Grinder.removeRecipe(<rftools:dimensional_shard_ore>);

mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:1>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:2>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:3>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:4>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:5>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:7>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:8>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:9>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:10>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:11>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:12>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:13>);
mods.magneticraft.Sieve.removeRecipe(<magneticraft:rocky_chunks:14>);
mods.magneticraft.Sieve.removeRecipe(<minecraft:sand>);

//currently using static block, need to pass to reference later
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:2>, <materialpart:iron_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:6>, <materialpart:iron_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:8>, <materialpart:iron_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:11>, <materialpart:gold_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:13>, <materialpart:gold_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:4>, <materialpart:gold_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:3>, <materialpart:copper_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:14>, <materialpart:copper_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:9>, <materialpart:copper_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:7>, <materialpart:tin_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:1>, <materialpart:tin_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:15>, <materialpart:tin_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:10>, <materialpart:lead_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:2>, <materialpart:lead_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:6>, <materialpart:lead_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1>, <materialpart:aluminium_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:13>, <materialpart:aluminium_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:9>, <materialpart:aluminium_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:4>, <materialpart:titanium_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:5>, <materialpart:titanium_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:11>, <materialpart:titanium_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:1>, <materialpart:tungsten_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:10>, <materialpart:tungsten_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:3>, <materialpart:tungsten_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:12>, <materialpart:uranium_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0:5>, <materialpart:uranium_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:7>, <materialpart:uranium_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_0>, <materialpart:thorium_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:8>, <materialpart:thorium_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<contenttweaker:sub_block_holder_1:12>, <materialpart:thorium_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);


mods.magneticraft.Sieve.addRecipe(<materialpart:iron_ore:broken_low>, <materialpart:iron_ore:ore_high>, 0.7, <materialpart:iron_ore:ore_low>, 0.5, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:iron_ore:broken_med>, <materialpart:iron_ore:ore_high>*2, 0.6, <materialpart:iron_ore:ore_low>, 0.7, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:iron_ore:broken_high>, <materialpart:iron_ore:ore_high>*3, 0.8, <materialpart:iron_ore:ore_low>*2, 0.6, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);

mods.magneticraft.Sieve.addRecipe(<materialpart:gold_ore:broken_low>, <materialpart:gold_ore:ore_high>, 0.7, <materialpart:gold_ore:ore_low>, 0.5, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:gold_ore:broken_med>, <materialpart:gold_ore:ore_high>*2, 0.6, <materialpart:gold_ore:ore_low>, 0.7, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:gold_ore:broken_high>, <materialpart:gold_ore:ore_high>*3, 0.8, <materialpart:gold_ore:ore_low>*2, 0.6, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);

mods.magneticraft.Sieve.addRecipe(<materialpart:copper_ore:broken_low>, <materialpart:copper_ore:ore_high>, 0.7, <materialpart:copper_ore:ore_low>, 0.5, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:copper_ore:broken_med>, <materialpart:copper_ore:ore_high>*2, 0.6, <materialpart:copper_ore:ore_low>, 0.7, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:copper_ore:broken_high>, <materialpart:copper_ore:ore_high>*3, 0.8, <materialpart:copper_ore:ore_low>*2, 0.6, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);

mods.magneticraft.Sieve.addRecipe(<materialpart:tin_ore:broken_low>, <materialpart:tin_ore:ore_high>, 0.7, <materialpart:tin_ore:ore_low>, 0.5, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:tin_ore:broken_med>, <materialpart:tin_ore:ore_high>*2, 0.6, <materialpart:tin_ore:ore_low>, 0.7, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:tin_ore:broken_high>, <materialpart:tin_ore:ore_high>*3, 0.8, <materialpart:tin_ore:ore_low>*2, 0.6, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);

mods.magneticraft.Sieve.addRecipe(<materialpart:lead_ore:broken_low>, <materialpart:lead_ore:ore_high>, 0.7, <materialpart:lead_ore:ore_low>, 0.5, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:lead_ore:broken_med>, <materialpart:lead_ore:ore_high>*2, 0.6, <materialpart:lead_ore:ore_low>, 0.7, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:lead_ore:broken_high>, <materialpart:lead_ore:ore_high>*3, 0.8, <materialpart:lead_ore:ore_low>*2, 0.6, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);

mods.magneticraft.Sieve.addRecipe(<materialpart:aluminium_ore:broken_low>, <materialpart:aluminium_ore:ore_high>, 0.7, <materialpart:aluminium_ore:ore_low>, 0.5, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:aluminium_ore:broken_med>, <materialpart:aluminium_ore:ore_high>*2, 0.6, <materialpart:aluminium_ore:ore_low>, 0.7, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:aluminium_ore:broken_high>, <materialpart:aluminium_ore:ore_high>*3, 0.8, <materialpart:aluminium_ore:ore_low>*2, 0.6, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);

mods.magneticraft.Sieve.addRecipe(<materialpart:titanium_ore:broken_low>, <materialpart:titanium_ore:ore_high>, 0.7, <materialpart:titanium_ore:ore_low>, 0.5, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:titanium_ore:broken_med>, <materialpart:titanium_ore:ore_high>*2, 0.6, <materialpart:titanium_ore:ore_low>, 0.7, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:titanium_ore:broken_high>, <materialpart:titanium_ore:ore_high>*3, 0.8, <materialpart:titanium_ore:ore_low>*2, 0.6, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);

mods.magneticraft.Sieve.addRecipe(<materialpart:tungsten_ore:broken_low>, <materialpart:tungsten_ore:ore_high>, 0.7, <materialpart:tungsten_ore:ore_low>, 0.5, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:tungsten_ore:broken_med>, <materialpart:tungsten_ore:ore_high>*2, 0.6, <materialpart:tungsten_ore:ore_low>, 0.7, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:tungsten_ore:broken_high>, <materialpart:tungsten_ore:ore_high>*3, 0.8, <materialpart:tungsten_ore:ore_low>*2, 0.6, <rockhounding_chemistry:chemical_items:4>, 1.0, 100, false);

mods.magneticraft.Sieve.addRecipe(<materialpart:uranium_ore:broken_low>, <materialpart:uranium_ore:ore_high>, 0.7, <materialpart:uranium_ore:ore_low>, 0.5, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:uranium_ore:broken_med>, <materialpart:uranium_ore:ore_high>*2, 0.6, <materialpart:uranium_ore:ore_low>, 0.7, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:uranium_ore:broken_high>, <materialpart:uranium_ore:ore_high>*3, 0.8, <materialpart:uranium_ore:ore_low>*2, 0.6, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);

mods.magneticraft.Sieve.addRecipe(<materialpart:thorium_ore:broken_low>, <materialpart:thorium_ore:ore_high>, 0.7, <materialpart:thorium_ore:ore_low>, 0.5, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:thorium_ore:broken_med>, <materialpart:thorium_ore:ore_high>*2, 0.6, <materialpart:thorium_ore:ore_low>, 0.7, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);
mods.magneticraft.Sieve.addRecipe(<materialpart:thorium_ore:broken_high>, <materialpart:thorium_ore:ore_high>*3, 0.8, <materialpart:thorium_ore:ore_low>*2, 0.6, <rockhounding_chemistry:chemical_items:2>, 1.0, 100, false);

//2nd step, IE Crushing
mods.immersiveengineering.Crusher.addRecipe(<materialpart:iron_ore:ore_small_high>*4, <materialpart:iron_ore:ore_high>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:gold_ore:ore_small_high>*4, <materialpart:gold_ore:ore_high>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:copper_ore:ore_small_high>*4, <materialpart:copper_ore:ore_high>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:tin_ore:ore_small_high>*4, <materialpart:tin_ore:ore_high>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:lead_ore:ore_small_high>*4, <materialpart:lead_ore:ore_high>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:aluminium_ore:ore_small_high>*4, <materialpart:aluminium_ore:ore_high>, 3072);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:titanium_ore:ore_small_high>*4, <materialpart:titanium_ore:ore_high>, 4096);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:tungsten_ore:ore_small_high>*4, <materialpart:tungsten_ore:ore_high>, 8192);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:uranium_ore:ore_small_high>*4, <materialpart:uranium_ore:ore_high>, 4096);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:thorium_ore:ore_small_high>*4, <materialpart:thorium_ore:ore_high>, 3072);

mods.immersiveengineering.Crusher.addRecipe(<materialpart:iron_ore:ore_small_low>*4, <materialpart:iron_ore:ore_low>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:gold_ore:ore_small_low>*4, <materialpart:gold_ore:ore_low>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:copper_ore:ore_small_low>*4, <materialpart:copper_ore:ore_low>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:tin_ore:ore_small_low>*4, <materialpart:tin_ore:ore_low>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:lead_ore:ore_small_low>*4, <materialpart:lead_ore:ore_low>, 2048);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:aluminium_ore:ore_small_low>*4, <materialpart:aluminium_ore:ore_low>, 3072);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:titanium_ore:ore_small_low>*4, <materialpart:titanium_ore:ore_low>, 4096);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:tungsten_ore:ore_small_low>*4, <materialpart:tungsten_ore:ore_low>, 8192);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:uranium_ore:ore_small_low>*4, <materialpart:uranium_ore:ore_low>, 4096);
mods.immersiveengineering.Crusher.addRecipe(<materialpart:thorium_ore:ore_small_low>*4, <materialpart:thorium_ore:ore_low>, 3072);

//3rd step, maceration and combination -> IC2 config
recipes.addShapeless(<materialpart:iron_ore:ore_dust_high>,[<materialpart:iron_ore:ore_dust_small_high>,<materialpart:iron_ore:ore_dust_small_high>,<materialpart:iron_ore:ore_dust_small_high>,<materialpart:iron_ore:ore_dust_small_high>]);
recipes.addShapeless(<materialpart:copper_ore:ore_dust_high>,[<materialpart:copper_ore:ore_dust_small_high>,<materialpart:copper_ore:ore_dust_small_high>,<materialpart:copper_ore:ore_dust_small_high>,<materialpart:copper_ore:ore_dust_small_high>]);
recipes.addShapeless(<materialpart:gold_ore:ore_dust_high>,[<materialpart:gold_ore:ore_dust_small_high>,<materialpart:gold_ore:ore_dust_small_high>,<materialpart:gold_ore:ore_dust_small_high>,<materialpart:gold_ore:ore_dust_small_high>]);
recipes.addShapeless(<materialpart:tin_ore:ore_dust_high>,[<materialpart:tin_ore:ore_dust_small_high>,<materialpart:tin_ore:ore_dust_small_high>,<materialpart:tin_ore:ore_dust_small_high>,<materialpart:tin_ore:ore_dust_small_high>]);
recipes.addShapeless(<materialpart:lead_ore:ore_dust_high>,[<materialpart:lead_ore:ore_dust_small_high>,<materialpart:lead_ore:ore_dust_small_high>,<materialpart:lead_ore:ore_dust_small_high>,<materialpart:lead_ore:ore_dust_small_high>]);
recipes.addShapeless(<materialpart:aluminium_ore:ore_dust_high>,[<materialpart:aluminium_ore:ore_dust_small_high>,<materialpart:aluminium_ore:ore_dust_small_high>,<materialpart:aluminium_ore:ore_dust_small_high>,<materialpart:aluminium_ore:ore_dust_small_high>]);
recipes.addShapeless(<materialpart:titanium_ore:ore_dust_high>,[<materialpart:titanium_ore:ore_dust_small_high>,<materialpart:titanium_ore:ore_dust_small_high>,<materialpart:titanium_ore:ore_dust_small_high>,<materialpart:titanium_ore:ore_dust_small_high>]);
recipes.addShapeless(<materialpart:tungsten_ore:ore_dust_high>,[<materialpart:tungsten_ore:ore_dust_small_high>,<materialpart:tungsten_ore:ore_dust_small_high>,<materialpart:tungsten_ore:ore_dust_small_high>,<materialpart:tungsten_ore:ore_dust_small_high>]);
recipes.addShapeless(<materialpart:uranium_ore:ore_dust_high>,[<materialpart:uranium_ore:ore_dust_small_high>,<materialpart:uranium_ore:ore_dust_small_high>,<materialpart:uranium_ore:ore_dust_small_high>,<materialpart:uranium_ore:ore_dust_small_high>]);
recipes.addShapeless(<materialpart:thorium_ore:ore_dust_high>,[<materialpart:thorium_ore:ore_dust_small_high>,<materialpart:thorium_ore:ore_dust_small_high>,<materialpart:thorium_ore:ore_dust_small_high>,<materialpart:thorium_ore:ore_dust_small_high>]);

recipes.addShapeless(<materialpart:iron_ore:ore_dust_low>,[<materialpart:iron_ore:ore_dust_small_low>,<materialpart:iron_ore:ore_dust_small_low>,<materialpart:iron_ore:ore_dust_small_low>,<materialpart:iron_ore:ore_dust_small_low>]);
recipes.addShapeless(<materialpart:copper_ore:ore_dust_low>,[<materialpart:copper_ore:ore_dust_small_low>,<materialpart:copper_ore:ore_dust_small_low>,<materialpart:copper_ore:ore_dust_small_low>,<materialpart:copper_ore:ore_dust_small_low>]);
recipes.addShapeless(<materialpart:gold_ore:ore_dust_low>,[<materialpart:gold_ore:ore_dust_small_low>,<materialpart:gold_ore:ore_dust_small_low>,<materialpart:gold_ore:ore_dust_small_low>,<materialpart:gold_ore:ore_dust_small_low>]);
recipes.addShapeless(<materialpart:tin_ore:ore_dust_low>,[<materialpart:tin_ore:ore_dust_small_low>,<materialpart:tin_ore:ore_dust_small_low>,<materialpart:tin_ore:ore_dust_small_low>,<materialpart:tin_ore:ore_dust_small_low>]);
recipes.addShapeless(<materialpart:lead_ore:ore_dust_low>,[<materialpart:lead_ore:ore_dust_small_low>,<materialpart:lead_ore:ore_dust_small_low>,<materialpart:lead_ore:ore_dust_small_low>,<materialpart:lead_ore:ore_dust_small_low>]);
recipes.addShapeless(<materialpart:aluminium_ore:ore_dust_low>,[<materialpart:aluminium_ore:ore_dust_small_low>,<materialpart:aluminium_ore:ore_dust_small_low>,<materialpart:aluminium_ore:ore_dust_small_low>,<materialpart:aluminium_ore:ore_dust_small_low>]);
recipes.addShapeless(<materialpart:titanium_ore:ore_dust_low>,[<materialpart:titanium_ore:ore_dust_small_low>,<materialpart:titanium_ore:ore_dust_small_low>,<materialpart:titanium_ore:ore_dust_small_low>,<materialpart:titanium_ore:ore_dust_small_low>]);
recipes.addShapeless(<materialpart:tungsten_ore:ore_dust_low>,[<materialpart:tungsten_ore:ore_dust_small_low>,<materialpart:tungsten_ore:ore_dust_small_low>,<materialpart:tungsten_ore:ore_dust_small_low>,<materialpart:tungsten_ore:ore_dust_small_low>]);
recipes.addShapeless(<materialpart:uranium_ore:ore_dust_low>,[<materialpart:uranium_ore:ore_dust_small_low>,<materialpart:uranium_ore:ore_dust_small_low>,<materialpart:uranium_ore:ore_dust_small_low>,<materialpart:uranium_ore:ore_dust_small_low>]);
recipes.addShapeless(<materialpart:thorium_ore:ore_dust_low>,[<materialpart:thorium_ore:ore_dust_small_low>,<materialpart:thorium_ore:ore_dust_small_low>,<materialpart:thorium_ore:ore_dust_small_low>,<materialpart:thorium_ore:ore_dust_small_low>]);


//4th step, washing -> IC2 config
//5th step, pellet press
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:iron_ore:ore_pellet>, <materialpart:iron_ore:ore_dust_pure>, <contenttweaker:mold_pellet>, 512);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:gold_ore:ore_pellet>, <materialpart:gold_ore:ore_dust_pure>, <contenttweaker:mold_pellet>, 512);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:copper_ore:ore_pellet>, <materialpart:copper_ore:ore_dust_pure>, <contenttweaker:mold_pellet>, 512);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:tin_ore:ore_pellet>, <materialpart:tin_ore:ore_dust_pure>, <contenttweaker:mold_pellet>, 512);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:lead_ore:ore_pellet>, <materialpart:lead_ore:ore_dust_pure>, <contenttweaker:mold_pellet>, 512);
//mods.immersiveengineering.MetalPress.addRecipe(<materialpart:aluminium_ore:ore_pellet>, <materialpart:aluminium_ore:ore_dust_pure>, <contenttweaker:mold_pellet>, 768);
//mods.immersiveengineering.MetalPress.addRecipe(<materialpart:titanium_ore:ore_pellet>, <materialpart:titanium_ore:ore_dust_pure>, <contenttweaker:mold_pellet>, 1024);
//mods.immersiveengineering.MetalPress.addRecipe(<materialpart:tungsten_ore:ore_pellet>, <materialpart:tungsten_ore:ore_dust_pure>, <contenttweaker:mold_pellet>, 2048);
//mods.immersiveengineering.MetalPress.addRecipe(<materialpart:uranium_ore:ore_pellet>, <materialpart:uranium_ore:ore_dust_pure>, <contenttweaker:mold_pellet>, 1024);
//mods.immersiveengineering.MetalPress.addRecipe(<materialpart:thorium_ore:ore_pellet>, <materialpart:thorium_ore:ore_dust_pure>, <contenttweaker:mold_pellet>, 768);

//Low grade ore flotation, step 1
mods.immersiveengineering.Mixer.addRecipe(<liquid:iron_slurry>*1000, <liquid:flotation_solution>*1000, [<materialpart:iron_ore:ore_dust_low>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:gold_slurry>*1000, <liquid:flotation_solution>*1000, [<materialpart:gold_ore:ore_dust_low>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:copper_slurry>*1000, <liquid:flotation_solution>*1000, [<materialpart:copper_ore:ore_dust_low>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:tin_slurry>*1000, <liquid:flotation_solution>*1000, [<materialpart:tin_ore:ore_dust_low>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:lead_slurry>*1000, <liquid:flotation_solution>*1000, [<materialpart:lead_ore:ore_dust_low>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:aluminium_slurry>*1000, <liquid:flotation_solution>*1000, [<materialpart:aluminium_ore:ore_dust_low>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:titanium_slurry>*1000, <liquid:flotation_solution>*1000, [<materialpart:titanium_ore:ore_dust_low>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:tungsten_slurry>*1000, <liquid:flotation_solution>*1000, [<materialpart:tungsten_ore:ore_dust_low>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:uranium_slurry>*1000, <liquid:flotation_solution>*1000, [<materialpart:uranium_ore:ore_dust_low>], 1024);
mods.immersiveengineering.Mixer.addRecipe(<liquid:thorium_slurry>*1000, <liquid:flotation_solution>*1000, [<materialpart:thorium_ore:ore_dust_low>], 1024);

//Low grade ore flotation, step 2 -> MM
//Thermal centrifuging -> IC2 config

//Specific minerals
//Invar
recipes.removeShapeless(<railcraft:ingot:7> * 3, [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <ore:ingotNickel>]);
mods.immersiveengineering.AlloySmelter.removeRecipe(<railcraft:ingot:7>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<railcraft:ingot:7>);
mods.immersiveengineering.ArcFurnace.addRecipe(<railcraft:ingot:7>*3, <ore:ingotNickel>, null, 200, 512, [<ore:ingotSteel>, <ore:ingotSteel>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<railcraft:ingot:7>*3, <ore:dustNickel>, null, 200, 512, [<ore:dustSteel>, <ore:dustSteel>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<railcraft:ingot:7>*3, <ore:ingotNickel>, null, 200, 512, [<ore:dustSteel>, <ore:dustSteel>]);
mods.immersiveengineering.ArcFurnace.addRecipe(<railcraft:ingot:7>*3, <ore:dustNickel>, null, 200, 512, [<ore:ingotSteel>, <ore:ingotSteel>]);

//Aluminium
mods.jei.JEI.removeAndHide(<rockhounding_chemistry:metal_items:3>);
mods.jei.JEI.removeAndHide(<magneticraft:ingots:7>);
mods.jei.JEI.removeAndHide(<libvulpes:productingot:9>);
mods.jei.JEI.removeAndHide(<primal:aluminum_ingot>);
mods.jei.JEI.removeAndHide(<nuclearcraft:ingot:12>);

furnace.remove(<rockhounding_chemistry:metal_items:3>);
furnace.remove(<magneticraft:ingots:7>);
furnace.remove(<immersiveengineering:metal:1>);
furnace.remove(<primal:aluminum_ingot>);
furnace.remove(<nuclearcraft:ingot:12>);
furnace.remove(<libvulpes:productingot:9>);

mods.immersiveengineering.AlloySmelter.addRecipe(<contenttweaker:alumina>*2, <nuclearcraft:compound:5>, <materialpart:aluminium_ore:ore_dust_pure>, 500);
mods.immersiveengineering.ArcFurnace.addRecipe(<contenttweaker:alumina>*2, <nuclearcraft:compound:5>, <materialpart:aluminium_ore:ore_dust_pure>, 100, 512);

mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:1>, <nuclearcraft:compound:5>, null, 300, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:21>*3, <contenttweaker:alumina>, null, 256, 1024);

mods.industrialwires.MarxGenerator.addRecipe(<contenttweaker:alumina_block>, 2.5, 9, <immersiveengineering:metal:10>);

//Titanium
furnace.remove(<techguns:itemshared:85>);
furnace.remove(<rockhounding_chemistry:metal_items:4>);

recipes.addShapeless(<contenttweaker:tio2>,[<contenttweaker:tinytio2>,<contenttweaker:tinytio2>,<contenttweaker:tinytio2>,<contenttweaker:tinytio2>,<contenttweaker:tinytio2>,<contenttweaker:tinytio2>,<contenttweaker:tinytio2>,<contenttweaker:tinytio2>,<contenttweaker:tinytio2>]);
