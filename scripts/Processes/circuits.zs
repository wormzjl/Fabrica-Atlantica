#priority 1000

//Resistor
mods.nuclearcraft.Assembler.addRecipe(<ore:dustCarbon>, <ore:paper>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), null, <contenttweaker:resistor>*4, 2.0, 2.0, 0.0);
mods.nuclearcraft.Assembler.addRecipe(<ore:dustNichrome>, <ic2:crafting:0>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), null, <contenttweaker:resistor>*8, 2.5, 2.5, 0.0);
mods.nuclearcraft.Assembler.addRecipe(<ore:dustNichrome>, <pneumaticcraft:plastic:15>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), null, <contenttweaker:resistor>*16, 3.0, 3.0, 0.0);

//Capacitor
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:capacitor>]);
mods.nuclearcraft.Assembler.addRecipe(<ore:plateAluminum>, <ore:dustManganese>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), null, <pneumaticcraft:capacitor>*4, 2.0, 2.0, 0.0);
mods.nuclearcraft.Assembler.addRecipe(<ore:plateAluminum>, <pneumaticcraft:plastic:15>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), null, <pneumaticcraft:capacitor>*8, 2.5, 2.5, 0.0);
mods.advancedrocketry.ChemicalReactor.addRecipe(<pneumaticcraft:capacitor>*16, 300, 256, <liquid:sulfuric_acid>*500, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), <rockhounding_chemistry:chemical_dusts:46>);

//Transistor
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:transistor>]);
mods.nuclearcraft.Assembler.addRecipe(<ore:dustSilicon>, <pneumaticcraft:plastic:15>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), null, <pneumaticcraft:transistor>*4, 2.0, 2.0, 0.0);
mods.nuclearcraft.Assembler.addRecipe(<advancedrocketry:wafer>, <pneumaticcraft:plastic:15>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}), null, <pneumaticcraft:transistor>*8, 2.5, 2.5, 0.0);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<pneumaticcraft:transistor>*16, 300, 256, <contenttweaker:gaas_dust>, <pneumaticcraft:plastic:15>, <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte}));

//Processor
mods.advancedrocketry.PrecisionAssembler.addRecipe(<qmd:semiconductor:4>, 300, 256, <advancedrocketry:wafer>, <rockhounding_chemistry:alloy_items_tech:28>*2, <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte})*2);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<qmd:semiconductor:4>*3, 300, 256, <contenttweaker:advancedwafer>, <rockhounding_chemistry:alloy_items_tech:28>*2, <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte})*2);

//Adv Processor
mods.advancedrocketry.PrecisionAssembler.addRecipe(<qmd:semiconductor:5>, 300, 256, <appliedenergistics2:material:7>, <rockhounding_chemistry:alloy_items_tech:43>*2, <ic2:cable:1>.withTag({type: 1 as byte, insulation: 0 as byte})*2);

//Silicons
mods.advancedrocketry.Crystallizer.clear();
mods.advancedrocketry.Crystallizer.addRecipe(<libvulpes:productboule:3>, 512, 1024, <rockhounding_chemistry:chemical_dusts:42>*4);

//Solder
mods.nuclearcraft.Assembler.addRecipe(<ore:dustLead>, <ore:dustTin>, <ic2:misc_resource:4>, null, <contenttweaker:solder>*16, 2.5, 2.5, 0.0);


//Basic circuit plate
recipes.remove(<techguns:itemshared:65>);
mods.nuclearcraft.Assembler.addRecipe(<ore:plateIron>, <ore:plateCopper>, <contenttweaker:solder>, null, <techguns:itemshared:65>, 2.0, 2.0, 0.0);
mods.nuclearcraft.Assembler.addRecipe(<ore:plateSteel>, <ore:plateCopper>, <contenttweaker:solder>, null, <techguns:itemshared:65>*2, 2.5, 2.5, 0.0);
mods.nuclearcraft.Assembler.addRecipe(<ore:plateAluminum>, <ore:plateCopper>, <contenttweaker:solder>, null, <techguns:itemshared:65>*3, 3.0, 3.0, 0.0);

//Basic circuit
mods.nuclearcraft.Assembler.addRecipe(<techguns:itemshared:65>, <contenttweaker:resistor>*2, null, null, <ic2:crafting:1>, 2.0, 2.0, 0.0);

//Adv circuit plate
recipes.remove(<ic2:crafting:2>);
recipes.remove(<techguns:itemshared:66>);

mods.nuclearcraft.Assembler.addRecipe(<pneumaticcraft:plastic:15>, <ore:plateGold>, <contenttweaker:solder>, null, <techguns:itemshared:66>, 3.0, 3.0, 0.0);
mods.nuclearcraft.Assembler.addRecipe(<contenttweaker:advplastic>, <ore:plateGold>, <contenttweaker:solder>, null, <techguns:itemshared:66>*2, 4.0, 4.0, 0.0);

//Adv circuit
mods.nuclearcraft.Assembler.addRecipe(<techguns:itemshared:66>, <pneumaticcraft:capacitor>*2, <contenttweaker:resistor>*2, null, <ic2:crafting:2>, 4.0, 4.0, 0.0);

//Empty PCB
mods.pneumaticcraft.pressurechamber.removeRecipe([<pneumaticcraft:empty_pcb:100>]);
mods.nuclearcraft.Infuser.addRecipe(<contenttweaker:glassfiber>, <liquid:epoxyresin>*200, <contenttweaker:fiberglassboard>, 4.0, 4.0, 0.0);

mods.nuclearcraft.Assembler.addRecipe(<contenttweaker:fiberglassboard>, <ore:plateGold>, <contenttweaker:solder>, null, <pneumaticcraft:empty_pcb:100>, 4.0, 4.0, 0.0);
mods.nuclearcraft.Assembler.addRecipe(<contenttweaker:fiberglassboard>, <ore:platePlatinum>, <contenttweaker:solder>, null, <pneumaticcraft:empty_pcb:100>*4, 4.0, 4.0, 0.0);

//PCB
recipes.remove(<pneumaticcraft:printed_circuit_board>);
mods.nuclearcraft.Assembler.addRecipe(<pneumaticcraft:unassembled_pcb>, <contenttweaker:resistor>*2, <pneumaticcraft:capacitor>*2, <pneumaticcraft:transistor>*2, <pneumaticcraft:printed_circuit_board>, 5.0, 5.0, 0.0);

//AR Control Circuit
recipes.remove(<advancedrocketry:ic:3>);
mods.advancedrocketry.PrecisionAssembler.removeRecipe(<advancedrocketry:ic:3>);
mods.advancedrocketry.PrecisionAssembler.addRecipe(<advancedrocketry:ic:3>, 512, 1024, <pneumaticcraft:unassembled_pcb>, <contenttweaker:resistor>*2, <pneumaticcraft:capacitor>*2, <pneumaticcraft:transistor>*2, <qmd:semiconductor:4>);
