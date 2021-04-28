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


//Post-HDT - 100% eff
mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline>*1000, <liquid:hdt_naphtha>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel>*1000, <liquid:hdt_go>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*1000, <liquid:hdt_vgo>*1000, <liquid:steam>*100, 64);

mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline>*1000, <liquid:hdt_naphtha_warm>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel>*1000, <liquid:hdt_go_warm>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*1000, <liquid:hdt_vgo_warm>*1000, <liquid:steam>*100, 64);



//Refining
//Just dump it into the tower - 25% eff + AR to Coke
mods.immersivepetroleum.Distillation.addRecipe([<liquid:fuel_oil>*109], [<immersiveengineering:material:6>*6], <liquid:oil>*1000, 1446, 100, [1.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:fuel_oil>*94], [<immersiveengineering:material:6>*7], <liquid:crude_heavy>*1000, 1477, 100, [1.0]);

//Crude oil desalting - Slower recipe
mmrecipecount = add3phaseseprecipe(40, 2*drumprocessingtime, <liquid:water>, 500/2000*drumbatchsize, <liquid:oil>, drumbatchsize, <liquid:crude_desalted>, 1970/2000*drumbatchsize, <liquid:oil_brine>, 500/2000*drumbatchsize, <liquid:natural_gas>, 30/2000*drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe(40, 2*drumprocessingtime, <liquid:water>, 500/2000*drumbatchsize, <liquid:crude_heavy>, drumbatchsize, <liquid:crude_heavy_desalted>, 1990/2000*drumbatchsize, <liquid:oil_brine>, 500/2000*drumbatchsize, <liquid:natural_gas>, 10/2000*drumbatchsize, mmrecipecount, scaleeff);

//Crude oil desalting - Faster recipe (Gas/brine temperature TBD)
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:oil>*268, <liquid:oil_warm>*268, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_heavy>*279, <liquid:crude_heavy_warm>*279, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:oil>*heaterbatchsize, <liquid:oil_warm>*heaterbatchsize, 35*5000/heaterbatchsize, 600);
mods.magneticraft.OilHeater.addRecipe(<liquid:crude_heavy>*heaterbatchsize, <liquid:crude_heavy_warm>*heaterbatchsize, 34*5000/heaterbatchsize, 600);

mmrecipecount = add3phaseseprecipe(40, drumprocessingtime, <liquid:water>, 500/2000*drumbatchsize, <liquid:oil_warm>, drumbatchsize, <liquid:crude_desalted_warm>, 1970/2000*drumbatchsize, <liquid:oil_brine>, 500/2000*drumbatchsize, <liquid:natural_gas>, 30/2000*drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe(40, drumprocessingtime, <liquid:water>, 500/2000*drumbatchsize, <liquid:crude_heavy_warm>, drumbatchsize, <liquid:crude_heavy_desalted_warm>, 1990/2000*drumbatchsize, <liquid:oil_brine>, 500/2000*drumbatchsize, <liquid:natural_gas>, 10/2000*drumbatchsize, mmrecipecount, scaleeff);


//ADU - Heatup
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_desalted>*268, <liquid:crude_desalted_warm>*268, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_heavy_desalted>*279, <liquid:crude_heavy_desalted_warm>*279, HXUnit);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_desalted_warm>*224, <liquid:crude_desalted_hot>*224, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_heavy_desalted_warm>*223, <liquid:crude_heavy_desalted_hot>*223, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:crude_desalted>*heaterbatchsize, <liquid:crude_desalted_hot>*heaterbatchsize, 78*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:crude_heavy_desalted>*heaterbatchsize, <liquid:crude_heavy_desalted_hot>*heaterbatchsize, 77*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:crude_desalted_warm>*heaterbatchsize, <liquid:crude_desalted_hot>*heaterbatchsize, 42*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:crude_heavy_desalted_warm>*heaterbatchsize, <liquid:crude_heavy_desalted_hot>*heaterbatchsize, 43*5000/heaterbatchsize, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:adu_gas_light_warm>*264,<liquid:sr_go_hot>*305,<liquid:ar_hot>*431], [<immersiveengineering:material:6>], <liquid:crude_desalted_hot>*1000, 10, 30, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:adu_gas_heavy_warm>*191,<liquid:sr_go_hot>*286,<liquid:ar_hot>*523], [<immersiveengineering:material:6>], <liquid:crude_heavy_desalted_hot>*1000, 10, 30, [0.000001]);

//ADU Products
mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:adu_gas_light>, drumbatchsize, <liquid:sr_naphtha>, 1885*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:natural_gas>, 115*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:adu_gas_heavy>, drumbatchsize, <liquid:sr_naphtha>, 1947*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:natural_gas>, 53*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:adu_gas_light_warm>*188, <liquid:adu_gas_light>*188, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:adu_gas_heavy_warm>*186, <liquid:adu_gas_heavy>*186, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_naphtha_hot>*235, <liquid:sr_naphtha_warm>*235, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_naphtha_warm>*183, <liquid:sr_naphtha>*183, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_go_boiling>*227, <liquid:sr_go_hot>*227, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_go_hot>*226, <liquid:sr_go_warm>*226, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_go_warm>*316, <liquid:sr_go>*316, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:ar_boiling>*274, <liquid:ar_hot>*274, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:ar_hot>*217, <liquid:ar_warm>*217, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:ar_warm>*316, <liquid:ar>*316, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_naphtha>*heaterbatchsize, <liquid:sr_naphtha_hot>*heaterbatchsize, 92*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_naphtha_warm>*heaterbatchsize, <liquid:sr_naphtha_hot>*heaterbatchsize, 40*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go>*heaterbatchsize, <liquid:sr_go_boiling>*heaterbatchsize, 114*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go_warm>*heaterbatchsize, <liquid:sr_go_boiling>*heaterbatchsize, 72*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go_hot>*heaterbatchsize, <liquid:sr_go_boiling>*heaterbatchsize, 42*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:ar>*heaterbatchsize, <liquid:ar_boiling>*heaterbatchsize, 108*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:ar_warm>*heaterbatchsize, <liquid:ar_boiling>*heaterbatchsize, 73*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:ar_hot>*heaterbatchsize, <liquid:ar_boiling>*heaterbatchsize, 35*5000/heaterbatchsize, 900);

mmrecipecount = addaircoolerrecipe(ACduty, 532/ACRate, <liquid:adu_gas_light_warm>, ACbatchsize, <liquid:adu_gas_light>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 539/ACRate, <liquid:adu_gas_heavy_warm>, ACbatchsize, <liquid:adu_gas_heavy>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 759/ACRate, <liquid:sr_go_hot>, ACbatchsize, <liquid:sr_go>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 316/ACRate, <liquid:sr_go_warm>, ACbatchsize, <liquid:sr_go>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 776/ACRate, <liquid:ar_hot>, ACbatchsize, <liquid:ar>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 316/ACRate, <liquid:ar_warm>, ACbatchsize, <liquid:ar>, ACbatchsize, mmrecipecount, scaleeff);

//VDU
mods.magneticraft.Refinery.addRecipe(<liquid:ar_boiling>*500, <liquid:sr_vacuum_residue_boiling>*206, null, <liquid:sr_vgo_hot>*294, 20);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vgo_boiling>*274, <liquid:sr_vgo_hot>*274, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vgo_hot>*217, <liquid:sr_vgo_warm>*217, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vgo_warm>*316, <liquid:sr_vgo>*316, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vacuum_residue_boiling>*274, <liquid:sr_vacuum_residue_hot>*274, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vacuum_residue_hot>*217, <liquid:sr_vacuum_residue_warm>*217, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vacuum_residue_warm>*316, <liquid:sr_vacuum_residue>*316, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo_hot>*heaterbatchsize, <liquid:sr_vgo_boiling>*heaterbatchsize, 35*5000/heaterbatchsize, 900);

mmrecipecount = addaircoolerrecipe(ACduty, 776/ACRate, <liquid:sr_vgo_hot>, ACbatchsize, <liquid:sr_vgo>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 316/ACRate, <liquid:sr_vgo_warm>, ACbatchsize, <liquid:sr_vgo>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1141/ACRate, <liquid:sr_vacuum_residue_boiling>, ACbatchsize, <liquid:sr_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 776/ACRate, <liquid:sr_vacuum_residue_hot>, ACbatchsize, <liquid:sr_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 316/ACRate, <liquid:sr_vacuum_residue_warm>, ACbatchsize, <liquid:sr_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);

//H2
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hydrogen>*50, <liquid:hydrogen_warm>*50, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hydrogen_warm>*40, <liquid:hydrogen_hot>*40, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hydrogen_hot>*59, <liquid:hydrogen_boiling>*59, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:hydrogen>*heaterbatchsize, <liquid:hydrogen_hot>*heaterbatchsize, 424*5000/heaterbatchsize, 700);
mods.magneticraft.OilHeater.addRecipe(<liquid:hydrogen_warm>*heaterbatchsize, <liquid:hydrogen_hot>*heaterbatchsize, 234*5000/heaterbatchsize, 700);
mods.magneticraft.OilHeater.addRecipe(<liquid:hydrogen_hot>*heaterbatchsize, <liquid:hydrogen_boiling>*heaterbatchsize, 161*5000/heaterbatchsize, 900);

//NHT
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst>, 6, <liquid:sr_naphtha_hot>, RXBatchsize, <liquid:hydrogen_hot>, 165*RXBatchsize/5000, <liquid:srn_hdt_basic_eff_mix_hot>, 5165*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:1>, 2, <modularmachinery:itemredstonesignal>, <liquid:sr_naphtha_hot>, RXBatchsize, <liquid:hydrogen_hot>, 112*RXBatchsize/5000, <liquid:hydrogen>, 6*RXBatchsize/5000, <liquid:srn_hdt_adv_eff_mix_hot>, 5118*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srn_hdt_basic_eff_mix_hot>*171, <liquid:srn_hdt_basic_eff_mix_warm>*171, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srn_hdt_basic_eff_mix_warm>*171, <liquid:srn_hdt_basic_eff_mix>*171, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srn_hdt_adv_eff_mix_hot>*176, <liquid:srn_hdt_adv_eff_mix_warm>*176, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srn_hdt_adv_eff_mix_warm>*175, <liquid:srn_hdt_adv_eff_mix>*175, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1172/ACRate, <liquid:srn_hdt_basic_eff_mix_hot>, ACbatchsize, <liquid:srn_hdt_basic_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 585/ACRate, <liquid:srn_hdt_basic_eff_mix_warm>, ACbatchsize, <liquid:srn_hdt_basic_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1142/ACRate, <liquid:srn_hdt_adv_eff_mix_hot>, ACbatchsize, <liquid:srn_hdt_adv_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 572/ACRate, <liquid:srn_hdt_adv_eff_mix_warm>, ACbatchsize, <liquid:srn_hdt_adv_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 194*2000/drumbatchsize, <liquid:srn_hdt_basic_eff_mix>, drumbatchsize, <liquid:hdt_naphtha>, 1934*2000/drumbatchsize, <liquid:sour_water>, 194*2000/drumbatchsize, <liquid:srn_hdt_basic_sourgas>, 66*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 195*2000/drumbatchsize, <liquid:srn_hdt_adv_eff_mix>, drumbatchsize, <liquid:hdt_naphtha>, 1952*2000/drumbatchsize, <liquid:sour_water>, 195*2000/drumbatchsize, <liquid:srn_hdt_adv_sourgas>, 48*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_amine>, 265*500/GLColumnBatchsize, <liquid:srn_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srn_hdt_basic_sweetgas>, 489*500/GLColumnBatchsize, <liquid:rich_amine>, 276*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_amine>, 366*500/GLColumnBatchsize, <liquid:srn_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srn_hdt_adv_sweetgas>, 485*500/GLColumnBatchsize, <liquid:rich_amine>, 381*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srn_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 435*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 65*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srn_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 293*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 207*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

//GO HDT
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst>, 6, <liquid:sr_go_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 409*RXBatchsize/5000, <liquid:srgo_hdt_basic_eff_mix_boiling>, 5409*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:1>, 2, <modularmachinery:itemredstonesignal>, <liquid:sr_go_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 278*RXBatchsize/5000, <liquid:hydrogen>, 15*RXBatchsize/5000, <liquid:srgo_hdt_adv_eff_mix_boiling>, 5293*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_basic_eff_mix_boiling>*136, <liquid:srgo_hdt_basic_eff_mix_hot>*136, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_adv_eff_mix_boiling>*140, <liquid:srgo_hdt_adv_eff_mix_hot>*140, HXUnit);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:srgo_hdt_basic_eff_mix_hot>, drumbatchsize, <liquid:srgo_hdt_basic_eff_gas_hot>, 252*2000/drumbatchsize, <liquid:srgo_hdt_fracfeed_hot>, 1748*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:srgo_hdt_adv_eff_mix_hot>, drumbatchsize, <liquid:srgo_hdt_adv_eff_gas_hot>, 213*2000/drumbatchsize, <liquid:srgo_hdt_fracfeed_hot>, 1787*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_basic_eff_gas_hot>*66, <liquid:srgo_hdt_basic_eff_gas_warm>*66, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_basic_eff_gas_warm>*82, <liquid:srgo_hdt_basic_eff_gas>*82, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_adv_eff_gas_hot>*76, <liquid:srgo_hdt_adv_eff_gas_warm>*76, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srgo_hdt_adv_eff_gas_warm>*95, <liquid:srgo_hdt_adv_eff_gas>*95, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2751/ACRate, <liquid:srgo_hdt_basic_eff_gas_hot>, ACbatchsize, <liquid:srgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1222/ACRate, <liquid:srgo_hdt_basic_eff_gas_warm>, ACbatchsize, <liquid:srgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2390/ACRate, <liquid:srgo_hdt_adv_eff_gas_hot>, ACbatchsize, <liquid:srgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1058/ACRate, <liquid:srgo_hdt_adv_eff_gas_warm>, ACbatchsize, <liquid:srgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 110*2000/drumbatchsize, <liquid:srgo_hdt_basic_eff_gas>, drumbatchsize, <liquid:srgo_hdt_fracfeed>, 731*2000/drumbatchsize, <liquid:sour_water>, 110*2000/drumbatchsize, <liquid:srgo_hdt_basic_sourgas>, 1269*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 132*2000/drumbatchsize, <liquid:srgo_hdt_adv_eff_gas>, drumbatchsize, <liquid:srgo_hdt_fracfeed>, 883*2000/drumbatchsize, <liquid:sour_water>, 132*2000/drumbatchsize, <liquid:srgo_hdt_adv_sourgas>, 1117*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_amine>, 1034*500/GLColumnBatchsize, <liquid:srgo_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srgo_hdt_basic_sweetgas>, 457*500/GLColumnBatchsize, <liquid:rich_amine>, 1077*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_amine>, 1418*500/GLColumnBatchsize, <liquid:srgo_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srgo_hdt_adv_sweetgas>, 441*500/GLColumnBatchsize, <liquid:rich_amine>, 1477*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srgo_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 465*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 35*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srgo_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 317*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 183*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:srgo_hdt_fracfeed>*315, <liquid:srgo_hdt_fracfeed_warm>*315, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:srgo_hdt_fracfeed_warm>*226, <liquid:srgo_hdt_fracfeed_hot>*226, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:srgo_hdt_fracfeed>*heaterbatchsize, <liquid:srgo_hdt_fracfeed_hot>*heaterbatchsize, 72*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:srgo_hdt_fracfeed_warm>*heaterbatchsize, <liquid:srgo_hdt_fracfeed_hot>*heaterbatchsize, 42*5000/heaterbatchsize, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_naphtha>*8,<liquid:hdt_go_warm>*992], [<immersiveengineering:material:6>], <liquid:srgo_hdt_fracfeed_hot>*1000, 12, 100, [0.000001]);

//VGO HDT
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:2>, 9, <liquid:sr_vgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 555*RXBatchsize/5000, <liquid:srvgo_hdt_basic_eff_mix_boiling>, 5555*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:3>, 3, <modularmachinery:itemredstonesignal>, <liquid:sr_vgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 377*RXBatchsize/5000, <liquid:hydrogen>, 20*RXBatchsize/5000, <liquid:srvgo_hdt_adv_eff_mix_boiling>, 5397*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_basic_eff_mix_boiling>*131, <liquid:srvgo_hdt_basic_eff_mix_hot>*131, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_adv_eff_mix_boiling>*136, <liquid:srvgo_hdt_adv_eff_mix_hot>*136, HXUnit);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:srvgo_hdt_basic_eff_mix_hot>, drumbatchsize, <liquid:srvgo_hdt_basic_eff_gas_hot>, 344*2000/drumbatchsize, <liquid:srvgo_hdt_fracfeed_hot>, 1656*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:srvgo_hdt_adv_eff_mix_hot>, drumbatchsize, <liquid:srvgo_hdt_adv_eff_gas_hot>, 295*2000/drumbatchsize, <liquid:srvgo_hdt_fracfeed_hot>, 1705*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_basic_eff_gas_hot>*67, <liquid:srvgo_hdt_basic_eff_gas_warm>*67, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_basic_eff_gas_warm>*84, <liquid:srvgo_hdt_basic_eff_gas>*84, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_adv_eff_gas_hot>*77, <liquid:srvgo_hdt_adv_eff_gas_warm>*77, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:srvgo_hdt_adv_eff_gas_warm>*98, <liquid:srvgo_hdt_adv_eff_gas>*98, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2680/ACRate, <liquid:srvgo_hdt_basic_eff_gas_hot>, ACbatchsize, <liquid:srvgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1188/ACRate, <liquid:srvgo_hdt_basic_eff_gas_warm>, ACbatchsize, <liquid:srvgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2319/ACRate, <liquid:srvgo_hdt_adv_eff_gas_hot>, ACbatchsize, <liquid:srvgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1024/ACRate, <liquid:srvgo_hdt_adv_eff_gas_warm>, ACbatchsize, <liquid:srvgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 145*2000/drumbatchsize, <liquid:srvgo_hdt_basic_eff_gas>, drumbatchsize, <liquid:srvgo_hdt_fracfeed>, 725*2000/drumbatchsize, <liquid:sour_water>, 145*2000/drumbatchsize, <liquid:srvgo_hdt_basic_sourgas>, 1275*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 174*2000/drumbatchsize, <liquid:srvgo_hdt_adv_eff_gas>, drumbatchsize, <liquid:srvgo_hdt_fracfeed>, 870*2000/drumbatchsize, <liquid:sour_water>, 174*2000/drumbatchsize, <liquid:srvgo_hdt_adv_sourgas>, 1130*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_amine>, 1528*500/GLColumnBatchsize, <liquid:srvgo_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:srvgo_hdt_basic_sweetgas>, 436*500/GLColumnBatchsize, <liquid:rich_amine>, 1592 *500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_amine>, 2067*500/GLColumnBatchsize, <liquid:srvgo_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:srvgo_hdt_adv_sweetgas>, 414*500/GLColumnBatchsize, <liquid:rich_amine>, 2153*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srvgo_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 469*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 31*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:srvgo_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 320*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 180*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:srvgo_hdt_fracfeed>*314, <liquid:srvgo_hdt_fracfeed_warm>*314, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:srvgo_hdt_fracfeed_warm>*218, <liquid:srvgo_hdt_fracfeed_hot>*218, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:srvgo_hdt_fracfeed>*heaterbatchsize, <liquid:srvgo_hdt_fracfeed_hot>*heaterbatchsize, 74*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:srvgo_hdt_fracfeed_warm>*heaterbatchsize, <liquid:srvgo_hdt_fracfeed_hot>*heaterbatchsize, 44*5000/heaterbatchsize, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_naphtha>*9,<liquid:hdt_go_warm>*15,<liquid:hdt_vgo_warm>*976], [<immersiveengineering:material:6>], <liquid:srvgo_hdt_fracfeed_hot>*1000, 14, 100, [0.000001]);

//VR HDT





//Functions
//3 phase sep: 2 liquid inputs, 3 liquid outputs, can't have null as input
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
