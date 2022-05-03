#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <rftools:powercell>,
  <rftools:powercell_advanced>,
  <rftools:powercell_simple>,
  <rftools:endergenic>,
  <rftools:pearl_injector>,
  <rftools:spawner>,
  <rftools:matter_beamer>,
  <rftools:saturation_module>,
  <rftools:saturationplus_module>,
  <rftools:shape_card:2>,
  <rftools:shape_card:3>,
  <rftools:shape_card:4>,
  <rftools:shape_card:6>,
  <rftools:shape_card:7>,
  <rftools:storage_module_tablet>,
  <rftools:remote_storage>,
  <rftools:storage_scanner>,
  <rftools:storage_module:6>,
  <rftools:powercell_card>,
  <rftools:booster>,
  <rftools:ender_monitor>
];

for item in removed {
  functions.removeItem(item);
}


//recipe tweaks
recipes.replaceAllOccurences(<rftools:machine_frame>, <ic2:resource:12>);

recipes.remove(<rftools:storage_module>);
recipes.addShaped(<rftools:storage_module>, [[<minecraft:diamond>, <ore:plateSteel>, <minecraft:diamond>], [<ore:plateSteel>, <minecraft:chest>, <ore:plateSteel>], [<ore:plateSteel>, <minecraft:redstone_block>, <ore:plateSteel>]]);

recipes.remove(<rftools:storage_module:1>);
recipes.addShaped(<rftools:storage_module:1>, [[<ore:plateTitanium>, <contenttweaker:advplastic>, <ore:plateTitanium>], [<contenttweaker:advplastic>, <rftools:storage_module>, <contenttweaker:advplastic>], [<contenttweaker:advplastic>, <pneumaticcraft:printed_circuit_board>, <contenttweaker:advplastic>]]);

recipes.remove(<rftools:storage_module:2>);
recipes.addShaped(<rftools:storage_module:2>, [[<qmd:part:8>, <contenttweaker:tungsten_denseplate>, <qmd:part:8>], [<contenttweaker:tungsten_denseplate>, <minecraft:chest>, <contenttweaker:tungsten_denseplate>], [<contenttweaker:tungsten_denseplate>, <advancedrocketry:ic:3>, <contenttweaker:tungsten_denseplate>]]);
