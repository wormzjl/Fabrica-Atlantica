#priority 400

//T0
var cat1 = mods.ResearchTable.addCategory(<immersiveengineering:metal_decoration1:1>);

mods.ResearchTable.builder("forestry", cat1)
  .setIcons(<forestry:bee_combs>)
  .setTitle("Forestry")
  .setDescription("Unlock Forestry Mod")
  .addCondition(<betterwithmods:material:14> * 4)
  .setRewardStages("forestry")
  .setRewardCommands("/tell @p \"You have unlocked Forestry!\"")
  .build();

mods.ResearchTable.builder("BlastFurnace", cat1)
  .setIcons(<immersiveengineering:stone_decoration:1>)
  .setTitle("Basic Blast Furnace")
  .setDescription("Unlock the basic blast furnace")
  .addCondition(<betterwithmods:material:14> * 4)
  .setRewardStages("BlastFurnace")
  .setRewardCommands("/tell @p \"You have unlocked the basic blast furnace!\"")
  .build();

mods.ResearchTable.builder("basictech", cat1)
  .setIcons(<immersiveengineering:tool>)
  .setTitle("Basic Industry")
  .setDescription("Unlock Basic Industrial Devices")
  .setRequiredResearches("forestry")
  .setRequiredResearches("BlastFurnace")
  .addCondition(<ore:ingotSteel> * 8)
  .setRewardStages("basictech")
  .setRewardCommands("/tell @p \"You have unlocked basic industries!\"")
  .build();

mods.ResearchTable.builder("CokeOven", cat1)
  .setIcons(<immersivepetroleum:schematic>)
  .setTitle("Basic Coke Oven")
  .setDescription("Unlock the Basic Coke Oven")
  .setRequiredResearches("BlastFurnace")
  .addCondition(<ore:ingotSteel> * 8)
  .setRewardStages("CokeOven")
  .setRewardCommands("/tell @p \"You have unlocked the Basic Coke Oven!\"")
  .build();

mods.ResearchTable.builder("bedrock_miner", cat1)
  .setIcons(<bedrockores:bedrock_miner>)
  .setTitle("Bedrock Ore Miner")
  .setDescription("Unlock Bedrock Ore Miner to harvest ore deposits inside buildings")
  .setRequiredResearches("forestry")
  .setRequiredResearches("BlastFurnace")
  .addCondition(<ore:ingotSteel> * 8)
  .setRewardStages("bedrock_miner")
  .setRewardCommands("/tell @p \"You have unlocked the Bedrock Ore Miner\"")
  .build();

mods.ResearchTable.builder("Crusher", cat1)
  .setIcons(<immersivepetroleum:schematic>)
  .setTitle("Crusher")
  .setDescription("Unlock the Crusher")
  .setRequiredResearches("basictech")
  .addCondition(<ore:ingotSteel> * 12)
  .setRewardStages("Crusher")
  .setRewardCommands("/tell @p \"You have unlocked the Crusher!\"")
  .build();

mods.ResearchTable.builder("MetalPress", cat1)
  .setIcons(<immersivepetroleum:schematic>)
  .setTitle("Metal Press")
  .setDescription("Unlock the Metal Press")
  .setRequiredResearches("basictech")
  .addCondition(<ore:ingotSteel> * 8)
  .setRewardStages("MetalPress")
  .setRewardCommands("/tell @p \"You have unlocked the Metal Press!\"")
  .build();

mods.ResearchTable.builder("ieautomation", cat1)
  .setIcons(<immersiveengineering:conveyor>)
  .setTitle("Basic Automation")
  .setDescription("Unlock the IE Assembler and Transport Belts")
  .setRequiredResearches("basictech")
  .addCondition(<ore:ingotSteel> * 8)
  .setRewardStages("ieautomation")
  .setRewardCommands("/tell @p \"You have unlocked basic automation!\"")
  .build();


//T1
mods.ResearchTable.builder("adv_automation", cat1)
  .setIcons(<autoverse:pipe>)
  .setTitle("Advanced Automation")
  .setDescription("Unlock Advanced Automation required for full automation, including all Autoverse items and Magneticraft Belts")
  .setRequiredResearches("basictech")
  .addCondition(<contenttweaker:data_t1> * 10)
  .setRewardStages("adv_automation")
  .setRewardCommands("/tell @p \"You have unlocked advanced automation, time to automate research\"")
  .build();

mods.ResearchTable.builder("BlastFurnaceAdvanced", cat1)
  .setIcons(<immersivepetroleum:schematic>)
  .setTitle("Improved Blast Furnace")
  .setDescription("Unlock the Improved Blast Furnace")
  .setRequiredResearches("autoverse")
  .addCondition(<contenttweaker:data_t1> * 40)
  .setRewardStages("BlastFurnaceAdvanced")
  .setRewardCommands("/tell @p \"You have unlocked the improved blast furnace!\"")
  .build();

mods.ResearchTable.builder("railcraft", cat1)
  .setIcons(<minecraft:chest_minecart>)
  .setTitle("Railcraft")
  .setDescription("Unlock Railcraft")
  .setRequiredResearches("autoverse")
  .addCondition(<contenttweaker:data_t1> * 50)
  .setRewardStages("railcraft")
  .setRewardCommands("/tell @p \"You have unlocked Railcraft!\"")
  .build();

mods.ResearchTable.builder("rsc", cat1)
  .setIcons(<rs_ctr:oscilloscope>)
  .setTitle("Redstone Control")
  .setDescription("Unlock advanced redstone control systems")
  .setRequiredResearches("BlastFurnaceAdvanced")
  .addCondition(<contenttweaker:data_t1> * 50)
  .setRewardStages("rsc")
  .setRewardCommands("/tell @p \"You have unlocked Redstone Control!\"")
  .build();

mods.ResearchTable.builder("iestorage", cat1)
  .setIcons(<immersivepetroleum:schematic>)
  .setTitle("Mass Storage")
  .setDescription("Unlock IE Multiblock tank and silo")
  .setRequiredResearches("BlastFurnaceAdvanced")
  .addCondition(<contenttweaker:data_t1> * 50)
  .setRewardStages("iestorage")
  .setRewardCommands("/tell @p \"You have unlocked IE Multblock tank and silo!\"")
  .build();

mods.ResearchTable.builder("belt_blueprint", cat1)
  .setIcons(<immersiveengineering:blueprint>)
  .setTitle("Blueprint: Logistics")
  .setDescription("Unlock Blueprint for cheaper belts & pipes")
  .setRequiredResearches("autoverse")
  .addCondition(<contenttweaker:data_t1> * 10)
  .setRewardItems(<immersiveengineering:blueprint>.withTag({blueprint: "Logistics"}))
  .build();

mods.ResearchTable.builder("belt_blueprint_repeat", cat1)
  .setIcons(<immersiveengineering:blueprint>)
  .setTitle("More Blueprint: Logistics")
  .setDescription("More Blueprints for cheaper belts & pipes")
  .setRequiredResearches("belt_blueprint")
  .addCondition(<contenttweaker:data_t1> * 100)
  .setRewardItems(<immersiveengineering:blueprint>.withTag({blueprint: "Logistics"}))
  .setNoMaxCount()
  .build();

mods.ResearchTable.builder("basicenginnering_blueprint", cat1)
  .setIcons(<immersiveengineering:blueprint>)
  .setTitle("Blueprint: Basic Enginnering Blocks")
  .setDescription("Unlock Blueprint for cheaper Basic Enginnering Blocks")
  .setRequiredResearches("autoverse")
  .addCondition(<contenttweaker:data_t1> * 10)
  .setRewardItems(<immersiveengineering:blueprint>.withTag({blueprint: "Basic Enginnering Blocks"}))
  .build();

mods.ResearchTable.builder("lightenginnering_blueprint_repeat", cat1)
  .setIcons(<immersiveengineering:blueprint>)
  .setTitle("More Blueprint: Basic Enginnering Blocks")
  .setDescription("More Blueprints for cheaper Basic Enginnering Blocks")
  .setRequiredResearches("basicenginnering_blueprint")
  .addCondition(<contenttweaker:data_t1> * 100)
  .setRewardItems(<immersiveengineering:blueprint>.withTag({blueprint: "Basic Enginnering Blocks"}))
  .build();

mods.ResearchTable.builder("tgmetalpress", cat1)
  .setIcons(<techguns:basicmachine:1>)
  .setTitle("Gear Press")
  .setDescription("Unlock low cost crafting for gears")
  .setRequiredResearches("BlastFurnaceAdvanced")
  .addCondition(<contenttweaker:data_t1> * 25)
  .setRewardStages("tgmetalpress")
  .setRewardCommands("/tell @p \"You have unlocked the Metal Press!\"")
  .build();

mods.ResearchTable.builder("BottlingMachine", cat1)
  .setIcons(<immersivepetroleum:schematic>)
  .setTitle("Bottling Machine")
  .setDescription("Unlock Bottling Machine")
  .setRequiredResearches("BlastFurnaceAdvanced")
  .addCondition(<contenttweaker:data_t1> * 50)
  .setRewardStages("BottlingMachine")
  .setRewardCommands("/tell @p \"You have unlocked the Bottling Machine!\"")
  .build();

mods.ResearchTable.builder("boiler_rc", cat1)
  .setIcons(<railcraft:boiler_firebox_solid>)
  .setTitle("Boiler & Steam Turbine")
  .setDescription("Unlock Railcraft Boiler & Steam Turbine")
  .setRequiredResearches("BlastFurnaceAdvanced")
  .addCondition(<contenttweaker:data_t1> * 50)
  .setRewardStages("boiler_rc")
  .setRewardCommands("/tell @p \"You have unlocked Railcraft Boiler & Steam Turbine!\"")
  .build();

mods.ResearchTable.builder("boiler_ir", cat1)
  .setIcons(<industrialrenewal:steam_boiler>)
  .setTitle("Industrial Renewal Boiler & Steam Turbine")
  .setDescription("Unlock Industrial Renewal Boiler & Steam Turbine, less efficient but more flexible")
  .setRequiredResearches("boiler_rc")
  .addCondition(<contenttweaker:data_t1> * 100)
  .setRewardStages("boiler_ir")
  .setRewardCommands("/tell @p \"You have unlocked Industrial Renewal Boiler & Steam Turbine!\"")
  .build();

mods.ResearchTable.builder("macerator", cat1)
  .setIcons(<ic2:te:47>)
  .setTitle("Macerator")
  .setDescription("Unlock IC2 Macerator for further ore refining")
  .setRequiredResearches("BlastFurnaceAdvanced")
  .addCondition(<contenttweaker:data_t1> * 50)
  .setRewardStages("macerator")
  .setRewardCommands("/tell @p \"You have unlocked the Macerator!\"")
  .build();

mods.ResearchTable.builder("mvpower", cat1)
  .setIcons(<immersiveengineering:metal_device0:1>)
  .setTitle("MV Power")
  .setDescription("Unlock Medium Voltage Power Systems")
  .setRequiredResearches("macerator")
  .addCondition(<contenttweaker:data_t1> * 80)
  .setRewardStages("mvpower")
  .setRewardCommands("/tell @p \"You have unlocked MV Power!\"")
  .build();

mods.ResearchTable.builder("orewasher", cat1)
  .setIcons(<ic2:te:56>)
  .setTitle("Ore Wasing Plant")
  .setDescription("Unlock Ore Wasing Plant")
  .setRequiredResearches("macerator")
  .addCondition(<contenttweaker:data_t1> * 100)
  .setRewardStages("orewasher")
  .setRewardCommands("/tell @p \"You have unlocked the Ore Wasing Plant!\"")
  .build();
