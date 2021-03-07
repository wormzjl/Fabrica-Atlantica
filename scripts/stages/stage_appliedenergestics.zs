import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [
  <appliedenergistics2:crank>,
  <appliedenergistics2:grindstone>
];


excluded = functions.MergeArray(excluded, scripts.recipes_base.appliedenergestics.removed);


for item in loadedMods["appliedenergistics2"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("ae2", item);
  }
}
