#priority 401

import crafttweaker.item.IItemStack;
import scripts.functions;

val excluded as IItemStack[] = [
  <forestry:bee_house>,
  <forestry:bee_chest>,
  <forestry:scoop:*>,
  <forestry:smoker:*>,
  <forestry:bee_combs_0:*>,
  <forestry:bee_combs_1:*>,
  <forestry:beehives:*>,
  <forestry:bee_queen_ge:*>,
  <forestry:bee_drone_ge:*>,
  <forestry:bee_princess_ge:*>,
  <forestry:bee_combs:*>
];

val recipestaged as IItemStack[] = [
  <forestry:sturdy_machine>,
  <forestry:engine_peat>,
  <forestry:engine_biogas>,
  <forestry:engine_clockwork>,
  <forestry:engine_electrical>
];

for item in loadedMods["forestry"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("forestry", item);
  }
  else {
    logger.logInfo("Not Staging" ~ item.displayName);
  }
}

for item in recipestaged {
	mods.recipestages.Recipes.setRecipeStage("forestry", item);
}

//Recipes
mods.jei.JEI.hide(<forestry:greenhouse:*>);
mods.jei.JEI.hide(<forestry:climatiser:*>);
mods.jei.JEI.hide(<forestry:greenhouse.window>);
mods.jei.JEI.hide(<forestry:greenhouse.window_up>);
mods.jei.JEI.hide(<forestry:thermionic_tubes:8>);


mods.forestry.ThermionicFabricator.removeCast(<forestry:thermionic_tubes:8>);


mods.forestry.Moistener.addRecipe(<minecraft:dirt>, <minecraft:sand>, 60);
