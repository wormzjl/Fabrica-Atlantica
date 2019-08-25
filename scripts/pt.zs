mods.pyrotech.BrickCrucible.removeRecipes(<liquid:lava>);

mods.pyrotech.DryingRack.addRecipe("brick_1", <primal:mud_brick_dry>, <primal:mud_brick_wet>, 480 * 20, true);
mods.pyrotech.DryingRack.addRecipe("brick_2", <primal:terra_brick_dry>, <primal:terra_brick_wet>, 480 * 20, true);
mods.pyrotech.DryingRack.addRecipe("brick_3", <primal:cinis_brick_dry>, <primal:cinis_brick_wet>, 480 * 20, true);
mods.pyrotech.DryingRack.addRecipe("brick_4", <primal:adobe_brick_dry>, <primal:adobe_brick_wet>, 480 * 20, true);
//mods.pyrotech.StoneOven.addRecipe("brick_4", <primal:adobe_brick_dry>, <primal:adobe_brick_wet>, true);

//
mods.jei.JEI.removeAndHide(<pyrotech:chopping_block>);

recipes.remove(<pyrotech:worktable>);
recipes.addShapeless(<pyrotech:worktable>, [<ore:logWood>, <ore:toolAxe>.transformDamage()]);
