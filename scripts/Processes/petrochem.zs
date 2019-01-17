//IE
mods.immersiveengineering.Refinery.removeRecipe(<liquid:biodiesel>);


//MgC
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:coal>);
mods.magneticraft.OilHeater.removeRecipe(<liquid:oil>);
mods.magneticraft.OilHeater.removeRecipe(<liquid:water>);

mods.magneticraft.Refinery.removeRecipe(<liquid:hot_crude>);
mods.magneticraft.Refinery.removeRecipe(<liquid:heavy_oil>);
mods.magneticraft.Refinery.removeRecipe(<liquid:lpg>);


//RH
mods.rockhounding_chemistry.LabOven.add("Animal oil", <primal:tallow>, null, <liquid:plantoil>*200, null, <liquid:animaloil>*2000, null);
mods.rockhounding_chemistry.LabOven.add("Biodiesel", <rockhounding_chemistry:chemical_items:6>, null, <liquid:plantoil>*1000, <liquid:methanol>*200, <liquid:biodiesel>*1000, null);
mods.rockhounding_chemistry.LabOven.add("Biodiesel2", <rockhounding_chemistry:chemical_items:6>, null, <liquid:animaloil>*1000, <liquid:methanol>*200, <liquid:biodiesel>*1000, null);


//Tester
mods.rockhounding_chemistry.GasReformer.removeByOutput(<liquid:ammonia>);
mods.rockhounding_chemistry.GasReformer.add(<liquid:hydrogen>*1500, <liquid:nitrogen>*500, <liquid:ammonia>*1000, <rockhounding_chemistry:fe_catalyst>);

mods.rockhounding_chemistry.GasifierPlant.add(<liquid:biomass>*2000, <liquid:water>*1000, <liquid:raw_syngas>*1000, <rockhounding_chemistry:chemical_items:2>, null, 900);

//mods.rockhounding_chemistry.StirredTank.removeByOutput(<liquid:chloromethane>);
mods.rockhounding_chemistry.StirredTank.add(<liquid:hydrochloric_acid>*500, <liquid:methanol>*1000, <liquid:chloromethane>*1000, <liquid:hydrogen>*500, 5);

mods.rockhounding_chemistry.GasPurifier.add(<liquid:water_vapour>*500, <liquid:oxygen>*1000, <minecraft:dye:4>, null);

mods.rockhounding_chemistry.Transposer.add(<liquid:natural_gas_sour>, <liquid:natural_gas_sour>);
