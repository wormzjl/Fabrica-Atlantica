#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.DropTableBuilder;

//New parts
var names = ["ore_high", "ore_low", "ore_small_high", "ore_small_low", "ore_dust_small_high", "ore_dust_small_low", "ore_dust_high", "ore_dust_low", "ore_dust_washed_low", "ore_dust_pure", "ore_pellet", "ore_tailing", "scrapmetal", "gear", "gearadv", "denseplate", "broken_high", "broken_med", "broken_low", "dusttiny", "slag", "gearpart"] as string[];
var overlay = [true, true, true, true, true, true, true, true, false, true, false, true, false, true, true, false, true, true, true, false, true, false] as bool[];

for index, name in names {
    var partBuilder = MaterialSystem.getPartBuilder();
    partBuilder.setName(name);
    if (overlay[index]) {
        partBuilder.setHasOverlay(true);
    }
    partBuilder.setPartType(MaterialSystem.getPartType("item"));
    partBuilder.build();
}

//Minerals
var iron_ore = MaterialSystem.getMaterialBuilder().setName("Iron_ore").setColor(12216890).build();
var gold_ore = MaterialSystem.getMaterialBuilder().setName("Gold_ore").setColor(15123302).build();
var copper_ore = MaterialSystem.getMaterialBuilder().setName("Copper_ore").setColor(7452326).build();
var tin_ore = MaterialSystem.getMaterialBuilder().setName("Tin_ore").setColor(9799550).build();
var lead_ore = MaterialSystem.getMaterialBuilder().setName("Lead_ore").setColor(2105382).build();
var aluminium_ore = MaterialSystem.getMaterialBuilder().setName("Aluminium_ore").setColor(14528395).build();
var titanium_ore = MaterialSystem.getMaterialBuilder().setName("Titanium_ore").setColor(4924461).build();
var tungsten_ore = MaterialSystem.getMaterialBuilder().setName("Tungsten_ore").setColor(8870684).build();
var uranium_ore = MaterialSystem.getMaterialBuilder().setName("Uranium_ore").setColor(11972666).build();
var thorium_ore = MaterialSystem.getMaterialBuilder().setName("Thorium_ore").setColor(7673095).build();

var mineral_list = [iron_ore, gold_ore, copper_ore, tin_ore, lead_ore, aluminium_ore, titanium_ore, tungsten_ore, uranium_ore, thorium_ore] as Material[];
var mineral_names = ["Iron_ore", "Gold_ore", "Copper_ore", "Tin_ore", "Lead_ore", "Aluminium_ore", "Titanium_ore", "Tungsten_ore", "Uranium_ore", "Thorium_ore"] as string[];

var mineral_part_names = ["ore_high", "ore_low", "ore_small_high", "ore_small_low", "ore_dust_small_high", "ore_dust_small_low", "ore_dust_high", "ore_dust_low", "ore_dust_washed_low", "ore_dust_pure", "ore_pellet", "ore_tailing", "broken_high", "broken_med", "broken_low", "slag"] as string[];
var ore_types = ["ore", "poor_ore", "dense_ore"] as string[];

var poorTable = [] as string[];
var normalTable = [] as string[];
var denseTable = [] as string[];

for i, mineral in mineral_list {
    mineral.registerParts(mineral_part_names);
    
    var oredictHigh = "oredict:ore_high" + mineral_names[i] as string;
    var oredictLow = "oredict:ore_low" + mineral_names[i] as string;
    
    poorTable += DropTableBuilder.newSlot().addItem(oredictHigh).addItem("empty").newSlot().addItem(oredictLow).addItem("empty").addItem("empty").newSlot().addItem("minecraft:cobblestone").newSlot().addItem("railcraft:dust:1").addItem("empty").addItem("empty");
    normalTable += DropTableBuilder.newSlot().addItem(oredictHigh).newSlot().addItem(oredictLow).addItem("empty").newSlot().addItem("minecraft:cobblestone");
    denseTable += DropTableBuilder.newSlot().addItem(oredictHigh, 1, 2).newSlot().addItem(oredictLow).newSlot().addItem("minecraft:cobblestone");
}

for i, mineral in mineral_list {
    var oreData = mineral.registerPart("poor_ore").getData();
    oreData.addDataValue("variants", "minecraft:stone");
    oreData.addDataValue("hardness", "3");
    oreData.addDataValue("resistance", "15");
    oreData.addDataValue("harvestTool", "pickaxe");
    oreData.addDataValue("harvestLevel", "1");
    oreData.addDataValue("drops", poorTable[i]);
}

for i, mineral in mineral_list {
    var oreData = mineral.registerPart("ore").getData();
    oreData.addDataValue("variants", "minecraft:stone");
    oreData.addDataValue("hardness", "3");
    oreData.addDataValue("resistance", "15");
    oreData.addDataValue("harvestTool", "pickaxe");
    oreData.addDataValue("harvestLevel", "1");
    oreData.addDataValue("drops", normalTable[i]);
}

for i, mineral in mineral_list {
    var oreData = mineral.registerPart("dense_ore").getData();
    oreData.addDataValue("variants", "minecraft:stone");
    oreData.addDataValue("hardness", "3");
    oreData.addDataValue("resistance", "15");
    oreData.addDataValue("harvestTool", "pickaxe");
    oreData.addDataValue("harvestLevel", "1");
    oreData.addDataValue("drops", denseTable[i]);
}

//Materials
var iron = MaterialSystem.getMaterialBuilder().setName("Iron").setColor(14145495).build();
var gold = MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16711544).build();
var steel = MaterialSystem.getMaterialBuilder().setName("Steel").setColor(12040119).build();
var copper = MaterialSystem.getMaterialBuilder().setName("Copper").setColor(15766817).build();
var tin = MaterialSystem.getMaterialBuilder().setName("Tin").setColor(15263976).build();
var bronze = MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(13396486).build();
var lead = MaterialSystem.getMaterialBuilder().setName("Lead").setColor(8753330).build();
var silver = MaterialSystem.getMaterialBuilder().setName("Silver").setColor(16056319).build();
var nickel = MaterialSystem.getMaterialBuilder().setName("Nickel").setColor(14606000).build();
var invar = MaterialSystem.getMaterialBuilder().setName("Invar").setColor(12829607).build();
var zinc = MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(15724793).build();
var brass = MaterialSystem.getMaterialBuilder().setName("Brass").setColor(12886272).build();
var aluminium = MaterialSystem.getMaterialBuilder().setName("Aluminium").setColor(14611184).build();
var titanium = MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(16777215).build();
var tungsten = MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(4868682).build();
var ssteel = MaterialSystem.getMaterialBuilder().setName("SSteel").setColor(15989503).build();


var metal_list = [iron, gold, steel, copper, tin, bronze, lead, silver, nickel, invar, zinc, brass, aluminium, titanium, tungsten, ssteel] as Material[];
var gear_base = [iron, steel, bronze, invar] as Material[];
var gear_adv = [ssteel, titanium, tungsten] as Material[];
var gear_all = [iron, steel, bronze, invar, ssteel, titanium, tungsten] as Material[];
var part_names = ["plate", "rod", "denseplate", "dusttiny"] as string[];

for i, metal in metal_list {
    metal.registerParts(part_names);
}

for i, metal in gear_base {
    metal.registerPart("gear");
}

for i, metal in gear_adv {
    metal.registerPart("gearadv");
}

for i, metal in gear_all {
    metal.registerPart("gearpart");
}

ssteel.registerPart("ingot");

//Scraps
var scraps_list = [iron, gold, copper, tin, lead, silver] as Material[];
for i, scrap in scraps_list {
    scrap.registerPart("scrapmetal");
}

