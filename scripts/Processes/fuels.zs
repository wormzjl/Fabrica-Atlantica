#priority 1000

import crafttweaker.liquid.ILiquidStack;

//Default Removal
var MgCFuelRemoved as ILiquidStack[] = [
  <liquid:oil>,
  <liquid:heavy_oil>,
  <liquid:light_oil>,
  <liquid:natural_gas>,
  <liquid:fuel>,
  <liquid:diesel>,
  <liquid:kerosene>,
  <liquid:gasoline>,
  <liquid:naphtha>,
  <liquid:wood_gas>,
  <liquid:creosote>,
  <liquid:ethanol>,
  <liquid:plantoil>,
  <liquid:biodiesel>
];

for liquid in MgCFuelRemoved {
  mods.magneticraft.FluidFuel.removeFuel(liquid);
}

//mods.magneticraft.FluidFuel.addFuel(<liquid:methane>, 24592, 100.0);
//mods.magneticraft.FluidFuel.addFuel(<liquid:ethanol>, 46692, 25.0);
//mods.magneticraft.FluidFuel.addFuel(<liquid:kerosene>, 28264, 150.0);

//IT
// mods.immersivetechnology.Boiler.addRecipe(ILiquidStack output, ILiquidStack input, int time);
// mods.immersivetechnology.Boiler.addFuel(ILiquidStack input, int time, double heat);
