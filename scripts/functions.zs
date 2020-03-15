import crafttweaker.item.IItemStack;

function inArray(a as IItemStack, list as IItemStack[]) as bool{
  for item in list {
    if item.matches(a) return true;
  }
  return false;
}

function stageMod(stage as string, mod as string){
  mods.ItemStages.stageModItems(stage, mod);
  mods.recipestages.Recipes.setRecipeStageByMod(stage, mod);
}

function stageItem(stage as string, item as IItemStack){
  mods.ItemStages.addItemStage(stage, item);
  mods.recipestages.Recipes.setRecipeStage(stage, item);
}
