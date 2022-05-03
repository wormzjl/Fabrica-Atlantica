#priority 10001


import crafttweaker.item.IItemStack;

function inArray(a as IItemStack, list as IItemStack[]) as bool{
  for item in list {
    if item.matches(a) return true;
  }
  return false;
}

function MergeArray(list1 as IItemStack[], list2 as IItemStack[]) as IItemStack[]{
  var returnlist = list1;
  for item in list2 {
    returnlist += item;
  }
  return returnlist;
}

function stageMod(stage as string, mod as string){
  mods.ItemStages.stageModItems(stage, mod);
  mods.recipestages.Recipes.setRecipeStageByMod(stage, mod);
}

function stageItem(stage as string, item as IItemStack){
  mods.ItemStages.addItemStage(stage, item);
  mods.recipestages.Recipes.setRecipeStage(stage, item);
}

function removeItem(item as IItemStack){
  mods.ItemStages.addItemStage("disabled", item);
  recipes.remove(item);
}
