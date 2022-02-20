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
var GLColumnTicktime = 1000 as int;

//Gas Purifier
var GaspurifierBatchsize = 500 as int;
var GaspurifierTicktime = 500 as int;
var GaspurifierPower = 200 as int;

//Steam cracker
var SteamcrackerBatchsize = 500 as int;
var SteamcrackerTicktime = 100 as int;

//SMR Furnace
var SMRBatchsize = 80 as int;
var SMRTicktime = 80 as int;

//Gasifier
var GasifierBatchsize = 10 as int;
var GasifierTicktime = 1000 as int;

//Resid cracker
var VRHCKBatchsize = 5000 as int;
var VRHCKTicktime = 900 as int;

//FCC
var FCCBatchsize = 5000 as int;
var FCCTicktime = 900 as int;

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
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_gas>*478, <liquid:syngas>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_gas>*275, <liquid:coal_syngas>*1000, <liquid:steam>*100, 64);
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
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*900, <liquid:fccslurry>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*1000, <liquid:vrhck_uco>*1000, <liquid:steam>*100, 64);


//Natural gas processing
mods.nuclearcraft.Supercooler.addRecipe(<liquid:natural_gas_crude>*2000, <liquid:natural_gas>*100);
mods.nuclearcraft.Supercooler.addRecipe(<liquid:natural_gas_sour_crude>*2000, <liquid:natural_gas_sour>*100);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:natural_gas>, drumbatchsize, <liquid:sr_naphtha>, 40*2000/drumbatchsize, <liquid:oil_brine>, 72*2000/drumbatchsize, <liquid:natural_gas_decanted>, 1888*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:natural_gas_sour>, drumbatchsize, <liquid:sr_naphtha>, 80*2000/drumbatchsize, <liquid:oil_brine>, 72*2000/drumbatchsize, <liquid:natural_gas_sour_decanted>, 1848*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 345*500/GLColumnBatchsize, <liquid:natural_gas_decanted>, GLColumnBatchsize, <liquid:natural_gas_sweet>, 488*500/GLColumnBatchsize, <liquid:rich_mea>, 357*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 215*500/GLColumnBatchsize, <liquid:natural_gas_decanted>, GLColumnBatchsize, <liquid:natural_gas_sweet>, 488*500/GLColumnBatchsize, <liquid:rich_mdea>, 227*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 827*500/GLColumnBatchsize, <liquid:natural_gas_sour_decanted>, GLColumnBatchsize, <liquid:natural_gas_sweet>, 470*500/GLColumnBatchsize, <liquid:rich_mea>, 857*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 516*500/GLColumnBatchsize, <liquid:natural_gas_sour_decanted>, GLColumnBatchsize, <liquid:natural_gas_sweet>, 470*500/GLColumnBatchsize, <liquid:rich_mdea>, 546*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:teg>, 240*500/GLColumnBatchsize, <liquid:natural_gas_sweet>, GLColumnBatchsize, <liquid:natural_gas_dry>, 490, <liquid:teg_rich>, 250*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:teg>*959,<liquid:steam>*6400], [<immersiveengineering:material:6>], <liquid:teg_rich>*1000, 350, 100, [0.000001]);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:natural_gas_dry>*1473, <liquid:natural_gas_dry_cold>*1473);

mods.pneumaticcraft.refinery.addRecipe(1030083, <liquid:natural_gas_dry_cold>*500, [<liquid:helium_crude>*2, <liquid:natural_gas_dehbot>*498]);
mmrecipecount = addgaspurifierrecipe2(GaspurifierPower, 2*GaspurifierTicktime, <liquid:helium_crude>, GaspurifierBatchsize, <liquid:helium>, 250*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:natural_gas_dehbot>*500, [<liquid:methane>*460, <liquid:natural_gas_dembot>*40]);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:natural_gas_dembot>*501, [<liquid:ethane>*326, <liquid:natural_gas_deebot>*175]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:natural_gas_deebot>*498, [<liquid:propane>*357, <liquid:butane>*141]);




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


//Various heating
//H2
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hydrogen>*55, <liquid:hydrogen_warm>*55, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hydrogen_warm>*45, <liquid:hydrogen_hot>*45, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hydrogen_hot>*65, <liquid:hydrogen_boiling>*65, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:hydrogen>*heaterbatchsize, <liquid:hydrogen_hot>*heaterbatchsize, 384*5000/heaterbatchsize, 700);
mods.magneticraft.OilHeater.addRecipe(<liquid:hydrogen_warm>*heaterbatchsize, <liquid:hydrogen_hot>*heaterbatchsize, 212*5000/heaterbatchsize, 700);
mods.magneticraft.OilHeater.addRecipe(<liquid:hydrogen_hot>*heaterbatchsize, <liquid:hydrogen_boiling>*heaterbatchsize, 146*5000/heaterbatchsize, 900);

//SR Products
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
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go_warm>*heaterbatchsize, <liquid:sr_go_boiling>*heaterbatchsize, 91*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go_hot>*heaterbatchsize, <liquid:sr_go_boiling>*heaterbatchsize, 53*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:ar>*heaterbatchsize, <liquid:ar_boiling>*heaterbatchsize, 98*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:ar_warm>*heaterbatchsize, <liquid:ar_boiling>*heaterbatchsize, 71*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:ar_hot>*heaterbatchsize, <liquid:ar_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:ar_boiling>*heaterbatchsize, <liquid:ar_blazing>*heaterbatchsize, 42*5000/heaterbatchsize, 900);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vgo_boiling>*303, <liquid:sr_vgo_hot>*303, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vgo_hot>*240, <liquid:sr_vgo_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vgo_warm>*350, <liquid:sr_vgo>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vacuum_residue_boiling>*303, <liquid:sr_vacuum_residue_hot>*303, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vacuum_residue_hot>*240, <liquid:sr_vacuum_residue_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_vacuum_residue_warm>*350, <liquid:sr_vacuum_residue>*350, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo>*heaterbatchsize, <liquid:sr_vgo_boiling>*heaterbatchsize, 98*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo_warm>*heaterbatchsize, <liquid:sr_vgo_boiling>*heaterbatchsize, 71*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo_hot>*heaterbatchsize, <liquid:sr_vgo_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vacuum_residue>*heaterbatchsize, <liquid:sr_vacuum_residue_boiling>*heaterbatchsize, 98*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vacuum_residue_warm>*heaterbatchsize, <liquid:sr_vacuum_residue_boiling>*heaterbatchsize, 71*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vacuum_residue_hot>*heaterbatchsize, <liquid:sr_vacuum_residue_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vacuum_residue_boiling>*heaterbatchsize, <liquid:sr_vacuum_residue_blazing>*heaterbatchsize, 42*5000/heaterbatchsize, 900);

//HDT Products
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_naphtha>*195, <liquid:hdt_naphtha_warm>*195, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_naphtha_warm>*260, <liquid:hdt_naphtha_hot>*260, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_naphtha_hot>*379, <liquid:hdt_naphtha_boiling>*379, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_go_boiling>*179, <liquid:hdt_go_hot>*179, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_go_hot>*250, <liquid:hdt_go_warm>*250, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_go_warm>*350, <liquid:hdt_go>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_vgo_boiling>*303, <liquid:hdt_vgo_hot>*303, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_vgo_hot>*240, <liquid:hdt_vgo_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_vgo_warm>*350, <liquid:hdt_vgo>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_vacuum_residue_boiling>*303, <liquid:hdt_vacuum_residue_hot>*303, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_vacuum_residue_hot>*240, <liquid:hdt_vacuum_residue_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hdt_vacuum_residue_warm>*350, <liquid:hdt_vacuum_residue>*350, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_naphtha>*heaterbatchsize, <liquid:hdt_naphtha_blazing>*heaterbatchsize, 140*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_naphtha_warm>*heaterbatchsize, <liquid:hdt_naphtha_blazing>*heaterbatchsize, 92*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_naphtha_hot>*heaterbatchsize, <liquid:hdt_naphtha_blazing>*heaterbatchsize, 56*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_naphtha_boiling>*heaterbatchsize, <liquid:hdt_naphtha_blazing>*heaterbatchsize, 31*5000/heaterbatchsize, 1200);

mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_go>*heaterbatchsize, <liquid:hdt_go_boiling>*heaterbatchsize, 118*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_go_warm>*heaterbatchsize, <liquid:hdt_go_boiling>*heaterbatchsize, 91*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_go_hot>*heaterbatchsize, <liquid:hdt_go_boiling>*heaterbatchsize, 53*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_vgo>*heaterbatchsize, <liquid:hdt_vgo_boiling>*heaterbatchsize, 98*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_vgo_warm>*heaterbatchsize, <liquid:hdt_vgo_boiling>*heaterbatchsize, 71*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_vgo_hot>*heaterbatchsize, <liquid:hdt_vgo_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_vacuum_residue>*heaterbatchsize, <liquid:hdt_vacuum_residue_boiling>*heaterbatchsize, 98*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_vacuum_residue_warm>*heaterbatchsize, <liquid:hdt_vacuum_residue_boiling>*heaterbatchsize, 71*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_vacuum_residue_hot>*heaterbatchsize, <liquid:hdt_vacuum_residue_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);

mmrecipecount = addaircoolerrecipe(ACduty, 686/ACRate, <liquid:sr_go_hot>, ACbatchsize, <liquid:sr_go>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:sr_go_warm>, ACbatchsize, <liquid:sr_go>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:ar_hot>, ACbatchsize, <liquid:ar>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:ar_warm>, ACbatchsize, <liquid:ar>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:sr_vgo_hot>, ACbatchsize, <liquid:sr_vgo>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:sr_vgo_warm>, ACbatchsize, <liquid:sr_vgo>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1032/ACRate, <liquid:sr_vacuum_residue_boiling>, ACbatchsize, <liquid:sr_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:sr_vacuum_residue_hot>, ACbatchsize, <liquid:sr_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:sr_vacuum_residue_warm>, ACbatchsize, <liquid:sr_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 686/ACRate, <liquid:hdt_go_hot>, ACbatchsize, <liquid:hdt_go>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:hdt_go_warm>, ACbatchsize, <liquid:hdt_go>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:hdt_vgo_hot>, ACbatchsize, <liquid:hdt_vgo>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:hdt_vgo_warm>, ACbatchsize, <liquid:hdt_vgo>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1032/ACRate, <liquid:hdt_vacuum_residue_boiling>, ACbatchsize, <liquid:hdt_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:hdt_vacuum_residue_hot>, ACbatchsize, <liquid:hdt_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:hdt_vacuum_residue_warm>, ACbatchsize, <liquid:hdt_vacuum_residue>, ACbatchsize, mmrecipecount, scaleeff);

//Misc Products
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:coker_naphtha>*195, <liquid:coker_naphtha_warm>*195, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:coker_naphtha_warm>*260, <liquid:coker_naphtha_hot>*260, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:lcgo_boiling>*179, <liquid:lcgo_hot>*179, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:lcgo_hot>*250, <liquid:lcgo_warm>*250, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:lcgo_warm>*350, <liquid:lcgo>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hcgo_boiling>*303, <liquid:hcgo_hot>*303, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hcgo_hot>*240, <liquid:hcgo_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:hcgo_warm>*350, <liquid:hcgo>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:fcccycleoil_boiling>*179, <liquid:fcccycleoil_hot>*179, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:fcccycleoil_hot>*250, <liquid:fcccycleoil_warm>*250, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:fcccycleoil_warm>*350, <liquid:fcccycleoil>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:fccslurry_boiling>*303, <liquid:fccslurry_hot>*303, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:fccslurry_hot>*240, <liquid:fccslurry_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:fccslurry_warm>*350, <liquid:fccslurry>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:vrhck_uco_boiling>*303, <liquid:vrhck_uco_hot>*303, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:vrhck_uco_hot>*240, <liquid:vrhck_uco_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:vrhck_uco_warm>*350, <liquid:vrhck_uco>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lubricant_hot>*240, <liquid:lubricant_warm>*240, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lubricant_warm>*350, <liquid:lubricant>*350, HXUnit);


mods.magneticraft.OilHeater.addRecipe(<liquid:coker_naphtha>*heaterbatchsize, <liquid:coker_naphtha_hot>*heaterbatchsize, 85*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:coker_naphtha_warm>*heaterbatchsize, <liquid:coker_naphtha_hot>*heaterbatchsize, 36*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:lcgo>*heaterbatchsize, <liquid:lcgo_boiling>*heaterbatchsize, 118*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:lcgo_warm>*heaterbatchsize, <liquid:lcgo_boiling>*heaterbatchsize, 91*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:lcgo_hot>*heaterbatchsize, <liquid:lcgo_boiling>*heaterbatchsize, 53*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:hcgo>*heaterbatchsize, <liquid:hcgo_boiling>*heaterbatchsize, 98*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:hcgo_warm>*heaterbatchsize, <liquid:hcgo_boiling>*heaterbatchsize, 71*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:hcgo_hot>*heaterbatchsize, <liquid:hcgo_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:fcccycleoil>*heaterbatchsize, <liquid:fcccycleoil_boiling>*heaterbatchsize, 118*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:fcccycleoil_warm>*heaterbatchsize, <liquid:fcccycleoil_boiling>*heaterbatchsize, 91*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:fcccycleoil_hot>*heaterbatchsize, <liquid:fcccycleoil_boiling>*heaterbatchsize, 53*5000/heaterbatchsize, 900);


mmrecipecount = addaircoolerrecipe(ACduty, 686/ACRate, <liquid:lcgo_hot>, ACbatchsize, <liquid:lcgo>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:lcgo_warm>, ACbatchsize, <liquid:lcgo>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:hcgo_hot>, ACbatchsize, <liquid:hcgo>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:hcgo_warm>, ACbatchsize, <liquid:hcgo>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 686/ACRate, <liquid:fcccycleoil_hot>, ACbatchsize, <liquid:fcccycleoil>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:fcccycleoil_warm>, ACbatchsize, <liquid:fcccycleoil>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1032/ACRate, <liquid:fccslurry_boiling>, ACbatchsize, <liquid:fccslurry>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:fccslurry_hot>, ACbatchsize, <liquid:fccslurry>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:fccslurry_warm>, ACbatchsize, <liquid:fccslurry>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1032/ACRate, <liquid:vrhck_uco_boiling>, ACbatchsize, <liquid:vrhck_uco>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:vrhck_uco_hot>, ACbatchsize, <liquid:vrhck_uco>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:vrhck_uco_warm>, ACbatchsize, <liquid:vrhck_uco>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:lubricant_hot>, ACbatchsize, <liquid:lubricant>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:lubricant_warm>, ACbatchsize, <liquid:lubricant>, ACbatchsize, mmrecipecount, scaleeff);


//CDU
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

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:adu_gas_light_warm>*200, <liquid:adu_gas_light>*200, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:adu_gas_heavy_warm>*198, <liquid:adu_gas_heavy>*198, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 499/ACRate, <liquid:adu_gas_light_warm>, ACbatchsize, <liquid:adu_gas_light>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 506/ACRate, <liquid:adu_gas_heavy_warm>, ACbatchsize, <liquid:adu_gas_heavy>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:adu_gas_light>, drumbatchsize, <liquid:sr_naphtha>, 1885*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:natural_gas>, 115*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:adu_gas_heavy>, drumbatchsize, <liquid:sr_naphtha>, 1947*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:natural_gas>, 53*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.magneticraft.Refinery.addRecipe(<liquid:ar_boiling>*500, <liquid:sr_vacuum_residue_boiling>*206, null, <liquid:sr_vgo_hot>*294, 20);



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

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_naphtha>*12,<liquid:hdt_go_warm>*17,<liquid:vrhdt_bottom_hot>*971], [<immersiveengineering:material:6>], <liquid:srvr_hdt_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:vrhdt_bottom_hot>*303, <liquid:vrhdt_bottom_boiling>*303, HXUnit);
mods.magneticraft.OilHeater.addRecipe(<liquid:vrhdt_bottom_hot>*heaterbatchsize, <liquid:vrhdt_bottom_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 900);

mods.magneticraft.Refinery.addRecipe(<liquid:vrhdt_bottom_boiling>*1000, <liquid:hdt_vacuum_residue_boiling>*980, null, <liquid:hdt_vgo_hot>*20, 40);


//HDT - FCC CO
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst>, 6, <liquid:fcccycleoil_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 841*RXBatchsize/5000, <liquid:fccco_hdt_basic_eff_mix_boiling>, 5841*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe7(RXTicktime, <modularmachinery:itemcatalyst:1>, 2, <liquid:fcccycleoil_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 571*RXBatchsize/5000, <liquid:hydrogen>, 30*RXBatchsize/5000, <liquid:fccco_hdt_adv_eff_mix_boiling>, 5601*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:fccco_hdt_basic_eff_mix_boiling>*95, <liquid:fccco_hdt_basic_eff_mix_hot>*95, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:fccco_hdt_adv_eff_mix_boiling>*97, <liquid:fccco_hdt_adv_eff_mix_hot>*97, HXUnit);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:fccco_hdt_basic_eff_mix_hot>, drumbatchsize, <liquid:fccco_hdt_basic_eff_gas_hot>, 361*2000/drumbatchsize, <liquid:fccco_hdt_fracfeed_hot>, 1639*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:fccco_hdt_adv_eff_mix_hot>, drumbatchsize, <liquid:fccco_hdt_adv_eff_gas_hot>, 290*2000/drumbatchsize, <liquid:fccco_hdt_fracfeed_hot>, 1710*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:fccco_hdt_basic_eff_gas_hot>*58, <liquid:fccco_hdt_basic_eff_gas_warm>*58, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:fccco_hdt_basic_eff_gas_warm>*72, <liquid:fccco_hdt_basic_eff_gas>*72, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:fccco_hdt_adv_eff_gas_hot>*64, <liquid:fccco_hdt_adv_eff_gas_warm>*64, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:fccco_hdt_adv_eff_gas_warm>*80, <liquid:fccco_hdt_adv_eff_gas>*80, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 3102/ACRate, <liquid:fccco_hdt_basic_eff_gas_hot>, ACbatchsize, <liquid:fccco_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1384/ACRate, <liquid:fccco_hdt_basic_eff_gas_warm>, ACbatchsize, <liquid:fccco_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2819/ACRate, <liquid:fccco_hdt_adv_eff_gas_hot>, ACbatchsize, <liquid:fccco_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1255/ACRate, <liquid:fccco_hdt_adv_eff_gas_warm>, ACbatchsize, <liquid:fccco_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 120*2000/drumbatchsize, <liquid:fccco_hdt_basic_eff_gas>, drumbatchsize, <liquid:fccco_hdt_fracfeed>, 478*2000/drumbatchsize, <liquid:sour_water>, 120*2000/drumbatchsize, <liquid:fccco_hdt_basic_sourgas>, 1522*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 155*2000/drumbatchsize, <liquid:fccco_hdt_adv_eff_gas>, drumbatchsize, <liquid:fccco_hdt_fracfeed>, 620*2000/drumbatchsize, <liquid:sour_water>, 155*2000/drumbatchsize, <liquid:fccco_hdt_adv_sourgas>, 1380*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 135*500/GLColumnBatchsize, <liquid:fccco_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:fccco_hdt_basic_sweetgas>, 495*500/GLColumnBatchsize, <liquid:rich_mea>, 140*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 193*500/GLColumnBatchsize, <liquid:fccco_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:fccco_hdt_adv_sweetgas>, 493*500/GLColumnBatchsize, <liquid:rich_mea>, 200*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 84*500/GLColumnBatchsize, <liquid:fccco_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:fccco_hdt_basic_sweetgas>, 495*500/GLColumnBatchsize, <liquid:rich_mdea>, 89*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 120*500/GLColumnBatchsize, <liquid:fccco_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:fccco_hdt_adv_sweetgas>, 493*500/GLColumnBatchsize, <liquid:rich_mdea>, 127*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:fccco_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 475*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 25*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:fccco_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 324*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 176*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:fccco_hdt_fracfeed>*347, <liquid:fccco_hdt_fracfeed_warm>*347, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:fccco_hdt_fracfeed_warm>*250, <liquid:fccco_hdt_fracfeed_hot>*250, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:fccco_hdt_fracfeed>*heaterbatchsize, <liquid:fccco_hdt_fracfeed_hot>*heaterbatchsize, 65*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:fccco_hdt_fracfeed_warm>*heaterbatchsize, <liquid:fccco_hdt_fracfeed_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_naphtha>*10,<liquid:hdt_go_warm>*990], [<immersiveengineering:material:6>], <liquid:fccco_hdt_fracfeed_hot>*1000, 12, 100, [0.000001]);


//HDT - Coker Naphtha
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst>, 6, <liquid:coker_naphtha_hot>, RXBatchsize, <liquid:hydrogen_hot>, 1192*RXBatchsize/5000, <liquid:cn_hdt_basic_eff_mix_hot>, 6192*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe7(RXTicktime, <modularmachinery:itemcatalyst:1>, 2, <liquid:coker_naphtha_hot>, RXBatchsize, <liquid:hydrogen_hot>, 724*RXBatchsize/5000, <liquid:hydrogen>, 128*RXBatchsize/5000, <liquid:cn_hdt_adv_eff_mix_hot>, 5852*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:cn_hdt_basic_eff_mix_hot>*83, <liquid:cn_hdt_basic_eff_mix_warm>*83, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:cn_hdt_basic_eff_mix_warm>*136, <liquid:cn_hdt_basic_eff_mix>*136, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:cn_hdt_adv_eff_mix_hot>*88, <liquid:cn_hdt_adv_eff_mix_warm>*88, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:cn_hdt_adv_eff_mix_warm>*157, <liquid:cn_hdt_adv_eff_mix>*157, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1937/ACRate, <liquid:cn_hdt_basic_eff_mix_hot>, ACbatchsize, <liquid:cn_hdt_basic_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 737/ACRate, <liquid:cn_hdt_basic_eff_mix_warm>, ACbatchsize, <liquid:cn_hdt_basic_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1778/ACRate, <liquid:cn_hdt_adv_eff_mix_hot>, ACbatchsize, <liquid:cn_hdt_adv_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 639/ACRate, <liquid:cn_hdt_adv_eff_mix_warm>, ACbatchsize, <liquid:cn_hdt_adv_eff_mix>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 164*2000/drumbatchsize, <liquid:cn_hdt_basic_eff_mix>, drumbatchsize, <liquid:hdt_naphtha>, 1644*2000/drumbatchsize, <liquid:sour_water>, 164*2000/drumbatchsize, <liquid:cn_hdt_basic_sourgas>, 356*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 174*2000/drumbatchsize, <liquid:cn_hdt_adv_eff_mix>, drumbatchsize, <liquid:hdt_naphtha>, 1739*2000/drumbatchsize, <liquid:sour_water>, 174*2000/drumbatchsize, <liquid:cn_hdt_adv_sourgas>, 261*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 66*500/GLColumnBatchsize, <liquid:cn_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:cn_hdt_basic_sweetgas>, 498*500/GLColumnBatchsize, <liquid:rich_mea>, 68*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 96*500/GLColumnBatchsize, <liquid:cn_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:cn_hdt_adv_sweetgas>, 497*500/GLColumnBatchsize, <liquid:rich_mea>, 99*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 41*500/GLColumnBatchsize, <liquid:cn_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:cn_hdt_basic_sweetgas>, 498*500/GLColumnBatchsize, <liquid:rich_mdea>, 43*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 60*500/GLColumnBatchsize, <liquid:cn_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:cn_hdt_adv_sweetgas>, 497*500/GLColumnBatchsize, <liquid:rich_mdea>, 63*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:cn_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 487*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 13*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:cn_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 332*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 168*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//HDT - LCGO
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst>, 6, <liquid:lcgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 1271*RXBatchsize/5000, <liquid:lcgo_hdt_basic_eff_mix_boiling>, 6271*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe7(RXTicktime, <modularmachinery:itemcatalyst:1>, 2, <liquid:lcgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 862*RXBatchsize/5000, <liquid:hydrogen>, 46*RXBatchsize/5000, <liquid:lcgo_hdt_adv_eff_mix_boiling>, 5908*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lcgo_hdt_basic_eff_mix_boiling>*80, <liquid:lcgo_hdt_basic_eff_mix_hot>*80, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lcgo_hdt_adv_eff_mix_boiling>*81, <liquid:lcgo_hdt_adv_eff_mix_hot>*81, HXUnit);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:lcgo_hdt_basic_eff_mix_hot>, drumbatchsize, <liquid:lcgo_hdt_basic_eff_gas_hot>, 477*2000/drumbatchsize, <liquid:lcgo_hdt_fracfeed_hot>, 1523*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:lcgo_hdt_adv_eff_mix_hot>, drumbatchsize, <liquid:lcgo_hdt_adv_eff_gas_hot>, 383*2000/drumbatchsize, <liquid:lcgo_hdt_fracfeed_hot>, 1617*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lcgo_hdt_basic_eff_gas_hot>*56, <liquid:lcgo_hdt_basic_eff_gas_warm>*56, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lcgo_hdt_basic_eff_gas_warm>*69, <liquid:lcgo_hdt_basic_eff_gas>*69, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lcgo_hdt_adv_eff_gas_hot>*61, <liquid:lcgo_hdt_adv_eff_gas_warm>*61, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lcgo_hdt_adv_eff_gas_warm>*75, <liquid:lcgo_hdt_adv_eff_gas>*75, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 3247/ACRate, <liquid:lcgo_hdt_basic_eff_gas_hot>, ACbatchsize, <liquid:lcgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1451/ACRate, <liquid:lcgo_hdt_basic_eff_gas_warm>, ACbatchsize, <liquid:lcgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2986/ACRate, <liquid:lcgo_hdt_adv_eff_gas_hot>, ACbatchsize, <liquid:lcgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1332/ACRate, <liquid:lcgo_hdt_adv_eff_gas_warm>, ACbatchsize, <liquid:lcgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 135*2000/drumbatchsize, <liquid:lcgo_hdt_basic_eff_gas>, drumbatchsize, <liquid:lcgo_hdt_fracfeed>, 336*2000/drumbatchsize, <liquid:sour_water>, 135*2000/drumbatchsize, <liquid:lcgo_hdt_basic_sourgas>, 1664*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 178*2000/drumbatchsize, <liquid:lcgo_hdt_adv_eff_gas>, drumbatchsize, <liquid:lcgo_hdt_fracfeed>, 444*2000/drumbatchsize, <liquid:sour_water>, 178*2000/drumbatchsize, <liquid:lcgo_hdt_adv_sourgas>, 1556*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 647*500/GLColumnBatchsize, <liquid:lcgo_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:lcgo_hdt_basic_sweetgas>, 477*500/GLColumnBatchsize, <liquid:rich_mea>, 670*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 913*500/GLColumnBatchsize, <liquid:lcgo_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:lcgo_hdt_adv_sweetgas>, 467*500/GLColumnBatchsize, <liquid:rich_mea>, 946*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 403*500/GLColumnBatchsize, <liquid:lcgo_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:lcgo_hdt_basic_sweetgas>, 477*500/GLColumnBatchsize, <liquid:rich_mdea>, 426*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 569*500/GLColumnBatchsize, <liquid:lcgo_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:lcgo_hdt_adv_sweetgas>, 467*500/GLColumnBatchsize, <liquid:rich_mdea>, 602*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:lcgo_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 481*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 19*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:lcgo_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 328*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 172*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:lcgo_hdt_fracfeed>*346, <liquid:lcgo_hdt_fracfeed_warm>*346, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:lcgo_hdt_fracfeed_warm>*250, <liquid:lcgo_hdt_fracfeed_hot>*250, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:lcgo_hdt_fracfeed>*heaterbatchsize, <liquid:lcgo_hdt_fracfeed_hot>*heaterbatchsize, 65*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:lcgo_hdt_fracfeed_warm>*heaterbatchsize, <liquid:lcgo_hdt_fracfeed_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_naphtha>*13,<liquid:hdt_go_warm>*987], [<immersiveengineering:material:6>], <liquid:lcgo_hdt_fracfeed_hot>*1000, 12, 100, [0.000001]);


//HDT - HCGO
mmrecipecount = addbasicreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:2>, 9, <liquid:hcgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 1745*RXBatchsize/5000, <liquid:hcgo_hdt_basic_eff_mix_boiling>, 6745*RXBatchsize/5000, mmrecipecount, scaleeff);
mmrecipecount = addadvreactorrecipe7(RXTicktime, <modularmachinery:itemcatalyst:3>, 3, <liquid:hcgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 935*RXBatchsize/5000, <liquid:hydrogen>, 311*RXBatchsize/5000, <liquid:hcgo_hdt_adv_eff_mix_boiling>, 6246*RXBatchsize/5000, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hcgo_hdt_basic_eff_mix_boiling>*85, <liquid:hcgo_hdt_basic_eff_mix_hot>*85, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hcgo_hdt_adv_eff_mix_boiling>*87, <liquid:hcgo_hdt_adv_eff_mix_hot>*87, HXUnit);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:hcgo_hdt_basic_eff_mix_hot>, drumbatchsize, <liquid:hcgo_hdt_basic_eff_gas_hot>, 605*2000/drumbatchsize, <liquid:hcgo_hdt_fracfeed_hot>, 1395*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:hcgo_hdt_adv_eff_mix_hot>, drumbatchsize, <liquid:hcgo_hdt_adv_eff_gas_hot>, 496*2000/drumbatchsize, <liquid:hcgo_hdt_fracfeed_hot>, 1504*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hcgo_hdt_basic_eff_gas_hot>*56, <liquid:hcgo_hdt_basic_eff_gas_warm>*56, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hcgo_hdt_basic_eff_gas_warm>*69, <liquid:hcgo_hdt_basic_eff_gas>*69, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hcgo_hdt_adv_eff_gas_hot>*61, <liquid:hcgo_hdt_adv_eff_gas_warm>*61, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hcgo_hdt_adv_eff_gas_warm>*75, <liquid:hcgo_hdt_adv_eff_gas>*75, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 3239/ACRate, <liquid:hcgo_hdt_basic_eff_gas_hot>, ACbatchsize, <liquid:hcgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1446/ACRate, <liquid:hcgo_hdt_basic_eff_gas_warm>, ACbatchsize, <liquid:hcgo_hdt_basic_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2982/ACRate, <liquid:hcgo_hdt_adv_eff_gas_hot>, ACbatchsize, <liquid:hcgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1329/ACRate, <liquid:hcgo_hdt_adv_eff_gas_warm>, ACbatchsize, <liquid:hcgo_hdt_adv_eff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 174*2000/drumbatchsize, <liquid:hcgo_hdt_basic_eff_gas>, drumbatchsize, <liquid:hcgo_hdt_fracfeed>, 347*2000/drumbatchsize, <liquid:sour_water>, 174*2000/drumbatchsize, <liquid:hcgo_hdt_basic_sourgas>, 1653*2000/drumbatchsize, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 228*2000/drumbatchsize, <liquid:hcgo_hdt_adv_eff_gas>, drumbatchsize, <liquid:hcgo_hdt_fracfeed>, 456*2000/drumbatchsize, <liquid:sour_water>, 228*2000/drumbatchsize, <liquid:hcgo_hdt_adv_sourgas>, 1544*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 740*500/GLColumnBatchsize, <liquid:hcgo_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:hcgo_hdt_basic_sweetgas>, 473*500/GLColumnBatchsize, <liquid:rich_mea>, 766*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 1040*500/GLColumnBatchsize, <liquid:hcgo_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:hcgo_hdt_adv_sweetgas>, 462*500/GLColumnBatchsize, <liquid:rich_mea>, 1078*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 461*500/GLColumnBatchsize, <liquid:hcgo_hdt_basic_sourgas>, GLColumnBatchsize, <liquid:hcgo_hdt_basic_sweetgas>, 473*500/GLColumnBatchsize, <liquid:rich_mdea>, 488*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 648*500/GLColumnBatchsize, <liquid:hcgo_hdt_adv_sourgas>, GLColumnBatchsize, <liquid:hcgo_hdt_adv_sweetgas>, 462*500/GLColumnBatchsize, <liquid:rich_mdea>, 686*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:hcgo_hdt_basic_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 486*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 14*500/GaspurifierBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:hcgo_hdt_adv_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 334*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 166*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hcgo_hdt_fracfeed>*347, <liquid:hcgo_hdt_fracfeed_warm>*347, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hcgo_hdt_fracfeed_warm>*241, <liquid:hcgo_hdt_fracfeed_hot>*241, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:hcgo_hdt_fracfeed>*heaterbatchsize, <liquid:hcgo_hdt_fracfeed_hot>*heaterbatchsize, 67*5000/heaterbatchsize, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:hcgo_hdt_fracfeed_warm>*heaterbatchsize, <liquid:hcgo_hdt_fracfeed_hot>*heaterbatchsize, 39*5000/heaterbatchsize, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_naphtha>*10,<liquid:hdt_go_warm>*18,<liquid:hdt_vgo_warm>*972], [<immersiveengineering:material:6>], <liquid:hcgo_hdt_fracfeed_hot>*1000, 14, 100, [0.000001]);



//GO Hydrocracker - SRGO + Adv catalyst
mmrecipecount = addadvreactorrecipe5(RXTicktime, <modularmachinery:itemcatalyst:3>, 2, <modularmachinery:itemcatalyst:8>, 2, <modularmachinery:itemredstonesignal:15>, <liquid:sr_go_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 304, <liquid:hydrogen>, 372, <liquid:sr_go_advhckeff_boiling>, 5672, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_go_advhckeff_boiling>*190, <liquid:sr_go_advhckeff_hot>*190, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 525/ACRate, <liquid:sr_go_advhckeff_boiling>, ACbatchsize, <liquid:sr_go_advhckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:sr_go_advhckeff_hot>, drumbatchsize, <liquid:sr_go_advhckeff_gas_hot>, 1061*2000/drumbatchsize, <liquid:sr_go_advhck_fracfeed_hot>, 939*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_go_advhckeff_gas_hot>*66, <liquid:sr_go_advhckeff_gas_warm>*66, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_go_advhckeff_gas_warm>*82, <liquid:sr_go_advhckeff_gas>*82, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2738/ACRate, <liquid:sr_go_advhckeff_gas_hot>, ACbatchsize, <liquid:sr_go_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1216/ACRate, <liquid:sr_go_advhckeff_gas_warm>, ACbatchsize, <liquid:sr_go_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 145*2000/drumbatchsize, <liquid:sr_go_advhckeff_gas>, drumbatchsize, <liquid:sr_go_advhck_fracfeed>, 1448*2000/drumbatchsize, <liquid:sour_water>, 145*2000/drumbatchsize, <liquid:sr_go_advhck_sourgas>, 552*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:sr_go_advhck_fracfeed>*256, <liquid:sr_go_advhck_fracfeed_warm>*256, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:sr_go_advhck_fracfeed_warm>*257, <liquid:sr_go_advhck_fracfeed_hot>*257, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go_advhck_fracfeed>*heaterbatchsize, <liquid:sr_go_advhck_fracfeed_hot>*heaterbatchsize, 74*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go_advhck_fracfeed_warm>*heaterbatchsize, <liquid:sr_go_advhck_fracfeed_hot>*heaterbatchsize, 37*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:sr_go_advhck_fracvapor_warm>*484,<liquid:hdt_go_hot>*516], [<immersiveengineering:material:6>], <liquid:sr_go_advhck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_go_advhck_fracvapor_warm>*192, <liquid:sr_go_advhck_fracvapor>*192, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 521/ACRate, <liquid:sr_go_advhck_fracvapor_warm>, ACbatchsize, <liquid:sr_go_advhck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:sr_go_advhck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1959*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:sr_go_advhck_sourgas>, 41*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 625*500/GLColumnBatchsize, <liquid:sr_go_advhck_sourgas>, GLColumnBatchsize, <liquid:sr_go_advhck_sweetgas>, 477*500/GLColumnBatchsize, <liquid:rich_mea>, 648*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 389*500/GLColumnBatchsize, <liquid:sr_go_advhck_sourgas>, GLColumnBatchsize, <liquid:sr_go_advhck_sweetgas>, 477*500/GLColumnBatchsize, <liquid:rich_mdea>, 412*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:sr_go_advhck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 336*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 164*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//GO Hydrocracker - HDT GO + Adv catalyst
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:8>, 3, <modularmachinery:itemredstonesignal:15>, <liquid:hdt_go_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 674, <liquid:hydrogen>, 551, <liquid:hdt_go_advhckeff_boiling>, 6223, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_go_advhckeff_boiling>*166, <liquid:hdt_go_advhckeff_hot>*166, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 603/ACRate, <liquid:hdt_go_advhckeff_boiling>, ACbatchsize, <liquid:hdt_go_advhckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:hdt_go_advhckeff_hot>, drumbatchsize, <liquid:hdt_go_advhckeff_gas_hot>, 1260*2000/drumbatchsize, <liquid:hdt_go_advhck_fracfeed_hot>, 740*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_go_advhckeff_gas_hot>*56, <liquid:hdt_go_advhckeff_gas_warm>*56, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_go_advhckeff_gas_warm>*70, <liquid:hdt_go_advhckeff_gas>*70, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 3226/ACRate, <liquid:hdt_go_advhckeff_gas_hot>, ACbatchsize, <liquid:hdt_go_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1438/ACRate, <liquid:hdt_go_advhckeff_gas_warm>, ACbatchsize, <liquid:hdt_go_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 64*2000/drumbatchsize, <liquid:hdt_go_advhckeff_gas>, drumbatchsize, <liquid:hdt_go_advhck_fracfeed>, 1273*2000/drumbatchsize, <liquid:sour_water>, 64*2000/drumbatchsize, <liquid:hdt_go_advhck_sourgas>, 727*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_go_advhck_fracfeed>*245, <liquid:hdt_go_advhck_fracfeed_warm>*245, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_go_advhck_fracfeed_warm>*258, <liquid:hdt_go_advhck_fracfeed_hot>*258, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_go_advhck_fracfeed>*heaterbatchsize, <liquid:hdt_go_advhck_fracfeed_hot>*heaterbatchsize, 75*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_go_advhck_fracfeed_warm>*heaterbatchsize, <liquid:hdt_go_advhck_fracfeed_hot>*heaterbatchsize, 37*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_go_advhck_fracvapor_warm>*563,<liquid:hdt_go_hot>*437], [<immersiveengineering:material:6>], <liquid:hdt_go_advhck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_go_advhck_fracvapor_warm>*192, <liquid:hdt_go_advhck_fracvapor>*192, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 520/ACRate, <liquid:hdt_go_advhck_fracvapor_warm>, ACbatchsize, <liquid:hdt_go_advhck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:hdt_go_advhck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1965*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:hdt_go_advhck_sourgas>, 35*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 29*500/GLColumnBatchsize, <liquid:hdt_go_advhck_sourgas>, GLColumnBatchsize, <liquid:hdt_go_advhck_sweetgas>, 499*500/GLColumnBatchsize, <liquid:rich_mea>, 30*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 18*500/GLColumnBatchsize, <liquid:hdt_go_advhck_sourgas>, GLColumnBatchsize, <liquid:hdt_go_advhck_sweetgas>, 499*500/GLColumnBatchsize, <liquid:rich_mdea>, 19*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:hdt_go_advhck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 387*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 113*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//GO Hydrocracker - Stage 1 recycle + Adv catalyst
mmrecipecount = addadvreactorrecipe6(RXTicktime, <modularmachinery:itemcatalyst:3>, 3, <modularmachinery:itemcatalyst:8>, 3, <modularmachinery:itemredstonesignal:14>, <liquid:sr_go_boiling>, 0.9*RXBatchsize, <liquid:hdt_go_boiling>, 0.1*RXBatchsize, <liquid:hydrogen_boiling>, 305, <liquid:hydrogen>, 374, <liquid:mix_go_advhckeff_boiling>, 5674, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_go_advhckeff_boiling>*193, <liquid:mix_go_advhckeff_hot>*193, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 518/ACRate, <liquid:mix_go_advhckeff_boiling>, ACbatchsize, <liquid:mix_go_advhckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:mix_go_advhckeff_hot>, drumbatchsize, <liquid:mix_go_advhckeff_gas_hot>, 1114*2000/drumbatchsize, <liquid:mix_go_advhck_fracfeed_hot>, 886*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_go_advhckeff_gas_hot>*66, <liquid:mix_go_advhckeff_gas_warm>*66, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_go_advhckeff_gas_warm>*83, <liquid:mix_go_advhckeff_gas>*83, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2728/ACRate, <liquid:mix_go_advhckeff_gas_hot>, ACbatchsize, <liquid:mix_go_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1211/ACRate, <liquid:mix_go_advhckeff_gas_warm>, ACbatchsize, <liquid:mix_go_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 147*2000/drumbatchsize, <liquid:mix_go_advhckeff_gas>, drumbatchsize, <liquid:mix_go_advhck_fracfeed>, 1468*2000/drumbatchsize, <liquid:sour_water>, 147*2000/drumbatchsize, <liquid:mix_go_advhck_sourgas>, 532*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:mix_go_advhck_fracfeed>*252, <liquid:mix_go_advhck_fracfeed_warm>*252, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:mix_go_advhck_fracfeed_warm>*258, <liquid:mix_go_advhck_fracfeed_hot>*258, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:mix_go_advhck_fracfeed>*heaterbatchsize, <liquid:mix_go_advhck_fracfeed_hot>*heaterbatchsize, 74*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:mix_go_advhck_fracfeed_warm>*heaterbatchsize, <liquid:mix_go_advhck_fracfeed_hot>*heaterbatchsize, 37*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:mix_go_advhck_fracvapor_warm>*517,<liquid:hdt_go_hot>*483], [<immersiveengineering:material:6>], <liquid:mix_go_advhck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_go_advhck_fracvapor_warm>*193, <liquid:mix_go_advhck_fracvapor>*193, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 520/ACRate, <liquid:mix_go_advhck_fracvapor_warm>, ACbatchsize, <liquid:mix_go_advhck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:mix_go_advhck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1961*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:mix_go_advhck_sourgas>, 39*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 563*500/GLColumnBatchsize, <liquid:mix_go_advhck_sourgas>, GLColumnBatchsize, <liquid:mix_go_advhck_sweetgas>, 480*500/GLColumnBatchsize, <liquid:rich_mea>, 583*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 351*500/GLColumnBatchsize, <liquid:mix_go_advhck_sourgas>, GLColumnBatchsize, <liquid:mix_go_advhck_sweetgas>, 480*500/GLColumnBatchsize, <liquid:rich_mdea>, 371*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:mix_go_advhck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 332*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 168*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//GO Hydrocracker - SRGO + Basic catalyst
mmrecipecount = addadvreactorrecipe5(RXTicktime, <modularmachinery:itemcatalyst:2>, 9, <modularmachinery:itemcatalyst:7>, 9, <modularmachinery:itemredstonesignal:15>, <liquid:sr_go_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 404, <liquid:hydrogen>, 493, <liquid:sr_go_basichckeff_boiling>, 5884, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_go_basichckeff_boiling>*171, <liquid:sr_go_basichckeff_hot>*171, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 586/ACRate, <liquid:sr_go_basichckeff_boiling>, ACbatchsize, <liquid:sr_go_basichckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:sr_go_basichckeff_hot>, drumbatchsize, <liquid:sr_go_basichckeff_gas_hot>, 962*2000/drumbatchsize, <liquid:sr_go_basichck_fracfeed_hot>, 1038*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_go_basichckeff_gas_hot>*62, <liquid:sr_go_basichckeff_gas_warm>*62, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_go_basichckeff_gas_warm>*78, <liquid:sr_go_basichckeff_gas>*78, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2897/ACRate, <liquid:sr_go_basichckeff_gas_hot>, ACbatchsize, <liquid:sr_go_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1287/ACRate, <liquid:sr_go_basichckeff_gas_warm>, ACbatchsize, <liquid:sr_go_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 121*2000/drumbatchsize, <liquid:sr_go_basichckeff_gas>, drumbatchsize, <liquid:sr_go_basichck_fracfeed>, 1213*2000/drumbatchsize, <liquid:sour_water>, 121*2000/drumbatchsize, <liquid:sr_go_basichck_sourgas>, 787*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:sr_go_basichck_fracfeed>*270, <liquid:sr_go_basichck_fracfeed_warm>*270, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:sr_go_basichck_fracfeed_warm>*256, <liquid:sr_go_basichck_fracfeed_hot>*256, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go_basichck_fracfeed>*heaterbatchsize, <liquid:sr_go_basichck_fracfeed_hot>*heaterbatchsize, 72*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_go_basichck_fracfeed_warm>*heaterbatchsize, <liquid:sr_go_basichck_fracfeed_hot>*heaterbatchsize, 37*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:sr_go_basichck_fracvapor_warm>*395,<liquid:hdt_go_hot>*605], [<immersiveengineering:material:6>], <liquid:sr_go_basichck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_go_basichck_fracvapor_warm>*190, <liquid:sr_go_basichck_fracvapor>*190, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 525/ACRate, <liquid:sr_go_basichck_fracvapor_warm>, ACbatchsize, <liquid:sr_go_basichck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:sr_go_basichck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1949*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:sr_go_basichck_sourgas>, 51*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 468*500/GLColumnBatchsize, <liquid:sr_go_basichck_sourgas>, GLColumnBatchsize, <liquid:sr_go_basichck_sweetgas>, 483*500/GLColumnBatchsize, <liquid:rich_mea>, 485*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 292*500/GLColumnBatchsize, <liquid:sr_go_basichck_sourgas>, GLColumnBatchsize, <liquid:sr_go_basichck_sweetgas>, 483*500/GLColumnBatchsize, <liquid:rich_mdea>, 309*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:sr_go_basichck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 352*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 148*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//GO Hydrocracker - HDT GO + Basic catalyst
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:7>, 9, <modularmachinery:itemredstonesignal:15>, <liquid:hdt_go_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 882, <liquid:hydrogen>, 721, <liquid:hdt_go_basichckeff_boiling>, 6597, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_go_basichckeff_boiling>*148, <liquid:hdt_go_basichckeff_hot>*148, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 678/ACRate, <liquid:hdt_go_basichckeff_boiling>, ACbatchsize, <liquid:hdt_go_basichckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:hdt_go_basichckeff_hot>, drumbatchsize, <liquid:hdt_go_basichckeff_gas_hot>, 1175*2000/drumbatchsize, <liquid:hdt_go_basichck_fracfeed_hot>, 825*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_go_basichckeff_gas_hot>*54, <liquid:hdt_go_basichckeff_gas_warm>*54, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_go_basichckeff_gas_warm>*68, <liquid:hdt_go_basichckeff_gas>*68, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 3321/ACRate, <liquid:hdt_go_basichckeff_gas_hot>, ACbatchsize, <liquid:hdt_go_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1480/ACRate, <liquid:hdt_go_basichckeff_gas_warm>, ACbatchsize, <liquid:hdt_go_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 52*2000/drumbatchsize, <liquid:hdt_go_basichckeff_gas>, drumbatchsize, <liquid:hdt_go_basichck_fracfeed>, 1038*2000/drumbatchsize, <liquid:sour_water>, 52*2000/drumbatchsize, <liquid:hdt_go_basichck_sourgas>, 962*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_go_basichck_fracfeed>*259, <liquid:hdt_go_basichck_fracfeed_warm>*259, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_go_basichck_fracfeed_warm>*257, <liquid:hdt_go_basichck_fracfeed_hot>*257, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_go_basichck_fracfeed>*heaterbatchsize, <liquid:hdt_go_basichck_fracfeed_hot>*heaterbatchsize, 73*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_go_basichck_fracfeed_warm>*heaterbatchsize, <liquid:hdt_go_basichck_fracfeed_hot>*heaterbatchsize, 37*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_go_basichck_fracvapor_warm>*468,<liquid:hdt_go_hot>*532], [<immersiveengineering:material:6>], <liquid:hdt_go_basichck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_go_basichck_fracvapor_warm>*191, <liquid:hdt_go_basichck_fracvapor>*191, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 524/ACRate, <liquid:hdt_go_basichck_fracvapor_warm>, ACbatchsize, <liquid:hdt_go_basichck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:hdt_go_basichck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1957*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:hdt_go_basichck_sourgas>, 43*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 19*500/GLColumnBatchsize, <liquid:hdt_go_basichck_sourgas>, GLColumnBatchsize, <liquid:hdt_go_basichck_sweetgas>, 499*500/GLColumnBatchsize, <liquid:rich_mea>, 20*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 12*500/GLColumnBatchsize, <liquid:hdt_go_basichck_sourgas>, GLColumnBatchsize, <liquid:hdt_go_basichck_sweetgas>, 499*500/GLColumnBatchsize, <liquid:rich_mdea>, 13*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:hdt_go_basichck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 399*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 101*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//GO Hydrocracker - Stage 1 recycle + Basic catalyst
mmrecipecount = addadvreactorrecipe6(RXTicktime, <modularmachinery:itemcatalyst:2>, 9, <modularmachinery:itemcatalyst:7>, 9, <modularmachinery:itemredstonesignal:14>, <liquid:sr_go_boiling>, 0.9*RXBatchsize, <liquid:hdt_go_boiling>, 0.1*RXBatchsize, <liquid:hydrogen_boiling>, 410, <liquid:hydrogen>, 501, <liquid:mix_go_basichckeff_boiling>, 5897, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_go_basichckeff_boiling>*174, <liquid:mix_go_basichckeff_hot>*174, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 575/ACRate, <liquid:mix_go_basichckeff_boiling>, ACbatchsize, <liquid:mix_go_basichckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:mix_go_basichckeff_hot>, drumbatchsize, <liquid:mix_go_basichckeff_gas_hot>, 1044*2000/drumbatchsize, <liquid:mix_go_basichck_fracfeed_hot>, 956*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_go_basichckeff_gas_hot>*62, <liquid:mix_go_basichckeff_gas_warm>*62, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_go_basichckeff_gas_warm>*77, <liquid:mix_go_basichckeff_gas>*77, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2916/ACRate, <liquid:mix_go_basichckeff_gas_hot>, ACbatchsize, <liquid:mix_go_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1296/ACRate, <liquid:mix_go_basichckeff_gas_warm>, ACbatchsize, <liquid:mix_go_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 127*2000/drumbatchsize, <liquid:mix_go_basichckeff_gas>, drumbatchsize, <liquid:mix_go_basichck_fracfeed>, 1271*2000/drumbatchsize, <liquid:sour_water>, 127*2000/drumbatchsize, <liquid:mix_go_basichck_sourgas>, 729*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:mix_go_basichck_fracfeed>*262, <liquid:mix_go_basichck_fracfeed_warm>*262, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:mix_go_basichck_fracfeed_warm>*257, <liquid:mix_go_basichck_fracfeed_hot>*257, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:mix_go_basichck_fracfeed>*heaterbatchsize, <liquid:mix_go_basichck_fracfeed_hot>*heaterbatchsize, 73*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:mix_go_basichck_fracfeed_warm>*heaterbatchsize, <liquid:mix_go_basichck_fracfeed_hot>*heaterbatchsize, 37*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:mix_go_basichck_fracvapor_warm>*448,<liquid:hdt_go_hot>*552], [<immersiveengineering:material:6>], <liquid:mix_go_basichck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_go_basichck_fracvapor_warm>*191, <liquid:mix_go_basichck_fracvapor>*191, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 523/ACRate, <liquid:mix_go_basichck_fracvapor_warm>, ACbatchsize, <liquid:mix_go_basichck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:mix_go_basichck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1955*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:mix_go_basichck_sourgas>, 45*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 425*500/GLColumnBatchsize, <liquid:mix_go_basichck_sourgas>, GLColumnBatchsize, <liquid:mix_go_basichck_sweetgas>, 485*500/GLColumnBatchsize, <liquid:rich_mea>, 440*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 265   *500/GLColumnBatchsize, <liquid:mix_go_basichck_sourgas>, GLColumnBatchsize, <liquid:mix_go_basichck_sweetgas>, 485*500/GLColumnBatchsize, <liquid:rich_mdea>, 280*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:mix_go_basichck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 354*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 146*500/GaspurifierBatchsize, mmrecipecount, scaleeff);



//VGO Hydrocracker - SRVGO + Adv catalyst
mmrecipecount = addadvreactorrecipe5(RXTicktime, <modularmachinery:itemcatalyst:3>, 3, <modularmachinery:itemcatalyst:8>, 3, <modularmachinery:itemredstonesignal:15>, <liquid:sr_vgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 202, <liquid:hydrogen>, 202, <liquid:sr_vgo_advhckeff_boiling>, 5400, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_vgo_advhckeff_boiling>*214, <liquid:sr_vgo_advhckeff_hot>*214, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 467/ACRate, <liquid:sr_vgo_advhckeff_boiling>, ACbatchsize, <liquid:sr_vgo_advhckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:sr_vgo_advhckeff_hot>, drumbatchsize, <liquid:sr_vgo_advhckeff_gas_hot>, 386*2000/drumbatchsize, <liquid:sr_vgo_advhck_fracfeed_hot>, 1614*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_vgo_advhckeff_gas_hot>*81, <liquid:sr_vgo_advhckeff_gas_warm>*81, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_vgo_advhckeff_gas_warm>*103, <liquid:sr_vgo_advhckeff_gas>*103, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2211/ACRate, <liquid:sr_vgo_advhckeff_gas_hot>, ACbatchsize, <liquid:sr_vgo_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 974/ACRate, <liquid:sr_vgo_advhckeff_gas_warm>, ACbatchsize, <liquid:sr_vgo_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 371*2000/drumbatchsize, <liquid:sr_vgo_advhckeff_gas>, drumbatchsize, <liquid:sr_vgo_advhck_fracfeed>, 928*2000/drumbatchsize, <liquid:sour_water>, 371*2000/drumbatchsize, <liquid:sr_vgo_advhck_sourgas>, 1072*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:sr_vgo_advhck_fracfeed>*326, <liquid:sr_vgo_advhck_fracfeed_warm>*326, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:sr_vgo_advhck_fracfeed_warm>*248, <liquid:sr_vgo_advhck_fracfeed_hot>*248, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo_advhck_fracfeed>*heaterbatchsize, <liquid:sr_vgo_advhck_fracfeed_hot>*heaterbatchsize, 67*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo_advhck_fracfeed_warm>*heaterbatchsize, <liquid:sr_vgo_advhck_fracfeed_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:sr_vgo_advhck_fracvapor_warm>*115,<liquid:hdt_go_warm>*372,<liquid:hdt_vgo_hot>*513], [<immersiveengineering:material:6>], <liquid:sr_vgo_advhck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_vgo_advhck_fracvapor_warm>*181, <liquid:sr_vgo_advhck_fracvapor>*181, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 552/ACRate, <liquid:sr_vgo_advhck_fracvapor_warm>, ACbatchsize, <liquid:sr_vgo_advhck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:sr_vgo_advhck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1827*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:sr_vgo_advhck_sourgas>, 173*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 1890*500/GLColumnBatchsize, <liquid:sr_vgo_advhck_sourgas>, GLColumnBatchsize, <liquid:sr_vgo_advhck_sweetgas>, 432*500/GLColumnBatchsize, <liquid:rich_mea>, 1958*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 1178*500/GLColumnBatchsize, <liquid:sr_vgo_advhck_sourgas>, GLColumnBatchsize, <liquid:sr_vgo_advhck_sweetgas>, 432*500/GLColumnBatchsize, <liquid:rich_mdea>, 1246*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:sr_vgo_advhck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 289*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 211*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//VGO Hydrocracker - HDT VGO + Adv catalyst
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:8>, 3, <modularmachinery:itemredstonesignal:15>, <liquid:hdt_vgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 484, <liquid:hydrogen>, 121, <liquid:hdt_vgo_advhckeff_boiling>, 5603, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_vgo_advhckeff_boiling>*190, <liquid:hdt_vgo_advhckeff_hot>*190, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 527/ACRate, <liquid:hdt_vgo_advhckeff_boiling>, ACbatchsize, <liquid:hdt_vgo_advhckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:hdt_vgo_advhckeff_hot>, drumbatchsize, <liquid:hdt_vgo_advhckeff_gas_hot>, 485*2000/drumbatchsize, <liquid:hdt_vgo_advhck_fracfeed_hot>, 1515*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_vgo_advhckeff_gas_hot>*64, <liquid:hdt_vgo_advhckeff_gas_warm>*64, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_vgo_advhckeff_gas_warm>*81, <liquid:hdt_vgo_advhckeff_gas>*81, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2792/ACRate, <liquid:hdt_vgo_advhckeff_gas_hot>, ACbatchsize, <liquid:hdt_vgo_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1236/ACRate, <liquid:hdt_vgo_advhckeff_gas_warm>, ACbatchsize, <liquid:hdt_vgo_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 171*2000/drumbatchsize, <liquid:hdt_vgo_advhckeff_gas>, drumbatchsize, <liquid:hdt_vgo_advhck_fracfeed>, 851*2000/drumbatchsize, <liquid:sour_water>, 171*2000/drumbatchsize, <liquid:hdt_vgo_advhck_sourgas>, 1149*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_vgo_advhck_fracfeed>*321, <liquid:hdt_vgo_advhck_fracfeed_warm>*321, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_vgo_advhck_fracfeed_warm>*249, <liquid:hdt_vgo_advhck_fracfeed_hot>*249, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_vgo_advhck_fracfeed>*heaterbatchsize, <liquid:hdt_vgo_advhck_fracfeed_hot>*heaterbatchsize, 68*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_vgo_advhck_fracfeed_warm>*heaterbatchsize, <liquid:hdt_vgo_advhck_fracfeed_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_vgo_advhck_fracvapor_warm>*138,<liquid:hdt_go_warm>*427,<liquid:hdt_vgo_hot>*435], [<immersiveengineering:material:6>], <liquid:hdt_vgo_advhck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_vgo_advhck_fracvapor_warm>*178, <liquid:hdt_vgo_advhck_fracvapor>*178, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 562/ACRate, <liquid:hdt_vgo_advhck_fracvapor_warm>, ACbatchsize, <liquid:hdt_vgo_advhck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:hdt_vgo_advhck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1855*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:hdt_vgo_advhck_sourgas>, 145*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 118*500/GLColumnBatchsize, <liquid:hdt_vgo_advhck_sourgas>, GLColumnBatchsize, <liquid:hdt_vgo_advhck_sweetgas>, 496*500/GLColumnBatchsize, <liquid:rich_mea>, 122*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 74*500/GLColumnBatchsize, <liquid:hdt_vgo_advhck_sourgas>, GLColumnBatchsize, <liquid:hdt_vgo_advhck_sweetgas>, 496*500/GLColumnBatchsize, <liquid:rich_mdea>, 78*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:hdt_vgo_advhck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 331*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 169*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//VGO Hydrocracker - Stage 1 recycle + Adv catalyst
mmrecipecount = addadvreactorrecipe6(RXTicktime, <modularmachinery:itemcatalyst:3>, 3, <modularmachinery:itemcatalyst:8>, 3, <modularmachinery:itemredstonesignal:14>, <liquid:sr_vgo_boiling>, 0.9*RXBatchsize, <liquid:hdt_vgo_hot>, 0.1*RXBatchsize, <liquid:hydrogen_boiling>, 199, <liquid:hydrogen>, 198, <liquid:mix_vgo_advhckeff_boiling>, 5392, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_vgo_advhckeff_boiling>*213, <liquid:mix_vgo_advhckeff_hot>*216, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 470/ACRate, <liquid:mix_vgo_advhckeff_boiling>, ACbatchsize, <liquid:mix_vgo_advhckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:mix_vgo_advhckeff_hot>, drumbatchsize, <liquid:mix_vgo_advhckeff_gas_hot>, 404*2000/drumbatchsize, <liquid:mix_vgo_advhck_fracfeed_hot>, 1596*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_vgo_advhckeff_gas_hot>*82, <liquid:mix_vgo_advhckeff_gas_warm>*82, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_vgo_advhckeff_gas_warm>*104, <liquid:mix_vgo_advhckeff_gas>*104, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2193/ACRate, <liquid:mix_vgo_advhckeff_gas_hot>, ACbatchsize, <liquid:mix_vgo_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 965/ACRate, <liquid:mix_vgo_advhckeff_gas_warm>, ACbatchsize, <liquid:mix_vgo_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 391*2000/drumbatchsize, <liquid:mix_vgo_advhckeff_gas>, drumbatchsize, <liquid:mix_vgo_advhck_fracfeed>, 977*2000/drumbatchsize, <liquid:sour_water>, 391*2000/drumbatchsize, <liquid:mix_vgo_advhck_sourgas>, 1023*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:mix_vgo_advhck_fracfeed>*323, <liquid:mix_vgo_advhck_fracfeed_warm>*323, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:mix_vgo_advhck_fracfeed_warm>*249, <liquid:mix_vgo_advhck_fracfeed_hot>*249, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:mix_vgo_advhck_fracfeed>*heaterbatchsize, <liquid:mix_vgo_advhck_fracfeed_hot>*heaterbatchsize, 67*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:mix_vgo_advhck_fracfeed_warm>*heaterbatchsize, <liquid:mix_vgo_advhck_fracfeed_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:mix_vgo_advhck_fracvapor_warm>*126,<liquid:hdt_go_warm>*393,<liquid:hdt_vgo_hot>*481], [<immersiveengineering:material:6>], <liquid:mix_vgo_advhck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_vgo_advhck_fracvapor_warm>*183, <liquid:mix_vgo_advhck_fracvapor>*183, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 548/ACRate, <liquid:mix_vgo_advhck_fracvapor_warm>, ACbatchsize, <liquid:mix_vgo_advhck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:mix_vgo_advhck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1842*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:mix_vgo_advhck_sourgas>, 158*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 1728*500/GLColumnBatchsize, <liquid:mix_vgo_advhck_sourgas>, GLColumnBatchsize, <liquid:mix_vgo_advhck_sweetgas>, 437*500/GLColumnBatchsize, <liquid:rich_mea>, 1791*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 1177*500/GLColumnBatchsize, <liquid:mix_vgo_advhck_sourgas>, GLColumnBatchsize, <liquid:mix_vgo_advhck_sweetgas>, 437*500/GLColumnBatchsize, <liquid:rich_mdea>, 1140*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:mix_vgo_advhck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 281*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 219*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//VGO Hydrocracker - SRVGO + Basic catalyst
mmrecipecount = addadvreactorrecipe5(RXTicktime, <modularmachinery:itemcatalyst:2>, 9, <modularmachinery:itemcatalyst:7>, 9, <modularmachinery:itemredstonesignal:15>, <liquid:sr_vgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 239, <liquid:hydrogen>, 240, <liquid:sr_vgo_basichckeff_boiling>, 5466, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_vgo_basichckeff_boiling>*213, <liquid:sr_vgo_basichckeff_hot>*213, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 469/ACRate, <liquid:sr_vgo_basichckeff_boiling>, ACbatchsize, <liquid:sr_vgo_basichckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:sr_vgo_basichckeff_hot>, drumbatchsize, <liquid:sr_vgo_basichckeff_gas_hot>, 392*2000/drumbatchsize, <liquid:sr_vgo_basichck_fracfeed_hot>, 1608*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_vgo_basichckeff_gas_hot>*78, <liquid:sr_vgo_basichckeff_gas_warm>*78, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_vgo_basichckeff_gas_warm>*99, <liquid:sr_vgo_basichckeff_gas>*99, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2292/ACRate, <liquid:sr_vgo_basichckeff_gas_hot>, ACbatchsize, <liquid:sr_vgo_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1010/ACRate, <liquid:sr_vgo_basichckeff_gas_warm>, ACbatchsize, <liquid:sr_vgo_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 285*2000/drumbatchsize, <liquid:sr_vgo_basichckeff_gas>, drumbatchsize, <liquid:sr_vgo_basichck_fracfeed>, 713*2000/drumbatchsize, <liquid:sour_water>, 285*2000/drumbatchsize, <liquid:sr_vgo_basichck_sourgas>, 1287*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:sr_vgo_basichck_fracfeed>*331, <liquid:sr_vgo_basichck_fracfeed_warm>*331, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:sr_vgo_basichck_fracfeed_warm>*247, <liquid:sr_vgo_basichck_fracfeed_hot>*247, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo_basichck_fracfeed>*heaterbatchsize, <liquid:sr_vgo_basichck_fracfeed_hot>*heaterbatchsize, 67*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:sr_vgo_basichck_fracfeed_warm>*heaterbatchsize, <liquid:sr_vgo_basichck_fracfeed_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:sr_vgo_basichck_fracvapor_warm>*95,<liquid:hdt_go_warm>*304,<liquid:hdt_vgo_hot>*601], [<immersiveengineering:material:6>], <liquid:sr_vgo_basichck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:sr_vgo_basichck_fracvapor_warm>*177, <liquid:sr_vgo_basichck_fracvapor>*177, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 565/ACRate, <liquid:sr_vgo_basichck_fracvapor_warm>, ACbatchsize, <liquid:sr_vgo_basichck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:sr_vgo_basichck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1791*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:sr_vgo_basichck_sourgas>, 209*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 1538*500/GLColumnBatchsize, <liquid:sr_vgo_basichck_sourgas>, GLColumnBatchsize, <liquid:sr_vgo_basichck_sweetgas>, 444*500/GLColumnBatchsize, <liquid:rich_mea>, 1594*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 959*500/GLColumnBatchsize, <liquid:sr_vgo_basichck_sourgas>, GLColumnBatchsize, <liquid:sr_vgo_basichck_sweetgas>, 444*500/GLColumnBatchsize, <liquid:rich_mdea>, 1015*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:sr_vgo_basichck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 289*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 211*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//VGO Hydrocracker - HDT VGO + Basic catalyst
mmrecipecount = addadvreactorrecipe(RXTicktime, <modularmachinery:itemcatalyst:7>, 9, <modularmachinery:itemredstonesignal:15>, <liquid:hdt_vgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 576, <liquid:hydrogen>, 144, <liquid:hdt_vgo_basichckeff_boiling>, 5713, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_vgo_basichckeff_boiling>*187, <liquid:hdt_vgo_basichckeff_hot>*187, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 535/ACRate, <liquid:hdt_vgo_basichckeff_boiling>, ACbatchsize, <liquid:hdt_vgo_basichckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:hdt_vgo_basichckeff_hot>, drumbatchsize, <liquid:hdt_vgo_basichckeff_gas_hot>, 500*2000/drumbatchsize, <liquid:hdt_vgo_basichck_fracfeed_hot>, 1500*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_vgo_basichckeff_gas_hot>*64, <liquid:hdt_vgo_basichckeff_gas_warm>*64, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_vgo_basichckeff_gas_warm>*80, <liquid:hdt_vgo_basichckeff_gas>*80, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2827/ACRate, <liquid:hdt_vgo_basichckeff_gas_hot>, ACbatchsize, <liquid:hdt_vgo_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1252/ACRate, <liquid:hdt_vgo_basichckeff_gas_warm>, ACbatchsize, <liquid:hdt_vgo_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 133*2000/drumbatchsize, <liquid:hdt_vgo_basichckeff_gas>, drumbatchsize, <liquid:hdt_vgo_basichck_fracfeed>, 667*2000/drumbatchsize, <liquid:sour_water>, 133*2000/drumbatchsize, <liquid:hdt_vgo_basichck_sourgas>, 1333*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_vgo_basichck_fracfeed>*325, <liquid:hdt_vgo_basichck_fracfeed_warm>*325, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:hdt_vgo_basichck_fracfeed_warm>*248, <liquid:hdt_vgo_basichck_fracfeed_hot>*248, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_vgo_basichck_fracfeed>*heaterbatchsize, <liquid:hdt_vgo_basichck_fracfeed_hot>*heaterbatchsize, 67*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:hdt_vgo_basichck_fracfeed_warm>*heaterbatchsize, <liquid:hdt_vgo_basichck_fracfeed_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:hdt_vgo_basichck_fracvapor_warm>*118,<liquid:hdt_go_warm>*359,<liquid:hdt_vgo_hot>*523], [<immersiveengineering:material:6>], <liquid:hdt_vgo_basichck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdt_vgo_basichck_fracvapor_warm>*175, <liquid:hdt_vgo_basichck_fracvapor>*175, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 572/ACRate, <liquid:hdt_vgo_basichck_fracvapor_warm>, ACbatchsize, <liquid:hdt_vgo_basichck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:hdt_vgo_basichck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1830*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:hdt_vgo_basichck_sourgas>, 170*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 86*500/GLColumnBatchsize, <liquid:hdt_vgo_basichck_sourgas>, GLColumnBatchsize, <liquid:hdt_vgo_basichck_sweetgas>, 497*500/GLColumnBatchsize, <liquid:rich_mea>, 89*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 53*500/GLColumnBatchsize, <liquid:hdt_vgo_basichck_sourgas>, GLColumnBatchsize, <liquid:hdt_vgo_basichck_sweetgas>, 497*500/GLColumnBatchsize, <liquid:rich_mdea>, 56*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:hdt_vgo_basichck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 332*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 168*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//VGO Hydrocracker - Stage 1 recycle + Basic catalyst
mmrecipecount = addadvreactorrecipe6(RXTicktime, <modularmachinery:itemcatalyst:2>, 9, <modularmachinery:itemcatalyst:7>, 9, <modularmachinery:itemredstonesignal:14>, <liquid:sr_vgo_boiling>, 0.9*RXBatchsize, <liquid:hdt_vgo_hot>, 0.1*RXBatchsize, <liquid:hydrogen_boiling>, 234, <liquid:hydrogen>, 233, <liquid:mix_vgo_basichckeff_boiling>, 5454, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_vgo_basichckeff_boiling>*210, <liquid:mix_vgo_basichckeff_hot>*210, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 476/ACRate, <liquid:mix_vgo_basichckeff_boiling>, ACbatchsize, <liquid:mix_vgo_basichckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:mix_vgo_basichckeff_hot>, drumbatchsize, <liquid:mix_vgo_basichckeff_gas_hot>, 401*2000/drumbatchsize, <liquid:mix_vgo_basichck_fracfeed_hot>, 1599*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_vgo_basichckeff_gas_hot>*78, <liquid:mix_vgo_basichckeff_gas_warm>*78, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_vgo_basichckeff_gas_warm>*99, <liquid:mix_vgo_basichckeff_gas>*99, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 2289/ACRate, <liquid:mix_vgo_basichckeff_gas_hot>, ACbatchsize, <liquid:mix_vgo_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1008/ACRate, <liquid:mix_vgo_basichckeff_gas_warm>, ACbatchsize, <liquid:mix_vgo_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 307*2000/drumbatchsize, <liquid:mix_vgo_basichckeff_gas>, drumbatchsize, <liquid:mix_vgo_basichck_fracfeed>, 769*2000/drumbatchsize, <liquid:sour_water>, 307*2000/drumbatchsize, <liquid:mix_vgo_basichck_sourgas>, 1231*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:mix_vgo_basichck_fracfeed>*328, <liquid:mix_vgo_basichck_fracfeed_warm>*328, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:mix_vgo_basichck_fracfeed_warm>*248, <liquid:mix_vgo_basichck_fracfeed_hot>*248, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:mix_vgo_basichck_fracfeed>*heaterbatchsize, <liquid:mix_vgo_basichck_fracfeed_hot>*heaterbatchsize, 67*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:mix_vgo_basichck_fracfeed_warm>*heaterbatchsize, <liquid:mix_vgo_basichck_fracfeed_hot>*heaterbatchsize, 38*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:mix_vgo_basichck_fracvapor_warm>*104,<liquid:hdt_go_warm>*345,<liquid:hdt_vgo_hot>*551], [<immersiveengineering:material:6>], <liquid:mix_vgo_basichck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:mix_vgo_basichck_fracvapor_warm>*179, <liquid:mix_vgo_basichck_fracvapor>*179, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 560/ACRate, <liquid:mix_vgo_basichck_fracvapor_warm>, ACbatchsize, <liquid:mix_vgo_basichck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:mix_vgo_basichck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1808*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:mix_vgo_basichck_sourgas>, 192*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 1437*500/GLColumnBatchsize, <liquid:mix_vgo_basichck_sourgas>, GLColumnBatchsize, <liquid:mix_vgo_basichck_sweetgas>, 448*500/GLColumnBatchsize, <liquid:rich_mea>, 1489*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 895*500/GLColumnBatchsize, <liquid:mix_vgo_basichck_sourgas>, GLColumnBatchsize, <liquid:mix_vgo_basichck_sweetgas>, 448*500/GLColumnBatchsize, <liquid:rich_mdea>, 947*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:mix_vgo_basichck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 286*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 214*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//VRHCK Stage 1
mmrecipecount = addresidcrackerrecipe(100, VRHCKTicktime, <contenttweaker:comohck_catalyst>, 2, <liquid:sr_vacuum_residue_boiling>, VRHCKBatchsize, <liquid:hydrogen_boiling>, 338, <liquid:vrhck_s1_effluent_boiling>, 5329, <contenttweaker:comohck_spent_catalyst>, 2, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:vrhck_s1_effluent_boiling>, drumbatchsize, <liquid:vrhck_s1_effluent_gas_boiling>, 371*2000/drumbatchsize, <liquid:vrhck_s1_effluent_liquid_boiling>, 1629*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vrhck_s1_effluent_gas_boiling>*29, <liquid:vrhck_s1_effluent_gas_hot>*29, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vrhck_s1_effluent_gas_hot>*130, <liquid:vrhck_s1_effluent_gas_warm>*130, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vrhck_s1_effluent_gas_warm>*170, <liquid:vrhck_s1_effluent_gas>*170, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 4817/ACRate, <liquid:vrhck_s1_effluent_gas_boiling>, ACbatchsize, <liquid:vrhck_s1_effluent_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1356/ACRate, <liquid:vrhck_s1_effluent_gas_hot>, ACbatchsize, <liquid:vrhck_s1_effluent_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 589/ACRate, <liquid:vrhck_s1_effluent_gas_warm>, ACbatchsize, <liquid:vrhck_s1_effluent_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 378*2000/drumbatchsize, <liquid:vrhck_s1_effluent_gas>, drumbatchsize, <liquid:vrhck_s1_effluent_liquid>, 946*2000/drumbatchsize, <liquid:sour_water>, 378*2000/drumbatchsize, <liquid:vrhck_s1_sourgas>, 1054*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:vrhck_s1_effluent_liquid>*248, <liquid:vrhck_s1_effluent_liquid_warm>*248, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:vrhck_s1_effluent_liquid_warm>*254, <liquid:vrhck_s1_effluent_liquid_hot>*254, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:vrhck_s1_effluent_liquid_hot>*270, <liquid:vrhck_s1_effluent_liquid_boiling>*270, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:vrhck_s1_effluent_liquid>*heaterbatchsize, <liquid:vrhck_s1_effluent_liquid_boiling>*heaterbatchsize, 111*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:vrhck_s1_effluent_liquid_warm>*heaterbatchsize, <liquid:vrhck_s1_effluent_liquid_boiling>*heaterbatchsize, 72*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:vrhck_s1_effluent_liquid_hot>*heaterbatchsize, <liquid:vrhck_s1_effluent_liquid_boiling>*heaterbatchsize, 35*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:vrhck_s1_fracvapor_warm>*68,<liquid:hdt_go_warm>*187,<liquid:vrhck_s1_adubottom_hot>*745], [<immersiveengineering:material:6>], <liquid:vrhck_s1_effluent_liquid_boiling>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vrhck_s1_fracvapor_warm>*189, <liquid:vrhck_s1_fracvapor>*189, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 528/ACRate, <liquid:vrhck_s1_fracvapor_warm>, ACbatchsize, <liquid:vrhck_s1_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:vrhck_s1_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1867*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:vrhck_s1_sourgas>, 133*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 4578*500/GLColumnBatchsize, <liquid:vrhck_s1_sourgas>, GLColumnBatchsize, <liquid:vrhck_s1_sweetgas>, 334*500/GLColumnBatchsize, <liquid:rich_mea>, 4744*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 2853*500/GLColumnBatchsize, <liquid:vrhck_s1_sourgas>, GLColumnBatchsize, <liquid:vrhck_s1_sweetgas>, 334*500/GLColumnBatchsize, <liquid:rich_mdea>, 3019*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:vrhck_s1_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 310*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 190*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:vrhck_s1_adubottom_hot>*303, <liquid:vrhck_s1_adubottom_boiling>*303, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:vrhck_s1_adubottom_hot>*heaterbatchsize, <liquid:vrhck_s1_adubottom_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 1200);

mods.magneticraft.Refinery.addRecipe(<liquid:vrhck_s1_adubottom_boiling>*500, <liquid:vrhck_uco_boiling>*376, null, <liquid:hdt_vgo_hot>*125, 20);


//VRHCK Stage 2
mmrecipecount = addresidcrackerrecipe(100, VRHCKTicktime, <contenttweaker:comohck_catalyst>, 2, <liquid:vrhck_s1_effluent_liquid_boiling>, 4340, <liquid:hydrogen_boiling>, 342, <liquid:vrhck_s2_effluent_boiling>, 4674, <contenttweaker:comohck_spent_catalyst>, 2, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:vrhck_s2_effluent_boiling>, drumbatchsize, <liquid:vrhck_s2_effluent_gas_boiling>, 488*2000/drumbatchsize, <liquid:vrhck_s2_effluent_liquid_boiling>, 1512*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.SaltMixer.addRecipe(<liquid:vrhck_s1_effluent_gas_boiling>*464, <liquid:vrhck_s2_effluent_gas_boiling>*535, <liquid:vrhck_effluent_gas_boiling>*999);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vrhck_effluent_gas_boiling>*36, <liquid:vrhck_effluent_gas_hot>*36, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vrhck_effluent_gas_hot>*126, <liquid:vrhck_effluent_gas_warm>*126, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vrhck_effluent_gas_warm>*161, <liquid:vrhck_effluent_gas>*161, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 4176/ACRate, <liquid:vrhck_effluent_gas_boiling>, ACbatchsize, <liquid:vrhck_effluent_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1417/ACRate, <liquid:vrhck_effluent_gas_hot>, ACbatchsize, <liquid:vrhck_effluent_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 621/ACRate, <liquid:vrhck_effluent_gas_warm>, ACbatchsize, <liquid:vrhck_effluent_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 453*2000/drumbatchsize, <liquid:vrhck_effluent_gas>, drumbatchsize, <liquid:vrhck_s2_effluent_liquid>, 1133*2000/drumbatchsize, <liquid:sour_water>, 453*2000/drumbatchsize, <liquid:vrhck_s2_sourgas>, 867*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:vrhck_s2_effluent_liquid>*247, <liquid:vrhck_s2_effluent_liquid_warm>*247, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:vrhck_s2_effluent_liquid_warm>*254, <liquid:vrhck_s2_effluent_liquid_hot>*254, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:vrhck_s2_effluent_liquid_hot>*267, <liquid:vrhck_s2_effluent_liquid_boiling>*267, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:vrhck_s2_effluent_liquid>*heaterbatchsize, <liquid:vrhck_s2_effluent_liquid_boiling>*heaterbatchsize, 111*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:vrhck_s2_effluent_liquid_warm>*heaterbatchsize, <liquid:vrhck_s2_effluent_liquid_boiling>*heaterbatchsize, 73*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:vrhck_s2_effluent_liquid_hot>*heaterbatchsize, <liquid:vrhck_s2_effluent_liquid_boiling>*heaterbatchsize, 35*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:vrhck_s2_fracvapor_warm>*159,<liquid:hdt_go_warm>*366,<liquid:vrhck_s2_adubottom_hot>*475], [<immersiveengineering:material:6>], <liquid:vrhck_s2_effluent_liquid_boiling>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vrhck_s2_fracvapor_warm>*190, <liquid:vrhck_s2_fracvapor>*190, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 525/ACRate, <liquid:vrhck_s2_fracvapor_warm>, ACbatchsize, <liquid:vrhck_s2_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:vrhck_s2_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1956*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:vrhck_s2_sourgas>, 44*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 2896*500/GLColumnBatchsize, <liquid:vrhck_s2_sourgas>, GLColumnBatchsize, <liquid:vrhck_s2_sweetgas>, 395*500/GLColumnBatchsize, <liquid:rich_mea>, 3001*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 1805*500/GLColumnBatchsize, <liquid:vrhck_s2_sourgas>, GLColumnBatchsize, <liquid:vrhck_s2_sweetgas>, 395*500/GLColumnBatchsize, <liquid:rich_mdea>, 1910*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:vrhck_s2_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 330*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 170*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:vrhck_s2_adubottom_hot>*303, <liquid:vrhck_s2_adubottom_boiling>*303, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:vrhck_s2_adubottom_hot>*heaterbatchsize, <liquid:vrhck_s2_adubottom_boiling>*heaterbatchsize, 31*5000/heaterbatchsize, 1200);

mods.magneticraft.Refinery.addRecipe(<liquid:vrhck_s2_adubottom_boiling>*500, <liquid:vrhck_uco_boiling>*190, null, <liquid:hdt_vgo_hot>*310, 20);



//Lube plant - Adv cat
mmrecipecount = addadvreactorrecipe7(RXTicktime, <modularmachinery:itemcatalyst:10>, 3, <liquid:hdt_vgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 68, <liquid:hydrogen>, 8, <liquid:lube_advhckeff_boiling>, 5072, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lube_advhckeff_boiling>*284, <liquid:lube_advhckeff_hot>*284, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 352/ACRate, <liquid:lube_advhckeff_boiling>, ACbatchsize, <liquid:lube_advhckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:lube_advhckeff_hot>, drumbatchsize, <liquid:lube_advhckeff_gas_hot>, 95*2000/drumbatchsize, <liquid:lube_advhck_fracfeed_hot>, 1905*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lube_advhckeff_gas_hot>*106, <liquid:lube_advhckeff_gas_warm>*106, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lube_advhckeff_gas_warm>*139, <liquid:lube_advhckeff_gas>*139, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1662/ACRate, <liquid:lube_advhckeff_gas_hot>, ACbatchsize, <liquid:lube_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 721/ACRate, <liquid:lube_advhckeff_gas_warm>, ACbatchsize, <liquid:lube_advhckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 145*2000/drumbatchsize, <liquid:lube_advhckeff_gas>, drumbatchsize, <liquid:lube_advhck_fracfeed>, 1452*2000/drumbatchsize, <liquid:sour_water>, 145*2000/drumbatchsize, <liquid:lube_advhck_sourgas>, 548*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:lube_advhck_fracfeed>*349, <liquid:lube_advhck_fracfeed_warm>*349, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:lube_advhck_fracfeed_warm>*244, <liquid:lube_advhck_fracfeed_hot>*244, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:lube_advhck_fracfeed>*heaterbatchsize, <liquid:lube_advhck_fracfeed_hot>*heaterbatchsize, 66*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:lube_advhck_fracfeed_warm>*heaterbatchsize, <liquid:lube_advhck_fracfeed_hot>*heaterbatchsize, 39*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:lube_advhck_fracvapor_warm>*25,<liquid:hdt_go_warm>*40, <liquid:lubricant_hot>*935], [<immersiveengineering:material:6>], <liquid:lube_advhck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lube_advhck_fracvapor_warm>*140, <liquid:lube_advhck_fracvapor>*140, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 713/ACRate, <liquid:lube_advhck_fracvapor_warm>, ACbatchsize, <liquid:lube_advhck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:lube_advhck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1212*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:lube_advhck_sourgas>, 788*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 396*500/GLColumnBatchsize, <liquid:lube_advhck_sourgas>, GLColumnBatchsize, <liquid:lube_advhck_sweetgas>, 485*500/GLColumnBatchsize, <liquid:rich_mea>, 411*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 247*500/GLColumnBatchsize, <liquid:lube_advhck_sourgas>, GLColumnBatchsize, <liquid:lube_advhck_sweetgas>, 485*500/GLColumnBatchsize, <liquid:rich_mdea>, 262*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:lube_advhck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 253*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 247*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//Lube plant - Basic cat
mmrecipecount = addadvreactorrecipe7(RXTicktime, <modularmachinery:itemcatalyst:9>, 3, <liquid:hdt_vgo_boiling>, RXBatchsize, <liquid:hydrogen_boiling>, 109, <liquid:hydrogen>, 12, <liquid:lube_basichckeff_boiling>, 5115, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lube_basichckeff_boiling>*274, <liquid:lube_basichckeff_hot>*274, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 365/ACRate, <liquid:lube_basichckeff_boiling>, ACbatchsize, <liquid:lube_basichckeff_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:lube_basichckeff_hot>, drumbatchsize, <liquid:lube_basichckeff_gas_hot>, 160*2000/drumbatchsize, <liquid:lube_basichck_fracfeed_hot>, 1840*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lube_basichckeff_gas_hot>*94, <liquid:lube_basichckeff_gas_warm>*94, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lube_basichckeff_gas_warm>*122, <liquid:lube_basichckeff_gas>*122, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1891/ACRate, <liquid:lube_basichckeff_gas_hot>, ACbatchsize, <liquid:lube_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 823/ACRate, <liquid:lube_basichckeff_gas_warm>, ACbatchsize, <liquid:lube_basichckeff_gas>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe3(drumprocessingtime, <liquid:water>, 121*2000/drumbatchsize, <liquid:lube_basichckeff_gas>, drumbatchsize, <liquid:lube_basichck_fracfeed>, 1211*2000/drumbatchsize, <liquid:sour_water>, 121*2000/drumbatchsize, <liquid:lube_basichck_sourgas>, 789*2000/drumbatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:lube_basichck_fracfeed>*347, <liquid:lube_basichck_fracfeed_warm>*347, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:lube_basichck_fracfeed_warm>*244, <liquid:lube_basichck_fracfeed_hot>*244, HXUnit);

mods.magneticraft.OilHeater.addRecipe(<liquid:lube_basichck_fracfeed>*heaterbatchsize, <liquid:lube_basichck_fracfeed_hot>*heaterbatchsize, 66*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:lube_basichck_fracfeed_warm>*heaterbatchsize, <liquid:lube_basichck_fracfeed_hot>*heaterbatchsize, 39*5000/heaterbatchsize, 1200);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:lube_basichck_fracvapor_warm>*31,<liquid:hdt_go_warm>*56,<liquid:lubricant_hot>*913], [<immersiveengineering:material:6>], <liquid:lube_basichck_fracfeed_hot>*1000, 20, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:lube_basichck_fracvapor_warm>*152, <liquid:lube_basichck_fracvapor>*152, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 659/ACRate, <liquid:lube_basichck_fracvapor_warm>, ACbatchsize, <liquid:lube_basichck_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:lube_basichck_fracvapor>, drumbatchsize, <liquid:hdt_naphtha>, 1349*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:lube_basichck_sourgas>, 651*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 237*500/GLColumnBatchsize, <liquid:lube_basichck_sourgas>, GLColumnBatchsize, <liquid:lube_basichck_sweetgas>, 491*500/GLColumnBatchsize, <liquid:rich_mea>, 246*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 148*500/GLColumnBatchsize, <liquid:lube_basichck_sourgas>, GLColumnBatchsize, <liquid:lube_basichck_sweetgas>, 491*500/GLColumnBatchsize, <liquid:rich_mdea>, 157*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:lube_basichck_sweetgas>, GaspurifierBatchsize, <liquid:hydrogen>, 232*500/GaspurifierBatchsize, <liquid:hdt_offgas>, 268*500/GaspurifierBatchsize, mmrecipecount, scaleeff);


//Amine regen
mods.immersivepetroleum.Distillation.addRecipe([<liquid:h2s>*35,<liquid:lean_mea>*963], [<immersiveengineering:material:6>], <liquid:rich_mea>*1000, 380, 50, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:h2s>*55,<liquid:lean_mdea>*944], [<immersiveengineering:material:6>], <liquid:rich_mdea>*1000, 250, 50, [0.000001]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:h2s>*1,<liquid:lean_mea>*998], [<immersiveengineering:material:6>], <liquid:rich_mea_co2h2s>*1000, 380, 50, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:h2s>*5,<liquid:methanol>*985], [<immersiveengineering:material:6>], <liquid:rich_methanol_co2h2s>*1000, 380, 50, [0.000001]);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:carbondioxide>*72,<liquid:lean_mea>*926], [<immersiveengineering:material:6>], <liquid:rich_mea_co2>*1000, 450, 50, [0.000001]);


//Reformer - Pt catalyst
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

//Reformer - PtIr catalyst
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


//H2 Plant - methane
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:methane>, SMRBatchsize, <liquid:steam>, 25713, <liquid:fuel_gas>, 34, <liquid:c1_smrproduct_blazing>, 530, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:methane>, SMRBatchsize, <liquid:steam>, 25713, <liquid:gasoline>, 40, <liquid:c1_smrproduct_blazing>, 530, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c1_smrproduct_blazing>*82, <liquid:c1_smrproduct_boiling>*82, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c1_smrproduct_boiling>*369, <liquid:c1_smrproduct_hot>*369, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c1_smrproduct_hot>*260, <liquid:c1_smrproduct_warm>*260, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c1_smrproduct_warm>*54, <liquid:c1_smrproduct>*54, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1499/ACRate, <liquid:c1_smrproduct_blazing>, ACbatchsize, <liquid:c1_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 271/ACRate, <liquid:c1_smrproduct_boiling>, ACbatchsize, <liquid:c1_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 2236/ACRate, <liquid:c1_smrproduct_hot>, ACbatchsize, <liquid:c1_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1851/ACRate, <liquid:c1_smrproduct_warm>, ACbatchsize, <liquid:c1_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:c1_smrproduct>, drumbatchsize, <liquid:c1_syngas>, 641*2000/drumbatchsize, <liquid:sour_water>, 1359*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:c1_syngas>*885, <liquid:c1_syngas_cold>*885);

mods.pneumaticcraft.refinery.addRecipe(830040, <liquid:c1_syngas_cold>*51, [<liquid:hydrogen>*9, <liquid:carbon_monoxide>*42]);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:c1_smrproduct_hot>, RXBatchsize, <liquid:c1_smrproduct_hts_hot>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c1_smrproduct_hts_hot>*97, <liquid:c1_smrproduct_hts_warm>*97, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1028/ACRate, <liquid:c1_smrproduct_hts_hot>, ACbatchsize, <liquid:c1_smrproduct_hts_warm>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:c1_smrproduct_hts_warm>, RXBatchsize, <liquid:c1_smrproduct_lts_warm>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c1_smrproduct_lts_warm>*58, <liquid:c1_smrproduct_lts>*58, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1744/ACRate, <liquid:c1_smrproduct_lts_warm>, ACbatchsize, <liquid:c1_smrproduct_lts>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:c1_smrproduct_lts>, drumbatchsize, <liquid:c1_smrproduct_ltsgas>, 981*2000/drumbatchsize, <liquid:sour_water>, 1019*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:c1_smrproduct_ltsgas>, GaspurifierBatchsize, <liquid:hydrogen>, 62*500/GaspurifierBatchsize, <liquid:fuel_gas>, 34*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 5453*500/GLColumnBatchsize, <liquid:c1_smrproduct_ltsgas>, GLColumnBatchsize, <liquid:hydrogen>, 77*500/GLColumnBatchsize, <liquid:rich_mea_co2>, 5876*500/GLColumnBatchsize, mmrecipecount, scaleeff);


//H2 Plant - ethane
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:ethane>, SMRBatchsize, <liquid:steam>, 34283, <liquid:fuel_gas>, 33, <liquid:c2_smrproduct_blazing>, 680, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:ethane>, SMRBatchsize, <liquid:steam>, 34283, <liquid:gasoline>, 38, <liquid:c2_smrproduct_blazing>, 680, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c2_smrproduct_blazing>*87, <liquid:c2_smrproduct_boiling>*87, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c2_smrproduct_boiling>*365, <liquid:c2_smrproduct_hot>*365, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c2_smrproduct_hot>*280, <liquid:c2_smrproduct_warm>*280, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c2_smrproduct_warm>*51, <liquid:c2_smrproduct>*51, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1405/ACRate, <liquid:c2_smrproduct_blazing>, ACbatchsize, <liquid:c2_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 253/ACRate, <liquid:c2_smrproduct_boiling>, ACbatchsize, <liquid:c2_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 2327/ACRate, <liquid:c2_smrproduct_hot>, ACbatchsize, <liquid:c2_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1969/ACRate, <liquid:c2_smrproduct_warm>, ACbatchsize, <liquid:c2_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:c2_smrproduct>, drumbatchsize, <liquid:c2_syngas>, 518*2000/drumbatchsize, <liquid:sour_water>, 1482*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:c2_syngas>*981, <liquid:c2_syngas_cold>*981);

mods.pneumaticcraft.refinery.addRecipe(830040, <liquid:c2_syngas_cold>*46, [<liquid:hydrogen>*7, <liquid:carbon_monoxide>*39]);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:c2_smrproduct_hot>, RXBatchsize, <liquid:c2_smrproduct_hts_hot>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c2_smrproduct_hts_hot>*112, <liquid:c2_smrproduct_hts_warm>*112, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 892/ACRate, <liquid:c2_smrproduct_hts_hot>, ACbatchsize, <liquid:c2_smrproduct_hts_warm>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:c2_smrproduct_hts_warm>, RXBatchsize, <liquid:c2_smrproduct_lts_warm>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c2_smrproduct_lts_warm>*53, <liquid:c2_smrproduct_lts>*53, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1880/ACRate, <liquid:c2_smrproduct_lts_warm>, ACbatchsize, <liquid:c2_smrproduct_lts>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:c2_smrproduct_lts>, drumbatchsize, <liquid:c2_smrproduct_ltsgas>, 800*2000/drumbatchsize, <liquid:sour_water>, 1200*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:c2_smrproduct_ltsgas>, GaspurifierBatchsize, <liquid:hydrogen>, 55*500/GaspurifierBatchsize, <liquid:fuel_gas>, 30*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 5593*500/GLColumnBatchsize, <liquid:c2_smrproduct_ltsgas>, 503*500/GLColumnBatchsize, <liquid:hydrogen>, 69*500/GLColumnBatchsize, <liquid:rich_mea_co2>, 6027*500/GLColumnBatchsize, mmrecipecount, scaleeff);


//H2 Plant - propane
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:propane>, SMRBatchsize, <liquid:steam>, 37400, <liquid:fuel_gas>, 30, <liquid:c3_smrproduct_blazing>, 734, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:propane>, SMRBatchsize, <liquid:steam>, 37400, <liquid:gasoline>, 35, <liquid:c3_smrproduct_blazing>, 734, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c3_smrproduct_blazing>*89, <liquid:c3_smrproduct_boiling>*89, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c3_smrproduct_boiling>*403, <liquid:c3_smrproduct_hot>*403, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c3_smrproduct_hot>*285, <liquid:c3_smrproduct_warm>*285, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c3_smrproduct_warm>*50, <liquid:c3_smrproduct>*50, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1380/ACRate, <liquid:c3_smrproduct_blazing>, ACbatchsize, <liquid:c3_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 248/ACRate, <liquid:c3_smrproduct_boiling>, ACbatchsize, <liquid:c3_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 2351/ACRate, <liquid:c3_smrproduct_hot>, ACbatchsize, <liquid:c3_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2000/ACRate, <liquid:c3_smrproduct_warm>, ACbatchsize, <liquid:c3_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:c3_smrproduct>, drumbatchsize, <liquid:c3_syngas>, 485*2000/drumbatchsize, <liquid:sour_water>, 1515*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:c3_syngas>*1019, <liquid:c3_syngas_cold>*1019);

mods.pneumaticcraft.refinery.addRecipe(830040, <liquid:c3_syngas_cold>*49, [<liquid:hydrogen>*7, <liquid:carbon_monoxide>*42]);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:c3_smrproduct_hot>, RXBatchsize, <liquid:c3_smrproduct_hts_hot>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c3_smrproduct_hts_hot>*117, <liquid:c3_smrproduct_hts_warm>*117, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 856/ACRate, <liquid:c3_smrproduct_hts_hot>, ACbatchsize, <liquid:c3_smrproduct_hts_warm>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:c3_smrproduct_hts_warm>, RXBatchsize, <liquid:c3_smrproduct_lts_warm>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c3_smrproduct_lts_warm>*52, <liquid:c3_smrproduct_lts>*52, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1916/ACRate, <liquid:c3_smrproduct_lts_warm>, ACbatchsize, <liquid:c3_smrproduct_lts>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:c3_smrproduct_lts>, drumbatchsize, <liquid:c3_smrproduct_ltsgas>, 752*2000/drumbatchsize, <liquid:sour_water>, 1248*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:c3_smrproduct_ltsgas>, 504*500/GaspurifierBatchsize, <liquid:hydrogen>, 53*500/GaspurifierBatchsize, <liquid:fuel_gas>, 29*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 5619*500/GLColumnBatchsize, <liquid:c3_smrproduct_ltsgas>, 502*500/GLColumnBatchsize, <liquid:hydrogen>, 66*500/GLColumnBatchsize, <liquid:rich_mea_co2>, 6055*500/GLColumnBatchsize, mmrecipecount, scaleeff);


//H2 Plant - butane
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:butane>, SMRBatchsize, <liquid:steam>, 39012, <liquid:fuel_gas>, 30, <liquid:c4_smrproduct_blazing>, 763, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:butane>, SMRBatchsize, <liquid:steam>, 39012, <liquid:gasoline>, 35, <liquid:c4_smrproduct_blazing>, 763, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c4_smrproduct_blazing>*89, <liquid:c4_smrproduct_boiling>*89, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c4_smrproduct_boiling>*406, <liquid:c4_smrproduct_hot>*406, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c4_smrproduct_hot>*288, <liquid:c4_smrproduct_warm>*288, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c4_smrproduct_warm>*50, <liquid:c4_smrproduct>*50, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1369/ACRate, <liquid:c4_smrproduct_blazing>, ACbatchsize, <liquid:c4_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 246/ACRate, <liquid:c4_smrproduct_boiling>, ACbatchsize, <liquid:c4_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 2362/ACRate, <liquid:c4_smrproduct_hot>, ACbatchsize, <liquid:c4_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2015/ACRate, <liquid:c4_smrproduct_warm>, ACbatchsize, <liquid:c4_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:c4_smrproduct>, drumbatchsize, <liquid:c4_syngas>, 470*2000/drumbatchsize, <liquid:sour_water>, 1530*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:c4_syngas>*1039, <liquid:c4_syngas_cold>*1039);

mods.pneumaticcraft.refinery.addRecipe(830040, <liquid:c4_syngas_cold>*51, [<liquid:hydrogen>*7, <liquid:carbon_monoxide>*44]);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:c4_smrproduct_hot>, RXBatchsize, <liquid:c4_smrproduct_hts_hot>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c4_smrproduct_hts_hot>*119, <liquid:c4_smrproduct_hts_warm>*119, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 840/ACRate, <liquid:c4_smrproduct_hts_hot>, ACbatchsize, <liquid:c4_smrproduct_hts_warm>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:c4_smrproduct_hts_warm>, RXBatchsize, <liquid:c4_smrproduct_lts_warm>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:c4_smrproduct_lts_warm>*52, <liquid:c4_smrproduct_lts>*52, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1932/ACRate, <liquid:c4_smrproduct_lts_warm>, ACbatchsize, <liquid:c4_smrproduct_lts>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:c4_smrproduct_lts>, drumbatchsize, <liquid:c4_smrproduct_ltsgas>, 731*2000/drumbatchsize, <liquid:sour_water>, 1269*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:c4_smrproduct_ltsgas>, 505*500/GaspurifierBatchsize, <liquid:hydrogen>, 52*500/GaspurifierBatchsize, <liquid:fuel_gas>, 28*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 5671*500/GLColumnBatchsize, <liquid:c4_smrproduct_ltsgas>, 505*500/GLColumnBatchsize, <liquid:hydrogen>, 65*500/GLColumnBatchsize, <liquid:rich_mea_co2>, 6111*500/GLColumnBatchsize, mmrecipecount, scaleeff);


//H2 Plant - HDT Gas
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:hdt_offgas>, SMRBatchsize, <liquid:steam>, 31576, <liquid:fuel_gas>, 31, <liquid:hdtgas_smrproduct_blazing>, 632, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:hdt_offgas>, SMRBatchsize, <liquid:steam>, 31576, <liquid:gasoline>, 36, <liquid:hdtgas_smrproduct_blazing>, 632, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdtgas_smrproduct_blazing>*86, <liquid:hdtgas_smrproduct_boiling>*86, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdtgas_smrproduct_boiling>*386, <liquid:hdtgas_smrproduct_hot>*386, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdtgas_smrproduct_hot>*274, <liquid:hdtgas_smrproduct_warm>*274, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdtgas_smrproduct_warm>*52, <liquid:hdtgas_smrproduct>*52, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1429/ACRate, <liquid:hdtgas_smrproduct_blazing>, ACbatchsize, <liquid:hdtgas_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 258/ACRate, <liquid:hdtgas_smrproduct_boiling>, ACbatchsize, <liquid:hdtgas_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 2303/ACRate, <liquid:hdtgas_smrproduct_hot>, ACbatchsize, <liquid:hdtgas_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1938/ACRate, <liquid:hdtgas_smrproduct_warm>, ACbatchsize, <liquid:hdtgas_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:hdtgas_smrproduct>, drumbatchsize, <liquid:hdtgas_syngas>, 550*2000/drumbatchsize, <liquid:sour_water>, 1450*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:hdtgas_syngas>*949, <liquid:hdtgas_syngas_cold>*949);

mods.pneumaticcraft.refinery.addRecipe(830040, <liquid:hdtgas_syngas_cold>*50, [<liquid:hydrogen>*8, <liquid:carbon_monoxide>*42]);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:hdtgas_smrproduct_hot>, RXBatchsize, <liquid:hdtgas_smrproduct_hts_hot>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdtgas_smrproduct_hts_hot>*108, <liquid:hdtgas_smrproduct_hts_warm>*108, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 928/ACRate, <liquid:hdtgas_smrproduct_hts_hot>, ACbatchsize, <liquid:hdtgas_smrproduct_hts_warm>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:hdtgas_smrproduct_hts_warm>, RXBatchsize, <liquid:hdtgas_smrproduct_lts_warm>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:hdtgas_smrproduct_lts_warm>*54, <liquid:hdtgas_smrproduct_lts>*54, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1844/ACRate, <liquid:hdtgas_smrproduct_lts_warm>, ACbatchsize, <liquid:hdtgas_smrproduct_lts>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:hdtgas_smrproduct_lts>, drumbatchsize, <liquid:hdtgas_smrproduct_ltsgas>, 848*2000/drumbatchsize, <liquid:sour_water>, 1152*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:hdtgas_smrproduct_ltsgas>, 501*500/GaspurifierBatchsize, <liquid:hydrogen>, 57*500/GaspurifierBatchsize, <liquid:fuel_gas>, 31*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 5516*500/GLColumnBatchsize, <liquid:hdtgas_smrproduct_ltsgas>, 499*500/GLColumnBatchsize, <liquid:hydrogen>, 71*500/GLColumnBatchsize, <liquid:rich_mea_co2>, 5944*500/GLColumnBatchsize, mmrecipecount, scaleeff);


//H2 Plant - Natural Gas
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:natural_gas_dry>, SMRBatchsize, <liquid:steam>, 26446, <liquid:fuel_gas>, 34, <liquid:natural_gas_smrproduct_blazing>, 543, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:natural_gas_dry>, SMRBatchsize, <liquid:steam>, 26446, <liquid:gasoline>, 39, <liquid:natural_gas_smrproduct_blazing>, 543, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:natural_gas_smrproduct_blazing>*82, <liquid:natural_gas_smrproduct_boiling>*82, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:natural_gas_smrproduct_boiling>*372, <liquid:natural_gas_smrproduct_hot>*372, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:natural_gas_smrproduct_hot>*262, <liquid:natural_gas_smrproduct_warm>*262, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:natural_gas_smrproduct_warm>*54, <liquid:natural_gas_smrproduct>*54, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1488/ACRate, <liquid:natural_gas_smrproduct_blazing>, ACbatchsize, <liquid:natural_gas_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 269/ACRate, <liquid:natural_gas_smrproduct_boiling>, ACbatchsize, <liquid:natural_gas_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 2246/ACRate, <liquid:natural_gas_smrproduct_hot>, ACbatchsize, <liquid:natural_gas_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1864/ACRate, <liquid:natural_gas_smrproduct_warm>, ACbatchsize, <liquid:natural_gas_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:natural_gas_smrproduct>, drumbatchsize, <liquid:natural_gas_syngas>, 627*2000/drumbatchsize, <liquid:sour_water>, 1373*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:natural_gas_syngas>*894, <liquid:natural_gas_syngas_cold>*894);

mods.pneumaticcraft.refinery.addRecipe(830040, <liquid:natural_gas_syngas_cold>*52, [<liquid:hydrogen>*9, <liquid:carbon_monoxide>*43]);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:natural_gas_smrproduct_hot>, RXBatchsize, <liquid:natural_gas_smrproduct_hts_hot>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:natural_gas_smrproduct_hts_hot>*99, <liquid:natural_gas_smrproduct_hts_warm>*99, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1012/ACRate, <liquid:natural_gas_smrproduct_hts_hot>, ACbatchsize, <liquid:natural_gas_smrproduct_hts_warm>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:natural_gas_smrproduct_hts_warm>, RXBatchsize, <liquid:natural_gas_smrproduct_lts_warm>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:natural_gas_smrproduct_lts_warm>*57, <liquid:natural_gas_smrproduct_lts>*57, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1759/ACRate, <liquid:natural_gas_smrproduct_lts_warm>, ACbatchsize, <liquid:natural_gas_smrproduct_lts>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:natural_gas_smrproduct_lts>, drumbatchsize, <liquid:natural_gas_smrproduct_ltsgas>, 960*2000/drumbatchsize, <liquid:sour_water>, 1040*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:natural_gas_smrproduct_ltsgas>, 501*500/GaspurifierBatchsize, <liquid:hydrogen>, 61*500/GaspurifierBatchsize, <liquid:fuel_gas>, 33*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 5452*500/GLColumnBatchsize, <liquid:natural_gas_smrproduct_ltsgas>, 499*500/GLColumnBatchsize, <liquid:hydrogen>, 76*500/GLColumnBatchsize, <liquid:rich_mea_co2>, 5875*500/GLColumnBatchsize, mmrecipecount, scaleeff);


//H2 Plant - naphtha
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:hdt_naphtha>, SMRBatchsize, <liquid:steam>, 42521, <liquid:fuel_gas>, 32, <liquid:naphtha_smrproduct_blazing>, 824, mmrecipecount, scaleeff);
mmrecipecount = addsmrrecipe(SMRTicktime, <modularmachinery:itemcatalyst>, 1, <liquid:hdt_naphtha>, SMRBatchsize, <liquid:steam>, 42521, <liquid:gasoline>, 37, <liquid:naphtha_smrproduct_blazing>, 824, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_smrproduct_blazing>*91, <liquid:naphtha_smrproduct_boiling>*91, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_smrproduct_boiling>*414, <liquid:naphtha_smrproduct_hot>*414, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_smrproduct_hot>*293, <liquid:naphtha_smrproduct_warm>*293, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_smrproduct_warm>*49, <liquid:naphtha_smrproduct>*49, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1347/ACRate, <liquid:naphtha_smrproduct_blazing>, ACbatchsize, <liquid:naphtha_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 242/ACRate, <liquid:naphtha_smrproduct_boiling>, ACbatchsize, <liquid:naphtha_smrproduct_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 2383/ACRate, <liquid:naphtha_smrproduct_hot>, ACbatchsize, <liquid:naphtha_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 2042/ACRate, <liquid:naphtha_smrproduct_warm>, ACbatchsize, <liquid:naphtha_smrproduct>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:naphtha_smrproduct>, drumbatchsize, <liquid:naphtha_syngas>, 441*2000/drumbatchsize, <liquid:sour_water>, 1559*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:naphtha_syngas>*1086, <liquid:naphtha_syngas_cold>*1086);

mods.pneumaticcraft.refinery.addRecipe(830040, <liquid:naphtha_syngas_cold>*47, [<liquid:hydrogen>*6, <liquid:carbon_monoxide>*41]);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:naphtha_smrproduct_hot>, RXBatchsize, <liquid:naphtha_smrproduct_hts_hot>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_smrproduct_hts_hot>*124, <liquid:naphtha_smrproduct_hts_warm>*124, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 808/ACRate, <liquid:naphtha_smrproduct_hts_hot>, ACbatchsize, <liquid:naphtha_smrproduct_hts_warm>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:naphtha_smrproduct_hts_warm>, RXBatchsize, <liquid:naphtha_smrproduct_lts_warm>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_smrproduct_lts_warm>*51, <liquid:naphtha_smrproduct_lts>*51, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1965/ACRate, <liquid:naphtha_smrproduct_lts_warm>, ACbatchsize, <liquid:naphtha_smrproduct_lts>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:naphtha_smrproduct_lts>, drumbatchsize, <liquid:naphtha_smrproduct_ltsgas>, 688*2000/drumbatchsize, <liquid:sour_water>, 1312*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:naphtha_smrproduct_ltsgas>, GaspurifierBatchsize, <liquid:hydrogen>, 49*500/GaspurifierBatchsize, <liquid:fuel_gas>, 27*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 5620*500/GLColumnBatchsize, <liquid:naphtha_smrproduct_ltsgas>, 497*500/GLColumnBatchsize, <liquid:hydrogen>, 61*500/GLColumnBatchsize, <liquid:rich_mea_co2>, 6056*500/GLColumnBatchsize, mmrecipecount, scaleeff);


//Coal Gasifier - Basic SMR
mmrecipecount = addgasifierrecipe(GasifierTicktime, <railcraft:dust:5>, GasifierBatchsize, <liquid:oxygen>, 1229, <liquid:steam>, 28569, <liquid:coalgasifier_effluent_blazing>, 2729, <rockhounding_chemistry:chemical_items:1>, GasifierBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:coalgasifier_effluent_blazing>*110, <liquid:coalgasifier_effluent_boiling>*110, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:coalgasifier_effluent_boiling>*623, <liquid:coalgasifier_effluent_hot>*623, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:coalgasifier_effluent_hot>*440, <liquid:coalgasifier_effluent_warm>*440, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:coalgasifier_effluent_warm>*282, <liquid:coalgasifier_effluent>*282, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1071/ACRate, <liquid:coalgasifier_effluent_blazing>, ACbatchsize, <liquid:coalgasifier_effluent_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 161/ACRate, <liquid:coalgasifier_effluent_boiling>, ACbatchsize, <liquid:coalgasifier_effluent_hot>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 582/ACRate, <liquid:coalgasifier_effluent_hot>, ACbatchsize, <liquid:coalgasifier_effluent>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 355/ACRate, <liquid:coalgasifier_effluent_warm>, ACbatchsize, <liquid:coalgasifier_effluent>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:coalgasifier_effluent>, drumbatchsize, <liquid:coal_syngas_sour>, 1845*2000/drumbatchsize, <liquid:sour_water>, 155*2000/drumbatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:methanol>*1000, <liquid:methanol_cold>*1000);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:methanol_cold>, 840*500/GLColumnBatchsize, <liquid:coal_syngas_sour>, GLColumnBatchsize, <liquid:coal_syngas>, 374*500/GLColumnBatchsize, <liquid:rich_methanol_co2h2s>, 844*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 4214*500/GLColumnBatchsize, <liquid:coal_syngas_sour>, GLColumnBatchsize, <liquid:coal_syngas>, 374*500/GLColumnBatchsize, <liquid:rich_mea_co2h2s>, 4218*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:coal_syngas>*2005, <liquid:coal_syngas_cold>*2005);

mods.pneumaticcraft.refinery.addRecipe(830040, <liquid:coal_syngas_cold>*31, [<liquid:hydrogen>*1, <liquid:carbon_monoxide>*30]);

mods.magneticraft.OilHeater.addRecipe(<liquid:coal_syngas>*heaterbatchsize, <liquid:coal_syngas_hot>*heaterbatchsize, 41*5000/heaterbatchsize, 1200);
mods.magneticraft.OilHeater.addRecipe(<liquid:coal_syngas_warm>*heaterbatchsize, <liquid:coal_syngas_hot>*heaterbatchsize, 23*5000/heaterbatchsize, 1200);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:coal_syngas>*523, <liquid:coal_syngas_warm>*523, HXUnit);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:coal_syngas_warm>*523, <liquid:coal_syngas_hot>*417, HXUnit);

mmrecipecount = addbasicreactorrecipe(RXTicktime/10, <modularmachinery:itemcatalyst:4>, 1, <liquid:coal_syngas_hot>, 200, <liquid:steam>, 17958, <liquid:coal_syngas_hts_hot>, 511, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:coal_syngas_hts_hot>*83, <liquid:coal_syngas_hts_warm>*83, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1205/ACRate, <liquid:coal_syngas_hts_hot>, ACbatchsize, <liquid:coal_syngas_hts_warm>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addbasicreactorrecipe2(RXTicktime, <modularmachinery:itemcatalyst:4>, 1, <liquid:coal_syngas_hts_warm>, RXBatchsize, <liquid:coal_syngas_lts_warm>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:coal_syngas_lts_warm>*69, <liquid:coal_syngas_lts>*69, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1455/ACRate, <liquid:coal_syngas_lts_warm>, ACbatchsize, <liquid:coal_syngas_lts>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:coal_syngas_lts>, drumbatchsize, <liquid:coal_syngas_ltsgas>, 1270*2000/drumbatchsize, <liquid:sour_water>, 730*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:coal_syngas_ltsgas>, 496*500/GaspurifierBatchsize, <liquid:hydrogen>, 25*500/GaspurifierBatchsize, <liquid:fuel_gas>, 13*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 6135*500/GLColumnBatchsize, <liquid:coal_syngas_ltsgas>, 508*500/GLColumnBatchsize, <liquid:hydrogen>, 32*500/GLColumnBatchsize, <liquid:rich_mea_co2>, 6611*500/GLColumnBatchsize, mmrecipecount, scaleeff);

//Coal Gasifier - Advanced SMR
mmrecipecount = addadvreactorrecipe4(RXTicktime/7, <modularmachinery:itemcatalyst:1>, 1, <modularmachinery:itemredstonesignal>, <liquid:coalgasifier_effluent_hot>, 350, <liquid:steam>, 19943, <liquid:coal_syngas_advhts_hot>, 699, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:coal_syngas_advhts_hot>*92, <liquid:coal_syngas_advhts_warm>*92, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1085/ACRate, <liquid:coal_syngas_advhts_hot>, ACbatchsize, <liquid:coal_syngas_advhts_warm>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addadvreactorrecipe3(RXTicktime, <modularmachinery:itemcatalyst:1>, 1, <liquid:coal_syngas_advhts_warm>, RXBatchsize, <liquid:coal_syngas_advlts_warm>, RXBatchsize, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:coal_syngas_advlts_warm>*77, <liquid:coal_syngas_advlts>*77, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1300/ACRate, <liquid:coal_syngas_advlts_warm>, ACbatchsize, <liquid:coal_syngas_advlts>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:coal_syngas_advlts>, drumbatchsize, <liquid:coal_syngas_advltsgas_sour>, 1354*2000/drumbatchsize, <liquid:sour_water>, 646*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:methanol_cold>, 573*500/GLColumnBatchsize, <liquid:coal_syngas_advltsgas_sour>, GLColumnBatchsize, <liquid:hydrogen>, 26*500/GLColumnBatchsize, <liquid:rich_methanol_co2h2s>, 576*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 2875*500/GLColumnBatchsize, <liquid:coal_syngas_advltsgas_sour>, GLColumnBatchsize, <liquid:hydrogen>, 26*500/GLColumnBatchsize, <liquid:rich_mea_co2h2s>, 2878*500/GLColumnBatchsize, mmrecipecount, scaleeff);

//Coal Gasifier - Advanced SMR to 2:1 syngas
mmrecipecount = addadvreactorrecipe4(RXTicktime/6, <modularmachinery:itemcatalyst:1>, 1, <modularmachinery:itemredstonesignal:15>, <liquid:coalgasifier_effluent_hot>, 450, <liquid:steam>, 20116, <liquid:coal_stdsyngas_advhts_hot>, 802, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:coal_stdsyngas_advhts_hot>*108, <liquid:coal_stdsyngas_advhts_warm>*108, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:coal_stdsyngas_advhts_warm>*97, <liquid:coal_stdsyngas_advhts>*97, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1958/ACRate, <liquid:coal_stdsyngas_advhts_hot>, ACbatchsize, <liquid:coal_stdsyngas_advhts>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1032/ACRate, <liquid:coal_stdsyngas_advhts_warm>, ACbatchsize, <liquid:coal_stdsyngas_advhts>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:coal_stdsyngas_advhts>, drumbatchsize, <liquid:coal_stdsyngas_advhtsgas_sour>, 1280*2000/drumbatchsize, <liquid:sour_water>, 720*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:methanol_cold>, 679*500/GLColumnBatchsize, <liquid:coal_stdsyngas_advhtsgas_sour>, GLColumnBatchsize, <liquid:syngas>, 165*500/GLColumnBatchsize, <liquid:rich_methanol_co2h2s>, 682*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 3410*500/GLColumnBatchsize, <liquid:coal_stdsyngas_advhtsgas_sour>, GLColumnBatchsize, <liquid:syngas>, 165*500/GLColumnBatchsize, <liquid:rich_mea_co2h2s>, 3413*500/GLColumnBatchsize, mmrecipecount, scaleeff);


//C2 steam cracker
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:ethane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:fuel_gas>, 110, <liquid:ethane_cracked_blazing>, 750, mmrecipecount, scaleeff);
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:ethane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:gasoline>, 133, <liquid:ethane_cracked_blazing>, 750, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:ethane_cracked_blazing>*65, <liquid:ethane_cracked_boiling>*65, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:ethane_cracked_boiling>*287, <liquid:ethane_cracked_hot>*287, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:ethane_cracked_hot>*258, <liquid:ethane_cracked_warm>*258, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:ethane_cracked_warm>*93, <liquid:ethane_cracked>*93, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 3348/ACRate, <liquid:ethane_cracked_blazing>, ACbatchsize, <liquid:ethane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1811/ACRate, <liquid:ethane_cracked_boiling>, ACbatchsize, <liquid:ethane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1463/ACRate, <liquid:ethane_cracked_hot>, ACbatchsize, <liquid:ethane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1076/ACRate, <liquid:ethane_cracked_warm>, ACbatchsize, <liquid:ethane_cracked>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:ethane_cracked>, drumbatchsize, <liquid:ethane_crackedgas>, 1333*2000/drumbatchsize, <liquid:sour_water>, 667*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:naoh_40>, 20*500/GLColumnBatchsize, <liquid:ethane_crackedgas>, GLColumnBatchsize, <liquid:ethane_crackedgas_washed>, GLColumnBatchsize, <liquid:naoh_used>, 20*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:ethane_crackedgas_washed>*1590, <liquid:ethane_crackedgas_cold>*1590);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:ethane_crackedgas_cold>*504, [<liquid:ethane_cracked_demtop>*62, <liquid:ethane_cracked_dembot>*442]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:ethane_cracked_demtop>, GaspurifierBatchsize, <liquid:hydrogen>, 240*500/GaspurifierBatchsize, <liquid:methane>, 260*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:ethane_cracked_dembot>*500, [<liquid:ethane_cracked_deetop>*452, <liquid:ethane_cracked_deebot>*48]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:ethane_cracked_deetop>*476, [<liquid:ethene>*464, <liquid:ethane>*12]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:ethane_cracked_deebot>*498, [<liquid:ethane_cracked_deptop>*183, <liquid:ethane_cracked_depbot>*315]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:ethane_cracked_deptop>*496, [<liquid:propene>*449, <liquid:propane>*47]);

mods.pneumaticcraft.refinery.addRecipe(2580273, <liquid:ethane_cracked_depbot>*494, [<liquid:ethane_cracked_debtop>*185, <liquid:pygas>*309]);
mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:ethane_cracked_debtop>*494, [<liquid:butadiene>*446, <liquid:butane>*48]);


//C3 steam cracker
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:propane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:fuel_gas>, 90, <liquid:propane_cracked_blazing>, 750, mmrecipecount, scaleeff);
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:propane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:gasoline>, 109, <liquid:propane_cracked_blazing>, 750, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:propane_cracked_blazing>*72, <liquid:propane_cracked_boiling>*72, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:propane_cracked_boiling>*321, <liquid:propane_cracked_hot>*321, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:propane_cracked_hot>*290, <liquid:propane_cracked_warm>*290, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:propane_cracked_warm>*97, <liquid:propane_cracked>*97, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 3075/ACRate, <liquid:propane_cracked_blazing>, ACbatchsize, <liquid:propane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1689/ACRate, <liquid:propane_cracked_boiling>, ACbatchsize, <liquid:propane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1378/ACRate, <liquid:propane_cracked_hot>, ACbatchsize, <liquid:propane_cracked>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 1033/ACRate, <liquid:propane_cracked_warm>, ACbatchsize, <liquid:propane_cracked>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:propane_cracked>, drumbatchsize, <liquid:propane_crackedgas>, 1333*2000/drumbatchsize, <liquid:sour_water>, 667*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:naoh_40>, 20*500/GLColumnBatchsize, <liquid:propane_crackedgas>, GLColumnBatchsize, <liquid:propane_crackedgas_washed>, GLColumnBatchsize, <liquid:naoh_used>, 20*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:propane_crackedgas_washed>*1941, <liquid:propane_crackedgas_cold>*1941);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:propane_crackedgas_cold>*482, [<liquid:propane_cracked_demtop>*133, <liquid:propane_cracked_dembot>*349]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:propane_cracked_demtop>, 509, <liquid:hydrogen>, 26*500/GaspurifierBatchsize, <liquid:methane>, 483*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:propane_cracked_dembot>*492, [<liquid:propane_cracked_deetop>*287, <liquid:propane_cracked_deebot>*205]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:propane_cracked_deetop>*492, [<liquid:ethene>*467, <liquid:ethane>*25]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:propane_cracked_deebot>*501, [<liquid:propane_cracked_deptop>*311, <liquid:propane_cracked_depbot>*190]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:propane_cracked_deptop>*502, [<liquid:propene>*435, <liquid:propane>*67]);

mods.pneumaticcraft.refinery.addRecipe(2580273, <liquid:propane_cracked_depbot>*508, [<liquid:propane_cracked_debtop>*181, <liquid:pygas>*327]);
mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:propane_cracked_debtop>*495, [<liquid:butadiene>*447, <liquid:butane>*48]);


//C4 steam cracker
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:butane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:fuel_gas>, 71, <liquid:butane_cracked_blazing>, 750, mmrecipecount, scaleeff);
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:butane>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:gasoline>, 86, <liquid:butane_cracked_blazing>, 750, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:butane_cracked_blazing>*74, <liquid:butane_cracked_boiling>*74, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:butane_cracked_boiling>*329, <liquid:butane_cracked_hot>*329, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1658/ACRate, <liquid:butane_cracked_blazing>, ACbatchsize, <liquid:butane_cracked_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 304/ACRate, <liquid:butane_cracked_boiling>, ACbatchsize, <liquid:butane_cracked_hot>, ACbatchsize, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:butane_crackedgas_humid_warm>*986,<liquid:pyoil_hot>*14], [<immersiveengineering:material:6>], <liquid:butane_cracked_hot>*1000, 250, 10, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:butane_crackedgas_humid_warm>*98, <liquid:butane_crackedgas_humid>*98, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1020/ACRate, <liquid:butane_crackedgas_humid_warm>, ACbatchsize, <liquid:butane_crackedgas_humid>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:butane_crackedgas_humid>, drumbatchsize, <liquid:butane_crackedgas>, 1324*2000/drumbatchsize, <liquid:sour_water>, 676*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:naoh_40>, 20*500/GLColumnBatchsize, <liquid:butane_crackedgas>, GLColumnBatchsize, <liquid:butane_crackedgas_washed>, GLColumnBatchsize, <liquid:naoh_used>, 20*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:butane_crackedgas_washed>*2034, <liquid:butane_crackedgas_cold>*2034);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:butane_crackedgas_cold>*511, [<liquid:butane_cracked_demtop>*130, <liquid:butane_cracked_dembot>*382]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:butane_cracked_demtop>, 486, <liquid:hydrogen>, 12*500/GaspurifierBatchsize, <liquid:methane>, 474*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:butane_cracked_dembot>*500, [<liquid:butane_cracked_deetop>*293, <liquid:butane_cracked_deebot>*207]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:butane_cracked_deetop>*506, [<liquid:ethene>*457, <liquid:ethane>*49]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:butane_cracked_deebot>*508, [<liquid:butane_cracked_deptop>*305, <liquid:butane_cracked_depbot>*203]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:butane_cracked_deptop>*496, [<liquid:propene>*449, <liquid:propane>*47]);

mods.pneumaticcraft.refinery.addRecipe(2580273, <liquid:butane_cracked_depbot>*508, [<liquid:butane_cracked_debtop>*175, <liquid:pygas>*333]);
mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:butane_cracked_debtop>*499, [<liquid:butadiene>*391, <liquid:butane>*108]);


//Naphtha Steam cracker
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:hdt_naphtha>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:fuel_gas>, 63, <liquid:naphtha_cracked_blazing>, 750, mmrecipecount, scaleeff);
mmrecipecount = addsteamcrackerrecipe(SteamcrackerTicktime, <liquid:hdt_naphtha>, SteamcrackerBatchsize, <liquid:steam>, 14285, <liquid:gasoline>, 76, <liquid:naphtha_cracked_blazing>, 750, mmrecipecount, scaleeff);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_cracked_blazing>*76, <liquid:naphtha_cracked_boiling>*76, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_cracked_boiling>*339, <liquid:naphtha_cracked_hot>*339, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 1606/ACRate, <liquid:naphtha_cracked_blazing>, ACbatchsize, <liquid:naphtha_cracked_hot>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 295/ACRate, <liquid:naphtha_cracked_boiling>, ACbatchsize, <liquid:naphtha_cracked_hot>, ACbatchsize, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:naphtha_crackedgas_humid_warm>*939,<liquid:pyoil_hot>*61], [<immersiveengineering:material:6>], <liquid:naphtha_cracked_hot>*1000, 250, 10, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:pyoil_hot>*241, <liquid:pyoil_warm>*241, HXUnit);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:pyoil_warm>*350, <liquid:pyoil>*350, HXUnit);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:naphtha_crackedgas_humid_warm>*94, <liquid:naphtha_crackedgas_humid>*94, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 702/ACRate, <liquid:pyoil_hot>, ACbatchsize, <liquid:pyoil>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 286/ACRate, <liquid:pyoil_warm>, ACbatchsize, <liquid:pyoil>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 1064/ACRate, <liquid:naphtha_crackedgas_humid_warm>, ACbatchsize, <liquid:naphtha_crackedgas_humid>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add2phaseseprecipe(drumprocessingtime, <liquid:naphtha_crackedgas_humid>, drumbatchsize, <liquid:naphtha_crackedgas>, 1290*2000/drumbatchsize, <liquid:sour_water>, 710*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:naoh_40>, 20*500/GLColumnBatchsize, <liquid:naphtha_crackedgas>, GLColumnBatchsize, <liquid:naphtha_crackedgas_washed>, GLColumnBatchsize, <liquid:naoh_used>, 20*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:naphtha_crackedgas_washed>*2136, <liquid:naphtha_crackedgas_cold>*2136);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:naphtha_crackedgas_cold>*505, [<liquid:naphtha_cracked_demtop>*90, <liquid:naphtha_cracked_dembot>*415]);
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

mods.immersivepetroleum.Distillation.addRecipe([<liquid:vrcoker_fracvapor_warm>*321,<liquid:lcgo_hot>*282,<liquid:hcgo_hot>*397], [<immersiveengineering:material:6>], <liquid:vrcoker_effluent_boiling>*1000, 300, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vrcoker_fracvapor_warm>*247, <liquid:vrcoker_fracvapor>*247, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 404/ACRate, <liquid:vrcoker_fracvapor_warm>, ACbatchsize, <liquid:vrcoker_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:vrcoker_fracvapor>, drumbatchsize, <liquid:coker_naphtha>, 1246*2000/drumbatchsize, <liquid:sour_water>, 0.01*drumbatchsize, <liquid:vrcoker_sourgas>, 754*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 4273*500/GLColumnBatchsize, <liquid:vrcoker_sourgas>, GLColumnBatchsize, <liquid:vrcoker_gas>, 345*500/GLColumnBatchsize, <liquid:rich_mea>, 4428*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 2663*500/GLColumnBatchsize, <liquid:vrcoker_sourgas>, GLColumnBatchsize, <liquid:vrcoker_gas>, 345*500/GLColumnBatchsize, <liquid:rich_mdea>, 2818*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:vrcoker_gas>*2079, <liquid:vrcoker_gas_cold>*2079);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:vrcoker_gas_cold>*503, [<liquid:methane>*152, <liquid:vrcoker_gas_dembot>*351]);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:vrcoker_gas_dembot>*496, [<liquid:vrcoker_gas_deetop>*190, <liquid:vrcoker_gas_deebot>*306]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:vrcoker_gas_deetop>*484, [<liquid:ethene>*154, <liquid:ethane>*330]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:vrcoker_gas_deebot>*491, [<liquid:vrcoker_gas_deptop>*254, <liquid:vrcoker_gas_depbot>*237]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:vrcoker_gas_deptop>*495, [<liquid:propene>*231, <liquid:propane>*264]);

mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:vrcoker_gas_depbot>*504, [<liquid:butadiene>*243, <liquid:butane>*261]);


//FCC - VGO basic cat
mmrecipecount = addfccreactorrecipe(FCCTicktime, <modularmachinery:itemredstonesignal>, <contenttweaker:fcc_catalyst>, 26, <liquid:hdt_vgo>, FCCBatchsize, <liquid:steam>, 14285, <liquid:vgo_basicfcc_eff_boiling>, 4828, <contenttweaker:fcc_spent_catalyst>, 26, mmrecipecount, scaleeff);
mmrecipecount = addfccreactorrecipe(FCCTicktime, <modularmachinery:itemredstonesignal>, <contenttweaker:advfcc_catalyst>, 26, <liquid:hdt_vgo>, FCCBatchsize, <liquid:steam>, 14285, <liquid:vgo_basicfcc_eff_boiling>, 4828, <contenttweaker:advfcc_spent_catalyst>, 26, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:vgo_basicfcc_fracvapor_warm>*684,<liquid:fcccycleoil_hot>*164,<liquid:fccslurry_boiling>*152], [<immersiveengineering:material:6>], <liquid:vgo_basicfcc_eff_boiling>*1000, 100, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vgo_basicfcc_fracvapor_warm>*221, <liquid:vgo_basicfcc_fracvapor>*221, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 452/ACRate, <liquid:vgo_basicfcc_fracvapor_warm>, ACbatchsize, <liquid:vgo_basicfcc_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:vgo_basicfcc_fracvapor>, drumbatchsize, <liquid:gasoline>, 1471*2000/drumbatchsize, <liquid:sour_water>, 54, <liquid:vgo_basicfcc_sourgas>, 475*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 175*500/GLColumnBatchsize, <liquid:vgo_basicfcc_sourgas>, GLColumnBatchsize, <liquid:vgo_basicfcc_sweetgas>, 494*500/GLColumnBatchsize, <liquid:rich_mea>, 181*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 109*500/GLColumnBatchsize, <liquid:vgo_basicfcc_sourgas>, GLColumnBatchsize, <liquid:vgo_basicfcc_sweetgas>, 494*500/GLColumnBatchsize, <liquid:rich_mdea>, 115*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:vgo_basicfcc_sweetgas>*2229, <liquid:vgo_basicfcc_sweetgas_cold>*2229);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:vgo_basicfcc_sweetgas_cold>*498, [<liquid:vgo_basicfcc_demtop>*66, <liquid:vgo_basicfcc_dembot>*432]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:vgo_basicfcc_demtop>, GaspurifierBatchsize, <liquid:hydrogen>, 57*500/GaspurifierBatchsize, <liquid:methane>, 443*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:vgo_basicfcc_dembot>*502, [<liquid:vgo_basicfcc_deetop>*46, <liquid:vgo_basicfcc_deebot>*456]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:vgo_basicfcc_deetop>*497, [<liquid:ethene>*431, <liquid:ethane>*66]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:vgo_basicfcc_deebot>*501, [<liquid:vgo_basicfcc_deptop>*159, <liquid:vgo_basicfcc_depbot>*342]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:vgo_basicfcc_deptop>*495, [<liquid:propene>*448, <liquid:propane>*47]);

mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:vgo_basicfcc_depbot>*499, [<liquid:butadiene>*440, <liquid:butane>*59]);


//FCC - VGO adv cat
mmrecipecount = addfccreactorrecipe(FCCTicktime, <modularmachinery:itemredstonesignal:15>, <contenttweaker:advfcc_catalyst>, 44, <liquid:hdt_vgo>, FCCBatchsize, <liquid:steam>, 14285, <liquid:vgo_advfcc_eff_boiling>, 4654, <contenttweaker:advfcc_spent_catalyst>, 44, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:vgo_advfcc_fracvapor_warm>*661,<liquid:fcccycleoil_hot>*213,<liquid:fccslurry_boiling>*126], [<immersiveengineering:material:6>], <liquid:vgo_advfcc_eff_boiling>*1000, 100, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vgo_advfcc_fracvapor_warm>*281, <liquid:vgo_advfcc_fracvapor>*281, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 356/ACRate, <liquid:vgo_advfcc_fracvapor_warm>, ACbatchsize, <liquid:vgo_advfcc_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:vgo_advfcc_fracvapor>, drumbatchsize, <liquid:gasoline>, 724*2000/drumbatchsize, <liquid:sour_water>, 58, <liquid:vgo_advfcc_sourgas>, 1218*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 75*500/GLColumnBatchsize, <liquid:vgo_advfcc_sourgas>, GLColumnBatchsize, <liquid:vgo_advfcc_sweetgas>, 497*500/GLColumnBatchsize, <liquid:rich_mea>, 78*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 47*500/GLColumnBatchsize, <liquid:vgo_advfcc_sourgas>, GLColumnBatchsize, <liquid:vgo_advfcc_sweetgas>, 497*500/GLColumnBatchsize, <liquid:rich_mdea>, 50*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:vgo_advfcc_sweetgas>*2177, <liquid:vgo_advfcc_sweetgas_cold>*2177);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:vgo_advfcc_sweetgas>*498, [<liquid:vgo_advfcc_demtop>*88, <liquid:vgo_advfcc_dembot>*410]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:vgo_advfcc_demtop>, GaspurifierBatchsize, <liquid:hydrogen>, 14*500/GaspurifierBatchsize, <liquid:methane>, 486*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:vgo_advfcc_dembot>*500, [<liquid:vgo_advfcc_deetop>*48, <liquid:vgo_advfcc_deebot>*452]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:vgo_advfcc_deetop>*497, [<liquid:ethene>*431, <liquid:ethane>*66]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:vgo_advfcc_deebot>*499, [<liquid:vgo_advfcc_deptop>*276, <liquid:vgo_advfcc_depbot>*223]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:vgo_advfcc_deptop>*495, [<liquid:propene>*448, <liquid:propane>*47]);

mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:vgo_advfcc_depbot>*499, [<liquid:butadiene>*440, <liquid:butane>*59]);


//FCC - GO basic cat
mmrecipecount = addfccreactorrecipe(FCCTicktime, <modularmachinery:itemredstonesignal>, <contenttweaker:fcc_catalyst>, 22, <liquid:hdt_go>, FCCBatchsize, <liquid:steam>, 14285, <liquid:go_basicfcc_eff_boiling>, 4873, <contenttweaker:fcc_spent_catalyst>, 22, mmrecipecount, scaleeff);
mmrecipecount = addfccreactorrecipe(FCCTicktime, <modularmachinery:itemredstonesignal>, <contenttweaker:advfcc_catalyst>, 22, <liquid:hdt_go>, FCCBatchsize, <liquid:steam>, 14285, <liquid:go_basicfcc_eff_boiling>, 4873, <contenttweaker:advfcc_spent_catalyst>, 22, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:go_basicfcc_fracvapor_warm>*849,<liquid:fcccycleoil_hot>*121,<liquid:fccslurry_boiling>*30], [<immersiveengineering:material:6>], <liquid:go_basicfcc_eff_boiling>*1000, 100, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:go_basicfcc_fracvapor_warm>*339, <liquid:go_basicfcc_fracvapor>*339, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 295/ACRate, <liquid:go_basicfcc_fracvapor_warm>, ACbatchsize, <liquid:go_basicfcc_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:go_basicfcc_fracvapor>, drumbatchsize, <liquid:gasoline>, 1460*2000/drumbatchsize, <liquid:sour_water>, 43, <liquid:go_basicfcc_sourgas>, 497*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime*2, <liquid:lean_mea>, 80*500/GLColumnBatchsize, <liquid:go_basicfcc_sourgas>, 2*GLColumnBatchsize, <liquid:go_basicfcc_sweetgas>, 997*500/GLColumnBatchsize, <liquid:rich_mea>, 83*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime*2, <liquid:lean_mdea>, 50*500/GLColumnBatchsize, <liquid:go_basicfcc_sourgas>, 2*GLColumnBatchsize, <liquid:go_basicfcc_sweetgas>, 997*500/GLColumnBatchsize, <liquid:rich_mdea>, 53*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:go_basicfcc_sweetgas>*2229, <liquid:go_basicfcc_sweetgas_cold>*2229);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:go_basicfcc_sweetgas_cold>*497, [<liquid:go_basicfcc_demtop>*65, <liquid:go_basicfcc_dembot>*432]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:go_basicfcc_demtop>, GaspurifierBatchsize, <liquid:hydrogen>, 50*500/GaspurifierBatchsize, <liquid:methane>, 450*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:go_basicfcc_dembot>*502, [<liquid:go_basicfcc_deetop>*46, <liquid:go_basicfcc_deebot>*456]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:go_basicfcc_deetop>*497, [<liquid:ethene>*431, <liquid:ethane>*66]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:go_basicfcc_deebot>*501, [<liquid:go_basicfcc_deptop>*159, <liquid:go_basicfcc_depbot>*342]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:go_basicfcc_deptop>*495, [<liquid:propene>*448, <liquid:propane>*47]);

mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:go_basicfcc_depbot>*499, [<liquid:butadiene>*440, <liquid:butane>*59]);


//FCC - GO adv cat
mmrecipecount = addfccreactorrecipe(FCCTicktime, <modularmachinery:itemredstonesignal:15>, <contenttweaker:advfcc_catalyst>, 39, <liquid:hdt_go>, FCCBatchsize, <liquid:steam>, 14285, <liquid:go_advfcc_eff_boiling>, 4700, <contenttweaker:advfcc_spent_catalyst>, 39, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:go_advfcc_fracvapor_warm>*822,<liquid:fcccycleoil_hot>*136,<liquid:fccslurry_boiling>*42], [<immersiveengineering:material:6>], <liquid:go_advfcc_eff_boiling>*1000, 100, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:go_advfcc_fracvapor_warm>*344, <liquid:go_advfcc_fracvapor>*344, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 291/ACRate, <liquid:go_advfcc_fracvapor_warm>, ACbatchsize, <liquid:go_advfcc_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:go_advfcc_fracvapor>, drumbatchsize, <liquid:gasoline>, 755*2000/drumbatchsize, <liquid:sour_water>, 46, <liquid:go_advfcc_sourgas>, 1199*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime*2, <liquid:lean_mea>, 31*500/GLColumnBatchsize, <liquid:go_advfcc_sourgas>, 2*GLColumnBatchsize, <liquid:go_advfcc_sweetgas>, 999*500/GLColumnBatchsize, <liquid:rich_mea>, 32*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime*2, <liquid:lean_mdea>, 19*500/GLColumnBatchsize, <liquid:go_advfcc_sourgas>, 2*GLColumnBatchsize, <liquid:go_advfcc_sweetgas>, 999*500/GLColumnBatchsize, <liquid:rich_mdea>, 20*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:go_advfcc_sweetgas>*2177, <liquid:go_advfcc_sweetgas_cold>*2177);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:go_advfcc_sweetgas_cold>*496, [<liquid:go_advfcc_demtop>*87, <liquid:go_advfcc_dembot>*409]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:go_advfcc_demtop>, GaspurifierBatchsize, <liquid:hydrogen>, 10*500/GaspurifierBatchsize, <liquid:methane>, 490*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:go_advfcc_dembot>*499, [<liquid:go_advfcc_deetop>*48, <liquid:go_advfcc_deebot>*451]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:go_advfcc_deetop>*497, [<liquid:ethene>*431, <liquid:ethane>*66]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:go_advfcc_deebot>*499, [<liquid:go_advfcc_deptop>*276, <liquid:go_advfcc_depbot>*223]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:go_advfcc_deptop>*495, [<liquid:propene>*448, <liquid:propane>*47]);

mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:go_advfcc_depbot>*499, [<liquid:butadiene>*440, <liquid:butane>*59]);


//FCC - VR
mmrecipecount = addfccreactorrecipe(FCCTicktime, <modularmachinery:itemredstonesignal>, <contenttweaker:fcc_catalyst>, 35, <liquid:hdt_vacuum_residue>, FCCBatchsize, <liquid:steam>, 14285, <liquid:vr_basicfcc_eff_boiling>, 4737, <contenttweaker:fcc_spent_catalyst>, 35, mmrecipecount, scaleeff);
mmrecipecount = addfccreactorrecipe(FCCTicktime, <modularmachinery:itemredstonesignal>, <contenttweaker:advfcc_catalyst>, 35, <liquid:hdt_vacuum_residue>, FCCBatchsize, <liquid:steam>, 14285, <liquid:vr_basicfcc_eff_boiling>, 4737, <contenttweaker:advfcc_spent_catalyst>, 35, mmrecipecount, scaleeff);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:vr_basicfcc_fracvapor_warm>*347,<liquid:fcccycleoil_hot>*297,<liquid:fccslurry_boiling>*356], [<immersiveengineering:material:6>], <liquid:vr_basicfcc_eff_boiling>*1000, 100, 100, [0.000001]);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:vr_basicfcc_fracvapor_warm>*342, <liquid:vr_basicfcc_fracvapor>*342, HXUnit);

mmrecipecount = addaircoolerrecipe(ACduty, 293/ACRate, <liquid:vr_basicfcc_fracvapor_warm>, ACbatchsize, <liquid:vr_basicfcc_fracvapor>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:vr_basicfcc_fracvapor>, drumbatchsize, <liquid:gasoline>, 1432*2000/drumbatchsize, <liquid:sour_water>, 109, <liquid:vr_basicfcc_sourgas>, 459*2000/drumbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mea>, 509*500/GLColumnBatchsize, <liquid:vr_basicfcc_sourgas>, GLColumnBatchsize, <liquid:vr_basicfcc_sweetgas>, 482*500/GLColumnBatchsize, <liquid:rich_mea>, 527*500/GLColumnBatchsize, mmrecipecount, scaleeff);
mmrecipecount = addglcolumnrecipe(GLColumnTicktime, <liquid:lean_mdea>, 317*500/GLColumnBatchsize, <liquid:vr_basicfcc_sourgas>, GLColumnBatchsize, <liquid:vr_basicfcc_sweetgas>, 482*500/GLColumnBatchsize, <liquid:rich_mdea>, 335*500/GLColumnBatchsize, mmrecipecount, scaleeff);

mods.nuclearcraft.Supercooler.addRecipe(<liquid:vr_basicfcc_sweetgas>*2229, <liquid:vr_basicfcc_sweetgas_cold>*2229);

mods.pneumaticcraft.refinery.addRecipe(1630123, <liquid:vr_basicfcc_sweetgas_cold>*503, [<liquid:vr_basicfcc_demtop>*64, <liquid:vr_basicfcc_dembot>*439]);
mmrecipecount = addgaspurifierrecipe(GaspurifierPower, GaspurifierTicktime, <liquid:vr_basicfcc_demtop>, GaspurifierBatchsize, <liquid:hydrogen>, 36*500/GaspurifierBatchsize, <liquid:methane>, 464*500/GaspurifierBatchsize, mmrecipecount, scaleeff);

mods.pneumaticcraft.refinery.addRecipe(2180188, <liquid:vr_basicfcc_dembot>*502, [<liquid:vr_basicfcc_deetop>*46, <liquid:vr_basicfcc_deebot>*456]);
mods.pneumaticcraft.refinery.addRecipe(1850170, <liquid:vr_basicfcc_deetop>*497, [<liquid:ethene>*431, <liquid:ethane>*66]);

mods.pneumaticcraft.refinery.addRecipe(2680233, <liquid:vr_basicfcc_deebot>*501, [<liquid:vr_basicfcc_deptop>*159, <liquid:vr_basicfcc_depbot>*342]);
mods.pneumaticcraft.refinery.addRecipe(2310226, <liquid:vr_basicfcc_deptop>*495, [<liquid:propene>*448, <liquid:propane>*47]);

mods.pneumaticcraft.refinery.addRecipe(2720269, <liquid:vr_basicfcc_depbot>*499, [<liquid:butadiene>*440, <liquid:butane>*59]);


//FCC regen
mmrecipecount = addfccregeneratorrecipe(FCCTicktime, <contenttweaker:fcc_spent_catalyst>, 30, <liquid:compressed_air>, 15000, <liquid:fcc_fluegas>, 15000, <contenttweaker:fcc_catalyst>, 28, mmrecipecount, scaleeff);
mmrecipecount = addfccregeneratorrecipe(FCCTicktime, <contenttweaker:advfcc_spent_catalyst>, 45, <liquid:compressed_air>, 22500, <liquid:fcc_fluegas>, 22500, <contenttweaker:advfcc_catalyst>, 44, mmrecipecount, scaleeff);



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

//Advanced Reactor - 3 liquid input, RS control
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

//Advanced Reactor - 2 liquid input, no RS control
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

//Advanced Reactor - 1 liquid input, no RS control
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

//Advanced Reactor - 2 liquid input, RS control
function addadvreactorrecipe4(time as int, catalyst as IItemStack, cat1 as int, redstone as IItemStack, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvsmall", time, 0)
  .addItemInput(catalyst*(cat1*eff[0])).addItemInput(redstone).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvmedium", time, 0)
  .addItemInput(catalyst*(cat1*eff[1])).addItemInput(redstone).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvlarge", time, 0)
  .addItemInput(catalyst*(cat1*eff[2])).addItemInput(redstone).addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
  return number;
}

//Advanced Reactor - 3 liquid input, RS control, twin catalyst
function addadvreactorrecipe5(time as int, catalyst1 as IItemStack, cat1 as int, catalyst2 as IItemStack, cat2 as int, redstone as IItemStack, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, input3 as ILiquidStack, in3 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvsmall", time, 0)
  .addItemInput(catalyst1*(cat1*eff[0])).addItemInput(catalyst2*(cat2*eff[0])).addItemInput(redstone).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidInput(input3*(in3*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvmedium", time, 0)
  .addItemInput(catalyst1*(cat1*eff[1])).addItemInput(catalyst2*(cat2*eff[1])).addItemInput(redstone).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidInput(input3*(in3*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvlarge", time, 0)
  .addItemInput(catalyst1*(cat1*eff[2])).addItemInput(catalyst2*(cat2*eff[2])).addItemInput(redstone).addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidInput(input3*(in3*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
  return number;
}

//Advanced Reactor - 4 liquid input, RS control, twin catalyst
function addadvreactorrecipe6(time as int, catalyst1 as IItemStack, cat1 as int, catalyst2 as IItemStack, cat2 as int, redstone as IItemStack, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, input3 as ILiquidStack, in3 as int, input4 as ILiquidStack, in4 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvsmall", time, 0)
  .addItemInput(catalyst1*(cat1*eff[0])).addItemInput(catalyst2*(cat2*eff[0])).addItemInput(redstone).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidInput(input3*(in3*eff[0])).addFluidInput(input4*(in4*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvmedium", time, 0)
  .addItemInput(catalyst1*(cat1*eff[1])).addItemInput(catalyst2*(cat2*eff[1])).addItemInput(redstone).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidInput(input3*(in3*eff[1])).addFluidInput(input4*(in4*eff[2])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvlarge", time, 0)
  .addItemInput(catalyst1*(cat1*eff[2])).addItemInput(catalyst2*(cat2*eff[2])).addItemInput(redstone).addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidInput(input3*(in3*eff[2])).addFluidInput(input4*(in4*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
  return number;
}

//Advanced Reactor - 3 liquid input, no RS control
function addadvreactorrecipe7(time as int, catalyst as IItemStack, cat1 as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, input3 as ILiquidStack, in3 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvsmall", time, 0)
  .addItemInput(catalyst*(cat1*eff[0])).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidInput(input3*(in3*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvmedium", time, 0)
  .addItemInput(catalyst*(cat1*eff[1])).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidInput(input3*(in3*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactoradvlarge", time, 0)
  .addItemInput(catalyst*(cat1*eff[2])).addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidInput(input3*(in3*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
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

function addgaspurifierrecipe2(power as int, time as int, input1 as ILiquidStack, in1 as int, output1 as ILiquidStack, out1 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "gaspurifiersmall", time, 0)
  .addEnergyPerTickInput(power*eff[0]).addFluidInput(input1*(in1*eff[0])).addFluidOutput(output1*(out1*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "gaspurifiermedium", time, 0)
  .addEnergyPerTickInput(power*eff[1]).addFluidInput(input1*(in1*eff[1])).addFluidOutput(output1*(out1*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "gaspurifierlarge", time, 0)
  .addEnergyPerTickInput(power*eff[2]).addFluidInput(input1*(in1*eff[2])).addFluidOutput(output1*(out1*eff[2])).build();
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

//Resid HCK
function addresidcrackerrecipe(power as int, time as int, catalyst as IItemStack, cat1 as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, output1 as ILiquidStack, out1 as int, output as IItemStack, out as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "residcrackersmall", time, 0)
  .addEnergyPerTickInput(power*eff[0]).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addItemInput(catalyst*(cat1*eff[0])).addFluidOutput(output1*(out1*eff[0])).addItemOutput(output*(out*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "residcrackerlarge", time, 0)
  .addEnergyPerTickInput(power*eff[1]).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addItemInput(catalyst*(cat1*eff[1])).addFluidOutput(output1*(out1*eff[1])).addItemOutput(output*(out*eff[1])).build();
  return number;
}

//FCC
function addfccreactorrecipe(time as int, redstone as IItemStack, catalyst as IItemStack, cat as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, output1 as ILiquidStack, out1 as int, output as IItemStack, out as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactorfccsmall", time, 0)
  .addItemInput(redstone).addItemInput(catalyst*(cat*eff[0])).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidOutput(output1*(out1*eff[0])).addItemOutput(output*(out*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "reactorfcclarge", time, 0)
  .addItemInput(redstone).addItemInput(catalyst*(cat*eff[1])).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidOutput(output1*(out1*eff[1])).addItemOutput(output*(out*eff[1])).build();
  return number;
}

function addfccregeneratorrecipe(time as int, catalyst as IItemStack, cat as int, input1 as ILiquidStack, in1 as int, output1 as ILiquidStack, out1 as int, output as IItemStack, out as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "regeneratorsmall", time, 0)
  .addItemInput(catalyst*(cat*eff[0])).addFluidInput(input1*(in1*eff[0])).addFluidOutput(output1*(out1*eff[0])).addItemOutput(output*(out*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "regeneratorlarge", time, 0)
  .addItemInput(catalyst*(cat*eff[1])).addFluidInput(input1*(in1*eff[1])).addFluidOutput(output1*(out1*eff[1])).addItemOutput(output*(out*eff[1])).build();
  return number;
}
