#priority 1000

import crafttweaker.liquid.ILiquidStack;

//To be reworked
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

//Fuel blending
//SR Grade - 50% eff
mods.immersiveengineering.Refinery.addRecipe(<liquid:gasoline>*500, <liquid:sr_naphtha>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:kerosene>*500, <liquid:sr_kerosene>*1000, <liquid:steam>*100, 64);
mods.immersiveengineering.Refinery.addRecipe(<liquid:fuel_oil>*500, <liquid:ar>*1000, <liquid:steam>*100, 64);


//Crude oil desalting
mmrecipecount = add3phaseseprecipe(40, 200, {<liquid:water>:1000, <liquid:oil>:1000, <liquid:crude_desalted>:970, <liquid:oil_brine>:1000, <liquid:natural_gas>:30} as int[ILiquidStack], mmrecipecount, scaleeff);
mmrecipecount = add3phaseseprecipe(40, 200, {<liquid:water>:1000, <liquid:crude_heavy>:1000, <liquid:crude_desalted>:970, <liquid:oil_brine>:1000, <liquid:natural_gas>:30} as int[ILiquidStack], mmrecipecount, scaleeff);

//ADU


//Functions
//3 phase sep: 2 liquid inputs, 3 liquid outputs, can't have null as input
function add3phaseseprecipe(power as int, time as int, inputs as int[ILiquidStack], recipenumber as int, scaleeff as int[]) as int{
  var number as int;
  number = recipenumber + 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelliqliqsepsmall", time, 0)
  .addEnergyPerTickInput(power*scaleeff[0]).addFluidInput(inputs.keys[0]*(inputs.values[0]*scaleeff[0])).addFluidInput(inputs.keys[1]*(inputs.values[1]*scaleeff[0])).addFluidOutput(inputs.keys[2]*(inputs.values[2]*scaleeff[0])).addFluidOutput(inputs.keys[3]*(inputs.values[3]*scaleeff[0])).addFluidOutput(inputs.keys[4]*(inputs.values[4]*scaleeff[0])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelliqliqsepmedium", time, 0)
  .addEnergyPerTickInput(power*scaleeff[1]).addFluidInput(inputs.keys[0]*(inputs.values[0]*scaleeff[1])).addFluidInput(inputs.keys[1]*(inputs.values[1]*scaleeff[1])).addFluidOutput(inputs.keys[2]*(inputs.values[2]*scaleeff[1])).addFluidOutput(inputs.keys[3]*(inputs.values[3]*scaleeff[1])).addFluidOutput(inputs.keys[4]*(inputs.values[4]*scaleeff[1])).build();
  number += 1;
  mods.modularmachinery.RecipeBuilder.newBuilder("recipe_" + number, "steelliqliqseplarge", time, 0)
  .addEnergyPerTickInput(power*scaleeff[2]).addFluidInput(inputs.keys[0]*(inputs.values[0]*scaleeff[2])).addFluidInput(inputs.keys[1]*(inputs.values[1]*scaleeff[2])).addFluidOutput(inputs.keys[2]*(inputs.values[2]*scaleeff[2])).addFluidOutput(inputs.keys[3]*(inputs.values[3]*scaleeff[2])).addFluidOutput(inputs.keys[4]*(inputs.values[4]*scaleeff[2])).build();
  return number;
}
