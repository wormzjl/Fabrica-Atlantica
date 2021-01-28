import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [

];

var recipestaged as IItemStack[] = [

];

var stage_basicbelt as IItemStack[] = [
  <immersiveengineering:conveyor:*>
];

excluded = functions.MergeArray(excluded, scripts.recipes_base.immersiveengineering.removed);
excluded = functions.MergeArray(excluded, stage_basicbelt);

for item in loadedMods["immersiveengineering"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("basictech", item);
  }
}

for item in stage_basicbelt {
  mods.ItemStages.addItemStage("stage_basicbelt", item);
}

for item in recipestaged {
	mods.recipestages.Recipes.setRecipeStage("basictech", item);
}


//Locking mulitiblocks with stages
mods.multiblockstages.IEMultiBlockStages.addStage("BlastFurnace", "IE:BlastFurnace", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("CokeOven", "IE:CokeOven", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Crusher", "IE:Crusher", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("MetalPress", "IE:MetalPress", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("AutoWorkbench", "IE:AutoWorkbench", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Assembler", "IE:Assembler", "Need Research First!");

mods.multiblockstages.IEMultiBlockStages.addStage("BlastFurnaceAdvanced", "IE:BlastFurnaceAdvanced", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("SheetmetalTank", "IE:SheetmetalTank", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("Silo", "IE:Silo", "Need Research First!");

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

//functions.stageMod("basictech", "immersiveengineering");
//functions.stageMod("basictech", "immersivepetroleum");
