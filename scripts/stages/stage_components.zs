import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.functions;

//Unidict target only
static component_t0 as IItemStack[] = [
  <railcraft:gear:*>,
  <railcraft:plate>
] ;

for item in component_t0 {
  mods.ItemStages.addItemStage("component_t0", item);
}
