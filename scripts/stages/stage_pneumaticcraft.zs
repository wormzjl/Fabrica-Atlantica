import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [

];

var recipestaged as IItemStack[] = [

];

excluded = functions.MergeArray(excluded, scripts.recipes_base.pneumaticcraft.removed);

for item in loadedMods["pneumaticcraft"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("pneumaticcraft", item);
  }
}
