#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;


val fluids_ambient_misc = {
  oil_brine : "ADD8E6",
  sour_water : "005E7F",
  fuel_oil : "1D1002"
} as string[string];

val fluids_ambient = {
  natural_gas : "E7F7CA",
  crude_heavy : "252525",
  crude_heavy_desalted : "252525",
  crude_desalted : "252525",
  adu_gas_light : "FFFFF6",
  adu_gas_heavy : "FFFFF6",
  off_gas : "FFFFFA",
  sr_naphtha : "F5DEB3",
  sr_kerosene : "87CEEB",
  sr_go : "F4A460",
  ar : "643C0B",
  sr_vgo : "1C1C00",
  sr_vacuum_residue : "000000"
} as string[string];

val fluids_warm = {
  oil : "252525",
  crude_heavy : "252525",
  crude_heavy_desalted : "252525",
  crude_desalted : "252525",
  adu_gas_light : "FFFFF6",
  adu_gas_heavy : "FFFFF6",
  sr_naphtha : "F5DEB3",
  sr_kerosene : "87CEEB",
  sr_go : "F4A460",
  ar : "643C0B",
  sr_vgo : "1C1C00",
  sr_vacuum_residue : "000000"
} as string[string];

val fluids_hot = {
  crude_heavy_desalted : "252525",
  crude_desalted : "252525",
  sr_naphtha : "F5DEB3",
  sr_kerosene : "87CEEB",
  sr_go : "F4A460",
  ar : "643C0B",
  sr_vgo : "1C1C00",
  sr_vacuum_residue : "000000"
} as string[string];

val fluids_boiling = {
  sr_kerosene : "87CEEB",
  sr_go : "F4A460",
  ar : "643C0B",
  sr_vgo : "1C1C00",
  sr_vacuum_residue : "000000"
} as string[string];

val fluids_blazing = {
} as string[string];


val gas_warm = {
  hydrogen : "B59EC3"
} as string[string];

val gas_hot = {
  hydrogen : "B59EC3"
} as string[string];

val gas_boiling = {
  hydrogen : "B59EC3"
} as string[string];


addAmbientFluid(fluids_ambient_misc);
addAmbientFluid(fluids_ambient);
addWarmFluid(fluids_warm);
addHotFluid(fluids_hot);
addBoilingFluid(fluids_boiling);
addBlazingFluid(fluids_blazing);

addWarmGas(gas_warm);
addHotGas(gas_hot);
addBoilingGas(gas_boiling);


//Functions
function addAmbientFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid, Color.fromHex(fluids[fluid]));
    fluid1.temperature = 300;
    fluid1.register();
  }
}

function addWarmFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_warm", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 430;
    fluid1.register();
  }
}

function addHotFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_hot", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 590;
    fluid1.register();
  }
}

function addBoilingFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_boiling", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 700;
    fluid1.register();
  }
}

function addBlazingFluid(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_blazing", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 900;
    fluid1.register();
  }
}


function addAmbientGas(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid, Color.fromHex(fluids[fluid]));
    fluid1.temperature = 300;
    fluid1.gaseous = true;
    fluid1.register();
  }
}

function addWarmGas(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_warm", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 430;
    fluid1.gaseous = true;
    fluid1.register();
  }
}

function addHotGas(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_hot", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 590;
    fluid1.gaseous = true;
    fluid1.register();
  }
}

function addBoilingGas(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_boiling", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 700;
    fluid1.gaseous = true;
    fluid1.register();
  }
}

function addBlazingGas(fluids as string[string]){
  for fluid in fluids {
    var fluid1 = VanillaFactory.createFluid(fluid + "_blazing", Color.fromHex(fluids[fluid]));
    fluid1.temperature = 900;
    fluid1.gaseous = true;
    fluid1.register();
  }
}
