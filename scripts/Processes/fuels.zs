#priority 1001

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.liquid.ILiquidDefinition;

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

mods.magneticraft.FluidFuel.addFuel(<liquid:fuel_gas>, 42084, 50.0);
mods.magneticraft.FluidFuel.addFuel(<liquid:gasoline>, 36456, 50.0);
mods.magneticraft.FluidFuel.addFuel(<liquid:diesel>, 35784, 50.0);
mods.magneticraft.FluidFuel.addFuel(<liquid:fuel_oil>, 32760, 50.0);

//Misc fuel values
furnace.setFuel(<contenttweaker:scrap8>, 1200);

//IT
// mods.immersivetechnology.Boiler.addRecipe(ILiquidStack output, ILiquidStack input, int time);
// mods.immersivetechnology.Boiler.addFuel(ILiquidStack input, int time, double heat);


//PnC ref https://github.com/TeamPneumatic/pnc-repressurized/blob/256c80f8ab20b8f950feaaca59148752497a62db/src/main/java/me/desht/pneumaticcraft/datagen/ModRecipeProvider.java#L1424
mods.pneumaticcraft.liquidfuel.removeAllFuels();

//Steam: default:MP, NuC HP: Supercritical
val def1 = <liquid:steam>.definition;
def1.temperature = 450;

val def2 = <liquid:condensate_water>.definition;
def2.temperature = 440;

val def3 = <liquid:high_pressure_steam>.definition;
def3.temperature = 820;


team.cappcraft.icheme.HeatExchanger.addBiDirectionEntry(<liquid:steam>*2778, <liquid:condensate_water>*17, 100);
team.cappcraft.icheme.HeatExchanger.addHeatUpEntry(<liquid:distwater>*14, <liquid:steam>*2222, 100);
