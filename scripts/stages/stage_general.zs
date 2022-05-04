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

//integrateddynamics
var idstaged as IItemStack[] = [
  <integrateddynamics:part_audio_reader_item>,
  <integrateddynamics:part_block_reader_item>,
  <integrateddynamics:part_entity_reader_item>,
  <integrateddynamics:part_extradimensional_reader_item>,
  <integrateddynamics:part_fluid_reader_item>,
  <integrateddynamics:part_inventory_reader_item>,
  <integrateddynamics:part_machine_reader_item>,
  <integrateddynamics:part_network_reader_item>,
  <integrateddynamics:part_redstone_reader_item>,
  <integrateddynamics:part_world_reader_item>,
  <integrateddynamics:part_audio_writer_item>,
  <integrateddynamics:part_effect_writer_item>,
  <integrateddynamics:part_entity_writer_item>,
  <integrateddynamics:part_machine_writer_item>,
  <integrateddynamics:part_inventory_writer_item>,
  <integrateddynamics:part_redstone_writer_item>,
  <integrateddynamics:part_static_light_panel_item>,
  <integrateddynamics:part_dynamic_light_panel_item>,
  <integrateddynamics:part_display_panel_item>,
  <integrateddynamics:part_connector_mono_directional_item>,
  <integrateddynamics:part_connector_omni_directional_item>,
  <integrateddynamics:cable>,
  <integrateddynamics:variablestore>,
  <integrateddynamics:logic_programmer>,
  <integrateddynamics:proxy>,
  <integrateddynamics:materializer>,
  <integrateddynamics:mechanical_drying_basin>,
  <integrateddynamics:wrench>,
  <integrateddynamics:variable>,
  <integrateddynamics:labeller>,
  <integrateddynamics:crystalized_menril_chunk>,
  <integrateddynamics:variable_transformer:1>,
  <integrateddynamics:variable_transformer>,
  <integrateddynamics:portable_logic_programmer>,
  <integrateddynamics:delay>,
  <integrateddynamics:drying_basin>,
  <integratednbt:nbt_extractor>,
  <integratednbt:nbt_extractor_remote>,
  <integratedrest:http>
];

for item in idstaged {
  mods.ItemStages.addItemStage("integrateddynamics", item);
}
