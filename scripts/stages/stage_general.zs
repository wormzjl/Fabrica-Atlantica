import crafttweaker.item.IItemStack;
import scripts.functions;

var excluded as IItemStack[] = [
  <autoverse:crafter>
];

var recipestaged as IItemStack[] = [

];

excluded = functions.MergeArray(excluded, scripts.recipes_base.general.removed);


mods.ItemStages.addItemStage("bedrock_miner", <bedrockores:bedrock_miner>);

//Autoverse
for item in loadedMods["autoverse"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("autoverse", item);
  }
}

//RSC
for item in loadedMods["rs_ctr"].items {
  if !(functions.inArray(item, excluded)) {
    mods.ItemStages.addItemStage("rsc", item);
  }
}

mods.ItemStages.stageModItems("rsc", "projectred-fabrication");
mods.ItemStages.stageModItems("rsc", "projectred-illumination");
mods.ItemStages.stageModItems("rsc", "projectred-integration");
mods.ItemStages.stageModItems("rsc", "projectred-transmission");
