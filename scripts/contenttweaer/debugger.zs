#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.World;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemRightClick;

//copypaste each time -_-
static allStages as string[] = [
    "forestry",
    "basictech",

    "BlastFurnace",
    "CokeOven",
    "Crusher",
    "MetalPress",
    "AutoWorkbench",
    "Assembler",
    "BlastFurnaceAdvanced",
    "SheetmetalTank",
    "Silo",
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
    "iw_mech"
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
