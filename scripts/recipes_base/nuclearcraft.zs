#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <nuclearcraft:compound:1>,
  <nuclearcraft:portable_ender_chest>,
  <nuclearcraft:solar_panel_basic>,
  <nuclearcraft:solar_panel_advanced>,
  <nuclearcraft:solar_panel_du>,
  <nuclearcraft:solar_panel_elite>,
  <nuclearcraft:rtg_uranium>,
  <nuclearcraft:rtg_plutonium>,
  <nuclearcraft:rtg_americium>,
  <nuclearcraft:rtg_californium>,
  <nuclearcraft:heat_exchanger_controller>,
  <nuclearcraft:heat_exchanger_casing>,
  <nuclearcraft:heat_exchanger_glass>,
  <nuclearcraft:heat_exchanger_vent>,
  <nuclearcraft:heat_exchanger_tube_copper>,
  <nuclearcraft:heat_exchanger_tube_hard_carbon>,
  <nuclearcraft:heat_exchanger_tube_thermoconducting>,
  <nuclearcraft:heat_exchanger_computer_port>,
  <nuclearcraft:condenser_controller>,
  <nuclearcraft:condenser_tube_copper>,
  <nuclearcraft:condenser_tube_hard_carbon>,
  <nuclearcraft:condenser_tube_thermoconducting>,
  <qmd:ore_leacher>,
  <qmd:sword_tungsten_carbide>,
  <qmd:pickaxe_tungsten_carbide>,
  <qmd:shovel_tungsten_carbide>,
  <qmd:axe_tungsten_carbide>,
  <qmd:hoe_tungsten_carbide>
];

for item in removed {
  functions.removeItem(item);
}

//mods.jei.JEI.removeAndHide(<nuclearcraft:supercooler_idle>);

furnace.remove(<nuclearcraft:ingot:3>);
furnace.remove(<nuclearcraft:ingot:5>);
furnace.remove(<nuclearcraft:ingot:6>);
furnace.remove(<nuclearcraft:ingot:7>);
furnace.remove(<nuclearcraft:ingot:8>);
furnace.remove(<nuclearcraft:ingot:11>);

//ores
mods.qmd.ore_leacher.removeAllRecipes();


mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:aluminum>*288);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:iron>*288);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:gold>*288);
//mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:lead>*360);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:copper>*288);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:silver>*288);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:tin>*288);
//mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:nickel>*360);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:boron>*288);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:lithium>*288);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:thorium>*288);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:uranium>*288);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:magnesium>*288);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:manganese>*288);


mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:quartz>*1332);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:lapis>*1332);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:diamond>*1332);
//mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:emerald>*1665);




//mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:ammonia>*2000, null);
//mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:sulfuric_acid>*1000, null);
//mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:oxygen_difluoride>*2000, null);
//mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:sulfur_trioxide>*1000, <liquid:fluorine>*1000);
//mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:sulfur_trioxide>*1000, null);
//mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:oxygen>*1000, <liquid:hydrofluoric_acid>*2000);
//mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:potassium_hydroxide_solution>*666, <liquid:hydrofluoric_acid>*1000);
//mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:sodium_hydroxide_solution>*666, <liquid:hydrofluoric_acid>*1000);
//mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:hydrofluoric_acid>*2000, <liquid:calcium_sulfate_solution>*666);
//mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(<liquid:hydrofluoric_acid>, <liquid:fluorine>);

//mods.nuclearcraft.Electrolyzer.removeRecipeWithInput(<liquid:water>*1000);
//mods.nuclearcraft.Electrolyzer.removeRecipeWithInput(<liquid:koh>*666);

mods.nuclearcraft.Enricher.removeRecipeWithOutput(<liquid:fluorite_water>*666);

mods.nuclearcraft.Crystallizer.addRecipe(<liquid:sodium_hydroxide>*1000, <nuclearcraft:compound:5>);

mods.nuclearcraft.Melter.addRecipe(<rockhounding_chemistry:chemical_dusts:41>, <liquid:potassium>*144);

//recipes.remove(<nuclearcraft:cell_block>);
//recipes.addShaped(<nuclearcraft:cell_block>,
// [[<ore:ingotZirconium>, <rockhounding_chemistry:didymium_glass>, <ore:ingotZirconium>],
//  [<rockhounding_chemistry:didymium_glass>, null, <rockhounding_chemistry:didymium_glass>],
//  [<ore:ingotZirconium>, <rockhounding_chemistry:didymium_glass>, <ore:ingotZirconium>]]);

recipes.remove(<nuclearcraft:part:3>);
recipes.addShaped(<nuclearcraft:part:3>,
 [[<rockhounding_chemistry:alloy_items_tech:28>, <rockhounding_chemistry:alloy_items_gems:1>, <rockhounding_chemistry:alloy_items_tech:28>],
  [<rockhounding_chemistry:alloy_items_tech:28>, <nuclearcraft:part:2>, <rockhounding_chemistry:alloy_items_tech:28>],
  [<rockhounding_chemistry:alloy_items_tech:28>, <rockhounding_chemistry:alloy_items_gems:1>, <rockhounding_chemistry:alloy_items_tech:28>]]);

recipes.remove(<nuclearcraft:upgrade>);
recipes.remove(<nuclearcraft:upgrade:1>);
recipes.addShapeless(<nuclearcraft:upgrade>, [<ic2:upgrade>]);
