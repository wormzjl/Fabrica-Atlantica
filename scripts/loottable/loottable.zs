import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;


//mobs
LootTables.getTable("minecraft:entities/llama").getPool("betterwithmods:entity/llama").removeEntry("minecraft:leather");
LootTables.getTable("minecraft:entities/donkey").getPool("main").removeEntry("minecraft:leather");
LootTables.getTable("minecraft:entities/husk").getPool("pool1").removeEntry("minecraft:iron_ingot");
LootTables.getTable("minecraft:entities/zombie_villager").getPool("pool1").removeEntry("minecraft:iron_ingot");
LootTables.getTable("minecraft:entities/zombie").getPool("pool1").removeEntry("minecraft:iron_ingot");
LootTables.getTable("minecraft:entities/mule").getPool("main").removeEntry("minecraft:leather");
LootTables.getTable("minecraft:entities/horse").getPool("main").removeEntry("minecraft:leather");
LootTables.getTable("minecraft:entities/cow").getPool("main").removeEntry("minecraft:leather");
LootTables.getTable("minecraft:entities/mushroom_cow").getPool("main").removeEntry("minecraft:leather");
LootTables.getTable("minecraft:entities/iron_golem").getPool("pool1").removeEntry("minecraft:iron_ingot");
LootTables.getTable("minecraft:entities/zombie_pigman").getPool("pool2").removeEntry("minecraft:gold_ingot");
LootTables.getTable("minecraft:entities/zombie_pigman").getPool("pool1").removeEntry("minecraft:gold_nugget");

//Chests
LootTables.getTable("pneumaticcraft:inject/simple_dungeon_loot").getPool("main").removeEntry("pneumaticcraft:spawner_agitator");
LootTables.getTable("minecraft:chests/end_city_treasure").getPool("end_aeternalis_pool").removeEntry("end_aeternalis_entry");
LootTables.getTable("minecraft:chests/abandoned_mineshaft").getPool("forestry_factory_items").removeEntry("forestry:miner_bag");

val village_blacksmith_vanilla = LootTables.getTable("minecraft:chests/village_blacksmith").getPool("main");
village_blacksmith_vanilla.removeEntry("minecraft:iron_ingot");
village_blacksmith_vanilla.removeEntry("minecraft:gold_ingot");

val abandoned_mineshaft_vanilla = LootTables.getTable("minecraft:chests/abandoned_mineshaft").getPool("pool1");
abandoned_mineshaft_vanilla.removeEntry("minecraft:iron_ingot");
abandoned_mineshaft_vanilla.removeEntry("minecraft:gold_ingot");

val igloo_chest_vanilla = LootTables.getTable("minecraft:chests/igloo_chest").getPool("main");
igloo_chest_vanilla.removeEntry("minecraft:gold_nugget");

val simple_dungeon_vanilla = LootTables.getTable("minecraft:chests/simple_dungeon").getPool("pool1");
simple_dungeon_vanilla.removeEntry("minecraft:iron_ingot");
simple_dungeon_vanilla.removeEntry("minecraft:gold_ingot");

val desert_pyramid_vanilla = LootTables.getTable("minecraft:chests/desert_pyramid").getPool("main");
desert_pyramid_vanilla.removeEntry("minecraft:iron_ingot");
desert_pyramid_vanilla.removeEntry("minecraft:gold_ingot");

val end_city_treasure_vanilla = LootTables.getTable("minecraft:chests/end_city_treasure").getPool("main");
end_city_treasure_vanilla.removeEntry("minecraft:iron_ingot");
end_city_treasure_vanilla.removeEntry("minecraft:gold_ingot");

val nether_bridge_vanilla = LootTables.getTable("minecraft:chests/nether_bridge").getPool("main");
nether_bridge_vanilla.removeEntry("minecraft:iron_ingot");
nether_bridge_vanilla.removeEntry("minecraft:gold_ingot");

val jungle_temple_vanilla = LootTables.getTable("minecraft:chests/jungle_temple").getPool("main");
jungle_temple_vanilla.removeEntry("minecraft:iron_ingot");
jungle_temple_vanilla.removeEntry("minecraft:gold_ingot");

val stronghold_crossing_vanilla = LootTables.getTable("minecraft:chests/stronghold_crossing").getPool("main");
stronghold_crossing_vanilla.removeEntry("minecraft:iron_ingot");
stronghold_crossing_vanilla.removeEntry("minecraft:gold_ingot");

val woodland_mansion_vanilla = LootTables.getTable("minecraft:chests/woodland_mansion").getPool("pool1");
woodland_mansion_vanilla.removeEntry("minecraft:iron_ingot");
woodland_mansion_vanilla.removeEntry("minecraft:gold_ingot");

val stronghold_corridor_vanilla = LootTables.getTable("minecraft:chests/stronghold_corridor").getPool("main");
stronghold_corridor_vanilla.removeEntry("minecraft:iron_ingot");
stronghold_corridor_vanilla.removeEntry("minecraft:gold_ingot");

//Fishing
val fish = LootTables.getTable("minecraft:gameplay/fishing/fish").getPool("main");
val junk = LootTables.getTable("minecraft:gameplay/fishing/junk").getPool("main");
val treasure = LootTables.getTable("minecraft:gameplay/fishing/treasure").getPool("main");

junk.addItemEntry(<contenttweaker:scrap1>, 10);
junk.addItemEntry(<contenttweaker:scrap2>, 10);
junk.addItemEntry(<contenttweaker:scrap3>, 10);
junk.addItemEntry(<contenttweaker:scrap4>, 10);
junk.addItemEntry(<contenttweaker:scrap5>, 10);
junk.addItemEntry(<contenttweaker:scrap6>, 10);
junk.addItemEntry(<contenttweaker:scrap7>, 10);
junk.addItemEntry(<contenttweaker:scrap8>, 10);
junk.addItemEntry(<contenttweaker:scrap9>, 5);
junk.addItemEntry(<ic2:crafting:10>, 7);
junk.addItemEntry(<ic2:sapling>, 10);

treasure.addItemEntry(<matteroverdrive:emergency_ration>, 1);
treasure.addItemEntry(<ic2:filled_tin_can>, 3);
treasure.addItemEntry(<betterwithmods:material:5>, 3);
treasure.addItemEntry(<betterwithmods:material:5>, 3);

junk.removeEntry("minecraft:leather");
