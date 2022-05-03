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
    mods.ItemStages.addItemStage("adv_automation", item);
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

//RFT
var teleporter as IItemStack[] = [
  <rftools:matter_booster>,
  <rftools:matter_transmitter>,
  <rftools:matter_receiver>,
  <rftools:dialing_device>,
  <rftools:destination_analyzer>,
  <rftools:teleport_probe>
];

for item in teleporter {
  mods.ItemStages.addItemStage("teleporter", item);
}

mods.ItemStages.addItemStage("basictech", <rftools:coalgenerator>);

var rftexcluded as IItemStack[] = [
  <rftools:coalgenerator>
];

rftexcluded = functions.MergeArray(rftexcluded, teleporter);

for item in loadedMods["rftools"].items {
  if !(functions.inArray(item, rftexcluded)) {
    mods.ItemStages.addItemStage("rftools", item);
  }
}
