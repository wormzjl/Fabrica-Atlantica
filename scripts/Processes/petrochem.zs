//All values need tweaking
//Default removals
mods.immersiveengineering.Refinery.removeRecipe(<liquid:biodiesel>);

mods.pneumaticcraft.refinery.removeAllRecipes();

mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:coal>);
mods.magneticraft.OilHeater.removeRecipe(<liquid:oil>);
mods.magneticraft.OilHeater.removeRecipe(<liquid:water>);
mods.magneticraft.Refinery.removeRecipe(<liquid:hot_crude>);
mods.magneticraft.Refinery.removeRecipe(<liquid:heavy_oil>);
mods.magneticraft.Refinery.removeRecipe(<liquid:light_oil>);
mods.magneticraft.Refinery.removeRecipe(<liquid:lpg>);
mods.magneticraft.Refinery.removeRecipe(<liquid:steam>);

//IE
//mods.immersivepetroleum.Distillation.addRecipe(ILiquidStack[] fluidOutputs, IItemStack[] itemOutputs, ILiquidStack fluidInput, int energy, int time, float[] chance);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:heavy_oil> * 450, <liquid:light_oil> * 500, <liquid:natural_gas> * 50], [<immersivepetroleum:material>], <liquid:crude_desalted> * 1000, 1024, 400, [1.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:heavy_oil> * 600, <liquid:light_oil> * 380, <liquid:natural_gas> * 20], [<immersivepetroleum:material>], <liquid:crude_heavy_desalted> * 1000, 1024, 400, [1.0]);

mods.immersiveengineering.Refinery.addRecipe(<liquid:naphtha_cracked_hot>*100, <liquid:naphtha>*100, <liquid:ic2superheated_steam>*1000, 2048);
mods.immersiveengineering.Refinery.addRecipe(<liquid:ethane_cracked_hot>*100, <liquid:ethane>*100, <liquid:ic2superheated_steam>*1000, 2048);
mods.immersiveengineering.Refinery.addRecipe(<liquid:propane_cracked_hot>*100, <liquid:propane>*100, <liquid:ic2superheated_steam>*1000, 2048);
mods.immersiveengineering.Refinery.addRecipe(<liquid:butane_cracked_hot>*100, <liquid:butane>*100, <liquid:ic2superheated_steam>*1000, 2048);
mods.immersiveengineering.Refinery.addRecipe(<liquid:syngas_hot>*100, <liquid:methane>*100, <liquid:ic2superheated_steam>*1000, 2048);
mods.immersiveengineering.Refinery.addRecipe(<liquid:syngas_hot>*100, <liquid:methane_natural>*100, <liquid:ic2superheated_steam>*1000, 2048);
mods.immersiveengineering.Refinery.addRecipe(<liquid:syngas_hot>*100, <liquid:fuel_gas>*100, <liquid:ic2superheated_steam>*1000, 2048);

//IC2
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:naphtha_cracked>, <liquid:naphtha_cracked_hot>, 100);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:ethane_cracked>, <liquid:ethane_cracked_hot>, 100);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:propane_cracked>, <liquid:propane_cracked_hot>, 100);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:butane_cracked>, <liquid:butane_cracked_hot>, 100);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:syngas>, <liquid:syngas_hot>, 100);

//PnC
mods.pneumaticcraft.refinery.addRecipe(<liquid:light_oil> * 10, [<liquid:gas_oil> * 4, <liquid:kerosene> * 3, <liquid:naphtha> * 2, <liquid:refinerygas> * 1]);
mods.pneumaticcraft.refinery.addRecipe(<liquid:refinerygas> * 10, [<liquid:butane> * 1, <liquid:propane> * 2, <liquid:fuel_gas_raw> * 7]);

mods.pneumaticcraft.refinery.addRecipe(<liquid:ethylene_glycol_rich> * 100, [<liquid:ethylene_glycol> * 95, <liquid:fuel_gas_raw> * 5]);

//MgC
mods.magneticraft.OilHeater.addRecipe(<liquid:heavy_oil> * 1000, <liquid:heavy_oil_hot> * 1000, 100, 473);
mods.magneticraft.Refinery.addRecipe(<liquid:heavy_oil_hot> * 500, <liquid:vgo>*250, <liquid:vacuum_residue>*250, null, 100);

mods.magneticraft.OilHeater.addRecipe(<liquid:natural_gas> * 1000, <liquid:natural_gas_hot> * 1000, 100, 473);
mods.magneticraft.Refinery.addRecipe(<liquid:natural_gas_hot> * 1000, <liquid:oil_brine>*50, <liquid:gas_condensate>*150, <liquid:natural_gas_humid>*800, 100);

mods.magneticraft.OilHeater.addRecipe(<liquid:natural_gas_sour> * 1000, <liquid:natural_gas_sour_hot> * 1000, 100, 473);
mods.magneticraft.Refinery.addRecipe(<liquid:natural_gas_sour_hot> * 1000, <liquid:oil_brine>*50, <liquid:gas_condensate>*150, <liquid:natural_gas_sour_humid>*800, 100);

mods.magneticraft.Refinery.addRecipe(<liquid:natural_gas_dried> * 1000, <liquid:ngl>*300, <liquid:methane_natural>*600, <liquid:acid_gas>*100, 100);
mods.magneticraft.Refinery.addRecipe(<liquid:natural_gas_sour_dried> * 1000, <liquid:ngl>*250, <liquid:methane_natural>*550, <liquid:acid_gas>*200, 100);

mods.magneticraft.Refinery.addRecipe(<liquid:methane_natural> * 1000, <liquid:methane>*950, <liquid:helium>*50, null, 1000);
mods.magneticraft.Refinery.addRecipe(<liquid:ngl> * 1000, <liquid:butane>*250, <liquid:propane>*550, <liquid:ethane>*200, 100);


//RH
mods.rockhounding_chemistry.LabOven.add("Animal oil", <primal:tallow>, null, <liquid:plantoil>*200, null, <liquid:animaloil>*2000, null);
mods.rockhounding_chemistry.LabOven.add("Biodiesel", <rockhounding_chemistry:chemical_items:6>, null, <liquid:plantoil>*1000, <liquid:methanol>*200, <liquid:biodiesel>*1000, null);
mods.rockhounding_chemistry.LabOven.add("Biodiesel2", <rockhounding_chemistry:chemical_items:6>, null, <liquid:animaloil>*1000, <liquid:methanol>*200, <liquid:biodiesel>*1000, null);

mods.rockhounding_chemistry.GasPurifier.add(<liquid:fuel_gas_raw>, <liquid:fuel_gas>, null, <immersiveengineering:material:17>);

mods.rockhounding_chemistry.StirredTank.add(<liquid:natural_gas_humid>*1000, <liquid:ethylene_glycol>*1000, <liquid:ethylene_glycol_rich>*1000, <liquid:natural_gas_dried>*1000, 5);
mods.rockhounding_chemistry.StirredTank.add(<liquid:natural_gas_sour_humid>*1000, <liquid:ethylene_glycol>*1000, <liquid:ethylene_glycol_rich>*1000, <liquid:natural_gas_sour_dried>*1000, 5);

mods.rockhounding_chemistry.GasReformer.add(<liquid:propane>*1000, <liquid:water_vapour>*500, <liquid:isopropane>*1000, <rockhounding_chemistry:nl_catalyst>);
mods.rockhounding_chemistry.GasReformer.add(<liquid:butane>*1000, <liquid:water_vapour>*500, <liquid:isobutane>*1000, <rockhounding_chemistry:nl_catalyst>);

//Desulfurizing, need to make input a "gas"
mods.rockhounding_chemistry.GasCondenser.add(<liquid:naphtha_vapour>*100, <liquid:naphtha>*100);
mods.rockhounding_chemistry.GasReformer.add(<liquid:naphtha_vapour>, <liquid:hydrogen>, <liquid:naphtha_desulfurized>, <rockhounding_chemistry:mo_catalyst>);

mods.rockhounding_chemistry.GasCondenser.add(<liquid:kerosene_vapour>*100, <liquid:kerosene>*100);
mods.rockhounding_chemistry.GasReformer.add(<liquid:kerosene_vapour>, <liquid:hydrogen>, <liquid:kerosene_desulfurized>, <rockhounding_chemistry:mo_catalyst>);

mods.rockhounding_chemistry.GasCondenser.add(<liquid:gas_oil_vapour>*100, <liquid:gas_oil>*100);
mods.rockhounding_chemistry.GasReformer.add(<liquid:gas_oil_vapour>, <liquid:hydrogen>, <liquid:gas_oil_desulfurized>, <rockhounding_chemistry:mo_catalyst>);

mods.rockhounding_chemistry.GasCondenser.add(<liquid:vgo_vapour>*100, <liquid:vgo>*100);
mods.rockhounding_chemistry.GasReformer.add(<liquid:vgo_vapour>, <liquid:hydrogen>, <liquid:vgo_desulfurized>, <rockhounding_chemistry:mo_catalyst>);

//Tester
mods.rockhounding_chemistry.GasReformer.removeByOutput(<liquid:ammonia>);
mods.rockhounding_chemistry.GasReformer.add(<liquid:hydrogen>*1500, <liquid:nitrogen>*500, <liquid:ammonia>*1000, <rockhounding_chemistry:fe_catalyst>);

mods.rockhounding_chemistry.GasifierPlant.add(<liquid:biomass>*2000, <liquid:water>*1000, <liquid:raw_syngas>*1000, <rockhounding_chemistry:chemical_items:2>, null, 900);

//mods.rockhounding_chemistry.StirredTank.removeByOutput(<liquid:chloromethane>);
mods.rockhounding_chemistry.StirredTank.add(<liquid:hydrochloric_acid>*500, <liquid:methanol>*1000, <liquid:chloromethane>*1000, <liquid:hydrogen>*500, 5);

mods.rockhounding_chemistry.GasPurifier.add(<liquid:water_vapour>*500, <liquid:oxygen>*1000, <minecraft:dye:4>, null);

mods.rockhounding_chemistry.Transposer.add(<liquid:natural_gas_sour>, <liquid:natural_gas_sour>);
