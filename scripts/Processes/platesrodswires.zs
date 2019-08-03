//Initial pyrotech
mods.pyrotech.GraniteAnvil.addRecipe("iron_plate", <railcraft:plate>, <ore:ingotIron>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("gold_plate", <railcraft:plate:7>, <ore:ingotGold>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("steel_plate", <railcraft:plate:1>, <ore:ingotSteel>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("copper_plate", <railcraft:plate:3>, <ore:ingotCopper>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("tin_plate", <railcraft:plate:2>, <ore:ingotTin>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("lead_plate", <railcraft:plate:4>, <ore:ingotLead>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("silver_plate", <railcraft:plate:5>, <ore:ingotSilver>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("bronze_plate", <railcraft:plate:6>, <ore:ingotBronze>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("nickel_plate", <railcraft:plate:8>, <ore:ingotNickel>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("invar_plate", <railcraft:plate:9>, <ore:ingotInvar>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("zinc_plate", <railcraft:plate:10>, <ore:ingotZinc>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("brass_plate", <railcraft:plate:11>, <ore:ingotBrass>, 6, "hammer");
mods.pyrotech.GraniteAnvil.addRecipe("sfs_plate", <betterwithmods:material:51>, <betterwithmods:material:14>, 6, "hammer");

mods.pyrotech.IroncladAnvil.addRecipe("bronze_casing", <ic2:casing>, <railcraft:plate:6>, 8, "hammer");
mods.pyrotech.IroncladAnvil.addRecipe("copper_casing", <ic2:casing:1>, <railcraft:plate:3>, 8, "hammer");
mods.pyrotech.IroncladAnvil.addRecipe("gold_casing", <ic2:casing:2>, <railcraft:plate:7>, 8, "hammer");
mods.pyrotech.IroncladAnvil.addRecipe("iron_casing", <ic2:casing:3>, <railcraft:plate>, 8, "hammer");
mods.pyrotech.IroncladAnvil.addRecipe("lead_casing", <ic2:casing:4>, <railcraft:plate:4>, 8, "hammer");
mods.pyrotech.IroncladAnvil.addRecipe("steel_casing", <ic2:casing:5>, <railcraft:plate:1>, 8, "hammer");
mods.pyrotech.IroncladAnvil.addRecipe("tin_casing", <ic2:casing:6>, <railcraft:plate:2>, 8, "hammer");

//IE - no Ti/W
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productplate>);
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productplate:1>);
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productplate:7>);

mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productrod>);
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productrod:1>);
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productrod:7>);

mods.immersiveengineering.MetalPress.removeRecipe(<materialpart:tungsten:plate>);
mods.immersiveengineering.MetalPress.removeRecipe(<materialpart:tungsten:rod>);

mods.immersiveengineering.MetalPress.removeRecipe(<rockhounding_chemistry:alloy_parts:34>);
mods.immersiveengineering.MetalPress.removeRecipe(<rockhounding_chemistry:alloy_parts:43>);

//MgC
mods.magneticraft.HydraulicPress.removeRecipe(<minecraft:iron_ingot>, 2);
mods.magneticraft.HydraulicPress.removeRecipe(<minecraft:gold_ingot>, 2);
mods.magneticraft.HydraulicPress.removeRecipe(<magneticraft:ingots:2>, 2);
mods.magneticraft.HydraulicPress.removeRecipe(<magneticraft:ingots:3>, 2);
mods.magneticraft.HydraulicPress.removeRecipe(<magneticraft:ingots:5>, 2);
mods.magneticraft.HydraulicPress.removeRecipe(<magneticraft:ingots:6>, 2);

mods.magneticraft.HydraulicPress.removeRecipe(<minecraft:iron_ingot>, 1);
mods.magneticraft.HydraulicPress.removeRecipe(<minecraft:gold_ingot>, 1);
mods.magneticraft.HydraulicPress.removeRecipe(<magneticraft:ingots:2>, 1);
mods.magneticraft.HydraulicPress.removeRecipe(<magneticraft:ingots:3>, 1);
mods.magneticraft.HydraulicPress.removeRecipe(<magneticraft:ingots:5>, 1);
mods.magneticraft.HydraulicPress.removeRecipe(<magneticraft:ingots:6>, 1);

mods.magneticraft.HydraulicPress.addRecipe(<minecraft:iron_ingot>, <railcraft:plate>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<minecraft:gold_ingot>, <railcraft:plate:7>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:ingot>, <railcraft:plate:1>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:ingot:1>, <railcraft:plate:3>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:ingot:2>, <materialpart:tin:plate>, 40, 1, true);

mods.magneticraft.HydraulicPress.addRecipe(<railcraft:ingot:5>, <railcraft:plate:6>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:ingot:3>, <railcraft:plate:4>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:ingot:4>, <railcraft:plate:5>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:ingot:6>, <railcraft:plate:8>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:ingot:7>, <railcraft:plate:9>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:ingot:8>, <railcraft:plate:10>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:ingot:9>, <railcraft:plate:11>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<immersiveengineering:metal:1>, <materialpart:aluminium:plate>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<rockhounding_chemistry:metal_items:4>, <materialpart:titanium:plate>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<magneticraft:ingots:5>, <materialpart:tungsten:plate>, 40, 1, true);
mods.magneticraft.HydraulicPress.addRecipe(<materialpart:ssteel:ingot>, <materialpart:ssteel:plate>, 40, 1, true);

mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate>*7, <materialpart:iron:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate:7>*7, <materialpart:gold:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate:1>*7, <materialpart:steel:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate:3>*7, <materialpart:copper:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<materialpart:tin:plate>*7, <materialpart:tin:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate:6>*7, <materialpart:bronze:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate:4>*7, <materialpart:lead:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate:5>*7, <materialpart:silver:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate:8>*7, <materialpart:nickel:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate:9>*7, <materialpart:invar:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate:10>*7, <materialpart:zinc:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<railcraft:plate:11>*7, <materialpart:brass:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<materialpart:aluminium:plate>*7, <materialpart:aluminium:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<materialpart:titanium:plate>*7, <materialpart:titanium:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<materialpart:tungsten:plate>*7, <materialpart:tungsten:denseplate>, 50, 2, true);
mods.magneticraft.HydraulicPress.addRecipe(<materialpart:ssteel:plate>*7, <materialpart:ssteel:denseplate>, 50, 2, true);

//Wires
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:20>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:21>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:material:22>);

recipes.replaceAllOccurences(<immersiveengineering:material:20>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}));

mods.immersiveengineering.MetalPress.addRecipe(<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})*3, <ore:ingotCopper>, <immersiveengineering:mold:4>, 1000);
mods.immersiveengineering.MetalPress.addRecipe(<ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte})*4, <ore:ingotElectrum>, <immersiveengineering:mold:4>, 1000);
mods.immersiveengineering.MetalPress.addRecipe(<ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte})*4, <ore:ingotAluminium>, <immersiveengineering:mold:4>, 1000);
mods.immersiveengineering.MetalPress.addRecipe(<ic2:cable:3>.withTag({type: 4 as byte, insulation: 0 as byte})*3, <ore:ingotTin>, <immersiveengineering:mold:4>, 1000);

recipes.remove(<immersiveengineering:wirecoil>);
recipes.addShaped(<immersiveengineering:wirecoil> * 2, [[<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), null], [<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ore:stickWood>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})], [null, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})]]);

recipes.remove(<immersiveengineering:wirecoil:1>);
recipes.addShaped(<immersiveengineering:wirecoil:1> * 2, [[<ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}), <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}), <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte})], [<ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}), <ore:stickWood>, <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte})], [<ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}), <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}), <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte})]]);

recipes.remove(<immersiveengineering:wirecoil:2>);
recipes.addShaped(<immersiveengineering:wirecoil:2> * 2, [[<ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), <ore:wireSteel>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte})], [<ore:wireAluminum>, <ore:stickWood>, <ore:wireAluminum>], [<ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), <ore:wireSteel>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte})]]);

recipes.remove(<immersiveengineering:wirecoil:5>);
recipes.addShaped(<immersiveengineering:wirecoil:5> * 4, [[null, <ore:wireSteel>, null], [<ore:dustRedstone>, <ore:stickWood>, <ore:dustRedstone>], [null, <ore:wireSteel>, null]]);
recipes.addShaped(<immersiveengineering:wirecoil:5> * 4, [[null, <ore:dustRedstone>, null], [<ore:wireSteel>, <ore:stickWood>, <ore:wireSteel>], [null, <ore:dustRedstone>, null]]);

recipes.remove(<immersiveengineering:wirecoil:6>);
recipes.addShaped(<immersiveengineering:wirecoil:6> * 4, [[<ic2:crafting>, <immersiveengineering:wirecoil>, <ic2:crafting>], [<immersiveengineering:wirecoil>, <ic2:crafting>, <immersiveengineering:wirecoil>], [<ic2:crafting>, <immersiveengineering:wirecoil>, <ic2:crafting>]]);

recipes.remove(<immersiveengineering:wirecoil:7>);
recipes.addShaped(<immersiveengineering:wirecoil:7> * 4, [[<ic2:crafting>, <immersiveengineering:wirecoil:1>, <ic2:crafting>], [<immersiveengineering:wirecoil:1>, <ic2:crafting>, <immersiveengineering:wirecoil:1>], [<ic2:crafting>, <immersiveengineering:wirecoil:1>, <ic2:crafting>]]);
