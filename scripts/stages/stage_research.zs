#priority 400

//Locking mulitiblocks with stages
mods.multiblockstages.IEMultiBlockStages.addStage("blastfurnace_basic", "IE:BlastFurnace", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("cokery_basic", "IE:CokeOven", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("crusher", "IE:Crusher", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("metalpress", "IE:MetalPress", "Need Research First!");

//T0 Research
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

mods.ResearchTable.builder("blastfurnace", cat1)
  .setIcons(<immersiveengineering:stone_decoration:1>)
  .setTitle("Basic Blast Furnace")
  .setDescription("Unlocking the basic blast furnace")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 8)
  .addEnergyCondition(5000)
  .setRewardStages("blastfurnace_basic")
  .setRewardCommands("/tell @p \"You have unlocked the basic blast furnace!\"")
  .build();

mods.ResearchTable.builder("cokery_basic", cat1)
  .setIcons(<immersiveengineering:stone_decoration>)
  .setTitle("Basic Coke Oven")
  .setDescription("Unlocking the Basic Coke Oven")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 16)
  .addEnergyCondition(10000)
  .setRewardStages("cokery_basic")
  .setRewardCommands("/tell @p \"You have unlocked the Basic Coke Oven!\"")
  .build();

mods.ResearchTable.builder("crusher", cat1)
  .setIcons(<immersiveengineering:metal_decoration0:4>)
  .setTitle("Crusher")
  .setDescription("Unlocking the Crusher")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 16)
  .addEnergyCondition(10000)
  .setRewardStages("crusher")
  .setRewardCommands("/tell @p \"You have unlocked the Crusher!\"")
  .build();

mods.ResearchTable.builder("metalpress", cat1)
  .setIcons(<immersiveengineering:metal_decoration0:5>)
  .setTitle("Metal Press")
  .setDescription("Unlocking the Metal Press")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 16)
  .addEnergyCondition(10000)
  .setRewardStages("metalpress")
  .setRewardCommands("/tell @p \"You have unlocked the Metal Press!\"")
  .build();


//T1 Research
