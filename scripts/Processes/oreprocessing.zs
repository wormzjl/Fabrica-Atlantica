//early game scrap processing and forgecraft stuff
mods.forgecraft.NBTCrucible.removeAll();

mods.forgecraft.NBTCrucible.addRecipe(<ore:dustIron>, null, null, null, null, <ic2:dust:8>, <forgecraft:wroughtironchunk>, 1250, 1100, 800,"irondust");
mods.forgecraft.NBTCrucible.addRecipe(<ore:dustIron>, <ore:slackLime>, null, null, null, <minecraft:iron_ingot>, <forgecraft:ironcleaningotball>, 1550, 1200, 800,"ironpure");
mods.forgecraft.NBTCrucible.addRecipe(<ore:ingotSteel>, <ore:dustCarbon>, <ore:ingotSteel>, <ore:dustCarbon>, <ore:ingotSteel>, <railcraft:ingot>*3, <forgecraft:wootzingotball>, 2100, 1800, 1500,"wootz");
mods.forgecraft.NBTCrucible.addRecipe(<betterwithmods:material:14>, <ore:dustCarbon>, <betterwithmods:material:14>, <ore:dustCarbon>, <betterwithmods:material:14>, <betterwithmods:material:14>*3, <forgecraft:wootzingotball>, 2100, 1800, 1500,"wootzplus");

mods.forgecraft.NBTCrucible.addRecipe(<ore:ingotSteel>, null, null, null, null, <railcraft:ingot>, <forgecraft:steelingotball>, 2100, 800, 800,"steel");
mods.forgecraft.NBTCrucible.addRecipe(<ore:ingotBronze>, null, null, null, null, <railcraft:ingot:5>, <forgecraft:bronzeingotball>, 1100, 800, 600,"bronze");
mods.forgecraft.NBTCrucible.addRecipe(<ore:dustBronze>, null, null, null, null, <railcraft:ingot:5>, <forgecraft:bronzeingotball>, 1100, 800, 600,"bronzedust");
mods.forgecraft.NBTCrucible.addRecipe(<ore:ingotCopper>, null, null, null, null, <railcraft:ingot:1>, <primal:copper_ingot>, 900, 750, 550,"copper");

mods.forgecraft.NBTCrucible.addRecipe(<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotTin>, null, <primal:slag>, <forgecraft:bronzeingotball>*4, 1100, 3200, 800,"bronzeingot");
mods.forgecraft.NBTCrucible.addRecipe(<ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustTin>, null, <primal:slag>, <forgecraft:bronzeingotball>*4, 1100, 3200, 800,"bronzedust4x");
mods.forgecraft.NBTCrucible.addRecipe(<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetTin>, null, <primal:slag>, <forgecraft:bronzechunk>*4, 1100, 300, 200,"bronzenugget");
mods.forgecraft.NBTCrucible.addRecipe(<materialpart:copper:scrapmetal>, <materialpart:copper:scrapmetal>, <materialpart:copper:scrapmetal>, <materialpart:tin:scrapmetal>, null, <primal:slag>, <forgecraft:bronzechunk>*16, 1100, 3200, 800,"bronzescrap");

mods.forgecraft.NBTCrucible.addRecipe(<materialpart:iron:scrapmetal>, null, null, null, null, <materialpart:iron:scrapmetal>, <forgecraft:wroughtironchunk>*4, 1400, 1200, 800,"scrapiron");
mods.forgecraft.NBTCrucible.addRecipe(<materialpart:gold:scrapmetal>, null, null, null, null, <materialpart:gold:scrapmetal>, <minecraft:gold_nugget>*4, 1000, 800, 600,"scrapgold");
mods.forgecraft.NBTCrucible.addRecipe(<materialpart:copper:scrapmetal>, null, null, null, null, <materialpart:copper:scrapmetal>, <railcraft:nugget:1>*4, 900, 800, 600,"scrapcopper");
mods.forgecraft.NBTCrucible.addRecipe(<materialpart:tin:scrapmetal>, null, null, null, null, <materialpart:tin:scrapmetal>, <railcraft:nugget:2>*4, 300, 200, 80,"scraptin");
mods.forgecraft.NBTCrucible.addRecipe(<materialpart:lead:scrapmetal>, null, null, null, null, <materialpart:lead:scrapmetal>, <railcraft:nugget:3>*4, 400, 300, 160,"scraplead");
mods.forgecraft.NBTCrucible.addRecipe(<materialpart:silver:scrapmetal>, null, null, null, null, <materialpart:silver:scrapmetal>, <railcraft:nugget:4>*4, 1000, 800, 600,"scrapsilver");

mods.forgecraft.NBTCrucible.addRecipe(<forgecraft:brokenbronzetool>, null, null, null, null, <forgecraft:brokenbronzetool>, <forgecraft:bronzechunk>*2, 1100, 300, 200,"bronzerecycle");
mods.forgecraft.NBTCrucible.addRecipe(<forgecraft:brokenwroughtirontool>, null, null, null, null, <forgecraft:brokenwroughtirontool>, <forgecraft:wroughtironchunk>*2, 1250, 300, 200,"ironrecycle");
mods.forgecraft.NBTCrucible.addRecipe(<forgecraft:brokencleanirontool>, null, null, null, null, <forgecraft:brokencleanirontool>, <forgecraft:ironcleanchunk>*2, 1550, 300, 200,"ironpurerecycle");
mods.forgecraft.NBTCrucible.addRecipe(<forgecraft:brokensteeltool>, null, null, null, null, <forgecraft:brokensteeltool>, <forgecraft:steelchunk>*2, 2100, 400, 300,"steelrecycle");
mods.forgecraft.NBTCrucible.addRecipe(<forgecraft:brokenwootztool>, null, null, null, null, <forgecraft:brokenwootztool>, <forgecraft:wootzchunk>*2, 2100, 400, 300,"wootzrecycle");

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

mods.magneticraft.Grinder.addRecipe(<materialpart:iron_ore:poor_ore_minecraft_stone>, <materialpart:iron_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:iron_ore:ore_minecraft_stone>, <materialpart:iron_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:iron_ore:dense_ore_minecraft_stone>, <materialpart:iron_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<materialpart:gold_ore:poor_ore_minecraft_stone>, <materialpart:gold_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:gold_ore:ore_minecraft_stone>, <materialpart:gold_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:gold_ore:dense_ore_minecraft_stone>, <materialpart:gold_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<materialpart:copper_ore:poor_ore_minecraft_stone>, <materialpart:copper_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:copper_ore:ore_minecraft_stone>, <materialpart:copper_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:copper_ore:dense_ore_minecraft_stone>, <materialpart:copper_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<materialpart:tin_ore:poor_ore_minecraft_stone>, <materialpart:tin_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:tin_ore:ore_minecraft_stone>, <materialpart:tin_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:tin_ore:dense_ore_minecraft_stone>, <materialpart:tin_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<materialpart:lead_ore:poor_ore_minecraft_stone>, <materialpart:lead_ore:broken_low>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:lead_ore:ore_minecraft_stone>, <materialpart:lead_ore:broken_med>, <minecraft:cobblestone>, 1.0, 100, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:lead_ore:dense_ore_minecraft_stone>, <materialpart:lead_ore:broken_high>, <minecraft:cobblestone>, 1.0, 100, false);

mods.magneticraft.Grinder.addRecipe(<materialpart:aluminium_ore:poor_ore_minecraft_stone>, <materialpart:aluminium_ore:broken_low>, <minecraft:cobblestone>, 1.0, 120, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:aluminium_ore:ore_minecraft_stone>, <materialpart:aluminium_ore:broken_med>, <minecraft:cobblestone>, 1.0, 120, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:aluminium_ore:dense_ore_minecraft_stone>, <materialpart:aluminium_ore:broken_high>, <minecraft:cobblestone>, 1.0, 120, false);

mods.magneticraft.Grinder.addRecipe(<materialpart:titanium_ore:poor_ore_minecraft_stone>, <materialpart:titanium_ore:broken_low>, <minecraft:cobblestone>, 1.0, 140, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:titanium_ore:ore_minecraft_stone>, <materialpart:titanium_ore:broken_med>, <minecraft:cobblestone>, 1.0, 140, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:titanium_ore:dense_ore_minecraft_stone>, <materialpart:titanium_ore:broken_high>, <minecraft:cobblestone>, 1.0, 140, false);

mods.magneticraft.Grinder.addRecipe(<materialpart:tungsten_ore:poor_ore_minecraft_stone>, <materialpart:tungsten_ore:broken_low>, <minecraft:cobblestone>, 1.0, 180, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:tungsten_ore:ore_minecraft_stone>, <materialpart:tungsten_ore:broken_med>, <minecraft:cobblestone>, 1.0, 180, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:tungsten_ore:dense_ore_minecraft_stone>, <materialpart:tungsten_ore:broken_high>, <minecraft:cobblestone>, 1.0, 180, false);

mods.magneticraft.Grinder.addRecipe(<materialpart:uranium_ore:poor_ore_minecraft_stone>, <materialpart:uranium_ore:broken_low>, <minecraft:cobblestone>, 1.0, 140, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:uranium_ore:ore_minecraft_stone>, <materialpart:uranium_ore:broken_med>, <minecraft:cobblestone>, 1.0, 140, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:uranium_ore:dense_ore_minecraft_stone>, <materialpart:uranium_ore:broken_high>, <minecraft:cobblestone>, 1.0, 140, false);

mods.magneticraft.Grinder.addRecipe(<materialpart:thorium_ore:poor_ore_minecraft_stone>, <materialpart:thorium_ore:broken_low>, <minecraft:cobblestone>, 1.0, 120, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:thorium_ore:ore_minecraft_stone>, <materialpart:thorium_ore:broken_med>, <minecraft:cobblestone>, 1.0, 120, false);
mods.magneticraft.Grinder.addRecipe(<materialpart:thorium_ore:dense_ore_minecraft_stone>, <materialpart:thorium_ore:broken_high>, <minecraft:cobblestone>, 1.0, 120, false);



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
val ironf = mods.modularmachinery.RecipeBuilder.newBuilder("ironflotation", "flotationplant", 400, 0);
ironf.addEnergyPerTickInput(128).addFluidInput(<liquid:iron_slurry> * 1000).addFluidInput(<liquid:compressed_air> * 1000).addFluidOutput(<liquid:flotation_waste> * 1000).addItemOutput(<materialpart:iron_ore:ore_dust_washed_low>).addItemOutput(<materialpart:iron_ore:ore_tailing>).build();

val goldf = mods.modularmachinery.RecipeBuilder.newBuilder("goldflotation", "flotationplant", 400, 0);
goldf.addEnergyPerTickInput(128).addFluidInput(<liquid:gold_slurry> * 1000).addFluidInput(<liquid:compressed_air> * 1000).addFluidOutput(<liquid:flotation_waste> * 1000).addItemOutput(<materialpart:gold_ore:ore_dust_washed_low>).addItemOutput(<materialpart:gold_ore:ore_tailing>).build();

val copperf = mods.modularmachinery.RecipeBuilder.newBuilder("copperflotation", "flotationplant", 400, 0);
copperf.addEnergyPerTickInput(128).addFluidInput(<liquid:copper_slurry> * 1000).addFluidInput(<liquid:compressed_air> * 1000).addFluidOutput(<liquid:flotation_waste> * 1000).addItemOutput(<materialpart:copper_ore:ore_dust_washed_low>).addItemOutput(<materialpart:copper_ore:ore_tailing>).build();

val tinf = mods.modularmachinery.RecipeBuilder.newBuilder("tinflotation", "flotationplant", 400, 0);
tinf.addEnergyPerTickInput(128).addFluidInput(<liquid:tin_slurry> * 1000).addFluidInput(<liquid:compressed_air> * 1000).addFluidOutput(<liquid:flotation_waste> * 1000).addItemOutput(<materialpart:tin_ore:ore_dust_washed_low>).addItemOutput(<materialpart:tin_ore:ore_tailing>).build();

val leadf = mods.modularmachinery.RecipeBuilder.newBuilder("leadflotation", "flotationplant", 400, 0);
leadf.addEnergyPerTickInput(128).addFluidInput(<liquid:lead_slurry> * 1000).addFluidInput(<liquid:compressed_air> * 1000).addFluidOutput(<liquid:flotation_waste> * 1000).addItemOutput(<materialpart:lead_ore:ore_dust_washed_low>).addItemOutput(<materialpart:lead_ore:ore_tailing>).build();

val aluminiumf = mods.modularmachinery.RecipeBuilder.newBuilder("aluminiumflotation", "flotationplant", 500, 0);
aluminiumf.addEnergyPerTickInput(128).addFluidInput(<liquid:aluminium_slurry> * 1000).addFluidInput(<liquid:compressed_air> * 1000).addFluidOutput(<liquid:flotation_waste> * 1000).addItemOutput(<materialpart:aluminium_ore:ore_dust_washed_low>).addItemOutput(<materialpart:aluminium_ore:ore_tailing>).build();

val titaniumf = mods.modularmachinery.RecipeBuilder.newBuilder("titaniumflotation", "flotationplant", 600, 0);
titaniumf.addEnergyPerTickInput(128).addFluidInput(<liquid:titanium_slurry> * 1000).addFluidInput(<liquid:compressed_air> * 1000).addFluidOutput(<liquid:flotation_waste> * 1000).addItemOutput(<materialpart:titanium_ore:ore_dust_washed_low>).addItemOutput(<materialpart:titanium_ore:ore_tailing>).build();

val tungstenf = mods.modularmachinery.RecipeBuilder.newBuilder("tungstenflotation", "flotationplant", 800, 0);
tungstenf.addEnergyPerTickInput(128).addFluidInput(<liquid:tungsten_slurry> * 1000).addFluidInput(<liquid:compressed_air> * 1000).addFluidOutput(<liquid:flotation_waste> * 1000).addItemOutput(<materialpart:tungsten_ore:ore_dust_washed_low>).addItemOutput(<materialpart:tungsten_ore:ore_tailing>).build();

val uraniumf = mods.modularmachinery.RecipeBuilder.newBuilder("uraniumflotation", "flotationplant", 600, 0);
uraniumf.addEnergyPerTickInput(128).addFluidInput(<liquid:uranium_slurry> * 1000).addFluidInput(<liquid:compressed_air> * 1000).addFluidOutput(<liquid:flotation_waste> * 1000).addItemOutput(<materialpart:uranium_ore:ore_dust_washed_low>).addItemOutput(<materialpart:uranium_ore:ore_tailing>).build();

val thoriumf = mods.modularmachinery.RecipeBuilder.newBuilder("thoriumflotation", "flotationplant", 500, 0);
thoriumf.addEnergyPerTickInput(128).addFluidInput(<liquid:thorium_slurry> * 1000).addFluidInput(<liquid:compressed_air> * 1000).addFluidOutput(<liquid:flotation_waste> * 1000).addItemOutput(<materialpart:thorium_ore:ore_dust_washed_low>).addItemOutput(<materialpart:thorium_ore:ore_tailing>).build();

//Thermal centrifuging -> IC2 config
//Smelting - high grade
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:iron_nugget>*9, <materialpart:iron_ore:ore_high>, 600, <immersiveengineering:material:7>*2);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:gold_nugget>*9, <materialpart:gold_ore:ore_high>, 600, <immersiveengineering:material:7>*2);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:1>*9, <materialpart:copper_ore:ore_high>, 600, <immersiveengineering:material:7>*2);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:2>*9, <materialpart:tin_ore:ore_high>, 600, <immersiveengineering:material:7>*2);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:3>*9, <materialpart:lead_ore:ore_high>, 600, <immersiveengineering:material:7>*2);

mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:iron_nugget>*3, <materialpart:iron_ore:ore_small_high>, 125);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:gold_nugget>*3, <materialpart:gold_ore:ore_small_high>, 125);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:1>*3, <materialpart:copper_ore:ore_small_high>, 125);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:2>*3, <materialpart:tin_ore:ore_small_high>, 125);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:3>*3, <materialpart:lead_ore:ore_small_high>, 125);

mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:iron_nugget>*3, <materialpart:iron_ore:ore_dust_small_high>, 100);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:gold_nugget>*3, <materialpart:gold_ore:ore_dust_small_high>, 100);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:1>*3, <materialpart:copper_ore:ore_dust_small_high>, 100);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:2>*3, <materialpart:tin_ore:ore_dust_small_high>, 100);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:3>*3, <materialpart:lead_ore:ore_dust_small_high>, 100);

mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:iron_nugget>*12, <materialpart:iron_ore:ore_dust_high>, 400, <immersiveengineering:material:7>*2);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:gold_nugget>*12, <materialpart:gold_ore:ore_dust_high>, 400, <immersiveengineering:material:7>*2);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:1>*12, <materialpart:copper_ore:ore_dust_high>, 400, <immersiveengineering:material:7>*2);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:2>*12, <materialpart:tin_ore:ore_dust_high>, 400, <immersiveengineering:material:7>*2);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:3>*12, <materialpart:lead_ore:ore_dust_high>, 400, <immersiveengineering:material:7>*2);

mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:iron_nugget>*8, <materialpart:iron_ore:ore_dust_pure>, 180, <immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:gold_nugget>*8, <materialpart:gold_ore:ore_dust_pure>, 180, <immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:1>*8, <materialpart:copper_ore:ore_dust_pure>, 180, <immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:2>*8, <materialpart:tin_ore:ore_dust_pure>, 180, <immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:3>*8, <materialpart:lead_ore:ore_dust_pure>, 180, <immersiveengineering:material:7>);

mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:iron_ingot>, <materialpart:iron_ore:ore_pellet>, 160, <immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:gold_ingot>, <materialpart:gold_ore:ore_pellet>, 160, <immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:ingot:1>, <materialpart:copper_ore:ore_pellet>, 160, <immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:ingot:2>, <materialpart:tin_ore:ore_pellet>, 160, <immersiveengineering:material:7>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:ingot:3>, <materialpart:lead_ore:ore_pellet>, 160, <immersiveengineering:material:7>);

mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:iron_ingot>, <materialpart:iron_ore:ore_pellet>, <immersiveengineering:material:7>, 100, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<minecraft:gold_ingot>, <materialpart:gold_ore:ore_pellet>, <immersiveengineering:material:7>, 100, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<railcraft:ingot:1>, <materialpart:copper_ore:ore_pellet>, <immersiveengineering:material:7>, 100, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<railcraft:ingot:2>, <materialpart:tin_ore:ore_pellet>, <immersiveengineering:material:7>, 100, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<railcraft:ingot:3>, <materialpart:lead_ore:ore_pellet>, <immersiveengineering:material:7>, 100, 512);

//Low grade
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:iron_nugget>*2, <materialpart:iron_ore:ore_low>, 600, <materialpart:iron_ore:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:gold_nugget>*2, <materialpart:gold_ore:ore_low>, 600, <materialpart:gold_ore:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:1>*2, <materialpart:copper_ore:ore_low>, 600, <materialpart:copper_ore:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:2>*2, <materialpart:tin_ore:ore_low>, 600, <materialpart:tin_ore:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:3>*2, <materialpart:lead_ore:ore_low>, 600, <materialpart:lead_ore:slag>);

mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:iron_nugget>*4, <materialpart:iron_ore:ore_dust_low>, 600, <materialpart:iron_ore:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<minecraft:gold_nugget>*4, <materialpart:gold_ore:ore_dust_low>, 600, <materialpart:gold_ore:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:1>*4, <materialpart:copper_ore:ore_dust_low>, 600, <materialpart:copper_ore:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:2>*4, <materialpart:tin_ore:ore_dust_low>, 600, <materialpart:tin_ore:slag>);
mods.immersiveengineering.BlastFurnace.addRecipe(<railcraft:nugget:3>*4, <materialpart:lead_ore:ore_dust_low>, 600, <materialpart:lead_ore:slag>);

//Tailings to gangues
mods.rockhounding_chemistry.MineralSizer.remove(<rockhounding_chemistry:uninspected_mineral>);

mods.rockhounding_chemistry.MineralSizer.add(<materialpart:iron_ore:ore_tailing>, [<rockhounding_chemistry:mineral_ores:4>, <rockhounding_chemistry:mineral_ores:12>], [7, 11]);
mods.rockhounding_chemistry.MineralSizer.add(<materialpart:gold_ore:ore_tailing>, [<rockhounding_chemistry:mineral_ores:5>, <rockhounding_chemistry:mineral_ores:6>], [13, 5]);
mods.rockhounding_chemistry.MineralSizer.add(<materialpart:copper_ore:ore_tailing>, [<rockhounding_chemistry:mineral_ores>, <rockhounding_chemistry:mineral_ores:2>], [10, 10]);
mods.rockhounding_chemistry.MineralSizer.add(<materialpart:tin_ore:ore_tailing>, [<rockhounding_chemistry:mineral_ores:1>, <rockhounding_chemistry:mineral_ores:3>], [15, 2]);
mods.rockhounding_chemistry.MineralSizer.add(<materialpart:lead_ore:ore_tailing>, [<rockhounding_chemistry:mineral_ores:1>, <rockhounding_chemistry:mineral_ores:11>], [15, 3]);
mods.rockhounding_chemistry.MineralSizer.add(<materialpart:aluminium_ore:ore_tailing>, [<rockhounding_chemistry:mineral_ores:2>, <rockhounding_chemistry:mineral_ores:8>], [10, 9]);
mods.rockhounding_chemistry.MineralSizer.add(<materialpart:titanium_ore:ore_tailing>, [<rockhounding_chemistry:mineral_ores:7>, <rockhounding_chemistry:mineral_ores:9>], [4, 1]);
mods.rockhounding_chemistry.MineralSizer.add(<materialpart:tungsten_ore:ore_tailing>, [<rockhounding_chemistry:mineral_ores:7>, <rockhounding_chemistry:mineral_ores:10>], [4, 5]);
mods.rockhounding_chemistry.MineralSizer.add(<materialpart:uranium_ore:ore_tailing>, [<rockhounding_chemistry:mineral_ores:1>, <rockhounding_chemistry:mineral_ores:9>], [15, 1]);
mods.rockhounding_chemistry.MineralSizer.add(<materialpart:thorium_ore:ore_tailing>, [<rockhounding_chemistry:mineral_ores:7>, <rockhounding_chemistry:mineral_ores:8>], [4, 9]);



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


//Uranium

