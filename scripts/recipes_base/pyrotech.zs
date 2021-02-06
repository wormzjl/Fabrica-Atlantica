#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <pyrotech:crude_hoe>,
  <pyrotech:crude_pickaxe>,
  <pyrotech:crude_shovel>,
  <pyrotech:redstone_axe>,
  <pyrotech:redstone_hoe>,
  <pyrotech:redstone_pickaxe>,
  <pyrotech:redstone_shovel>,
  <pyrotech:redstone_sword>,
  <pyrotech:quartz_axe>,
  <pyrotech:quartz_hoe>,
  <pyrotech:quartz_pickaxe>,
  <pyrotech:quartz_shovel>,
  <pyrotech:quartz_sword>,
  <pyrotech:bone_axe>,
  <pyrotech:bone_hoe>,
  <pyrotech:bone_pickaxe>,
  <pyrotech:bone_shovel>,
  <pyrotech:bone_sword>,
  <pyrotech:flint_axe>,
  <pyrotech:flint_hoe>,
  <pyrotech:flint_pickaxe>,
  <pyrotech:flint_shovel>,
  <pyrotech:flint_sword>,
  <pyrotech:obsidian_axe>,
  <pyrotech:obsidian_hoe>,
  <pyrotech:obsidian_pickaxe>,
  <pyrotech:obsidian_shovel>,
  <pyrotech:obsidian_sword>,
  <pyrotech:unfired_clay_shears>,
  <pyrotech:clay_shears>,
  <pyrotech:stone_shears>,
  <pyrotech:bone_shears>,
  <pyrotech:flint_shears>,
  <pyrotech:gold_shears>,
  <pyrotech:diamond_shears>,
  <pyrotech:obsidian_shears>,
  <pyrotech:stone_hammer>,
  <pyrotech:bone_hammer>,
  <pyrotech:flint_hammer>,
  <pyrotech:iron_hammer>,
  <pyrotech:gold_hammer>,
  <pyrotech:diamond_hammer>,
  <pyrotech:obsidian_hammer>,
  <pyrotech:chopping_block>,
  <pyrotech:drying_rack:1>
];

for item in removed {
  functions.removeItem(item);
}

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
recipes.replaceAllOccurences(<ore:fiberPlant>, <pyrotech:material:12>);
recipes.replaceAllOccurences(<ore:cordageGeneral>, <pyrotech:material:14>);

mods.pyrotech.StoneKiln.removeRecipes(<minecraft:cobblestone>);
mods.pyrotech.BrickKiln.removeRecipes(<minecraft:cobblestone>);

recipes.remove(<pyrotech:worktable>);
recipes.addShapeless(<pyrotech:worktable>, [<ore:logWood>, <ore:toolAxe>.transformDamage()]);

recipes.remove(<pyrotech:crude_axe>);
recipes.addShaped(<pyrotech:crude_axe>, [[<primal:flint_knapp>, <primal:flint_knapp>], [<ore:stickWood>, <pyrotech:material:12>]]);
