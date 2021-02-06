import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [
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
  <forestry:bee_combs:*>,
  <forestry:butterfly_chest>,
  <forestry:tree_chest>,
  <forestry:bog_earth:*>,
  <forestry:humus:*>,
  <forestry:peat>,
  <forestry:ash>,
  <forestry:honeyed_slice>,
  <forestry:honey_drop>,
  <forestry:propolis>,
  <forestry:pollen>,
  <forestry:logs.0:*>,
  <forestry:logs.1:*>,
  <forestry:logs.2:*>,
  <forestry:logs.3:*>,
  <forestry:logs.4:*>,
  <forestry:logs.5:*>,
  <forestry:logs.6:*>,
  <forestry:logs.7:*>,
  <forestry:planks.0:*>,
  <forestry:planks.1:*>,
  <forestry:slabs.0:*>,
  <forestry:slabs.1:*>,
  <forestry:slabs.2:*>,
  <forestry:slabs.3:*>,
  <forestry:fences.0:*>,
  <forestry:fences.1:*>,
  <forestry:leaves.decorative.0:*>,
  <forestry:leaves.decorative.1:*>,
  <forestry:leaves.decorative.2:*>,
  <forestry:grafter>,
  <forestry:broken_bronze_pickaxe>,
  <forestry:broken_bronze_shovel>,
  <forestry:ingot_copper>,
  <forestry:ingot_tin>,
  <forestry:ingot_bronze>,
  <forestry:resources:*>,
  <forestry:resource_storage:*>
];

var recipestaged as IItemStack[] = [
  <forestry:engine_peat>,
  <forestry:engine_biogas>,
  <forestry:engine_clockwork>,
  <forestry:engine_electrical>,
  <forestry:bottler>,
  <forestry:carpenter>,
  <forestry:centrifuge>,
  <forestry:fermenter>,
  <forestry:moistener>,
  <forestry:squeezer>,
  <forestry:still>,
  <forestry:rainmaker>,
  <forestry:fabricator>,
  <forestry:habitat_former>,
  <forestry:genetic_filter>,
  <forestry:ffarm:*>
];

excluded = functions.MergeArray(excluded, scripts.recipes_base.forestry.jeihidden);
excluded = functions.MergeArray(excluded, scripts.recipes_base.forestry.removed);

for item in loadedMods["forestry"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("forestry", item);
  }
}

for item in recipestaged {
//mods.recipestages.Recipes.setRecipeStage("forestry", item);
}
