//Mod and item staging
//mods.ItemStages.addItemStage(String stage, Item/Block/OreDict);
//mods.recipestages.Recipes.setRecipeStage("one", <minecraft:stone_hoe>);
//mods.recipestages.Recipes.setRecipeStage("one", "minecraft:boat");
//mods.recipestages.Recipes.setRecipeStageByMod("one", "minecraft");
mods.ItemStages.stageModItems("forestry", "forestry");

//Locking mulitiblocks with stages
mods.multiblockstages.IEMultiBlockStages.addStage("blastfurnace_basic", "IE:BlastFurnace", "Need Research First!");
mods.multiblockstages.IEMultiBlockStages.addStage("cokery_basic", "IE:CokeOven", "Need Research First!");

//Research unlocking
var cat1 = mods.ResearchTable.addCategory(<immersiveengineering:metal_decoration1:1>);

mods.ResearchTable.builder("forestry", cat1)
  .setIcons(<forestry:bee_combs>)
  .setTitle("Forestry")
  .setDescription("Unlocking Forestry Mod")
  .addCondition(<betterwithmods:material:14> * 8)
  .setRewardStages("forestry")
  .setRewardCommands("/tell @a \"You have unlocked Forestry!\"")
  .build();

mods.ResearchTable.builder("blastfurnace", cat1)
  .setIcons(<immersiveengineering:stone_decoration:1>)
  .setTitle("Basic Blast Furnace")
  .setDescription("Unlocking the basic blast furnace")
  .setRequiredResearches("forestry")
  .addCondition(<betterwithmods:material:14> * 8)
  .addEnergyCondition(10000)
  .setRewardStages("blastfurnace_basic")
  .setRewardCommands("/tell @a \"You have unlocked the basic blast furnace!\"")
  .build();

mods.ResearchTable.builder("cokery", cat1)
  .setIcons(<immersiveengineering:stone_decoration>)
  .setTitle("Coke Oven")
  .setDescription("Unlocking the basic Coke Oven")
  .setRequiredResearches("blastfurnace")
  .addCondition(<ore:ingotSteel> * 16)
  .addEnergyCondition(20000)
  .setRewardStages("cokery_basic")
  .setRewardCommands("/tell @a \"You have unlocked the Coke Oven!\"")
  .build();
