import loottweaker.LootTweaker;

//mobs
LootTweaker.getTable("minecraft:entities/llama").getPool("betterwithmods:entity/llama").removeEntry("minecraft:leather");
LootTweaker.getTable("minecraft:entities/donkey").getPool("main").removeEntry("minecraft:leather");
LootTweaker.getTable("minecraft:entities/husk").getPool("pool1").removeEntry("minecraft:iron_ingot");
LootTweaker.getTable("minecraft:entities/zombie_villager").getPool("pool1").removeEntry("minecraft:iron_ingot");
LootTweaker.getTable("minecraft:entities/zombie").getPool("pool1").removeEntry("minecraft:iron_ingot");
LootTweaker.getTable("minecraft:entities/mule").getPool("main").removeEntry("minecraft:leather");
LootTweaker.getTable("minecraft:entities/horse").getPool("main").removeEntry("minecraft:leather");
LootTweaker.getTable("minecraft:entities/cow").getPool("main").removeEntry("minecraft:leather");
LootTweaker.getTable("minecraft:entities/mushroom_cow").getPool("main").removeEntry("minecraft:leather");
LootTweaker.getTable("minecraft:entities/iron_golem").getPool("pool1").removeEntry("minecraft:iron_ingot");
LootTweaker.getTable("minecraft:entities/zombie_pigman").getPool("pool2").removeEntry("minecraft:gold_ingot");
LootTweaker.getTable("minecraft:entities/zombie_pigman").getPool("pool1").removeEntry("minecraft:gold_nugget");

//Chests
LootTweaker.getTable("pneumaticcraft:inject/simple_dungeon_loot").getPool("main").removeEntry("pneumaticcraft:spawner_agitator");

val village_blacksmith_vanilla = LootTweaker.getTable("minecraft:chests/village_blacksmith").getPool("main");
village_blacksmith_vanilla.removeEntry("minecraft:iron_ingot");
village_blacksmith_vanilla.removeEntry("minecraft:gold_ingot");

val abandoned_mineshaft_vanilla = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("pool1");
abandoned_mineshaft_vanilla.removeEntry("minecraft:iron_ingot");
abandoned_mineshaft_vanilla.removeEntry("minecraft:gold_ingot");

val igloo_chest_vanilla = LootTweaker.getTable("minecraft:chests/igloo_chest").getPool("main");
igloo_chest_vanilla.removeEntry("minecraft:gold_nugget");

val simple_dungeon_vanilla = LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("pool1");
simple_dungeon_vanilla.removeEntry("minecraft:iron_ingot");
simple_dungeon_vanilla.removeEntry("minecraft:gold_ingot");

val desert_pyramid_vanilla = LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("main");
desert_pyramid_vanilla.removeEntry("minecraft:iron_ingot");
desert_pyramid_vanilla.removeEntry("minecraft:gold_ingot");

val end_city_treasure_vanilla = LootTweaker.getTable("minecraft:chests/end_city_treasure").getPool("main");
end_city_treasure_vanilla.removeEntry("minecraft:iron_ingot");
end_city_treasure_vanilla.removeEntry("minecraft:gold_ingot");

val nether_bridge_vanilla = LootTweaker.getTable("minecraft:chests/nether_bridge").getPool("main");
nether_bridge_vanilla.removeEntry("minecraft:iron_ingot");
nether_bridge_vanilla.removeEntry("minecraft:gold_ingot");

val jungle_temple_vanilla = LootTweaker.getTable("minecraft:chests/jungle_temple").getPool("main");
jungle_temple_vanilla.removeEntry("minecraft:iron_ingot");
jungle_temple_vanilla.removeEntry("minecraft:gold_ingot");

val stronghold_crossing_vanilla = LootTweaker.getTable("minecraft:chests/stronghold_crossing").getPool("main");
stronghold_crossing_vanilla.removeEntry("minecraft:iron_ingot");
stronghold_crossing_vanilla.removeEntry("minecraft:gold_ingot");

val woodland_mansion_vanilla = LootTweaker.getTable("minecraft:chests/woodland_mansion").getPool("pool1");
woodland_mansion_vanilla.removeEntry("minecraft:iron_ingot");
woodland_mansion_vanilla.removeEntry("minecraft:gold_ingot");

val stronghold_corridor_vanilla = LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main");
stronghold_corridor_vanilla.removeEntry("minecraft:iron_ingot");
stronghold_corridor_vanilla.removeEntry("minecraft:gold_ingot");

//Fishing
val fish = LootTweaker.getTable("minecraft:gameplay/fishing/fish").getPool("main");
val junk = LootTweaker.getTable("minecraft:gameplay/fishing/junk").getPool("main");
val treasure = LootTweaker.getTable("minecraft:gameplay/fishing/treasure").getPool("main");

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

treasure.addItemEntry(<ic2:filled_tin_can>, 3);
treasure.addItemEntry(<betterwithmods:material:5>, 3);
treasure.addItemEntry(<betterwithmods:material:5>, 3);

junk.removeEntry("minecraft:leather");

//LC loot
val lostcitychest = LootTweaker.getTable("lostcities:chests/lostcitychest").getPool("lostcities:lostcitychest");
lostcitychest.removeEntry("minecraft:diamond_sword");
lostcitychest.removeEntry("minecraft:gold_ingot");
lostcitychest.removeEntry("minecraft:diamond");
lostcitychest.removeEntry("minecraft:emerald");

val lcchestnew = LootTweaker.getTable("lostcities:chests/lostcitychest").addPool("lcchestnew", 5, 10, 0, 0);

lcchestnew.addItemEntry(<contenttweaker:scrap1>, 50);
lcchestnew.addItemEntry(<contenttweaker:scrap2>, 50);
lcchestnew.addItemEntry(<contenttweaker:scrap3>, 50);
lcchestnew.addItemEntry(<contenttweaker:scrap4>, 50);
lcchestnew.addItemEntry(<contenttweaker:scrap5>, 50);
lcchestnew.addItemEntry(<contenttweaker:scrap6>, 50);
lcchestnew.addItemEntry(<contenttweaker:scrap7>, 50);
lcchestnew.addItemEntry(<contenttweaker:scrap8>, 50);
lcchestnew.addItemEntry(<minecraft:flint>, 150);
lcchestnew.addItemEntry(<minecraft:bone>, 100);
lcchestnew.addItemEntry(<minecraft:web>, 100);
lcchestnew.addItemEntry(<techguns:handcannon>, 20);
lcchestnew.addItemEntry(<techguns:itemshared>*8, 50);
lcchestnew.addItemEntry(<techguns:revolver>, 10);
lcchestnew.addItemEntry(<techguns:itemshared:1>*2, 30);
lcchestnew.addItemEntry(<techguns:goldenrevolver>, 1);
lcchestnew.addItemEntry(<techguns:sawedoff>, 10);
lcchestnew.addItemEntry(<techguns:itemshared:2>*4, 30);


val raildungeonchest = LootTweaker.getTable("lostcities:chests/raildungeonchest").getPool("lostcities:raildungeonchest");
raildungeonchest.removeEntry("minecraft:diamond_axe");
raildungeonchest.removeEntry("minecraft:gold_ingot");
raildungeonchest.removeEntry("minecraft:iron_ingot");
raildungeonchest.removeEntry("minecraft:diamond");
raildungeonchest.removeEntry("minecraft:emerald");

raildungeonchest.addItemEntry(<contenttweaker:scrap1>, 5);
raildungeonchest.addItemEntry(<contenttweaker:scrap2>, 5);
raildungeonchest.addItemEntry(<contenttweaker:scrap3>, 5);
raildungeonchest.addItemEntry(<contenttweaker:scrap4>, 5);
raildungeonchest.addItemEntry(<contenttweaker:scrap5>, 5);
raildungeonchest.addItemEntry(<contenttweaker:scrap6>, 5);
raildungeonchest.addItemEntry(<contenttweaker:scrap7>, 5);
raildungeonchest.addItemEntry(<contenttweaker:scrap8>, 5);

raildungeonchest.addItemEntry(<ic2:sapling>, 5);
raildungeonchest.addItemEntry(<ic2:filled_tin_can>, 5);

raildungeonchest.addItemEntry(<minecraft:bone>, 10);
raildungeonchest.addItemEntry(<minecraft:web>, 10);

//Loot additions
LootTweaker.getTable("minecraft:entities/guardian").getPool("pool1").addItemEntry(<primal:pelt_animal>, 3);
LootTweaker.getTable("minecraft:entities/elder_guardian").getPool("pool1").addItemEntry(<primal:pelt_animal_large>, 3);
