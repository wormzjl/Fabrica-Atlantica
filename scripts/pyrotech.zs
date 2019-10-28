mods.pyrotech.BrickCrucible.removeRecipes(<liquid:lava>);

//Drying rack migration (to be applied to oven - 0.25x crude time)
mods.pyrotech.DryingRack.addRecipe("brick_1", <primal:mud_brick_dry>, <primal:mud_brick_wet>, 16 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("brick_2", <primal:terra_brick_dry>, <primal:terra_brick_wet>, 16 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("brick_3", <primal:cinis_brick_dry>, <primal:cinis_brick_wet>, 16 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("brick_4", <primal:adobe_brick_dry>, <primal:adobe_brick_wet>, 16 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("thatching", <primal:thatching_dry>, <primal:thatching_wet>, 10 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("corn_stalk", <primal:corn_stalk_dry>, <primal:corn_stalk_wet>, 10 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("daucus_murn_fronds", <primal:daucus_murn_fronds_withered>, <primal:daucus_murn_fronds>, 18 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("valus_stalk", <primal:valus_stalk_withered>, <primal:valus_stalk_fresh>, 18 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("plant_fiber_pulp", <primal:plant_papyrus>, <primal:plant_fiber_pulp>, 16 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("nether_fiber_pulp", <primal:nether_papyrus>, <primal:nether_fiber_pulp>, 16 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("hide_salted", <primal:hide_dried>, <primal:hide_salted>, 18 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("hide_salted_pigman", <primal:pigman_hide_dried>, <primal:pigman_hide_salted>, 18 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("leather", <minecraft:leather>, <primal:hide_tanned>, 20 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("leather_pigman", <primal:pigman_leather>, <primal:pigman_hide_tanned>, 20 * 60 * 20, true);
mods.pyrotech.DryingRack.addRecipe("crucible", <forgecraft:itemnbtcrucible>, <forgecraft:softcrucible>, 20 * 60 * 20, true);

//Replace PT standard drying rack with primal one (rotting effect is great)
mods.pyrotech.DryingRack.removeAllRecipes();

//Recipes
mods.jei.JEI.removeAndHide(<pyrotech:chopping_block>);
mods.jei.JEI.removeAndHide(<pyrotech:drying_rack:1>);

recipes.remove(<pyrotech:worktable>);
recipes.addShapeless(<pyrotech:worktable>, [<ore:logWood>, <ore:toolAxe>.transformDamage()]);
