#priority 1000

import crafttweaker.liquid.ILiquidStack;

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
var scaleeff = [1,3,9] as int[];
//Standard Heater batch size
var heaterbatchsize = 10000 as int;
//Standard Small drum processing time
var drumprocessingtime = 100 as int;
//Standard Small Air cooler batch size
var ACbatchsize = 1000 as int;
//Standard Small Air cooler RF/t
var ACduty = 100 as int;

//Fuel blending
//SR Grade - 50% eff
mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline>*500, <liquid:sr_naphtha>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:kerosene>*500, <liquid:sr_kerosene>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel>*500, <liquid:sr_go>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*500, <liquid:ar>*1000, <liquid:steam>*100, 64);

//Warm products can be converted directly
mods.immersiveengineering.Refinery.addRecipe(<liquid:kerosene>*500, <liquid:sr_kerosene_warm>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:diesel>*500, <liquid:sr_go_warm>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*500, <liquid:ar_warm>*1000, <liquid:steam>*100, 64);


//Refining
//Just dump it into the tower - 25% eff + AR to Coke
mods.immersivepetroleum.Distillation.addRecipe([<liquid:fuel_oil>*230,<liquid:kerosene>*95,<liquid:gasoline>*220], [<immersiveengineering:material:6>*29], <liquid:oil>*5000, 3759, 500, [1.0]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:fuel_oil>*225,<liquid:kerosene>*80,<liquid:gasoline>*165], [<immersiveengineering:material:6>*35], <liquid:crude_heavy>*5000, 3862, 500, [1.0]);

//Crude oil desalting - Slower recipe
mmrecipecount = add3phaseseprecipe(40, 200, <liquid:water>, 1000, <liquid:oil>, 1000, <liquid:crude_desalted>, 970, <liquid:oil_brine>, 1000, <liquid:natural_gas>, 30, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe(40, 200, <liquid:water>, 1000, <liquid:crude_heavy>, 1000, <liquid:crude_heavy_desalted>, 970, <liquid:oil_brine>, 1000, <liquid:natural_gas>, 30, mmrecipecount, scaleeff);

//Crude oil desalting - Faster recipe (Gas/brine temperature TBD)
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:oil>*343, <liquid:oil_warm>*343, 100);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_heavy>*338, <liquid:crude_heavy_warm>*338, 100);

mods.magneticraft.OilHeater.addRecipe(<liquid:oil>*heaterbatchsize, <liquid:oil_warm>*heaterbatchsize, 55, 600);
mods.magneticraft.OilHeater.addRecipe(<liquid:crude_heavy>*heaterbatchsize, <liquid:crude_heavy_warm>*heaterbatchsize, 56, 600);

mmrecipecount = add3phaseseprecipe(40, drumprocessingtime, <liquid:water>, 1000, <liquid:oil_warm>, 1000, <liquid:crude_desalted_warm>, 970, <liquid:oil_brine>, 1000, <liquid:natural_gas>, 30, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe(40, drumprocessingtime, <liquid:water>, 1000, <liquid:crude_heavy_warm>, 1000, <liquid:crude_heavy_desalted_warm>, 970, <liquid:oil_brine>, 1000, <liquid:natural_gas>, 30, mmrecipecount, scaleeff);


//ADU - Heatup
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_desalted>*343, <liquid:crude_desalted_warm>*343, 100);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_heavy_desalted>*338, <liquid:crude_heavy_desalted_warm>*338, 100);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_desalted_warm>*308, <liquid:crude_desalted_hot>*308, 100);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_heavy_desalted_warm>*300, <liquid:crude_heavy_desalted_hot>*300, 100);

team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_desalted_hot>*282, <liquid:crude_desalted_boiling>*282, 100);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:crude_heavy_desalted_hot>*271, <liquid:crude_heavy_desalted_boiling>*271, 100);

mods.magneticraft.OilHeater.addRecipe(<liquid:crude_desalted>*heaterbatchsize, <liquid:crude_desalted_boiling>*heaterbatchsize, 183, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:crude_heavy_desalted>*heaterbatchsize, <liquid:crude_heavy_desalted_boiling>*heaterbatchsize, 189, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:crude_desalted_warm>*heaterbatchsize, <liquid:crude_desalted_boiling>*heaterbatchsize, 128, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:crude_heavy_desalted_warm>*heaterbatchsize, <liquid:crude_heavy_desalted_boiling>*heaterbatchsize, 133, 900);

mods.magneticraft.OilHeater.addRecipe(<liquid:crude_desalted_hot>*heaterbatchsize, <liquid:crude_desalted_boiling>*heaterbatchsize, 67, 900);
mods.magneticraft.OilHeater.addRecipe(<liquid:crude_heavy_desalted_hot>*heaterbatchsize, <liquid:crude_heavy_desalted_boiling>*heaterbatchsize, 70, 900);

mods.immersivepetroleum.Distillation.addRecipe([<liquid:ar_boiling>*4250,<liquid:sr_go_boiling>*2300,<liquid:sr_kerosene_hot>*950,<liquid:adu_gas_light_hot>*2500], [<immersiveengineering:material:6>], <liquid:crude_desalted_boiling>*10000, 10, 200, [0.000001]);
mods.immersivepetroleum.Distillation.addRecipe([<liquid:ar_boiling>*5200,<liquid:sr_go_boiling>*2250,<liquid:sr_kerosene_hot>*800,<liquid:adu_gas_heavy_hot>*1750], [<immersiveengineering:material:6>], <liquid:crude_heavy_desalted_boiling>*10000, 10, 200, [0.000001]);

//ADU Products
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:adu_gas_light_hot>*307, <liquid:adu_gas_light_warm>*307, 100);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:adu_gas_light_warm>*317, <liquid:adu_gas_light>*317, 100);

team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:adu_gas_heavy_hot>*311, <liquid:adu_gas_heavy_warm>*311, 100);
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:adu_gas_heavy_warm>*315, <liquid:adu_gas_heavy>*315, 100);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_kerosene_boiling>*314, <liquid:sr_kerosene_hot>*314, 100);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_kerosene_hot>*314, <liquid:sr_kerosene_warm>*314, 100);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_kerosene_warm>*314, <liquid:sr_kerosene>*314, 100);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_go_boiling>*269, <liquid:sr_go_hot>*269, 100);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_go_hot>*301, <liquid:sr_go_warm>*301, 100);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:sr_go_warm>*342, <liquid:sr_go>*342, 100);

team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:ar_boiling>*251, <liquid:ar_hot>*251, 100);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:ar_hot>*290, <liquid:ar_warm>*290, 100);
team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:ar_warm>*342, <liquid:ar>*342, 100);

mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:adu_gas_light>, 1000, <liquid:off_gas>, 120, <liquid:sr_naphtha>, 880, <liquid:sour_water>, 20, mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe2(drumprocessingtime, <liquid:adu_gas_heavy>, 1000, <liquid:off_gas>, 57, <liquid:sr_naphtha>, 943, <liquid:sour_water>, 20, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 64, <liquid:adu_gas_light_hot>, ACbatchsize, <liquid:adu_gas_light>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 64, <liquid:adu_gas_heavy_hot>, ACbatchsize, <liquid:adu_gas_heavy>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 32, <liquid:adu_gas_light_warm>, ACbatchsize, <liquid:adu_gas_light>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 32, <liquid:adu_gas_heavy_warm>, ACbatchsize, <liquid:adu_gas_heavy>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 64, <liquid:sr_kerosene_hot>, ACbatchsize, <liquid:sr_kerosene>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 32, <liquid:sr_kerosene_warm>, ACbatchsize, <liquid:sr_kerosene>, ACbatchsize, mmrecipecount, scaleeff);

mmrecipecount = addaircoolerrecipe(ACduty, 100, <liquid:sr_go_boiling>, ACbatchsize, <liquid:sr_go>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 104, <liquid:ar_boiling>, ACbatchsize, <liquid:ar>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 62, <liquid:sr_go_hot>, ACbatchsize, <liquid:sr_go>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 64, <liquid:ar_hot>, ACbatchsize, <liquid:ar>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 29, <liquid:sr_go_warm>, ACbatchsize, <liquid:sr_go>, ACbatchsize, mmrecipecount, scaleeff);
mmrecipecount = addaircoolerrecipe(ACduty, 29, <liquid:ar_warm>, ACbatchsize, <liquid:ar>, ACbatchsize, mmrecipecount, scaleeff);

//VDU


//Functions
//3 phase sep: 2 liquid inputs, 3 liquid outputs, can't have null as input
function add3phaseseprecipe(power as int, time as int, input1 as ILiquidStack, in1 as int, input2 as ILiquidStack, in2 as int, output1 as ILiquidStack, out1 as int, output2 as ILiquidStack, out2 as int, output3 as ILiquidStack, out3 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelliqliqsepsmall", time, 0)
  .addEnergyPerTickInput(power*eff[0]).addFluidInput(input1*(in1*eff[0])).addFluidInput(input2*(in2*eff[0])).addFluidOutput(output1*(out1*eff[0])).addFluidOutput(output2*(out2*eff[0])).addFluidOutput(output3*(out3*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelliqliqsepmedium", time, 0)
  .addEnergyPerTickInput(power*eff[1]).addFluidInput(input1*(in1*eff[1])).addFluidInput(input2*(in2*eff[1])).addFluidOutput(output1*(out1*eff[1])).addFluidOutput(output2*(out2*eff[1])).addFluidOutput(output3*(out3*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelliqliqseplarge", time, 0)
  .addEnergyPerTickInput(power*eff[2]).addFluidInput(input1*(in1*eff[2])).addFluidInput(input2*(in2*eff[2])).addFluidOutput(output1*(out1*eff[2])).addFluidOutput(output2*(out2*eff[2])).addFluidOutput(output3*(out3*eff[2])).build();
  return number;
}

function add3phaseseprecipe2(time as int, input1 as ILiquidStack, in1 as int, output1 as ILiquidStack, out1 as int, output2 as ILiquidStack, out2 as int, output3 as ILiquidStack, out3 as int, recipenumber as int, eff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelliqliqsepsmall", time, 0)
  .addFluidInput(input1*(in1*eff[0])).addFluidOutput(output1*(out1*eff[0])).addFluidOutput(output2*(out2*eff[0])).addFluidOutput(output3*(out3*eff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelliqliqsepmedium", time, 0)
  .addFluidInput(input1*(in1*eff[1])).addFluidOutput(output1*(out1*eff[1])).addFluidOutput(output2*(out2*eff[1])).addFluidOutput(output3*(out3*eff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelliqliqseplarge", time, 0)
  .addFluidInput(input1*(in1*eff[2])).addFluidOutput(output1*(out1*eff[2])).addFluidOutput(output2*(out2*eff[2])).addFluidOutput(output3*(out3*eff[2])).build();
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
