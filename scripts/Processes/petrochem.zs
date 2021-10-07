#priority 1000

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Default removals
mods.immersiveengineering.Refinery.removeRecipe(<liquid:biodiesel>);

mods.pneumaticcraft.refinery.removeAllRecipes();
mods.pneumaticcraft.thermopneumaticprocessingplant.removeAllRecipes();

mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:coal>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:planks>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:log>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:oak_stairs>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:wooden_door>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:fence>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:wooden_slab>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:wooden_pressure_plate>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:trapdoor>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:hay_block>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:sapling>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:leaves>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:vine>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:waterlily>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:red_flower>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:yellow_flower>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:brown_mushroom>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:cactus>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:double_plant>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:chest>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:bowl>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:sign>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:stick>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:wheat_seeds>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:wheat>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:reeds>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:nether_wart>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:carrot>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:potato>);
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:beetroot>);

mods.magneticraft.OilHeater.removeRecipe(<liquid:oil>);
mods.magneticraft.OilHeater.removeRecipe(<liquid:water>);
mods.magneticraft.Refinery.removeRecipe(<liquid:hot_crude>);
mods.magneticraft.Refinery.removeRecipe(<liquid:heavy_oil>);
mods.magneticraft.Refinery.removeRecipe(<liquid:light_oil>);
mods.magneticraft.Refinery.removeRecipe(<liquid:lpg>);
mods.magneticraft.Refinery.removeRecipe(<liquid:steam>);

//Recipe counters
var mmrecipecount = 0 as int;

//MM scale-up efficiency small-medium-large
var scaleeff = [1,3,6] as int[];

//Heat exchanger unit basis
var HXUnit = 100 as int;

//Standard Small drum processing time
var drumprocessingtime = 200 as int;
var drumbatchsize = 2000 as int;

//Standard Heater batch size
var heaterbatchsize = 5000 as int;

//Standard Small AC batch size
var ACbatchsize = 1000 as int;
//Standard Small AC RF/t
var ACduty = 10 as int;
//Small AC equivalent Fuel/t
var ACRate = 1 as int;

//Reactor
var RXBatchsize = 5000 as int;
var RXTicktime = 1500 as int;

//G-L exchange column
var GLColumnBatchsize = 500 as int;
var GLColumnTicktime = 2500 as int;

//Gas Purifier
var GaspurifierBatchsize = 500 as int;
var GaspurifierTicktime = 500 as int;
var GaspurifierPower = 200 as int;

//Steam cracker
var SteamcrackerBatchsize = 500 as int;
var SteamcrackerTicktime = 100 as int;

//SMR Furnace
var SMRBatchsize = 100 as int;
var SMRTicktime = 100 as int;

//Fuel blending
//SR Grade - 50% eff
mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline>*500, <liquid:sr_naphtha>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel>*500, <liquid:sr_go>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*200, <liquid:ar>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*500, <liquid:sr_vgo>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*200, <liquid:sr_vacuum_residue>*1000, <liquid:steam>*100, 64);

//Warm products can be converted directly
mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel>*500, <liquid:sr_go_warm>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*200, <liquid:ar_warm>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*500, <liquid:sr_vgo_warm>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*200, <liquid:sr_vacuum_residue_warm>*1000, <liquid:steam>*100, 64);

//Fuel gas
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_gas>*973, <liquid:hdt_offgas>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_gas>*591, <liquid:syngas>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_gas>*948, <liquid:vrcoker_gas>*1000, <liquid:steam>*100, 64);


//Post-HDT - 100% eff
mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline>*1000, <liquid:hdt_naphtha>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel>*1000, <liquid:hdt_go>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*1000, <liquid:hdt_vgo>*1000, <liquid:steam>*100, 64);

mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline>*1000, <liquid:hdt_naphtha_warm>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel>*1000, <liquid:hdt_go_warm>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*1000, <liquid:hdt_vgo_warm>*1000, <liquid:steam>*100, 64);

//Various fuels
mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline>*350, <liquid:coker_naphtha>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel>*350, <liquid:lcgo>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*350, <liquid:hcgo>*1000, <liquid:steam>*100, 64);


//Natural gas processing

//Oil Refining
//Just dump it into the tower - 25% eff + AR to Coke
mods.immersivepetroleum.Distillation.addRecipe([<liquid:fuel_oil>*109], [<immersiveengineering:material:6>*6], <liquid:oil>*1000, 1446, 100, [1.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:fuel_oil>*94], [<immersiveengineering:material:6>*7], <liquid:crude_heavy>*1000, 1477, 100, [1.0]);

//Crude oil desalting - Slower recipe
mmrecipecount = add3phaseseprecipe(40, 2*drumprocessingtime, <liquid:water>, 500*2000/drumbatchsize, <liquid:oil>, drumbatchsize, <liquid:crude_desalted>, 1970*2000/drumbatchsize, <liquid:oil_brine>, 500*2000/drumbatchsize, <liquid:natural_gas>, 30*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe(40, 2*drumprocessingtime, <liquid:water>, 500*2000/drumbatchsize, <liquid:crude_heavy>, drumbatchsize, <liquid:crude_heavy_desalted>, 1990*2000/drumbatchsize, <liquid:oil_brine>, 500*2000/drumbatchsize, <liquid:natural_gas>, 10*2000/drumbatchsize, mmrecipecount, scaleeff);

//Crude oil desalting - Faster recipe (Gas/brine temperature TBD)
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:oil>*293, <liquid:oil_warm>*293, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_heavy>*305, <liquid:crude_heavy_warm>*305, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:oil>*heaterbatchsize, <liquid:oil_warm>*heaterbatchsize, 32*5000/heaterbatchsize, 600);
mods.magneticraft.OilHeater.addRecipe(<liquid:crude_heavy>*heaterbatchsize, <liquid:crude_heavy_warm>*heaterbatchsize, 31*5000/heaterbatchsize, 600);

mmrecipecount = add3phaseseprecipe(40, drumprocessingtime, <liquid:water>, 500*2000/drumbatchsize, <liquid:oil_warm>, drumbatchsize, <liquid:crude_desalted_warm>, 1970*2000/drumbatchsize, <liquid:oil_brine>, 500*2000/drumbatchsize, <liquid:natural_gas>, 30*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe(40, drumprocessingtime, <liquid:water>, 500*2000/drumbatchsize, <liquid:crude_heavy_warm>, drumbatchsize, <liquid:crude_heavy_desalted_warm>, 1990*2000/drumbatchsize, <liquid:oil_brine>, 500*2000/drumbatchsize, <liquid:natural_gas>, 10*2000/drumbatchsize, mmrecipecount, scaleeff);


//ADU - Heatup
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_desalted>*292, <liquid:crude_desalted_warm>*292, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_heavy_desalted>*305, <liquid:crude_heavy_desalted_warm>*305, HXUnit);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_desalted_warm>*248, <liquid:crude_desalted_hot>*248, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_heavy_desalted_warm>*247, <liquid:crude_heavy_desalted_hot>*247, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:crude_desalted>*heaterbatchsize, <liquid:crude_desalted_hot>*heaterbatchsize, 71*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:crude_heavy_desalted>*heaterbatchsize, <liquid:crude_heavy_desalted_hot>*heaterbatchsize, 70*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:crude_desalted_warm>*heaterbatchsize, <liquid:crude_desalted_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:crude_heavy_desalted_warm>*heaterbatchsize, <liquid:crude_heavy_desalted_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:adu_gas_light_warm>*264,<liquid:sr_go_hot>*305,<liquid:ar_hot>*431], [<immersiveengineering:material:6>], <liquid:crude_desalted_hot>*1000, 10, 30, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:adu_gas_heavy_warm>*191,<liquid:sr_go_hot>*286,<liquid:ar_hot>*523], [<immersiveengineering:material:6>], <liquid:crude_heavy_desalted_hot>*1000, 10, 30, [0.000001]);

//ADU Products
mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:adu_gas_light>, drumbatchsize, <liquid:sr_naphtha>, 1885*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:natural_gas>, 115*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:adu_gas_heavy>, drumbatchsize, <liquid:sr_naphtha>, 1947*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:natural_gas>, 53*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:adu_gas_light_warm>*200, <liquid:adu_gas_light>*200, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:adu_gas_heavy_warm>*198, <liquid:adu_gas_heavy>*198, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_naphtha_hot>*260, <liquid:sr_naphtha_warm>*260, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_naphtha_warm>*195, <liquid:sr_naphtha>*195, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_go_boiling>*179, <liquid:sr_go_hot>*179, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_go_hot>*250, <liquid:sr_go_warm>*250, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_go_warm>*350, <liquid:sr_go>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:ar_boiling>*303, <liquid:ar_hot>*303, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:ar_hot>*240, <liquid:ar_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:ar_warm>*350, <liquid:ar>*350, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_naphtha>*heaterbatchsize, <liquid:sr_naphtha_hot>*heaterbatchsize, 85*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_naphtha_warm>*heaterbatchsize, <liquid:sr_naphtha_hot>*heaterbatchsize, 36*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go>*heaterbatchsize, <liquid:sr_go_boiling>*heaterbatchsize, 118*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go_warm>*heaterbatchsize, <liquid:sr_go_boiling>*heaterbatchsize, 65*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go_hot>*heaterbatchsize, <liquid:sr_go_boiling>*heaterbatchsize, 27*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:ar>*heaterbatchsize, <liquid:ar_boiling>*heaterbatchsize, 98*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:ar_warm>*heaterbatchsize, <liquid:ar_boiling>*heaterbatchsize, 66*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:ar_hot>*heaterbatchsize, <liquid:ar_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:ar_boiling>*heaterbatchsize, <liquid:ar_blazing>*heaterbatchsize, 42*5000/heaterbatchsize, 900);

mmrecipecount = addaircoolerrecipe(ACduty, 499/ACRate, <liquid:adu_gas_light_warm>, ACbatchsize, <liquid:adu_gas_light>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 506/ACRate, <liquid:adu_gas_heavy_warm>, ACbatchsize, <liquid:adu_gas_heavy>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 686/ACRate, <liquid:sr_go_hot>, ACbatchsize, <liquid:sr_go>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:sr_go_warm>, ACbatchsize, <liquid:sr_go>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:ar_hot>, ACbatchsize, <liquid:ar>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:ar_warm>, ACbatchsize, <liquid:ar>, ACbatchsize, mmrecipecount, scaleeff);

//VDU
mods.magneticraft.Refinery.addRecipe(<liquid:ar_boiling>*500, <liquid:sr_vacuum_residue_boiling>*206, null, <liquid:sr_vgo_hot>*294, 20);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vgo_boiling>*303, <liquid:sr_vgo_hot>*303, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vgo_hot>*240, <liquid:sr_vgo_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vgo_warm>*350, <liquid:sr_vgo>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vacuum_residue_boiling>*303, <liquid:sr_vacuum_residue_hot>*303, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vacuum_residue_hot>*240, <liquid:sr_vacuum_residue_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vacuum_residue_warm>*350, <liquid:sr_vacuum_residue>*350, HXUnit);


mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo>*heaterbatchsize, <liquid:sr_vgo_boiling>*heaterbatchsize, 98*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo_warm>*heaterbatchsize, <liquid:sr_vgo_boiling>*heaterbatchsize, 66*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo_hot>*heaterbatchsize, <liquid:sr_vgo_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vacuum_residue>*heaterbatchsize, <liquid:sr_vacuum_residue_boiling>*heaterbatchsize, 98*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vacuum_residue_warm>*heaterbatchsize, <liquid:sr_vacuum_residue_boiling>*heaterbatchsize, 66*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vacuum_residue_hot>*heaterbatchsize, <liquid:sr_vacuum_residue_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vacuum_residue_boiling>*heaterbatchsize, <liquid:sr_vacuum_residue_blazing>*heaterbatchsize, 42*5000/heaterbatchsize, 900);

mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:sr_vgo_hot>, ACbatchsize, <liquid:sr_vgo>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:sr_vgo_warm>, ACbatchsize, <liquid:sr_vgo>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1032/ACRate, <liquid:sr_vacuum_residue_boiling>, ACbatchsize, <liquid:sr_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:sr_vacuum_residue_hot>, ACbatchsize, <liquid:sr_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:sr_vacuum_residue_warm>, ACbatchsize, <liquid:sr_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);

//H2
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hydrogen>*55, <liquid:hydrogen_warm>*55, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hydrogen_warm>*45, <liquid:hydrogen_hot>*45, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hydrogen_hot>*65, <liquid:hydrogen_boiling>*65, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:hydrogen>*heaterbatchsize, <liquid:hydrogen_hot>*heaterbatchsize, 384*5000/heaterbatchsize, 700);
mods.magneticraft.OilHeater.addRecipe(<liquid:hydrogen_warm>*heaterbatchsize, <liquid:hydrogen_hot>*heaterbatchsize, 212*5000/heaterbatchsize, 700);
mods.magneticraft.OilHeater.addRecipe(<liquid:hydrogen_hot>*heaterbatchsize, <liquid:hydrogen_boiling>*heaterbatchsize, 146*5000/heaterbatchsize, 900);

//NHT
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst>, 6, <liquid:sr_naphtha_hot>, RXBatchsize, <liquid:hydrogen_hot>, 165*RXBatchsize/5000, <liquid:srn_hdt_basic_eff_mix_hot>, 5165*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:1>, 2, <modularmachinery:itemredstonesignal>, <liquid:sr_naphtha_hot>, RXBatchsize, <liquid:hydrogen_hot>, 112*RXBatchsize/5000, <liquid:hydrogen>, 6*RXBatchsize/5000, <liquid:srn_hdt_adv_eff_mix_hot>, 5118*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srn_hdt_basic_eff_mix_hot>*188, <liquid:srn_hdt_basic_eff_mix_warm>*188, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srn_hdt_basic_eff_mix_warm>*183, <liquid:srn_hdt_basic_eff_mix>*183, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srn_hdt_adv_eff_mix_hot>*194, <liquid:srn_hdt_adv_eff_mix_warm>*194, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srn_hdt_adv_eff_mix_warm>*187, <liquid:srn_hdt_adv_eff_mix>*187, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1079/ACRate, <liquid:srn_hdt_basic_eff_mix_hot>, ACbatchsize, <liquid:srn_hdt_basic_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 548/ACRate, <liquid:srn_hdt_basic_eff_mix_warm>, ACbatchsize, <liquid:srn_hdt_basic_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1052/ACRate, <liquid:srn_hdt_adv_eff_mix_hot>, ACbatchsize, <liquid:srn_hdt_adv_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 536/ACRate, <liquid:srn_hdt_adv_eff_mix_warm>, ACbatchsize, <liquid:srn_hdt_adv_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 194*2000/drumbatchsize, <liquid:srn_hdt_basic_eff_mix>, drumbatchsize, <liquid:hdt_naphtha>, 1934*2000/drumbatchsize, <liquid:sour_water>, 194*2000/drumbatchsize, <liquid:srn_hdt_basic_sourgas>, 66*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 195*2000/drumbatchsize, <liquid:srn_hdt_adv_eff_mix>, drumbatchsize, <liquid:hdt_naphtha>, 1952*2000/drumbatchsize, <liquid:sour_water>, 195*2000/drumbatchsize, <liquid:srn_hdt_adv_sourgas>, 48*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 189*500/GLColumnBatchsize, <liquid:srn_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srn_hdt_basic_sweetgas>, 489*500/GLColumnBatchsize, <liquid:rich_mea>, 200*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 420*500/GLColumnBatchsize, <liquid:srn_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srn_hdt_adv_sweetgas>, 485*500/GLColumnBatchsize, <liquid:rich_mea>, 435*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 304*500/GLColumnBatchsize, <liquid:srn_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srn_hdt_basic_sweetgas>, 489*500/GLColumnBatchsize, <liquid:rich_mdea>, 315*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 262*500/GLColumnBatchsize, <liquid:srn_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srn_hdt_adv_sweetgas>, 485*500/GLColumnBatchsize, <liquid:rich_mdea>, 277*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srn_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 435*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 65*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srn_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 293*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 207*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

//GO HDT
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst>, 6, <liquid:sr_go_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 409*RXBatchsize/5000, <liquid:srgo_hdt_basic_eff_mix_boiling>, 5409*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:1>, 2, <modularmachinery:itemredstonesignal>, <liquid:sr_go_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 278*RXBatchsize/5000, <liquid:hydrogen>, 15*RXBatchsize/5000, <liquid:srgo_hdt_adv_eff_mix_boiling>, 5293*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_basic_eff_mix_boiling>*113, <liquid:srgo_hdt_basic_eff_mix_hot>*113, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_adv_eff_mix_boiling>*126, <liquid:srgo_hdt_adv_eff_mix_hot>*126, HXUnit);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:srgo_hdt_basic_eff_mix_hot>, drumbatchsize, <liquid:srgo_hdt_basic_eff_gas_hot>, 252*2000/drumbatchsize, <liquid:srgo_hdt_fracfeed_hot>, 1748*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:srgo_hdt_adv_eff_mix_hot>, drumbatchsize, <liquid:srgo_hdt_adv_eff_gas_hot>, 213*2000/drumbatchsize, <liquid:srgo_hdt_fracfeed_hot>, 1787*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_basic_eff_gas_hot>*73, <liquid:srgo_hdt_basic_eff_gas_warm>*73, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_basic_eff_gas_warm>*91, <liquid:srgo_hdt_basic_eff_gas>*91, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_adv_eff_gas_hot>*83, <liquid:srgo_hdt_adv_eff_gas_warm>*83, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_adv_eff_gas_warm>*105, <liquid:srgo_hdt_adv_eff_gas>*105, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2487/ACRate, <liquid:srgo_hdt_basic_eff_gas_hot>, ACbatchsize, <liquid:srgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1105/ACRate, <liquid:srgo_hdt_basic_eff_gas_warm>, ACbatchsize, <liquid:srgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2161/ACRate, <liquid:srgo_hdt_adv_eff_gas_hot>, ACbatchsize, <liquid:srgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 957/ACRate, <liquid:srgo_hdt_adv_eff_gas_warm>, ACbatchsize, <liquid:srgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 110*2000/drumbatchsize, <liquid:srgo_hdt_basic_eff_gas>, drumbatchsize, <liquid:srgo_hdt_fracfeed>, 731*2000/drumbatchsize, <liquid:sour_water>, 110*2000/drumbatchsize, <liquid:srgo_hdt_basic_sourgas>, 1269*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 132*2000/drumbatchsize, <liquid:srgo_hdt_adv_eff_gas>, drumbatchsize, <liquid:srgo_hdt_fracfeed>, 883*2000/drumbatchsize, <liquid:sour_water>, 132*2000/drumbatchsize, <liquid:srgo_hdt_adv_sourgas>, 1117*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 1188*500/GLColumnBatchsize, <liquid:srgo_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srgo_hdt_basic_sweetgas>, 457*500/GLColumnBatchsize, <liquid:rich_mea>, 1231*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 1629*500/GLColumnBatchsize, <liquid:srgo_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srgo_hdt_adv_sweetgas>, 441*500/GLColumnBatchsize, <liquid:rich_mea>, 1688*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 740*500/GLColumnBatchsize, <liquid:srgo_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srgo_hdt_basic_sweetgas>, 457*500/GLColumnBatchsize, <liquid:rich_mdea>, 783*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 1015*500/GLColumnBatchsize, <liquid:srgo_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srgo_hdt_adv_sweetgas>, 441*500/GLColumnBatchsize, <liquid:rich_mdea>, 1074*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srgo_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 465*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 35*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srgo_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 317*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 183*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:srgo_hdt_fracfeed>*347, <liquid:srgo_hdt_fracfeed_warm>*347, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:srgo_hdt_fracfeed_warm>*250, <liquid:srgo_hdt_fracfeed_hot>*250, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:srgo_hdt_fracfeed>*heaterbatchsize, <liquid:srgo_hdt_fracfeed_hot>*heaterbatchsize, 65*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:srgo_hdt_fracfeed_warm>*heaterbatchsize, <liquid:srgo_hdt_fracfeed_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_naphtha>*8,<liquid:hdt_go_warm>*992], [<immersiveengineering:material:6>], <liquid:srgo_hdt_fracfeed_hot>*1000, 12, 100, [0.000001]);

//VGO HDT
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:2>, 9, <liquid:sr_vgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 555*RXBatchsize/5000, <liquid:srvgo_hdt_basic_eff_mix_boiling>, 5555*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:3>, 3, <modularmachinery:itemredstonesignal>, <liquid:sr_vgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 377*RXBatchsize/5000, <liquid:hydrogen>, 20*RXBatchsize/5000, <liquid:srvgo_hdt_adv_eff_mix_boiling>, 5397*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_basic_eff_mix_boiling>*144, <liquid:srvgo_hdt_basic_eff_mix_hot>*144, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_adv_eff_mix_boiling>*149, <liquid:srvgo_hdt_adv_eff_mix_hot>*149, HXUnit);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:srvgo_hdt_basic_eff_mix_hot>, drumbatchsize, <liquid:srvgo_hdt_basic_eff_gas_hot>, 344*2000/drumbatchsize, <liquid:srvgo_hdt_fracfeed_hot>, 1656*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:srvgo_hdt_adv_eff_mix_hot>, drumbatchsize, <liquid:srvgo_hdt_adv_eff_gas_hot>, 295*2000/drumbatchsize, <liquid:srvgo_hdt_fracfeed_hot>, 1705*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_basic_eff_gas_hot>*74, <liquid:srvgo_hdt_basic_eff_gas_warm>*74, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_basic_eff_gas_warm>*93, <liquid:srvgo_hdt_basic_eff_gas>*93, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_adv_eff_gas_hot>*85, <liquid:srvgo_hdt_adv_eff_gas_warm>*85, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_adv_eff_gas_warm>*108, <liquid:srvgo_hdt_adv_eff_gas>*108, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2423/ACRate, <liquid:srvgo_hdt_basic_eff_gas_hot>, ACbatchsize, <liquid:srvgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1074/ACRate, <liquid:srvgo_hdt_basic_eff_gas_warm>, ACbatchsize, <liquid:srvgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2097/ACRate, <liquid:srvgo_hdt_adv_eff_gas_hot>, ACbatchsize, <liquid:srvgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 925/ACRate, <liquid:srvgo_hdt_adv_eff_gas_warm>, ACbatchsize, <liquid:srvgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 145*2000/drumbatchsize, <liquid:srvgo_hdt_basic_eff_gas>, drumbatchsize, <liquid:srvgo_hdt_fracfeed>, 725*2000/drumbatchsize, <liquid:sour_water>, 145*2000/drumbatchsize, <liquid:srvgo_hdt_basic_sourgas>, 1275*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 174*2000/drumbatchsize, <liquid:srvgo_hdt_adv_eff_gas>, drumbatchsize, <liquid:srvgo_hdt_fracfeed>, 870*2000/drumbatchsize, <liquid:sour_water>, 174*2000/drumbatchsize, <liquid:srvgo_hdt_adv_sourgas>, 1130*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 1756*500/GLColumnBatchsize, <liquid:srvgo_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srvgo_hdt_basic_sweetgas>, 436*500/GLColumnBatchsize, <liquid:rich_mea>, 1819*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 2374*500/GLColumnBatchsize, <liquid:srvgo_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srvgo_hdt_adv_sweetgas>, 414*500/GLColumnBatchsize, <liquid:rich_mea>, 2460*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 1094*500/GLColumnBatchsize, <liquid:srvgo_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srvgo_hdt_basic_sweetgas>, 436*500/GLColumnBatchsize, <liquid:rich_mdea>, 1158*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 1480*500/GLColumnBatchsize, <liquid:srvgo_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srvgo_hdt_adv_sweetgas>, 414*500/GLColumnBatchsize, <liquid:rich_mdea>, 1566*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srvgo_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 469*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 31*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srvgo_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 320*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 180*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:srvgo_hdt_fracfeed>*347, <liquid:srvgo_hdt_fracfeed_warm>*347, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:srvgo_hdt_fracfeed_warm>*240, <liquid:srvgo_hdt_fracfeed_hot>*240, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:srvgo_hdt_fracfeed>*heaterbatchsize, <liquid:srvgo_hdt_fracfeed_hot>*heaterbatchsize, 67*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:srvgo_hdt_fracfeed_warm>*heaterbatchsize, <liquid:srvgo_hdt_fracfeed_hot>*heaterbatchsize, 39*5000/heaterbatchsize, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_naphtha>*9,<liquid:hdt_go_warm>*15,<liquid:hdt_vgo_warm>*976], [<immersiveengineering:material:6>], <liquid:srvgo_hdt_fracfeed_hot>*1000, 14, 100, [0.000001]);

//VR HDT
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:3>, 16, <modularmachinery:itemredstonesignal>, <liquid:sr_vacuum_residue_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 996*RXBatchsize/5000, <liquid:hydrogen>, 53*RXBatchsize/5000, <liquid:srvr_hdt_basic_eff_mix_boiling>, 6049*RXBatchsize/5000, mmrecipecount, scaleeff);

mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:2>, 4, <modularmachinery:itemredstonesignal>, <liquid:sr_vacuum_residue_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 607*RXBatchsize/5000, <liquid:hydrogen>, 37*RXBatchsize/5000, <liquid:srvr_hdt_adv_eff_s1_boiling>, 5644*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:3>, 2, <modularmachinery:itemredstonesignal>, <liquid:srvr_hdt_adv_eff_s1_boiling>, 5644*5000/RXBatchsize, <liquid:hydrogen_boiling>, 68*RXBatchsize/5000, <liquid:hydrogen>, 37*RXBatchsize/5000, <liquid:srvr_hdt_adv_eff_mix_boiling>, 5749*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvr_hdt_basic_eff_mix_boiling>*110, <liquid:srvr_hdt_basic_eff_mix_hot>*110, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvr_hdt_adv_eff_mix_boiling>*114, <liquid:srvr_hdt_adv_eff_mix_hot>*114, HXUnit);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:srvr_hdt_basic_eff_mix_hot>, drumbatchsize, <liquid:srvr_hdt_basic_eff_gas_hot>, 521*2000/drumbatchsize, <liquid:srvr_hdt_fracfeed_hot>, 1479*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:srvr_hdt_adv_eff_mix_hot>, drumbatchsize, <liquid:srvr_hdt_adv_eff_gas_hot>, 444*2000/drumbatchsize, <liquid:srvr_hdt_fracfeed_hot>, 1556*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvr_hdt_basic_eff_gas_hot>*67, <liquid:srvr_hdt_basic_eff_gas_warm>*67, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvr_hdt_basic_eff_gas_warm>*84, <liquid:srvr_hdt_basic_eff_gas>*84, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvr_hdt_adv_eff_gas_hot>*76, <liquid:srvr_hdt_adv_eff_gas_warm>*76, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvr_hdt_adv_eff_gas_warm>*95, <liquid:srvr_hdt_adv_eff_gas>*95, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2691/ACRate, <liquid:srvr_hdt_basic_eff_gas_hot>, ACbatchsize, <liquid:srvr_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1198/ACRate, <liquid:srvr_hdt_basic_eff_gas_warm>, ACbatchsize, <liquid:srvr_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2370/ACRate, <liquid:srvr_hdt_adv_eff_gas_hot>, ACbatchsize, <liquid:srvr_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1052/ACRate, <liquid:srvr_hdt_adv_eff_gas_warm>, ACbatchsize, <liquid:srvr_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 198*2000/drumbatchsize, <liquid:srvr_hdt_basic_eff_gas>, drumbatchsize, <liquid:srvr_hdt_fracfeed>, 494*2000/drumbatchsize, <liquid:sour_water>, 198*2000/drumbatchsize, <liquid:srvr_hdt_basic_sourgas>, 1506*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 244*2000/drumbatchsize, <liquid:srvr_hdt_adv_eff_gas>, drumbatchsize, <liquid:srvr_hdt_fracfeed>, 610*2000/drumbatchsize, <liquid:sour_water>, 244*2000/drumbatchsize, <liquid:srvr_hdt_adv_sourgas>, 1390*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 2178*500/GLColumnBatchsize, <liquid:srvr_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srvr_hdt_basic_sweetgas>, 421*500/GLColumnBatchsize, <liquid:rich_mea>, 2257*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 2915*500/GLColumnBatchsize, <liquid:srvr_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srvr_hdt_adv_sweetgas>, 394*500/GLColumnBatchsize, <liquid:rich_mea>, 3021*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 1358*500/GLColumnBatchsize, <liquid:srvr_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srvr_hdt_basic_sweetgas>, 421*500/GLColumnBatchsize, <liquid:rich_mdea>, 1437*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 1817*500/GLColumnBatchsize, <liquid:srvr_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srvr_hdt_adv_sweetgas>, 394*500/GLColumnBatchsize, <liquid:rich_mdea>, 1922*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srvr_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 478*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 22*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srvr_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 328*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 172*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:srvr_hdt_fracfeed>*347, <liquid:srvr_hdt_fracfeed_warm>*347, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:srvr_hdt_fracfeed_warm>*241, <liquid:srvr_hdt_fracfeed_hot>*241, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:srvr_hdt_fracfeed>*heaterbatchsize, <liquid:srvr_hdt_fracfeed_hot>*heaterbatchsize, 67*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:srvr_hdt_fracfeed_warm>*heaterbatchsize, <liquid:srvr_hdt_fracfeed_hot>*heaterbatchsize, 39*5000/heaterbatchsize, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_naphtha>*12,<liquid:hdt_go_warm>*17,<liquid:vrhdt_bottom_hot>*971], [<immersiveengineering:material:6>], <liquid:srvr_hdt_fracfeed_hot>*1000, 20, 50, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:vrhdt_bottom_hot>*303, <liquid:vrhdt_bottom_boiling>*303, HXUnit);
mods.magneticraft.OilHeater.addRecipe(<liquid:vrhdt_bottom_hot>*heaterbatchsize, <liquid:vrhdt_bottom_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);

mods.magneticraft.Refinery.addRecipe(<liquid:vrhdt_bottom_boiling>*1000, <liquid:hdt_vacuum_residue_boiling>*980, null, <liquid:hdt_vgo_hot>*20, 40);


//Amine regen
mods.immersivepetroleum.Distillation.addRecipe([<liquid:h2s>*35,<liquid:lean_mea>*963], [<immersiveengineering:material:6>], <liquid:rich_mea>*1000, 380, 50, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:h2s>*55,<liquid:lean_mdea>*944], [<immersiveengineering:material:6>], <liquid:rich_mdea>*1000, 250, 50, [0.000001]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:carbondioxide>*72,<liquid:lean_mea>*926], [<immersiveengineering:material:6>], <liquid:rich_mea_co2>*1000, 450, 50, [0.000001]);


//Reformer
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_naphtha>*heaterbatchsize, <liquid:hdt_naphtha_blazing>*heaterbatchsize, 140*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_naphtha_warm>*heaterbatchsize, <liquid:hdt_naphtha_blazing>*heaterbatchsize, 92*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_naphtha_hot>*heaterbatchsize, <liquid:hdt_naphtha_blazing>*heaterbatchsize, 56*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_naphtha_boiling>*heaterbatchsize, <liquid:hdt_naphtha_blazing>*heaterbatchsize, 31*5000/heaterbatchsize, 1200);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_naphtha>*195, <liquid:hdt_naphtha_warm>*195, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_naphtha_warm>*260, <liquid:hdt_naphtha_hot>*260, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_naphtha_hot>*379, <liquid:hdt_naphtha_boiling>*379, HXUnit);

//Pt catalyst
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:5>, 1, <liquid:hdt_naphtha_blazing>, RXBatchsize, <liquid:hydrogen_boiling>, 500*RXBatchsize/5000, <liquid:napref_s1_boiling>, 5500*RXBatchsize/5000, mmrecipecount, scaleeff);

mods.magneticraft.OilHeater.addRecipe(<liquid:napref_s1_boiling>*heaterbatchsize, <liquid:napref_s1_blazing>*heaterbatchsize, 33*5000/heaterbatchsize, 1200);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:5>, 1, <liquid:napref_s1_blazing>, 0.5*RXBatchsize, <liquid:napref_s2_boiling>, 0.5*RXBatchsize, mmrecipecount, scaleeff);

mods.magneticraft.OilHeater.addRecipe(<liquid:napref_s2_boiling>*heaterbatchsize, <liquid:napref_s2_blazing>*heaterbatchsize, 29*5000/heaterbatchsize, 1200);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:5>, 1, <liquid:napref_s2_blazing>, 0.15*RXBatchsize, <liquid:napref_s3_boiling>, 0.15*RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:napref_s3_boiling>*222, <liquid:napref_s3_hot>*222, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:napref_s3_hot>*167, <liquid:napref_s3_warm>*167, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:napref_s3_warm>*185, <liquid:napref_s3>*185, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1593/ACRate, <liquid:napref_s3_boiling>, ACbatchsize, <liquid:napref_s3>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1141/ACRate, <liquid:napref_s3_hot>, ACbatchsize, <liquid:napref_s3>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 540/ACRate, <liquid:napref_s3_warm>, ACbatchsize, <liquid:napref_s3>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:napref_s3>, drumbatchsize, <liquid:reformer_gas>, 326*2000/drumbatchsize, <liquid:naphtha_reformate>, 1674*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:reformer_gas>*21,<liquid:naphtha_reformate_stripped>*979], [<immersiveengineering:material:6>], <liquid:naphtha_reformate>*1000, 200, 50, [0.000001]);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:reformer_gas>, GaspurifierBatchsize, <liquid:hydrogen>, 310*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 190*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.SaltMixer.addRecipe(<liquid:naphtha_reformate_stripped>*100, <liquid:sulfolane>*400, <liquid:naphtha_reformate_mix>*500);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:gasoline>*140,<liquid:naphtha_reformate_extr_bot>*860], [<immersiveengineering:material:6>], <liquid:naphtha_reformate_mix>*1000, 800, 100, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:naphtha_reformate_btx>*60,<liquid:sulfolane>*939], [<immersiveengineering:material:6>], <liquid:naphtha_reformate_extr_bot>*1000, 800, 100, [0.000001]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:benzene>*136,<liquid:naphtha_reformate_tx>*864], [<immersiveengineering:material:6>], <liquid:naphtha_reformate_btx>*1000, 280, 100, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:toluene>*438,<liquid:pxylene>*562], [<immersiveengineering:material:6>], <liquid:naphtha_reformate_tx>*1000, 280, 100, [0.000001]);

//PtIr catalyst
mmrecipecount = addadvreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:6>, 1, <liquid:hdt_naphtha_blazing>, RXBatchsize, <liquid:hydrogen_boiling>, 500*RXBatchsize/5000, <liquid:napref_adv_s1_boiling>, 5500*RXBatchsize/5000, mmrecipecount, scaleeff);

mods.magneticraft.OilHeater.addRecipe(<liquid:napref_adv_s1_boiling>*heaterbatchsize, <liquid:napref_adv_s1_blazing>*heaterbatchsize, 35*5000/heaterbatchsize, 1200);

mmrecipecount = addadvreactorrecipe3(RXTicktime, <modularmachinery:itemcatalyst:6>, 1, <liquid:napref_adv_s1_blazing>, 0.5*RXBatchsize, <liquid:napref_adv_s2_boiling>, 0.5*RXBatchsize, mmrecipecount, scaleeff);

mods.magneticraft.OilHeater.addRecipe(<liquid:napref_adv_s2_boiling>*heaterbatchsize, <liquid:napref_adv_s2_blazing>*heaterbatchsize, 31*5000/heaterbatchsize, 1200);

mmrecipecount = addadvreactorrecipe3(RXTicktime, <modularmachinery:itemcatalyst:6>, 1, <liquid:napref_adv_s2_blazing>, 0.15*RXBatchsize, <liquid:napref_adv_s3_boiling>, 0.15*RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:napref_adv_s3_boiling>*221, <liquid:napref_adv_s3_hot>*221, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:napref_adv_s3_hot>*165, <liquid:napref_adv_s3_warm>*165, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:napref_adv_s3_warm>*170, <liquid:napref_adv_s3>*170, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1650/ACRate, <liquid:napref_adv_s3_boiling>, ACbatchsize, <liquid:napref_adv_s3>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1197/ACRate, <liquid:napref_adv_s3_hot>, ACbatchsize, <liquid:napref_adv_s3>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 589/ACRate, <liquid:napref_adv_s3_warm>, ACbatchsize, <liquid:napref_adv_s3>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:napref_adv_s3>, drumbatchsize, <liquid:reformer_gas_adv>, 326*2000/drumbatchsize, <liquid:naphtha_reformate_adv>, 1674*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:reformer_gas_adv>*21,<liquid:naphtha_reformate_adv_stripped>*979], [<immersiveengineering:material:6>], <liquid:naphtha_reformate_adv>*1000, 200, 50, [0.000001]);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:reformer_gas_adv>, GaspurifierBatchsize, <liquid:hydrogen>, 402*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 98*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.SaltMixer.addRecipe(<liquid:naphtha_reformate_adv_stripped>*100, <liquid:sulfolane>*400, <liquid:naphtha_reformate_adv_mix>*500);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:gasoline>*118,<liquid:naphtha_reformate_adv_extr_bot>*882], [<immersiveengineering:material:6>], <liquid:naphtha_reformate_adv_mix>*1000, 800, 100, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:naphtha_reformate_adv_btx>*82,<liquid:sulfolane>*917], [<immersiveengineering:material:6>], <liquid:naphtha_reformate_adv_extr_bot>*1000, 800, 100, [0.000001]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:benzene>*144,<liquid:naphtha_reformate_adv_tx>*856], [<immersiveengineering:material:6>], <liquid:naphtha_reformate_adv_btx>*1000, 280, 100, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:toluene>*455,<liquid:pxylene>*545], [<immersiveengineering:material:6>], <liquid:naphtha_reformate_adv_tx>*1000, 280, 100, [0.000001]);


//H2 Plant - need rework
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:methane>, SMRBatchsize, <liquid:steam>, 32141, <liquid:fuel_gas>, 43, <liquid:smrproduct_blazing>, 25925, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:methane>, SMRBatchsize, <liquid:steam>, 32141, <liquid:gasoline>, 50, <liquid:smrproduct_blazing>, 25925, mmrecipecount, scaleeff);

mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:ethane>, SMRBatchsize, <liquid:steam>, 34283, <liquid:fuel_gas>, 42, <liquid:smrproduct_blazing>, 27653, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:ethane>, SMRBatchsize, <liquid:steam>, 34283, <liquid:gasoline>, 48, <liquid:smrproduct_blazing>, 27653, mmrecipecount, scaleeff);

mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:propane>, SMRBatchsize, <liquid:steam>, 35063, <liquid:fuel_gas>, 38, <liquid:smrproduct_blazing>, 28282, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:propane>, SMRBatchsize, <liquid:steam>, 35063, <liquid:gasoline>, 44, <liquid:smrproduct_blazing>, 28282, mmrecipecount, scaleeff);

mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:butane>, SMRBatchsize, <liquid:steam>, 35466, <liquid:fuel_gas>, 37, <liquid:smrproduct_blazing>, 28607, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:butane>, SMRBatchsize, <liquid:steam>, 35466, <liquid:gasoline>, 43, <liquid:smrproduct_blazing>, 28607, mmrecipecount, scaleeff);

mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:hdt_offgas>, SMRBatchsize, <liquid:steam>, 33607, <liquid:fuel_gas>, 39, <liquid:smrproduct_blazing>, 27107, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:hdt_offgas>, SMRBatchsize, <liquid:steam>, 33607, <liquid:gasoline>, 45, <liquid:smrproduct_blazing>, 27107, mmrecipecount, scaleeff);

mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:hdt_naphtha>, SMRBatchsize, <liquid:steam>, 36343, <liquid:fuel_gas>, 41, <liquid:smrproduct_blazing>, 29315, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:hdt_naphtha>, SMRBatchsize, <liquid:steam>, 36343, <liquid:gasoline>, 47, <liquid:smrproduct_blazing>, 29315, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:smrproduct_blazing>*73, <liquid:smrproduct_boiling>*73, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:smrproduct_boiling>*325, <liquid:smrproduct_hot>*325, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:smrproduct_hot>*227, <liquid:smrproduct_warm>*227, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:smrproduct_warm>*901, <liquid:smrproduct>*13, 12*HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1678/ACRate, <liquid:smrproduct_blazing>, ACbatchsize, <liquid:smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 308/ACRate, <liquid:smrproduct_boiling>, ACbatchsize, <liquid:smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1730/ACRate, <liquid:smrproduct_hot>, 976, <liquid:smrproduct>, 14, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1300/ACRate, <liquid:smrproduct_warm>, 976, <liquid:smrproduct>, 14, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:smrproduct>, drumbatchsize, <liquid:syngas>, 1139*2000/drumbatchsize, <liquid:sour_water>, 861*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(830040, <liquid:syngas>*51, [<liquid:hydrogen>*9, <liquid:carbon_monoxide>*42]);

mmrecipecount = addbasicreactorrecipe2(30, <modularmachinery:itemcatalyst:4>, 1, <liquid:smrproduct_hot>, 5003, <liquid:smrproduct_hts_hot>, 4149, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:smrproduct_hts_hot>*118, <liquid:smrproduct_hts_warm>*118, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 846/ACRate, <liquid:smrproduct_hts_hot>, ACbatchsize, <liquid:smrproduct_hts_warm>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addbasicreactorrecipe2(30, <modularmachinery:itemcatalyst:4>, 1, <liquid:smrproduct_hts_warm>, 5004, <liquid:smrproduct_lts_warm>, 4564, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:smrproduct_lts_warm>*1147, <liquid:smrproduct_lts>*19, 13*HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1147/ACRate, <liquid:smrproduct_lts_warm>, 1012, <liquid:smrproduct_lts>, 23, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:smrproduct_lts>, drumbatchsize, <liquid:smrproduct_ltsgas>, 1459*2000/drumbatchsize, <liquid:sour_water>, 541*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:smrproduct_lts>, GaspurifierBatchsize, <liquid:hydrogen>, 62*500/GaspurifierBatchsize, <liquid:fuel_gas>, 33*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 5453*500/GLColumnBatchsize, <liquid:smrproduct_lts>, GLColumnBatchsize, <liquid:hydrogen>, 77*500/GLColumnBatchsize, <liquid:rich_mea_co2>, 5876*500/GLColumnBatchsize, mmrecipecount, scaleeff);


//C2 steam cracker
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:ethane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:fuel_gas>, 110, <liquid:ethane_cracked_blazing>, 589, mmrecipecount, scaleeff);
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:ethane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:gasoline>, 133, <liquid:ethane_cracked_blazing>, 589, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:ethane_cracked_blazing>*59, <liquid:ethane_cracked_boiling>*59, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:ethane_cracked_boiling>*262, <liquid:ethane_cracked_hot>*262, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:ethane_cracked_hot>*245, <liquid:ethane_cracked_warm>*245, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:ethane_cracked_warm>*147, <liquid:ethane_cracked>*147, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 3162/ACRate, <liquid:ethane_cracked_blazing>, ACbatchsize, <liquid:ethane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1471/ACRate, <liquid:ethane_cracked_boiling>, ACbatchsize, <liquid:ethane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1090/ACRate, <liquid:ethane_cracked_hot>, ACbatchsize, <liquid:ethane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 682/ACRate, <liquid:ethane_cracked_warm>, ACbatchsize, <liquid:ethane_cracked>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:ethane_cracked>, drumbatchsize, <liquid:ethane_crackedgas>, 1697*2000/drumbatchsize, <liquid:sour_water>, 303*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:naoh_40>, 20*500/GLColumnBatchsize, <liquid:ethane_crackedgas>, GLColumnBatchsize, <liquid:ethane_crackedgas_washed>, GLColumnBatchsize, <liquid:naoh_used>, 20*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:ethane_crackedgas_washed>*504, [<liquid:ethane_cracked_demtop>*62, <liquid:ethane_cracked_dembot>*442]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:ethane_cracked_demtop>, GaspurifierBatchsize, <liquid:hydrogen>, 240*500/GaspurifierBatchsize, <liquid:methane>, 260*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:ethane_cracked_dembot>*500, [<liquid:ethane_cracked_deetop>*452, <liquid:ethane_cracked_deebot>*48]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:ethane_cracked_deetop>*476, [<liquid:ethene>*464, <liquid:ethane>*12]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:ethane_cracked_deebot>*498, [<liquid:ethane_cracked_deptop>*183, <liquid:ethane_cracked_depbot>*315]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:ethane_cracked_deptop>*496, [<liquid:propene>*449, <liquid:propane>*47]);

mods.pneumaticcraft.refinery.addRecipe(2580273, <liquid:ethane_cracked_depbot>*494, [<liquid:ethane_cracked_debtop>*185, <liquid:pygas>*309]);
mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:ethane_cracked_debtop>*494, [<liquid:butadiene>*446, <liquid:butane>*48]);


//C3 steam cracker
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:propane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:fuel_gas>, 90, <liquid:propane_cracked_blazing>, 589, mmrecipecount, scaleeff);
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:propane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:gasoline>, 109, <liquid:propane_cracked_blazing>, 589, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:propane_cracked_blazing>*67, <liquid:propane_cracked_boiling>*67, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:propane_cracked_boiling>*299, <liquid:propane_cracked_hot>*299, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:propane_cracked_hot>*283, <liquid:propane_cracked_warm>*283, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:propane_cracked_warm>*159, <liquid:propane_cracked>*159, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2814/ACRate, <liquid:propane_cracked_blazing>, ACbatchsize, <liquid:propane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1316/ACRate, <liquid:propane_cracked_boiling>, ACbatchsize, <liquid:propane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 981/ACRate, <liquid:propane_cracked_hot>, ACbatchsize, <liquid:propane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 627/ACRate, <liquid:propane_cracked_warm>, ACbatchsize, <liquid:propane_cracked>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:propane_cracked>, drumbatchsize, <liquid:propane_crackedgas>, 1697*2000/drumbatchsize, <liquid:sour_water>, 303*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:naoh_40>, 20*500/GLColumnBatchsize, <liquid:propane_crackedgas>, GLColumnBatchsize, <liquid:propane_crackedgas_washed>, GLColumnBatchsize, <liquid:naoh_used>, 20*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:propane_crackedgas_washed>*482, [<liquid:propane_cracked_demtop>*133, <liquid:propane_cracked_dembot>*349]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:propane_cracked_demtop>, 509, <liquid:hydrogen>, 26*500/GaspurifierBatchsize, <liquid:methane>, 483*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:propane_cracked_dembot>*492, [<liquid:propane_cracked_deetop>*287, <liquid:propane_cracked_deebot>*205]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:propane_cracked_deetop>*492, [<liquid:ethene>*467, <liquid:ethane>*25]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:propane_cracked_deebot>*501, [<liquid:propane_cracked_deptop>*311, <liquid:propane_cracked_depbot>*190]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:propane_cracked_deptop>*502, [<liquid:propene>*435, <liquid:propane>*67]);

mods.pneumaticcraft.refinery.addRecipe(2580273, <liquid:propane_cracked_depbot>*508, [<liquid:propane_cracked_debtop>*181, <liquid:pygas>*327]);
mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:propane_cracked_debtop>*495, [<liquid:butadiene>*447, <liquid:butane>*48]);


//C4 steam cracker
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:butane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:fuel_gas>, 71, <liquid:butane_cracked_blazing>, 589, mmrecipecount, scaleeff);
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:butane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:gasoline>, 86, <liquid:butane_cracked_blazing>, 589, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:butane_cracked_blazing>*69, <liquid:butane_cracked_boiling>*69, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:butane_cracked_boiling>*307, <liquid:butane_cracked_hot>*307, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1784/ACRate, <liquid:butane_cracked_blazing>, ACbatchsize, <liquid:butane_cracked_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 326/ACRate, <liquid:butane_cracked_boiling>, ACbatchsize, <liquid:butane_cracked_hot>, ACbatchsize, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:butane_crackedgas_humid_warm>*982,<liquid:pyoil_hot>*18], [<immersiveengineering:material:6>], <liquid:butane_cracked_hot>*1000, 250, 10, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:butane_crackedgas_humid_warm>*164, <liquid:butane_crackedgas_humid>*164, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 611/ACRate, <liquid:butane_crackedgas_humid_warm>, ACbatchsize, <liquid:butane_crackedgas_humid>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:butane_crackedgas_humid>, drumbatchsize, <liquid:butane_crackedgas>, 1691*2000/drumbatchsize, <liquid:sour_water>, 309*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:naoh_40>, 20*500/GLColumnBatchsize, <liquid:butane_crackedgas>, GLColumnBatchsize, <liquid:butane_crackedgas_washed>, GLColumnBatchsize, <liquid:naoh_used>, 20*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:butane_crackedgas_washed>*511, [<liquid:butane_cracked_demtop>*130, <liquid:butane_cracked_dembot>*382]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:butane_cracked_demtop>, 486, <liquid:hydrogen>, 12*500/GaspurifierBatchsize, <liquid:methane>, 474*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:butane_cracked_dembot>*500, [<liquid:butane_cracked_deetop>*293, <liquid:butane_cracked_deebot>*207]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:butane_cracked_deetop>*506, [<liquid:ethene>*457, <liquid:ethane>*49]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:butane_cracked_deebot>*508, [<liquid:butane_cracked_deptop>*305, <liquid:butane_cracked_depbot>*203]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:butane_cracked_deptop>*496, [<liquid:propene>*449, <liquid:propane>*47]);

mods.pneumaticcraft.refinery.addRecipe(2580273, <liquid:butane_cracked_depbot>*508, [<liquid:butane_cracked_debtop>*175, <liquid:pygas>*333]);
mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:butane_cracked_debtop>*499, [<liquid:butadiene>*391, <liquid:butane>*108]);


//Naphtha Steam cracker
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:hdt_naphtha>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:fuel_gas>, 63, <liquid:naphtha_cracked_blazing>, 589, mmrecipecount, scaleeff);
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:hdt_naphtha>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:gasoline>, 76, <liquid:naphtha_cracked_blazing>, 589, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_cracked_blazing>*71, <liquid:naphtha_cracked_boiling>*71, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_cracked_boiling>*319, <liquid:naphtha_cracked_hot>*319, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1717/ACRate, <liquid:naphtha_cracked_blazing>, ACbatchsize, <liquid:naphtha_cracked_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 314/ACRate, <liquid:naphtha_cracked_boiling>, ACbatchsize, <liquid:naphtha_cracked_hot>, ACbatchsize, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:naphtha_crackedgas_humid_warm>*922,<liquid:pyoil_hot>*78], [<immersiveengineering:material:6>], <liquid:naphtha_cracked_hot>*1000, 250, 10, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:pyoil_hot>*241, <liquid:pyoil_warm>*241, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:pyoil_warm>*350, <liquid:pyoil>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_crackedgas_humid_warm>*158, <liquid:naphtha_crackedgas_humid>*158, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:pyoil_hot>, ACbatchsize, <liquid:pyoil>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:pyoil_warm>, ACbatchsize, <liquid:pyoil>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 634/ACRate, <liquid:naphtha_crackedgas_humid_warm>, ACbatchsize, <liquid:naphtha_crackedgas_humid>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:naphtha_crackedgas_humid>, drumbatchsize, <liquid:naphtha_crackedgas>, 1671*2000/drumbatchsize, <liquid:sour_water>, 329*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:naoh_40>, 20*500/GLColumnBatchsize, <liquid:naphtha_crackedgas>, GLColumnBatchsize, <liquid:naphtha_crackedgas_washed>, GLColumnBatchsize, <liquid:naoh_used>, 20*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:naphtha_crackedgas_washed>*505, [<liquid:naphtha_cracked_demtop>*90, <liquid:naphtha_cracked_dembot>*415]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:naphtha_cracked_demtop>, 493, <liquid:hydrogen>, 11*500/GaspurifierBatchsize, <liquid:methane>, 482*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:naphtha_cracked_dembot>*499, [<liquid:naphtha_cracked_deetop>*210, <liquid:naphtha_cracked_deebot>*289]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:naphtha_cracked_deetop>*491, [<liquid:ethene>*433, <liquid:ethane>*58]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:naphtha_cracked_deebot>*505, [<liquid:naphtha_cracked_deptop>*214, <liquid:naphtha_cracked_depbot>*291]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:naphtha_cracked_deptop>*495, [<liquid:propene>*481, <liquid:propane>*14]);

mods.pneumaticcraft.refinery.addRecipe(2580273, <liquid:naphtha_cracked_depbot>*499, [<liquid:naphtha_cracked_debtop>*155, <liquid:pygas>*344]);
mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:naphtha_cracked_debtop>*493, [<liquid:butadiene>*395, <liquid:butane>*98]);

//Steam cracker aromatics
mods.nuclearcraft.SaltMixer.addRecipe(<liquid:pygas>*100, <liquid:sulfolane>*400, <liquid:pygas_mix>*500);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:gasoline>*98,<liquid:pygas_extr_bot>*902], [<immersiveengineering:material:6>], <liquid:pygas_mix>*1000, 800, 100, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:pygas_btx>*103,<liquid:sulfolane>*897], [<immersiveengineering:material:6>], <liquid:pygas_extr_bot>*1000, 800, 100, [0.000001]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:benzene>*454,<liquid:pygas_tx>*546], [<immersiveengineering:material:6>], <liquid:pygas_btx>*1000, 280, 100, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:toluene>*630,<liquid:pxylene>*370], [<immersiveengineering:material:6>], <liquid:pygas_tx>*1000, 280, 100, [0.000001]);


//Coker
mmrecipecount = addcokerrecipe(5000, <liquid:sr_vacuum_residue_blazing>, 20000, <liquid:vrcoker_effluent_boiling>, 9119, <immersiveengineering:material:6>, 41, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:vrcoker_fracgas_warm>*321,<liquid:lcgo_hot>*282,<liquid:hcgo_hot>*397], [<immersiveengineering:material:6>], <liquid:vrcoker_effluent_boiling>*1000, 300, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vrcoker_fracgas_warm>*247, <liquid:vrcoker_fracgas>*247, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lcgo_hot>*250, <liquid:lcgo_warm>*250, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lcgo_warm>*350, <liquid:lcgo>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hcgo_hot>*241, <liquid:hcgo_warm>*241, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hcgo_warm>*350, <liquid:hcgo>*350, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 404/ACRate, <liquid:vrcoker_fracgas_warm>, ACbatchsize, <liquid:vrcoker_fracgas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 686/ACRate, <liquid:lcgo_hot>, ACbatchsize, <liquid:lcgo>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:lcgo_warm>, ACbatchsize, <liquid:lcgo>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:hcgo_hot>, ACbatchsize, <liquid:hcgo>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:hcgo_warm>, ACbatchsize, <liquid:hcgo>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:vrcoker_fracgas>, drumbatchsize, <liquid:coker_naphtha>, 1246*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:vrcoker_sourgas>, 754*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 4273*500/GLColumnBatchsize, <liquid:vrcoker_sourgas>, GLColumnBatchsize, <liquid:vrcoker_gas>, 345*500/GLColumnBatchsize, <liquid:rich_mea>, 4428*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 2663*500/GLColumnBatchsize, <liquid:vrcoker_sourgas>, GLColumnBatchsize, <liquid:vrcoker_gas>, 345*500/GLColumnBatchsize, <liquid:rich_mdea>, 2818*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:vrcoker_gas>*503, [<liquid:methane>*152, <liquid:vrcoker_gas_dembot>*351]);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:vrcoker_gas_dembot>*496, [<liquid:vrcoker_gas_deetop>*190, <liquid:vrcoker_gas_deebot>*306]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:vrcoker_gas_deetop>*484, [<liquid:ethene>*154, <liquid:ethane>*330]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:vrcoker_gas_deebot>*491, [<liquid:vrcoker_gas_deptop>*254, <liquid:vrcoker_gas_depbot>*237]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:vrcoker_gas_deptop>*495, [<liquid:propene>*231, <liquid:propane>*264]);

mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:vrcoker_gas_depbot>*504, [<liquid:butadiene>*243, <liquid:butane>*261]);


//Gasifier


//Functions
//3 phase sep: 2 liquid inputs, 3 liquid outputs, 1 energy input
function add3phaseseprecipe(power as int, time as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, output1 as ILiquidStack, out1 as int, output2 as ILiquidStack, out2 as int, output3 as ILiquidStack, out3 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steel3phasesepsmall", time, 0)
  .addEnergyPerTickInput(power*eff[0]).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidOutput(output1*(out1*eff[0])).addFluidOutput(output2*(out2*eff[0])).addFluidOutput(output3*(out3*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steel3phasesepmedium", time, 0)
  .addEnergyPerTickInput(power*eff[1]).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidOutput(output1*(out1*eff[1])).addFluidOutput(output2*(out2*eff[1])).addFluidOutput(output3*(out3*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steel3phaseseplarge", time, 0)
  .addEnergyPerTickInput(power*eff[2]).addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidOutput(output1*(out1*eff[2])).addFluidOutput(output2*(out2*eff[2])).addFluidOutput(output3*(out3*eff[2])).build();
  return number;
}
//3 phase sep: 1 liquid inputs, 3 liquid outputs
function add3phaseseprecipe2(time as int, input1 as ILiquidStack, in1 as int, output1 as ILiquidStack, out1 as int, output2 as ILiquidStack, out2 as int, output3 as ILiquidStack, out3 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steel3phasesepsmall", time, 0)
  .addFluidInput(input1*(in1*eff[0])).addFluidOutput(output1*(out1*eff[0])).addFluidOutput(output2*(out2*eff[0])).addFluidOutput(output3*(out3*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steel3phasesepmedium", time, 0)
  .addFluidInput(input1*(in1*eff[1])).addFluidOutput(output1*(out1*eff[1])).addFluidOutput(output2*(out2*eff[1])).addFluidOutput(output3*(out3*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steel3phaseseplarge", time, 0)
  .addFluidInput(input1*(in1*eff[2])).addFluidOutput(output1*(out1*eff[2])).addFluidOutput(output2*(out2*eff[2])).addFluidOutput(output3*(out3*eff[2])).build();
  return number;
}

//3 phase sep: 2 liquid inputs, 3 liquid outputs
function add3phaseseprecipe3(time as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, output1 as ILiquidStack, out1 as int, output2 as ILiquidStack, out2 as int, output3 as ILiquidStack, out3 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steel3phasesepsmall", time, 0)
  .addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidOutput(output1*(out1*eff[0])).addFluidOutput(output2*(out2*eff[0])).addFluidOutput(output3*(out3*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steel3phasesepmedium", time, 0)
  .addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidOutput(output1*(out1*eff[1])).addFluidOutput(output2*(out2*eff[1])).addFluidOutput(output3*(out3*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steel3phaseseplarge", time, 0)
  .addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidOutput(output1*(out1*eff[2])).addFluidOutput(output2*(out2*eff[2])).addFluidOutput(output3*(out3*eff[2])).build();
  return number;
}

//Gas-liquid separator
function add2phaseseprecipe(time as int, input1 as ILiquidStack, in1 as int, output1 as ILiquidStack, out1 as int, output2 as ILiquidStack, out2 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelgasliqsepsmall", time, 0)
  .addFluidInput(input1*(in1*eff[0])).addFluidOutput(output1*(out1*eff[0])).addFluidOutput(output2*(out2*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelgasliqsepmedium", time, 0)
  .addFluidInput(input1*(in1*eff[1])).addFluidOutput(output1*(out1*eff[1])).addFluidOutput(output2*(out2*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelgasliqseplarge", time, 0)
  .addFluidInput(input1*(in1*eff[2])).addFluidOutput(output1*(out1*eff[2])).addFluidOutput(output2*(out2*eff[2])).build();
  return number;
}

//Air cooler
function addaircoolerrecipe(power as int, time as int, input1 as ILiquidStack, in1 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "aircoolersmall", time, 0)
  .addEnergyPerTickInput(power*eff[0]).addFluidInput(input1*(in1*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "aircoolermedium", time, 0)
  .addEnergyPerTickInput(power*eff[1]).addFluidInput(input1*(in1*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "aircoolerlarge", time, 0)
  .addEnergyPerTickInput(power*eff[2]).addFluidInput(input1*(in1*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
  return number;
}

//Basic Reactor
function addbasicreactorrecipe(time as int, catalyst as IItemStack, cat1 as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactorsmall", time, 0)
  .addItemInput(catalyst*(cat1*eff[0])).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactormedium", time, 0)
  .addItemInput(catalyst*(cat1*eff[1])).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactorlarge", time, 0)
  .addItemInput(catalyst*(cat1*eff[2])).addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
  return number;
}

//Basic Reactor with single input
function addbasicreactorrecipe2(time as int, catalyst as IItemStack, cat1 as int, input1 as ILiquidStack, in1 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactorsmall", time, 0)
  .addItemInput(catalyst*(cat1*eff[0])).addFluidInput(input1*(in1*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactormedium", time, 0)
  .addItemInput(catalyst*(cat1*eff[1])).addFluidInput(input1*(in1*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactorlarge", time, 0)
  .addItemInput(catalyst*(cat1*eff[2])).addFluidInput(input1*(in1*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
  return number;
}

//Advanced Reactor
function addadvreactorrecipe(time as int, catalyst as IItemStack, cat1 as int, redstone as IItemStack, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, input3 as ILiquidStack, in3 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvsmall", time, 0)
  .addItemInput(catalyst*(cat1*eff[0])).addItemInput(redstone).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidInput(input3*(in3*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvmedium", time, 0)
  .addItemInput(catalyst*(cat1*eff[1])).addItemInput(redstone).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidInput(input3*(in3*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvlarge", time, 0)
  .addItemInput(catalyst*(cat1*eff[2])).addItemInput(redstone).addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidInput(input3*(in3*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
  return number;
}

function addadvreactorrecipe2(time as int, catalyst as IItemStack, cat1 as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvsmall", time, 0)
  .addItemInput(catalyst*(cat1*eff[0])).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvmedium", time, 0)
  .addItemInput(catalyst*(cat1*eff[1])).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvlarge", time, 0)
  .addItemInput(catalyst*(cat1*eff[2])).addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
  return number;
}

function addadvreactorrecipe3(time as int, catalyst as IItemStack, cat1 as int, input1 as ILiquidStack, in1 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvsmall", time, 0)
  .addItemInput(catalyst*(cat1*eff[0])).addFluidInput(input1*(in1*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvmedium", time, 0)
  .addItemInput(catalyst*(cat1*eff[1])).addFluidInput(input1*(in1*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvlarge", time, 0)
  .addItemInput(catalyst*(cat1*eff[2])).addFluidInput(input1*(in1*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
  return number;
}

//Cracking furnace
function addsteamcrackerrecipe(time as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, input3 as ILiquidStack, in3 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steamcrackersmall", time, 0)
  .addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidInput(input3*(in3*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steamcrackermedium", time, 0)
  .addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidInput(input3*(in3*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steamcrackerlarge", time, 0)
  .addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidInput(input3*(in3*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
  return number;
}

//SMR furnace
function addsmrrecipe(time as int, catalyst as IItemStack, cat1 as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, input3 as ILiquidStack, in3 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "smrfurnacesmall", time, 0)
  .addItemInput(catalyst*(cat1*eff[0])).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidInput(input3*(in3*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "smrfurnacelarge", time, 0)
  .addItemInput(catalyst*(cat1*eff[1])).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidInput(input3*(in3*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  return number;
}

//Gasifier
function addgasifierrecipe(time as int, fuel as IItemStack, fuel1 as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, output1 as ILiquidStack, out1 as int, output2 as IItemStack, out2 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "gasifiersmall", time, 0)
  .addItemInput(fuel*(fuel1*eff[0])).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidOutput(output1*(out1*eff[0])).addItemOutput(output2*(out2*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "gasifierlarge", time, 0)
  .addItemInput(fuel*(fuel1*eff[1])).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidOutput(output1*(out1*eff[1])).addItemOutput(output2*(out2*eff[1])).build();
  return number;
}

//Exchanger column
function addglcolumnrecipe(time as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, output1 as ILiquidStack, out1 as int, output2 as ILiquidStack, out2 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "columnsmall", time, 0)
  .addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidOutput(output1*(out1*eff[0])).addFluidOutput(output2*(out2*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "columnmedium", time, 0)
  .addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidOutput(output1*(out1*eff[1])).addFluidOutput(output2*(out2*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "columnlarge", time, 0)
  .addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidOutput(output1*(out1*eff[2])).addFluidOutput(output2*(out2*eff[2])).build();
  return number;
}

//Gas Purifier
function addgaspurifierrecipe(power as int, time as int, input1 as ILiquidStack, in1 as int, output1 as ILiquidStack, out1 as int, output2 as ILiquidStack, out2 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "gaspurifiersmall", time, 0)
  .addEnergyPerTickInput(power*eff[0]).addFluidInput(input1*(in1*eff[0])).addFluidOutput(output1*(out1*eff[0])).addFluidOutput(output2*(out2*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "gaspurifiermedium", time, 0)
  .addEnergyPerTickInput(power*eff[1]).addFluidInput(input1*(in1*eff[1])).addFluidOutput(output1*(out1*eff[1])).addFluidOutput(output2*(out2*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "gaspurifierlarge", time, 0)
  .addEnergyPerTickInput(power*eff[2]).addFluidInput(input1*(in1*eff[2])).addFluidOutput(output1*(out1*eff[2])).addFluidOutput(output2*(out2*eff[2])).build();
  return number;
}

//Coker drum
function addcokerrecipe(time as int, input1 as ILiquidStack, in1 as int, output1 as ILiquidStack, out1 as int, output as IItemStack, out as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "cokersmall", time, 0)
  .addFluidInput(input1*(in1*eff[0])).addFluidOutput(output1*(out1*eff[0])).addItemOutput(output*(out*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "cokermedium", time, 0)
  .addFluidInput(input1*(in1*eff[1])).addFluidOutput(output1*(out1*eff[1])).addItemOutput(output*(out*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "cokerlarge", time, 0)
  .addFluidInput(input1*(in1*eff[2])).addFluidOutput(output1*(out1*eff[2])).addItemOutput(output*(out*eff[2])).build();
  return number;
}
