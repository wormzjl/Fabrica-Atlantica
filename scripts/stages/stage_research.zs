#priority 400

//T0
var cat1 = mods.ResearchTable.addCategory(<immersiveengineering:metal_decoration1:1>);

mods.ResearchTable.builder("forestry", cat1)
  .setIcons(<forestry:bee_combs>)
  .setTitle("Forestry")
  .setDescription("Unlocking Forestry Mod")
  .addCondition(<betterwithmods:material:14> * 8)
  .setRewardStages("forestry")
  .setRewardCommands("/tell @p \"You have unlocked Forestry!\"")
  .build();

mods.ResearchTable.builder("basictech", cat1)
  .setIcons(<immersiveengineering:tool>)
  .setTitle("Basic Industry")
  .setDescription("Unlocking Basic Industrial Devices")
  .setRequiredResearches("forestry")
  .addCondition(<betterwithmods:material:14> * 8)
  .setRewardStages("basictech")
  .setRewardCommands("/tell @p \"You have unlocked industries!\"")
  .build();

mods.ResearchTable.builder("BlastFurnace", cat1)
  .setIcons(<immersiveengineering:stone_decoration:1>)
  .setTitle("Basic Blast Furnace")
  .setDescription("Unlocking the basic blast furnace")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 8)
  .addEnergyCondition(5000)
  .setRewardStages("BlastFurnace")
  .setRewardCommands("/tell @p \"You have unlocked the basic blast furnace!\"")
  .build();

mods.ResearchTable.builder("CokeOven", cat1)
  .setIcons(<immersiveengineering:stone_decoration>)
  .setTitle("Basic Coke Oven")
  .setDescription("Unlocking the Basic Coke Oven")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 16)
  .addEnergyCondition(10000)
  .setRewardStages("CokeOven")
  .setRewardCommands("/tell @p \"You have unlocked the Basic Coke Oven!\"")
  .build();

mods.ResearchTable.builder("Crusher", cat1)
  .setIcons(<immersiveengineering:metal_decoration0:4>)
  .setTitle("Crusher")
  .setDescription("Unlocking the Crusher")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 16)
  .addEnergyCondition(10000)
  .setRewardStages("Crusher")
  .setRewardCommands("/tell @p \"You have unlocked the Crusher!\"")
  .build();

mods.ResearchTable.builder("MetalPress", cat1)
  .setIcons(<immersiveengineering:metal_decoration0:5>)
  .setTitle("Metal Press")
  .setDescription("Unlocking the Metal Press")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 16)
  .addEnergyCondition(10000)
  .setRewardStages("MetalPress")
  .setRewardCommands("/tell @p \"You have unlocked the Metal Press!\"")
  .build();

mods.ResearchTable.builder("automation_ie", cat1)
  .setIcons(<immersiveengineering:wooden_device0:2>)
  .setTitle("Auto Workbench")
  .setDescription("Unlocking the Auto Workbench and the Assembler")
  .setRequiredResearches("BlastFurnace")
  .addCondition(<contenttweaker:data_t1> * 20)
  .addEnergyCondition(20000)
  .setRewardStages("AutoWorkbench")
  .setRewardStages("Assembler")
  .setRewardCommands("/tell @p \"You have unlocked the Auto Workbench and the Assembler!\"")
  .build();

//T1 Multiblocks
mods.ResearchTable.builder("BlastFurnaceAdvanced", cat1)
  .setIcons(<immersiveengineering:stone_decoration:2>)
  .setTitle("Improved Blast Furnace")
  .setDescription("Unlocking the Improved Blast Furnace")
  .setRequiredResearches("BlastFurnace")
  .addCondition(<contenttweaker:data_t1> * 40)
  .addEnergyCondition(20000)
  .setRewardStages("BlastFurnaceAdvanced")
  .setRewardCommands("/tell @p \"You have unlocked the improved blast furnace!\"")
  .build();

mods.ResearchTable.builder("iestorage", cat1)
  .setIcons(<immersiveengineering:sheetmetal:9>)
  .setTitle("Mass Storage")
  .setDescription("Unlocking IE Multiblock tank and silo")
  .setRequiredResearches("BlastFurnaceAdvanced")
  .addCondition(<contenttweaker:data_t1> * 20)
  .addEnergyCondition(20000)
  .setRewardStages("SheetmetalTank")
  .setRewardStages("Silo")
  .setRewardCommands("/tell @p \"You have unlocked IE Multblock tank and silo!\"")
  .build();
