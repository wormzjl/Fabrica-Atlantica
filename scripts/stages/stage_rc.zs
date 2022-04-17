import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [
  <railcraft:gear:*>,
  <railcraft:plate:*>,
  <railcraft:ingot:*>,
  <railcraft:nugget:*>,
  <railcraft:metal:*>,
  <railcraft:dust:*>,
  <railcraft:gear:*>,
  <minecraft:stone:2>,
  <minecraft:stone:4>,
  <minecraft:stone:6>,
  <minecraft:nether_brick>,
  <minecraft:red_nether_brick>
];

var recipestaged as IItemStack[] = [

];

var boiler_rc as IItemStack[] = [
  <railcraft:steam_turbine>,
  <railcraft:boiler_firebox_fluid>,
  <railcraft:boiler_firebox_solid>,
  <railcraft:boiler_tank_pressure_low>,
  <railcraft:turbine_blade>,
  <railcraft:turbine_disk>,
  <railcraft:turbine_rotor>
];

excluded = functions.MergeArray(excluded, scripts.recipes_base.railcraft.removed);
excluded = functions.MergeArray(excluded, boiler_rc);

for item in loadedMods["railcraft"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("railcraft", item);
  }
}

for item in boiler_rc {
  mods.ItemStages.addItemStage("boiler_rc", item);
}
