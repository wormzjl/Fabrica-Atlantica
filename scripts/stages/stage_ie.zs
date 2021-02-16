import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [
  <immersiveengineering:stone_decoration:0>,
  <immersiveengineering:conveyor:*>,
  <immersiveengineering:stone_decoration:1>,
  <immersiveengineering:stone_decoration_slab:1>,
  <immersiveengineering:stone_decoration:2>,
  <immersiveengineering:stone_decoration_slab:2>,
  <immersiveengineering:metal_device1>,
  <immersiveengineering:metal:*>,
  <immersiveengineering:treated_wood:*>,
  <immersiveengineering:treated_wood_slab:*>,
  <immersiveengineering:treated_wood_stairs0:*>,
  <immersiveengineering:treated_wood_stairs1:*>,
  <immersiveengineering:treated_wood_stairs2:*>,
  <immersiveengineering:wooden_decoration:*>,
  <immersiveengineering:storage:*>,
  <immersiveengineering:ore:*>,
  <immersiveengineering:storage_slab:*>,
  <immersiveengineering:stone_decoration:3>,
  <immersiveengineering:material>,
  <immersiveengineering:material:1>,
  <immersiveengineering:material:2>,
  <immersiveengineering:material:3>,
  <immersiveengineering:material:6>,
  <immersiveengineering:seed>
];

var mvpower as IItemStack[] = [
  <immersiveengineering:connector:2>,
  <immersiveengineering:connector:3>,
  <immersiveengineering:wirecoil:1>,
  <immersiveengineering:wirecoil:7>,
  <industrialwires:ic2_wire_coil:2>,
  <industrialwires:ic2_wire_coil:7>,
  <industrialwires:ic2_connector:4>,
  <industrialwires:ic2_connector:5>,
  <immersiveengineering:metal_device0:1>
];

excluded = functions.MergeArray(excluded, scripts.recipes_base.immersiveengineering.removed);
excluded = functions.MergeArray(excluded, mvpower);

//T0
for item in loadedMods["immersiveengineering"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("basictech", item);
  }
}

mods.ItemStages.addItemStage("basictech", <immersivepetroleum:schematic>);
mods.ItemStages.addItemStage("basictech", <industrialwires:ic2_wire_coil>);
mods.ItemStages.addItemStage("basictech", <industrialwires:ic2_wire_coil:1>);
mods.ItemStages.addItemStage("basictech", <industrialwires:ic2_wire_coil:5>);
mods.ItemStages.addItemStage("basictech", <industrialwires:ic2_wire_coil:6>);
mods.ItemStages.addItemStage("basictech", <industrialwires:ic2_connector>);
mods.ItemStages.addItemStage("basictech", <industrialwires:ic2_connector:1>);
mods.ItemStages.addItemStage("basictech", <industrialwires:ic2_connector:2>);
mods.ItemStages.addItemStage("basictech", <industrialwires:ic2_connector:3>);

mods.ItemStages.addItemStage("CokeOven", <immersiveengineering:stone_decoration:0>);

mods.ItemStages.addItemStage("ieautomation", <immersiveengineering:conveyor:*>);

mods.ItemStages.addItemStage("BlastFurnace", <immersiveengineering:stone_decoration:1>);
mods.ItemStages.addItemStage("BlastFurnace", <immersiveengineering:stone_decoration_slab:1>);

//T1
mods.ItemStages.addItemStage("BlastFurnaceAdvanced", <immersiveengineering:stone_decoration:2>);
mods.ItemStages.addItemStage("BlastFurnaceAdvanced", <immersiveengineering:stone_decoration_slab:2>);
mods.ItemStages.addItemStage("BlastFurnaceAdvanced", <immersiveengineering:metal_device1>);

for item in mvpower {
  mods.ItemStages.addItemStage("mvpower", item);
}

//Locking mulitiblocks with stages
mods.multiblockstages.IEMultiBlockStages.addStage("BlastFurnace", "IE:BlastFurnace", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("CokeOven", "IE:CokeOven", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Crusher", "IE:Crusher", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("MetalPress", "IE:MetalPress", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("ieautomation", "IE:AutoWorkbench", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("ieautomation", "IE:Assembler", "Need Research First!");

mods.multiblockstages.IEMultiBlockStages.addStage("BlastFurnaceAdvanced", "IE:BlastFurnaceAdvanced", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iestorage", "IE:SheetmetalTank", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iestorage", "IE:Silo", "Need Research First!");

mods.multiblockstages.IEMultiBlockStages.addStage("BottlingMachine", "IE:BottlingMachine", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Squeezer", "IE:Squeezer", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Fermenter", "IE:Fermenter", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Mixer", "IE:Mixer", "Need Research First!");

mods.multiblockstages.IEMultiBlockStages.addStage("ArcFurnace", "IE:ArcFurnace", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("CokeOvenBattery", "QI:CokeOvenBattery", "Need Research First!");

mods.multiblockstages.IEMultiBlockStages.addStage("Refinery", "IE:Refinery", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("DieselGenerator", "IE:DieselGenerator", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("DistillationTower", "IP:DistillationTower", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Pumpjack", "IP:Pumpjack", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Boiler", "IT:Boiler", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Distiller", "IT:Distiller", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("SolarTower", "IT:SolarTower", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("SolarReflector", "IT:SolarReflector", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Alternator", "IT:Alternator", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("SteamTurbine", "IT:SteamTurbine", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("SteelSheetmetalTank", "IT:SteelSheetmetalTank", "Need Research First!");

mods.multiblockstages.IEMultiBlockStages.addStage("Excavator", "IE:Excavator", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Excavator", "IE:BucketWheel", "Need Research First!");

mods.multiblockstages.IEMultiBlockStages.addStage("Lightningrod", "IE:Lightningrod", "Need Research First!");

mods.multiblockstages.IEMultiBlockStages.addStage("marx_generator", "iw:marx_generator", "Need Research First!");

mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:flywheel", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:single_coil", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:two_electrodes", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:commutator", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:shaft", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:speedometer", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:comm_four", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:four_coils", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:four_electrodes", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:mech_mb", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("iw_mech", "iw:example_mech_mb", "Need Research First!");
