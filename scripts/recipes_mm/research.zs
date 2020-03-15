//T1
val t1 = mods.modularmachinery.RecipeBuilder.newBuilder("research_t1", "lab", 200, 0);
t1.addEnergyPerTickInput(40).addItemInput(<nuclearcraft:part:4>).addItemOutput(<contenttweaker:tier1_data>).build();

//T2
val t2 = mods.modularmachinery.RecipeBuilder.newBuilder("research_t2", "lab", 250, 0);
t2.addEnergyPerTickInput(400).addItemInput(<contenttweaker:controller>).addItemInput(<nuclearcraft:part:8>).addItemOutput(<contenttweaker:tier2_data>).build();

//T3
val t3 = mods.modularmachinery.RecipeBuilder.newBuilder("research_t3", "lab", 300, 0);
t3.addEnergyPerTickInput(1200).addItemInput(<contenttweaker:advcontroller>).addItemInput(<contenttweaker:eengine>).addItemOutput(<contenttweaker:tier3_data>).build();

//T4
val t4 = mods.modularmachinery.RecipeBuilder.newBuilder("research_t4", "lab", 400, 0);
t4.addEnergyPerTickInput(8000).addItemInput(<advancedrocketry:rocketmotor>).addItemInput(<advancedrocketry:satellite>).addItemOutput(<contenttweaker:tier4_data>).build();

//T5 on hold
//val t5 = mods.modularmachinery.RecipeBuilder.newBuilder("research_t5", "lab", 400, 0);
//t5.addEnergyPerTickInput(8000).addItemInput(<advancedrocketry:rocketmotor>).addItemInput(<advancedrocketry:satellite>).addItemOutput(<contenttweaker:tier5_data>).build();
