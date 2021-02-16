#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.World;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemRightClick;

//copypaste each time -_-
static allStages as string[] = [
  "BlastFurnace",
  "CokeOven",
  "Crusher",
  "MetalPress",
  "AutoWorkbench",
  "ieautomation",
  "BlastFurnaceAdvanced",
  "iestorage",
  "BottlingMachine",
  "Squeezer",
  "Fermenter",
  "Mixer",
  "ArcFurnace",
  "CokeOvenBattery",
  "Refinery",
  "DieselGenerator",
  "DistillationTower",
  "Pumpjack",
  "Boiler",
  "Distiller",
  "SolarTower",
  "SolarReflector",
  "Alternator",
  "SteamTurbine",
  "SteelSheetmetalTank",
  "Excavator",
  "Lightningrod",
  "marx_generator",
  "iw_mech",

  "forestry",
  "basictech",
  "railcraft",
  "boiler_rc",
  "boiler_ir",
  "rsc",
  "bedrock_miner",
  "tgmetalpress",
  "macerator",
  "pneumaticcraft",
  "mvpower",
  "orewasher",

  "adv_automation",

  "component_t0",
  "component_t1",
  "component_t2",
  "component_t3",
  "component_t4",
  "component_t5",
  "component_t6"
];

//Stage debugger item
var stage_debugger = VanillaFactory.createItem("stage_debugger");
stage_debugger.itemRightClick = function(stack, world, player, hand) {
    for stage in allStages {
        Commands.call("gamestage add @p " + stage, player, world);
    }
    return "Pass";
};
stage_debugger.maxStackSize = 1;
stage_debugger.register();

//Show disabled items
var stage_disabled = VanillaFactory.createItem("stage_disabled");
stage_disabled.itemRightClick = function(stack, world, player, hand) {
    Commands.call("gamestage add @p disabled", player, world);
    return "Pass";
};
stage_disabled.maxStackSize = 1;
stage_disabled.register();
