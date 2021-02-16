import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [

];

var recipestaged as IItemStack[] = [

];

excluded = functions.MergeArray(excluded, scripts.recipes_base.magneticraft.removed);

mods.ItemStages.addItemStage("adv_automation", <magneticraft:conveyor_belt>);
mods.ItemStages.addItemStage("adv_automation", <magneticraft:inserter>);
