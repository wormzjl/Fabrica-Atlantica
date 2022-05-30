#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.Part;
import mods.contenttweaker.DropTableBuilder;

//New parts
var names = ["ore_high", "ore_low", "ore_small_high", "ore_small_low", "ore_dust_small_high", "ore_dust_small_low", "ore_dust_high", "ore_dust_low", "ore_dust_washed_low", "ore_dust_pure", "ore_pellet", "ore_tailing", "scrapmetal", "gear", "gearadv", "denseplate", "broken_high", "broken_med", "broken_low", "dusttiny", "slag", "gearpart", "data", "catalyst"] as string[];
var overlay = [true, true, true, true, true, true, true, true, false, true, false, true, false, true, true, false, true, true, true, false, true, false, true, false] as bool[];

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

    poorTable += DropTableBuilder.newSlot().addItem(oredictHigh).addItem("empty").newSlot().addItem(oredictLow).addItem("empty").addItem("empty").newSlot().addItem("minecraft:cobblestone").newSlot().addItem("railcraft:dust:1").addItem("empty").addItem("empty").addItem("empty").addItem("empty").addItem("empty");
    normalTable += DropTableBuilder.newSlot().addItem(oredictHigh).newSlot().addItem(oredictLow).addItem("empty").newSlot().addItem("minecraft:cobblestone").newSlot().addItem("railcraft:dust:1").addItem("empty").addItem("empty").addItem("empty").addItem("empty").addItem("empty").addItem("empty");
    denseTable += DropTableBuilder.newSlot().addItem(oredictHigh, 1, 2).newSlot().addItem(oredictLow).newSlot().addItem("minecraft:cobblestone").newSlot().addItem("railcraft:dust:1").addItem("empty").addItem("empty").addItem("empty").addItem("empty").addItem("empty").addItem("empty");
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
var invar = MaterialSystem.getMaterialBuilder().setName("Invar").setColor(15000271).build();
var zinc = MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(15724793).build();
var brass = MaterialSystem.getMaterialBuilder().setName("Brass").setColor(12886272).build();
var aluminium = MaterialSystem.getMaterialBuilder().setName("Aluminum").setColor(14611184).build();
var titanium = MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(15986431).build();
var tungsten = MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(13357783).build();
var ssteel = MaterialSystem.getMaterialBuilder().setName("Ssteel").setColor(15989503).build();
var hastelloy = MaterialSystem.getMaterialBuilder().setName("Hastelloy").setColor(14022121).build();

var electrum = MaterialSystem.getMaterialBuilder().setName("Electrum").setColor(16765009).build();


var metal_list = [iron, gold, steel, copper, tin, bronze, lead, silver, nickel, invar, zinc, brass, aluminium, titanium, tungsten, ssteel, hastelloy] as Material[];
var plate_all = [aluminium, titanium, tungsten, ssteel, hastelloy] as Material[];
var part_names = ["rod", "denseplate", "tiny_dust"] as string[];

for i, metal in metal_list {
    metal.registerParts(part_names);
}

for i, metal in plate_all {
    metal.registerPart("plate");
}

ssteel.registerPart("ingot");
hastelloy.registerPart("ingot");
electrum.registerPart("plate");
titanium.registerPart("nugget");


//Scraps
var scraps_list = [iron, gold, copper, tin, lead, silver, zinc] as Material[];
for i, scrap in scraps_list {
    scrap.registerPart("scrapmetal");
}

//Misc dusts
var gaas = MaterialSystem.getMaterialBuilder().setName("gaas").setColor(9474718).build();
var tio2 = MaterialSystem.getMaterialBuilder().setName("tio2").setColor(16185078).build();
var alumina = MaterialSystem.getMaterialBuilder().setName("Alumina").setColor(16579836).build();
var silica = MaterialSystem.getMaterialBuilder().setName("Silica").setColor(16316664).build();

var chemicals = [gaas, tio2, alumina, silica] as Material[];

for i, chemical in chemicals {
    chemical.registerPart("dust");
    chemical.registerPart("tiny_dust");
}

//Catalysts
var ni = MaterialSystem.getMaterialBuilder().setName("ni").setColor(1023844).build();
var como = MaterialSystem.getMaterialBuilder().setName("como").setColor(1007793).build();
var nimo = MaterialSystem.getMaterialBuilder().setName("nimo").setColor(1008996).build();
var comoni = MaterialSystem.getMaterialBuilder().setName("comoni").setColor(373685).build();
var fecr = MaterialSystem.getMaterialBuilder().setName("fecr").setColor(8912956).build();
var pt = MaterialSystem.getMaterialBuilder().setName("pt").setColor(2738636).build();
var ptir = MaterialSystem.getMaterialBuilder().setName("ptir").setColor(2745574).build();
var nimohck = MaterialSystem.getMaterialBuilder().setName("nimohck").setColor(1014884).build();
var niwhck = MaterialSystem.getMaterialBuilder().setName("niwhck").setColor(998001).build();
var pthck = MaterialSystem.getMaterialBuilder().setName("pthck").setColor(2745572).build();
var fe = MaterialSystem.getMaterialBuilder().setName("fe").setColor(6094848).build();
var ag = MaterialSystem.getMaterialBuilder().setName("ag").setColor(12776435).build();
var zeolite = MaterialSystem.getMaterialBuilder().setName("zeolite").setColor(16777138).build();
var vanadium = MaterialSystem.getMaterialBuilder().setName("vanadium").setColor(14774300).build();
var comohck = MaterialSystem.getMaterialBuilder().setName("comohck").setColor(1015985).build();
var comohck_spent = MaterialSystem.getMaterialBuilder().setName("comohck_spent").setColor(3086865).build();
var fcc = MaterialSystem.getMaterialBuilder().setName("fcc").setColor(16777173).build();
var advfcc = MaterialSystem.getMaterialBuilder().setName("advfcc").setColor(16777142).build();
var fcc_spent = MaterialSystem.getMaterialBuilder().setName("fcc_spent").setColor(1250304).build();
var advfcc_spent = MaterialSystem.getMaterialBuilder().setName("advfcc_spent").setColor(1250304).build();

var cat_list = [ni, como, nimo, comoni, fecr, pt, ptir, nimohck, niwhck, pthck, fe, ag, zeolite, alumina, vanadium, comohck, comohck_spent, fcc, advfcc, fcc_spent, advfcc_spent] as Material[];
for i, catalysts in cat_list {
    catalysts.registerPart("catalyst");
}
