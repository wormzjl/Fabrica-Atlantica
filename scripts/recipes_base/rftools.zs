import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <rftools:powercell>,
  <rftools:powercell_advanced>,
  <rftools:endergenic>,
  <rftools:pearl_injector>,
  <rftools:spawner>,
  <rftools:matter_beamer>,
  <rftools:saturation_module>,
  <rftools:saturationplus_module>,
  <rftools:shape_card:3>,
  <rftools:shape_card:4>,
  <rftools:shape_card:6>,
  <rftools:shape_card:7>
];

for item in removed {
  functions.removeItem(item);
}

//Consider auto-crafter gate (OP)
recipes.remove(<rftools:space_chamber_card>);
recipes.remove(<rftools:space_chamber>);
recipes.remove(<rftools:space_chamber_controller>);
