mods.jei.JEI.removeAndHide(<immersivetech:stone_decoration>);
mods.jei.JEI.removeAndHide(<immersiveengineering:toolbox>);
mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device0>);
mods.jei.JEI.removeAndHide(<immersiveengineering:wooden_device0:5>);
mods.jei.JEI.removeAndHide(<immersiveengineering:metal_device1:3>);
mods.jei.JEI.removeAndHide(<immersiveengineering:metal_device1:13>);

mods.jei.JEI.removeAndHide(<immersiveengineering:metal:29>);

//Recipes
recipes.remove(<immersiveengineering:metal:30>);
recipes.remove(<immersiveengineering:metal:31>);
recipes.remove(<immersiveengineering:metal:32>);
recipes.remove(<immersiveengineering:metal:33>);
recipes.remove(<immersiveengineering:metal:34>);
recipes.remove(<immersiveengineering:metal:35>);
recipes.remove(<immersiveengineering:metal:36>);
recipes.remove(<immersiveengineering:metal:37>);
recipes.remove(<immersiveengineering:metal:38>);
recipes.remove(<immersiveengineering:metal:39>);
recipes.remove(<immersiveengineering:metal:40>);

recipes.removeShaped(<immersiveengineering:stone_decoration> * 3, [[<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>], [<ore:ingotBrick>, <ore:sandstone>, <ore:ingotBrick>], [<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>]]);
recipes.addShaped(<immersiveengineering:stone_decoration> * 6, [[<ore:plateSteel>, <ore:ingotBrick>, <ore:plateSteel>], [<ore:ingotBrick>, <ore:sandstone>, <ore:ingotBrick>], [<ore:plateSteel>, <ore:ingotBrick>, <ore:plateSteel>]]);

recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<ore:dustRedstone>, <immersiveengineering:metal_decoration0>, <ore:dustRedstone>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.removeShaped(<immersiveengineering:stone_decoration:1> * 3, [[<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>], [<ore:ingotBrick>, <minecraft:blaze_powder>, <ore:ingotBrick>], [<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [[<betterwithmods:material:14>, <ore:ingotBrick>, <betterwithmods:material:14>], [<ore:ingotBrick>, <minecraft:blaze_powder>, <ore:ingotBrick>], [<betterwithmods:material:14>, <ore:ingotBrick>, <betterwithmods:material:14>]]);

recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2, [[<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>], [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], [<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>]]);

recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 2, [[<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>], [<ore:dustRedstone>, <ore:plateCopper>, <ore:dustRedstone>], [<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>]]);

recipes.remove(<immersiveengineering:metal_device0:5>);
recipes.addShaped(<immersiveengineering:metal_device0:5>*2, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>], [<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>]]);

recipes.remove(<immersiveengineering:metal_device1:6>);
recipes.addShaped(<immersiveengineering:metal_device1:6> * 8, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [null, null, null], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<immersiveengineering:wooden_device0:3>);
recipes.addShaped(<immersiveengineering:wooden_device0:3>, [[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>], [<ore:plateSteel>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <ore:plateSteel>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);

recipes.remove(<immersiveengineering:wooden_device0:7>);
recipes.addShaped(<immersiveengineering:wooden_device0:7>, [[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>], [<ore:plateSteel>, <immersiveengineering:metal_device1:6>, <ore:plateSteel>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);

recipes.removeShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.removeShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);

recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4, [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);

//mods.immersiveengineering.Crusher.removeRecipe(<rockhounding_chemistry:alloy_items_tech:12>);
mods.immersiveengineering.Refinery.removeRecipe(<liquid:biodiesel>);

mods.immersiveengineering.Crusher.removeRecipe(<rockhounding_chemistry:chemical_dusts:55>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:sandstone>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:iron_ore>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:gold_ore>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:emerald_ore>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<forestry:resources>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<forestry:resources:1>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<forestry:resources:2>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:1>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:2>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:3>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:4>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:5>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<draconicevolution:draconium_ore>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<nuclearcraft:ore:3>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<nuclearcraft:ore:5>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<nuclearcraft:ore:6>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<nuclearcraft:ore:7>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<magneticraft:ores:2>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<magneticraft:ores:3>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0:8>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0:10>);


mods.immersiveengineering.ArcFurnace.removeRecipe(<magneticraft:ingots:5>);
mods.immersiveengineering.ArcFurnace.addRecipe(<magneticraft:ingots:5>, <ore:dustTungsten>, null, 512, 4096);

mods.immersiveengineering.ArcFurnace.removeRecipe(<draconicevolution:draconium_ingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<magneticraft:ingots:4>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:8>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:iron_ingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:gold_ingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:2>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:3>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:4>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:5>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:2>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:3>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:4>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:6>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:8>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:3>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:5>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:6>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:7>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<libvulpes:productingot:7>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<libvulpes:productingot:10>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<railcraft:ingot:8>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<magneticraft:ingots:5>);


//Industrial wires
mods.industrialwires.MarxGenerator.removeRecipe(<minecraft:iron_ore>);
mods.industrialwires.MarxGenerator.removeRecipe(<minecraft:gold_ore>);
mods.industrialwires.MarxGenerator.removeRecipe(<minecraft:coal_ore>);
mods.industrialwires.MarxGenerator.removeRecipe(<forestry:resources:1>);
mods.industrialwires.MarxGenerator.removeRecipe(<forestry:resources:2>);
mods.industrialwires.MarxGenerator.removeRecipe(<ic2:resource:2>);
mods.industrialwires.MarxGenerator.removeRecipe(<ic2:resource:4>);
mods.industrialwires.MarxGenerator.removeRecipe(<immersiveengineering:ore:1>);
mods.industrialwires.MarxGenerator.removeRecipe(<immersiveengineering:ore:3>);
mods.industrialwires.MarxGenerator.removeRecipe(<immersiveengineering:ore:4>);

