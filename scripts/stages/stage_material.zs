import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.functions;

static component_t1 as IItemStack[] = [
  <contenttweaker:data_t2>,
  <contenttweaker:nickel_tiny_dust>,
  <contenttweaker:nickel_denseplate>,
  <contenttweaker:nickel_rod>,
  <contenttweaker:invar_tiny_dust>,
  <contenttweaker:invar_denseplate>,
  <contenttweaker:invar_rod>,
  <railcraft:ingot:6>,
  <railcraft:ingot:7>,
  <railcraft:nugget:6>,
  <railcraft:nugget:7>,
  <railcraft:plate:8>,
  <railcraft:plate:9>
];

static component_t2 as IItemStack[] = [
  <contenttweaker:data_t3>,
  <contenttweaker:aluminum_tiny_dust>,
  <contenttweaker:alumina_tiny_dust>,
  <contenttweaker:aluminum_rod>,
  <contenttweaker:aluminum_plate>,
  <contenttweaker:aluminum_denseplate>,
  <contenttweaker:alumina_block>,
  <contenttweaker:alumina_dust>,
  <immersiveengineering:metal:1>,
  <immersiveengineering:metal:10>,
  <immersiveengineering:metal:21>
];


static component_t3 as IItemStack[] = [
  <contenttweaker:data_t4>,
  <contenttweaker:titanium_nugget>,
  <contenttweaker:titaniumsponge>,
  <contenttweaker:titanium_plate>,
  <contenttweaker:titanium_denseplate>,
  <contenttweaker:gearpart_titanium>,
  <contenttweaker:titanium_rod>,
  <contenttweaker:gear_titanium>,
  <rockhounding_chemistry:chemical_dusts:50>,
  <rockhounding_chemistry:metal_items:4>,
  <libvulpes:metal0:7>,
  <immersiveengineering:metal:5>,
  <immersiveengineering:metal:14>,
  <immersiveengineering:metal:25>
];

static component_t4 as IItemStack[] = [
  <contenttweaker:data_t5>,
  <contenttweaker:tungsten_plate>,
  <contenttweaker:tungsten_denseplate>,
  <contenttweaker:gearpart_tungsten>,
  <contenttweaker:gear_tungsten>,
  <contenttweaker:tungsten_rod>,
  <contenttweaker:tungsten_tiny_dust>,
  <immersiveintelligence:material_ingot:3>,
  <immersiveintelligence:material_dust:3>,
  <immersiveintelligence:material_nugget:3>
];

static component_t5 as IItemStack[] = [
];

for item in component_t1 {
  mods.ItemStages.addItemStage("component_t1", item);
}

for item in component_t2 {
  mods.ItemStages.addItemStage("component_t2", item);
}

for item in component_t3 {
  mods.ItemStages.addItemStage("component_t3", item);
}

for item in component_t4 {
  mods.ItemStages.addItemStage("component_t4", item);
}

for item in component_t5 {
  mods.ItemStages.addItemStage("component_t5", item);
}

mods.ItemStages.addItemStage("basictech", <contenttweaker:data_t1>);
