import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [

];

var recipestaged as IItemStack[] = [

];

excluded = functions.MergeArray(excluded, scripts.recipes_base.techguns.removed);

mods.ItemStages.addItemStage("tgmetalpress", <techguns:basicmachine:1>);
