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


//PnC ref https://github.com/TeamPneumatic/pnc-repressurized/blob/256c80f8ab20b8f950feaaca59148752497a62db/src/main/java/me/desht/pneumaticcraft/datagen/ModRecipeProvider.java#L1424
mods.pneumaticcraft.liquidfuel.removeAllFuels();

//Steam
team.cappcraft.icheme.HeatExchanger.addCoolDownEntry(<liquid:steam>*1389, <liquid:condensate_water>*8, 50);
