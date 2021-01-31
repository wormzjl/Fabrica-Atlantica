import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [

];

var recipestaged as IItemStack[] = [

];


excluded = functions.MergeArray(excluded, scripts.recipes_base.general.removed);

for item in loadedMods["rs_ctr"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("rs_ctr", item);
  }
}
