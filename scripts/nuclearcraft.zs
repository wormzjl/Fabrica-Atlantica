//recipes.remove(<nuclearcraft:helium_collector_compact>);
//recipes.remove(<nuclearcraft:helium_collector>);
//recipes.remove(<nuclearcraft:helium_collector_dense>);

//recipes.remove(<nuclearcraft:cobblestone_generator>);
//recipes.remove(<nuclearcraft:cobblestone_generator_compact>);
//recipes.remove(<nuclearcraft:cobblestone_generator_dense>);

//recipes.remove(<nuclearcraft:nitrogen_collector_dense>);
//recipes.remove(<nuclearcraft:nitrogen_collector_compact>);
//recipes.remove(<nuclearcraft:nitrogen_collector>);

mods.jei.JEI.removeAndHide(<nuclearcraft:lithium_ion_battery_basic>);
mods.jei.JEI.removeAndHide(<nuclearcraft:lithium_ion_battery_advanced>);
mods.jei.JEI.removeAndHide(<nuclearcraft:lithium_ion_battery_du>);

mods.jei.JEI.removeAndHide(<nuclearcraft:lithium_ion_cell>);
//mods.jei.JEI.removeAndHide(<nuclearcraft:supercooler_idle>);
mods.jei.JEI.removeAndHide(<nuclearcraft:compound:1>);
mods.jei.JEI.removeAndHide(<nuclearcraft:portable_ender_chest>);

//ores
furnace.remove(<ic2:ingot:8>);

mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:aluminum>*288);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:iron>*288);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:gold>*288);
//mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:lead>*360);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:copper>*288);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:silver>*288);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:tin>*288);
//mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:nickel>*360);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:boron>*288);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:lithium>*288);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:thorium>*288);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:uranium>*288);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:magnesium>*288);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:manganese>*288);


mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:quartz>*1332);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:lapis>*1332);
mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:diamond>*1332);
//mods.nuclearcraft.melter.removeRecipeWithOutput(<liquid:emerald>*1665);




mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput(<liquid:ammonia>*2000, null);
mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput(<liquid:sulfuric_acid>*1000, null);
mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput(<liquid:oxygen_difluoride>*2000, null);
mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput(<liquid:sulfur_trioxide>*1000, <liquid:fluorine>*1000);
mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput(<liquid:sulfur_trioxide>*1000, null);
mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput(<liquid:oxygen>*1000, <liquid:hydrofluoric_acid>*2000);
mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput(<liquid:potassium_hydroxide_solution>*666, <liquid:hydrofluoric_acid>*1000);
mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput(<liquid:sodium_hydroxide_solution>*666, <liquid:hydrofluoric_acid>*1000);
mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput(<liquid:hydrofluoric_acid>*2000, <liquid:calcium_sulfate_solution>*666);
//mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput(<liquid:hydrofluoric_acid>, <liquid:fluorine>);

mods.nuclearcraft.electrolyzer.removeRecipeWithInput(<liquid:water>*1000);
mods.nuclearcraft.electrolyzer.removeRecipeWithInput(<liquid:koh>*666);

mods.nuclearcraft.enricher.removeRecipeWithOutput(<liquid:fluorite_water>*666);

mods.nuclearcraft.crystallizer.addRecipe(<liquid:sodium_hydroxide>*1000, <nuclearcraft:compound:5>);

mods.nuclearcraft.melter.addRecipe(<rockhounding_chemistry:chemical_dusts:41>, <liquid:potassium>*144);

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
