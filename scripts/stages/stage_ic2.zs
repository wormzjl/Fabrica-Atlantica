import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [
  <ic2:misc_resource:4>,
  <ic2:crafting>,
  <ic2:leaves>,
  <ic2:rubber_wood>,
  <ic2:treetap>,
  <ic2:scaffold>,
  <ic2:boat:1>
];

var recipestaged as IItemStack[] = [
];

for item in scripts.recipes_base.ic2.removed {
  excluded += item;
}

for item in loadedMods["ic2"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("basictech", item);
  }
}

for item in recipestaged {
	mods.recipestages.Recipes.setRecipeStage("basictech", item);
}

//functions.stageMod("basictech", "immersiveengineering");
//functions.stageMod("basictech", "immersivepetroleum");
