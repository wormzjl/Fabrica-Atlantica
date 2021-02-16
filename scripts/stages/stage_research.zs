#priority 400

//T0
var cat1 = mods.ResearchTable.addCategory(<immersiveengineering:metal_decoration1:1>);

mods.ResearchTable.builder("forestry", cat1)
  .setIcons(<forestry:bee_combs>)
  .setTitle("Forestry")
  .setDescription("Unlock Forestry Mod")
  .addCondition(<betterwithmods:material:14> * 6)
  .setRewardStages("forestry")
  .setRewardCommands("/tell @p \"You have unlocked Forestry!\"")
  .build();

mods.ResearchTable.builder("BlastFurnace", cat1)
  .setIcons(<immersiveengineering:stone_decoration:1>)
  .setTitle("Basic Blast Furnace")
  .setDescription("Unlock the basic blast furnace")
  .addCondition(<betterwithmods:material:14> * 8)
  .setRewardStages("BlastFurnace")
  .setRewardCommands("/tell @p \"You have unlocked the basic blast furnace!\"")
  .build();

mods.ResearchTable.builder("basictech", cat1)
  .setIcons(<immersiveengineering:tool>)
  .setTitle("Basic Industry")
  .setDescription("Unlock Basic Industrial Devices")
  .setRequiredResearches("forestry")
  .setRequiredResearches("BlastFurnace")
  .addCondition(<betterwithmods:material:14> * 8)
  .setRewardStages("basictech")
  .setRewardCommands("/tell @p \"You have unlocked basic industries!\"")
  .build();

mods.ResearchTable.builder("CokeOven", cat1)
  .setIcons(<immersiveengineering:stone_decoration>)
  .setTitle("Basic Coke Oven")
  .setDescription("Unlock the Basic Coke Oven")
  .setRequiredResearches("BlastFurnace")
  .addCondition(<betterwithmods:material:14> * 12)
  .addEnergyCondition(10000)
  .setRewardStages("CokeOven")
  .setRewardCommands("/tell @p \"You have unlocked the Basic Coke Oven!\"")
  .build();

mods.ResearchTable.builder("bedrock_miner", cat1)
  .setIcons(<bedrockores:bedrock_miner>)
  .setTitle("Bedrock Ore Miner")
  .setDescription("Unlock Bedrock Ore Miner to harvest ore deposits inside buildings")
  .setRequiredResearches("forestry")
  .setRequiredResearches("BlastFurnace")
  .addCondition(<betterwithmods:material:14> * 8)
  .setRewardStages("bedrock_miner")
  .setRewardCommands("/tell @p \"You have unlocked the Bedrock Ore Miner\"")
  .build();

mods.ResearchTable.builder("Crusher", cat1)
  .setIcons(<immersiveengineering:metal_decoration0:4>)
  .setTitle("Crusher")
  .setDescription("Unlock the Crusher")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 12)
  .addEnergyCondition(10000)
  .setRewardStages("Crusher")
  .setRewardCommands("/tell @p \"You have unlocked the Crusher!\"")
  .build();

mods.ResearchTable.builder("MetalPress", cat1)
  .setIcons(<immersiveengineering:metal_decoration0:5>)
  .setTitle("Metal Press")
  .setDescription("Unlock the Metal Press")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 8)
  .addEnergyCondition(10000)
  .setRewardStages("MetalPress")
  .setRewardCommands("/tell @p \"You have unlocked the Metal Press!\"")
  .build();

mods.ResearchTable.builder("automation_ie", cat1)
  .setIcons(<immersiveengineering:conveyor>)
  .setTitle("Basic Automation")
  .setDescription("Unlock the Assembler and transport belts")
  .setRequiredResearches("basictech")
  .addCondition(<betterwithmods:material:14> * 8)
  .addEnergyCondition(10000)
  .setRewardStages("automation_ie")
  .setRewardCommands("/tell @p \"You have unlocked basic automation!\"")
  .build();



//T1
mods.ResearchTable.builder("autoverse", cat1)
  .setIcons(<autoverse:pipe>)
  .setTitle("Logical Automation")
  .setDescription("Unlock Advanced Automation")
  .setRequiredResearches("basictech")
  .addCondition(<contenttweaker:data_t1> * 10)
  .addEnergyCondition(20000)
  .setRewardStages("autoverse")
  .setRewardCommands("/tell @p \"You have unlocked advanced automation, time to automate research\"")
  .build();

mods.ResearchTable.builder("BlastFurnaceAdvanced", cat1)
  .setIcons(<immersiveengineering:stone_decoration:2>)
  .setTitle("Improved Blast Furnace")
  .setDescription("Unlock the Improved Blast Furnace")
  .setRequiredResearches("autoverse")
  .addCondition(<contenttweaker:data_t1> * 40)
  .addEnergyCondition(20000)
  .setRewardStages("BlastFurnaceAdvanced")
  .setRewardCommands("/tell @p \"You have unlocked the improved blast furnace!\"")
  .build();

mods.ResearchTable.builder("railcraft", cat1)
  .setIcons(<minecraft:chest_minecart>)
  .setTitle("Railcraft")
  .setDescription("Unlock Railcraft")
  .setRequiredResearches("autoverse")
  .addCondition(<contenttweaker:data_t1> * 50)
  .addEnergyCondition(20000)
  .setRewardStages("railcraft")
  .setRewardCommands("/tell @p \"You have unlocked Railcraft!\"")
  .build();

mods.ResearchTable.builder("rsc", cat1)
  .setIcons(<rs_ctr:oscilloscope>)
  .setTitle("Redstone Control")
  .setDescription("Unlock Redstone Control")
  .setRequiredResearches("BlastFurnaceAdvanced")
  .addCondition(<contenttweaker:data_t1> * 50)
  .addEnergyCondition(20000)
  .setRewardStages("rsc")
  .setRewardCommands("/tell @p \"You have unlocked Redstone Control!\"")
  .build();

mods.ResearchTable.builder("iestorage", cat1)
  .setIcons(<immersiveengineering:sheetmetal:9>)
  .setTitle("Mass Storage")
  .setDescription("Unlock IE Multiblock tank and silo")
  .setRequiredResearches("BlastFurnaceAdvanced")
  .addCondition(<contenttweaker:data_t1> * 50)
  .addEnergyCondition(20000)
  .setRewardStages("SheetmetalTank")
  .setRewardStages("Silo")
  .setRewardCommands("/tell @p \"You have unlocked IE Multblock tank and silo!\"")
  .build();
