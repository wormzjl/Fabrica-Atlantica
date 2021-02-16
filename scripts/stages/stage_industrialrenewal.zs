import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [

];

var recipestaged as IItemStack[] = [

];

excluded = functions.MergeArray(excluded, scripts.recipes_base.techguns.removed);

mods.ItemStages.addItemStage("boiler_ir", <industrialrenewal:steam_boiler>);
mods.ItemStages.addItemStage("boiler_ir", <industrialrenewal:steam_turbine>);
