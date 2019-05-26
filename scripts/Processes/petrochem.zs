//All values needs tweaking
//Default removals
mods.immersiveengineering.Refinery.removeRecipe(<liquid:biodiesel>);

mods.pneumaticcraft.refinery.removeAllRecipes();
mods.pneumaticcraft.thermopneumaticprocessingplant.removeAllRecipes();

mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:coal>);
mods.magneticraft.OilHeater.removeRecipe(<liquid:oil>);
mods.magneticraft.OilHeater.removeRecipe(<liquid:water>);
mods.magneticraft.Refinery.removeRecipe(<liquid:hot_crude>);
mods.magneticraft.Refinery.removeRecipe(<liquid:heavy_oil>);
mods.magneticraft.Refinery.removeRecipe(<liquid:light_oil>);
mods.magneticraft.Refinery.removeRecipe(<liquid:lpg>);
mods.magneticraft.Refinery.removeRecipe(<liquid:steam>);

//Basic oil refining
mods.immersivepetroleum.Distillation.addRecipe([<liquid:heavy_oil> * 550, <liquid:light_oil> * 400, <liquid:natural_gas> * 50], [<immersivepetroleum:material>], <liquid:crude_desalted> * 1000, 1024, 400, [1.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:heavy_oil> * 700, <liquid:light_oil> * 280, <liquid:natural_gas> * 20], [<immersivepetroleum:material>], <liquid:crude_heavy_desalted> * 1000, 1024, 400, [1.0]);

mods.pneumaticcraft.refinery.addRecipe(<liquid:light_oil> * 10, [<liquid:gas_oil> * 4, <liquid:kerosene> * 3, <liquid:naphtha> * 2, <liquid:refinerygas> * 1]);
mods.pneumaticcraft.refinery.addRecipe(<liquid:refinerygas> * 10, [<liquid:butane> * 1, <liquid:propane> * 2, <liquid:fuel_gas_raw> * 7]);

mods.magneticraft.OilHeater.addRecipe(<liquid:heavy_oil> * 1000, <liquid:heavy_oil_hot> * 1000, 100, 473);
mods.magneticraft.Refinery.addRecipe(<liquid:heavy_oil_hot> * 500, <liquid:vgo>*250, <liquid:vacuum_residue>*250, null, 100);


//Basic Gas refining
mods.magneticraft.OilHeater.addRecipe(<liquid:natural_gas> * 1000, <liquid:natural_gas_hot> * 1000, 100, 473);
mods.magneticraft.Refinery.addRecipe(<liquid:natural_gas_hot> * 1000, <liquid:oil_brine>*50, <liquid:gas_condensate>*150, <liquid:natural_gas_humid>*800, 100);

mods.magneticraft.OilHeater.addRecipe(<liquid:natural_gas_sour> * 1000, <liquid:natural_gas_sour_hot> * 1000, 100, 473);
mods.magneticraft.Refinery.addRecipe(<liquid:natural_gas_sour_hot> * 1000, <liquid:oil_brine>*50, <liquid:gas_condensate>*150, <liquid:natural_gas_sour_humid>*800, 100);

mods.magneticraft.Refinery.addRecipe(<liquid:natural_gas_dried> * 1000, <liquid:ngl>*300, <liquid:methane_natural>*600, <liquid:acid_gas>*100, 100);
mods.magneticraft.Refinery.addRecipe(<liquid:natural_gas_sour_dried> * 1000, <liquid:ngl>*250, <liquid:methane_natural>*550, <liquid:acid_gas>*200, 100);

mods.magneticraft.Refinery.addRecipe(<liquid:methane_natural> * 1000, <liquid:methane>*950, <liquid:helium>*50, null, 1000);
mods.magneticraft.Refinery.addRecipe(<liquid:ngl> * 1000, <liquid:butane>*250, <liquid:propane>*550, <liquid:ethane>*200, 100);


//Gas drying
mods.pneumaticcraft.refinery.addRecipe(<liquid:ethylene_glycol_rich> * 100, [<liquid:ethylene_glycol> * 95, <liquid:fuel_gas_raw> * 5]);

mods.rockhounding_chemistry.StirredTank.add(<liquid:natural_gas_humid>*1000, <liquid:ethylene_glycol>*1000, <liquid:ethylene_glycol_rich>*1000, <liquid:natural_gas_dried>*1000, 5);
mods.rockhounding_chemistry.StirredTank.add(<liquid:natural_gas_sour_humid>*1000, <liquid:ethylene_glycol>*1000, <liquid:ethylene_glycol_rich>*1000, <liquid:natural_gas_sour_dried>*1000, 5);


//Hydrotreating, need to make input a "gas"
mods.rockhounding_chemistry.GasCondenser.add(<liquid:naphtha_vapour>*100, <liquid:naphtha>*100);
mods.rockhounding_chemistry.GasReformer.add(<liquid:naphtha_vapour>*200, <liquid:hydrogen>*20, <liquid:naphtha_desulfurized>*200, <rockhounding_chemistry:mo_catalyst>);

mods.rockhounding_chemistry.GasCondenser.add(<liquid:kerosene_vapour>*100, <liquid:kerosene>*100);
mods.rockhounding_chemistry.GasReformer.add(<liquid:kerosene_vapour>*200, <liquid:hydrogen>*20, <liquid:kerosene_desulfurized>*200, <rockhounding_chemistry:mo_catalyst>);

mods.rockhounding_chemistry.GasCondenser.add(<liquid:gas_oil_vapour>*100, <liquid:gas_oil>*100);
mods.rockhounding_chemistry.GasReformer.add(<liquid:gas_oil_vapour>*200, <liquid:hydrogen>*20, <liquid:gas_oil_desulfurized>*200, <rockhounding_chemistry:mo_catalyst>);

mods.rockhounding_chemistry.GasCondenser.add(<liquid:vgo_vapour>*100, <liquid:vgo>*100);
mods.rockhounding_chemistry.GasReformer.add(<liquid:vgo_vapour>*200, <liquid:hydrogen>*20, <liquid:vgo_desulfurized>*200, <rockhounding_chemistry:mo_catalyst>);


//Lubricant
mods.immersiveengineering.Refinery.addRecipe(<liquid:vacuum_residue_cracked_hot>*100, <liquid:vacuum_residue>*100, <liquid:ic2superheated_steam>*1000, 2048);
mods.immersiveengineering.Refinery.addRecipe(<liquid:vgo_cracked_hot>*100, <liquid:vgo>*100, <liquid:ic2superheated_steam>*1000, 2048);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:lubricant> * 500, <liquid:vgo> * 200, <liquid:gas_oil> * 100], [<immersiveengineering:material:6>], <liquid:vacuum_residue_cracked_hot> * 1000, 512, 256, [0.5]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:lubricant> * 500, <liquid:vgo> * 200, <liquid:gas_oil> * 100], [<immersiveengineering:material:6>], <liquid:vacuum_residue_cracked> * 1000, 512, 256, [0.5]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:lubricant> * 700, <liquid:gas_oil> * 100], [<immersiveengineering:material:6>], <liquid:vgo_cracked_hot> * 1000, 512, 256, [0.5]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:lubricant> * 700, <liquid:gas_oil> * 100], [<immersiveengineering:material:6>], <liquid:vgo_cracked> * 1000, 512, 256, [0.5]);


//Steam cracking
mods.immersiveengineering.Refinery.addRecipe(<liquid:naphtha_cracked_hot>*1000, <liquid:naphtha>*1000, <liquid:ic2superheated_steam>*1000, 4096);
mods.immersiveengineering.Refinery.addRecipe(<liquid:ethane_cracked_hot>*1000, <liquid:ethane>*1000, <liquid:ic2superheated_steam>*1000, 4096);
mods.immersiveengineering.Refinery.addRecipe(<liquid:propane_cracked_hot>*1000, <liquid:propane>*1000, <liquid:ic2superheated_steam>*1000, 4096);
mods.immersiveengineering.Refinery.addRecipe(<liquid:butane_cracked_hot>*1000, <liquid:butane>*1000, <liquid:ic2superheated_steam>*1000, 4096);
mods.immersiveengineering.Refinery.addRecipe(<liquid:gas_oil_cracked_hot>*1000, <liquid:gas_oil>*1000, <liquid:ic2superheated_steam>*1000, 4096);

mods.immersiveengineering.Refinery.addRecipe(<liquid:syngas_hot>*100, <liquid:methane>*100, <liquid:ic2superheated_steam>*1000, 2048);
mods.immersiveengineering.Refinery.addRecipe(<liquid:syngas_hot>*100, <liquid:methane_natural>*100, <liquid:ic2superheated_steam>*1000, 2048);
mods.immersiveengineering.Refinery.addRecipe(<liquid:syngas_hot>*100, <liquid:fuel_gas>*100, <liquid:ic2superheated_steam>*1000, 2048);

//Steam Cracking separation
mods.immersivepetroleum.Distillation.addRecipe([<liquid:ethane> * 50, <liquid:ethene> * 800, <liquid:fuel_gas_raw> * 150], [<immersiveengineering:material:6>], <liquid:ethane_cracked_hot> * 1000, 128, 256, [0.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:ethane> * 50, <liquid:ethene> * 800, <liquid:fuel_gas_raw> * 150], [<immersiveengineering:material:6>], <liquid:ethane_cracked> * 1000, 128, 256, [0.0]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:pygas> * 50, <liquid:propane>*50, <liquid:butadiene> * 50, <liquid:propene> * 250, <liquid:ethene> * 350, <liquid:fuel_gas_raw> * 250], [<immersiveengineering:material:6>], <liquid:propane_cracked_hot> * 1000, 128, 256, [0.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:pygas> * 50, <liquid:propane>*50, <liquid:butadiene> * 50, <liquid:propene> * 250, <liquid:ethene> * 350, <liquid:fuel_gas_raw> * 250], [<immersiveengineering:material:6>], <liquid:propane_cracked> * 1000, 128, 256, [0.0]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:pygas> * 50, <liquid:butane>*50, <liquid:butadiene> * 100, <liquid:propene> * 200, <liquid:ethene> * 350, <liquid:fuel_gas_raw> * 250], [<immersiveengineering:material:6>], <liquid:butane_cracked_hot> * 1000, 128, 256, [0.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:pygas> * 50, <liquid:butane>*50, <liquid:butadiene> * 150, <liquid:propene> * 200, <liquid:ethene> * 300, <liquid:fuel_gas_raw> * 250], [<immersiveengineering:material:6>], <liquid:butane_cracked> * 1000, 128, 256, [0.0]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:pygas> * 350, <liquid:naphtha>*50, <liquid:butadiene> * 150, <liquid:propene> * 150, <liquid:ethene> * 200, <liquid:fuel_gas_raw> * 100], [<immersiveengineering:material:6>], <liquid:naphtha_cracked_hot> * 1000, 128, 256, [0.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:pygas> * 350, <liquid:naphtha>*50, <liquid:butadiene> * 150, <liquid:propene> * 150, <liquid:ethene> * 200, <liquid:fuel_gas_raw> * 100], [<immersiveengineering:material:6>], <liquid:naphtha_cracked> * 1000, 128, 256, [0.0]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:pygas> * 200, <liquid:diesel>*300, <liquid:butadiene> * 100, <liquid:propene> * 150, <liquid:ethene> * 150, <liquid:fuel_gas_raw> * 100], [<immersiveengineering:material:6>], <liquid:gas_oil_cracked_hot> * 1000, 128, 256, [0.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:pygas> * 200, <liquid:diesel>*300, <liquid:butadiene> * 100, <liquid:propene> * 150, <liquid:ethene> * 150, <liquid:fuel_gas_raw> * 100], [<immersiveengineering:material:6>], <liquid:gas_oil_cracked> * 1000, 128, 256, [0.0]);


//Hydrocracking
mods.rockhounding_chemistry.GasReformer.add(<liquid:gas_oil_vapour>*100, <liquid:hydrogen>*25, <liquid:gas_oil_hydrocracked>*100, <rockhounding_chemistry:ni_catalyst>);
mods.rockhounding_chemistry.GasReformer.add(<liquid:vgo_vapour>*100, <liquid:hydrogen>*25, <liquid:vgo_hydrocracked>*100, <rockhounding_chemistry:ni_catalyst> );

mods.immersivepetroleum.Distillation.addRecipe([<liquid:diesel> * 900, <liquid:acid_gas> * 50, <liquid:fuel_gas_raw> * 50], [<immersiveengineering:material:6>], <liquid:gas_oil_hydrocracked> * 1000, 128, 256, [0.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:diesel> * 800, <liquid:acid_gas> * 100, <liquid:fuel_gas_raw> * 100], [<immersiveengineering:material:6>], <liquid:vgo_hydrocracked> * 1000, 128, 256, [0.0]);

//FCC
mods.rockhounding_chemistry.GasReformer.add(<liquid:vgo_desulfurized>*100, <liquid:water_vapour>*100, <liquid:vgo_fcc>*100, <rockhounding_chemistry:ze_catalyst>);
mods.rockhounding_chemistry.GasReformer.add(<liquid:gas_oil_desulfurized>*100, <liquid:water_vapour>*100, <liquid:gas_oil_fcc>*100, <rockhounding_chemistry:ze_catalyst>);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:naphtha_desulfurized> * 100, <liquid:gasoline> * 900, <liquid:fuel_gas_raw> * 50], [<immersiveengineering:material:6>], <liquid:vgo_fcc> * 1000, 128, 256, [0.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:naphtha_desulfurized> * 200, <liquid:gasoline> * 800, <liquid:fuel_gas_raw> * 50], [<immersiveengineering:material:6>], <liquid:gas_oil_fcc> * 1000, 128, 256, [0.0]);


//Heat recovery
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:naphtha_cracked>, <liquid:naphtha_cracked_hot>, 100);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:ethane_cracked>, <liquid:ethane_cracked_hot>, 100);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:propane_cracked>, <liquid:propane_cracked_hot>, 100);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:butane_cracked>, <liquid:butane_cracked_hot>, 100);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:gas_oil_cracked>, <liquid:gas_oil_cracked_hot>, 100);

mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:syngas>, <liquid:syngas_hot>, 100);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:vacuum_residue_cracked>, <liquid:vacuum_residue_cracked_hot>, 100);
mods.ic2.HeatExchanger.addFluidCoolDown(<liquid:vgo_cracked>, <liquid:vgo_cracked_hot>, 100);


//Reforming
mods.rockhounding_chemistry.GasReformer.add(<liquid:propane>*200, <liquid:water_vapour>*200, <liquid:isopropane>*200, <rockhounding_chemistry:nl_catalyst>);
mods.rockhounding_chemistry.GasReformer.add(<liquid:butane>*200, <liquid:water_vapour>*200, <liquid:isobutane>*200, <rockhounding_chemistry:nl_catalyst>);
mods.rockhounding_chemistry.GasReformer.add(<liquid:naphtha_desulfurized>*200, <liquid:hydrogen>*40, <liquid:naphtha_reformed>*200, <rockhounding_chemistry:pt_catalyst>);

mods.rockhounding_chemistry.GasReformer.add(<liquid:butane>*200, <liquid:water_vapour>*800, <liquid:butadiene>*200, <rockhounding_chemistry:va_catalyst>);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:pygas> * 150, <liquid:gasoline> * 800, <liquid:hydrogen> * 50], [<immersiveengineering:material:6>], <liquid:naphtha_reformed> * 1000, 128, 256, [0.0]);

mods.magneticraft.Refinery.addRecipe(<liquid:pygas> * 100, <liquid:benzene>*50, <liquid:toluene>*50, null, 100);


//Fuel blending
mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline_bio>*1000, <liquid:gasoline>*900, <liquid:ethanol>*100, 128);
mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel_bio>*1000, <liquid:diesel>*900, <liquid:biodiesel>*100, 128);

mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline_adv>*1000, <liquid:gasoline>*900, <liquid:isopropane>*100, 128);
mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline_adv>*1000, <liquid:gasoline>*900, <liquid:isobutane>*100, 128);

mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline_adv_bio>*1000, <liquid:gasoline_adv>*900, <liquid:ethanol>*100, 128);


//Misc Chemistry
mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput([<liquid:ethanol>*1000, <liquid:sulfur_trioxide>*1000]);
mods.nuclearcraft.chemical_reactor.removeRecipeWithOutput([<liquid:methanol>*1000, null]);

mods.rockhounding_chemistry.LabOven.add("Animal oil", <primal:tallow>, null, <liquid:plantoil>*200, null, <liquid:animaloil>*2000, null);
mods.rockhounding_chemistry.LabOven.add("Biodiesel", <rockhounding_chemistry:chemical_items:6>, null, <liquid:plantoil>*1000, <liquid:methanol>*200, <liquid:biodiesel>*1000, null);
mods.rockhounding_chemistry.LabOven.add("Biodiesel2", <rockhounding_chemistry:chemical_items:6>, null, <liquid:animaloil>*1000, <liquid:methanol>*200, <liquid:biodiesel>*1000, null);

mods.rockhounding_chemistry.GasPurifier.add(<liquid:fuel_gas_raw>, <liquid:fuel_gas>, null, <immersiveengineering:material:17>);

mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:ethene>*50, <liquid:steam>*100, <liquid:ethanol>*50, null]);

//TBD - NuC or AR reactor
mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:ethene>*70, <liquid:oxygen>*100, <liquid:ethylene_oxide>*60, null]);
mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:ethylene_oxide>*100, <liquid:water>*100, <liquid:ethylene_glycol>*100, null]);


//Syngas chem, composition: 15 CO2, 55 CO, 30H2
mods.rockhounding_chemistry.GasReformer.removeByOutput(<liquid:ammonia>);
mods.rockhounding_chemistry.GasReformer.removeByOutput(<liquid:hydrogen>);
mods.rockhounding_chemistry.GasReformer.removeByOutput(<liquid:methanol>);

mods.rockhounding_chemistry.GasReformer.add(<liquid:syngas>*200, <liquid:water_vapour>*400, <liquid:wgsproduct>*200, <rockhounding_chemistry:fe_catalyst>);
mods.rockhounding_chemistry.GasReformer.add(<liquid:wgsproduct>*600, <liquid:nitrogen>*100, <liquid:ammonia>*200, <rockhounding_chemistry:fe_catalyst>);
mods.rockhounding_chemistry.GasReformer.add(<liquid:hydrogen>*300, <liquid:nitrogen>*100, <liquid:ammonia>*200, <rockhounding_chemistry:fe_catalyst>);

mods.magneticraft.Refinery.addRecipe(<liquid:wgsproduct> * 100, <liquid:carbon_dioxide>*50, <liquid:hydrogen>*50, null, 100);
mods.magneticraft.Refinery.addRecipe(<liquid:syngas> * 100, <liquid:carbon_dioxide>*15, <liquid:carbon_monoxide>*55, <liquid:hydrogen>*30, 100);
mods.magneticraft.Refinery.addRecipe(<liquid:syngas_hot> * 100, <liquid:carbon_dioxide>*15, <liquid:carbon_monoxide>*55, <liquid:hydrogen>*30, 100);

mods.rockhounding_chemistry.GasReformer.add(<liquid:syngas>*100, <liquid:water_vapour>*200, <liquid:ftproduct>*100, <rockhounding_chemistry:co_catalyst>);
mods.magneticraft.Refinery.addRecipe(<liquid:ftproduct> * 100, <liquid:diesel>*80, <liquid:fuel_gas_raw>*20, null, 10);

mods.rockhounding_chemistry.GasReformer.add(<liquid:syngas>*300, <liquid:water_vapour>*300, <liquid:methanol>*100, <rockhounding_chemistry:zn_catalyst>);
mods.rockhounding_chemistry.GasReformer.add(<liquid:carbon_monoxide>*100, <liquid:hydrogen>*200, <liquid:methanol>*100, <rockhounding_chemistry:zn_catalyst>);


//Plastics
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:ethene>*200, null, 3.0, 473, <liquid:plastic> * 50);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:propene>*200, null, 3.0, 473, <liquid:plastic> * 65);

mods.rockhounding_chemistry.GasReformer.add(<liquid:propene>*200, <liquid:water_vapour>*100, <liquid:plastic>*75, <rockhounding_chemistry:wg_catalyst>);

mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:toluene>*100, <liquid:hydrogen>*100, <liquid:benzene>*100, null]);

mods.rockhounding_chemistry.GasCondenser.add(<liquid:benzene_vapour>*100, <liquid:benzene>*100);
mods.rockhounding_chemistry.GasReformer.add(<liquid:benzene_vapour>*200, <liquid:ethene>*200, <liquid:ethylbenzene>*200, <rockhounding_chemistry:ze_catalyst>);

mods.rockhounding_chemistry.GasReformer.add(<liquid:benzene_vapour>*200, <liquid:propene>*200, <liquid:cumene>*200, <rockhounding_chemistry:ze_catalyst>);
mods.pneumaticcraft.refinery.addRecipe(<liquid:cumene> * 10, [<liquid:phenol> * 5, <liquid:acetone> * 5]);

mods.rockhounding_chemistry.Precipitator.add("Diaminotoluene", <contenttweaker:dinitrotoluene>, <rockhounding_chemistry:ni_catalyst>, <liquid:hydrogen>*1000, <liquid:toxic_waste>*100, <contenttweaker:diaminotoluene>);
mods.rockhounding_chemistry.LabOven.add("Toluene Diisocyanate", <contenttweaker:diaminotoluene>, null, <liquid:phosgene>*500, null, <liquid:toluenediisocyanate>*1000, <liquid:hydrochloric_acid>*1000);
mods.rockhounding_chemistry.StirredTank.add(<liquid:chlorine>*250, <liquid:propene>*500, <liquid:hydrochloric_acid>*500, <liquid:propyleneoxide>*500, 50);
mods.rockhounding_chemistry.StirredTank.add(<liquid:propyleneoxide>*500, <liquid:glycerol>*500, <liquid:polyol>*500, null, 50);


//Acids
mods.rockhounding_chemistry.LabOven.removeByInput(<rockhounding_chemistry:chemical_items:2>);
mods.rockhounding_chemistry.LabOven.add("Sulfur Trioxide", "dustSulfur", null, <liquid:oxygen>*500, null, <liquid:sulfur_trioxide>*500, null);
mods.rockhounding_chemistry.LabOven.add("Sulfur Trioxide +", "dustSulfur", <rockhounding_chemistry:va_catalyst>, <liquid:oxygen>*500, null, <liquid:sulfur_trioxide>*500, null);

mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:sulfur_trioxide>*500, <liquid:sulfuric_acid>*500, <liquid:fumingsulfuricacid>*500, null]);
mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:fumingsulfuricacid>*500, <liquid:ic2distilled_water>*500, <liquid:sulfuric_acid>*1000, null]);
mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:sulfuric_acid>*500, <liquid:nitric_acid>*500, <liquid:sulfuricnitricacid>*1000, null]);
mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:fumingsulfuricacid>*500, <liquid:nitric_acid>*500, <liquid:fumingsulfuricnitricacid>*1000, null]);

mods.nuclearcraft.chemical_reactor.addRecipe([<liquid:hydrogen>*100, <liquid:chlorine>*100, <liquid:hydrochloric_acid>*200, null]);

mods.rockhounding_chemistry.GasReformer.removeByOutput(<liquid:nitric_acid>*15);
mods.rockhounding_chemistry.GasReformer.add(<liquid:ammonia>*200, <liquid:oxygen>*300, <liquid:nitric_acid>*150, <rockhounding_chemistry:pt_catalyst>);


//Tester

mods.rockhounding_chemistry.GasifierPlant.add(<liquid:biomass>*2000, <liquid:water>*1000, <liquid:raw_syngas>*1000, <rockhounding_chemistry:chemical_items:2>, null, 900);

//mods.rockhounding_chemistry.StirredTank.removeByOutput(<liquid:chloromethane>);
mods.rockhounding_chemistry.StirredTank.add(<liquid:hydrochloric_acid>*500, <liquid:methanol>*1000, <liquid:chloromethane>*1000, <liquid:hydrogen>*500, 5);


