import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [
  <ic2:misc_resource:4>,
  <ic2:crafting>,
  <ic2:leaves>,
  <ic2:rubber_wood>,
  <ic2:treetap>,
  <ic2:scaffold>,
  <ic2:boat:1>,
  <ic2:sapling>,
  <ic2:dust:*>,
  <ic2:ingot:*>,
  <ic2:plate:*>,

  <ic2:te:47>,
  <ic2:te:56>
];

var mvpower as IItemStack[] = [
  <ic2:te:69>,
  <ic2:te:73>,
  <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte}),
  <ic2:cable:2>.withTag({type: 2 as byte, insulation: 1 as byte}),
  <ic2:cable:2>.withTag({type: 2 as byte, insulation: 2 as byte})
];

excluded = functions.MergeArray(excluded, scripts.recipes_base.ic2.removed);
excluded = functions.MergeArray(excluded, mvpower);

for item in loadedMods["ic2"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("basictech", item);
  }
}

mods.ItemStages.addItemStage("macerator", <ic2:te:47>);
mods.ItemStages.addItemStage("orewasher", <ic2:te:56>);

for item in mvpower {
  mods.ItemStages.addItemStage("mvpower", item);
}
