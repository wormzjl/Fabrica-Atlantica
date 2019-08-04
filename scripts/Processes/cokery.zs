//Furnance
furnace.remove(<minecraft:coal:1>);

//Charcoal
recipes.remove(<primal:logs_split_oak>);
recipes.remove(<primal:logs_split_spruce>);
recipes.remove(<primal:logs_split_birch>);
recipes.remove(<primal:logs_split_jungle>);
recipes.remove(<primal:logs_split_acacia>);
recipes.remove(<primal:logs_split_bigoak>);
recipes.remove(<primal:logs_split_yew>);
recipes.remove(<primal:logs_split_ironwood>);

recipes.remove(<pyrotech:log_pile>);
recipes.addShapeless(<pyrotech:log_pile>, [<ore:logSplit>, <ore:logSplit>, <ore:logSplit>, <ore:logSplit>, <ore:logSplit>, <ore:logSplit>, <ore:logSplit>, <ore:logSplit>, <ore:logSplit>]);

mods.pyrotech.SoakingPot.removeRecipes(<minecraft:coal_block>);
mods.pyrotech.PitKiln.removeRecipes(<pyrotech:material:15>);

mods.pyrotech.Burn.removeRecipes(<minecraft:coal:1>);
mods.pyrotech.Burn.createBuilder("charcoal_1", <minecraft:coal:1>, "pyrotech:log_pile:*")
    .setBurnStages(2)
    .setTotalBurnTimeTicks(4 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 50)
    .setFailureChance(0.1)
    .addFailureItem(<pyrotech:material:0>)
    .addFailureItem(<pyrotech:material:15> * 2)
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();

mods.pyrotech.Burn.createBuilder("charcoal_2", <minecraft:coal:1>, "pyrotech:wood_tar_block:*")
    .setBurnStages(2)
    .setTotalBurnTimeTicks(4 * 60 * 20)
    .setFailureChance(0.3)
    .addFailureItem(<pyrotech:material:0>)
    .addFailureItem(<pyrotech:material:15> * 2)
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(false)
    .register();

//Coke
mods.pyrotech.Burn.removeRecipes(<pyrotech:material:1>);
mods.pyrotech.Burn.createBuilder("coke", <immersiveengineering:material:6>, "minecraft:coal_block:*")
    .setBurnStages(10)
    .setTotalBurnTimeTicks(10 * 60 * 20)
    .setFluidProduced(<liquid:coal_tar> * 50)
    .setFailureChance(0.15)
    .addFailureItem(<pyrotech:material:0>)
    .addFailureItem(<pyrotech:material:0> * 2)
    .addFailureItem(<pyrotech:material:0> * 4)
    .addFailureItem(<pyrotech:material:21> * 4)
    .addFailureItem(<pyrotech:material:21> * 6)
    .addFailureItem(<pyrotech:material:21> * 8)
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(true)
    .register();

//Industrial method
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:material:6>);
mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:coal:1>);

mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:material:6>, 100, <minecraft:coal>, 1600);
mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:stone_decoration:3>, 900, <minecraft:coal_block>, 14400);
mods.immersiveengineering.CokeOven.addRecipe(<minecraft:coal:1>, 50, <ore:logWood>, 3200);
