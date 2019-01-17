import crafttweaker.oredict.IOreDictEntry;

//Oredict additions
val dustAlumina = <ore:dustAlumina>;
dustAlumina.add(<contenttweaker:alumina>);

val dustTiO2 = <ore:dustTiO2>;
dustTiO2.add(<contenttweaker:tio2>);

val dustTungsticacid = <ore:dustTungsticacid>;
dustTungsticacid.add(<contenttweaker:tungsticacid>);

val ingotBeryllium = <ore:ingotBeryllium>;
ingotBeryllium.add(<contenttweaker:berylliumingot>);

val dustUranium = <ore:dustUranium>;
dustUranium.add(<rockhounding_chemistry:chemical_dusts:55>);

val toolShears = <ore:toolShears>;
toolShears.add(<minecraft:shears>);

val sheetPlastic = <ore:sheetPlastic>;
sheetPlastic.add(<pneumaticcraft:plastic:15>);


//Oredict removals
val itemRubber = <ore:itemRubber>;
itemRubber.remove(<primal:sinuous_resin>);

val chest = <ore:chest>;
chest.remove(<minecraft:ender_chest>);

val dustCarbon = <ore:dustCarbon>;
dustCarbon.remove(<betterwithmods:material:18>);

val circuitBasic = <ore:circuitBasic>;
circuitBasic.remove(<techguns:itemshared:65>);

val wireCopper = <ore:wireCopper>;
wireCopper.remove(<techguns:itemshared:62>);

sheetPlastic.remove(<techguns:itemshared:55>);

//Stack sizes
val irongear = <materialpart:iron:gearbase>;
irongear.maxStackSize = 4;

val steelgear = <materialpart:steel:gearbase>;
steelgear.maxStackSize = 4;

val bronzegear = <materialpart:bronze:gearbase>;
bronzegear.maxStackSize = 4;

val invargear = <materialpart:invar:gearbase>;
invargear.maxStackSize = 4;

val ssteelgear = <materialpart:ssteel:gearadv>;
ssteelgear.maxStackSize = 4;

val titaniumgear = <materialpart:titanium:gearadv>;
titaniumgear.maxStackSize = 4;

val tungstengear = <materialpart:tungsten:gearadv>;
tungstengear.maxStackSize = 4;

val irongearpart = <materialpart:iron:gearpart>;
irongearpart.maxStackSize = 4;

val steelgearpart = <materialpart:steel:gearpart>;
steelgearpart.maxStackSize = 4;

val bronzegearpart = <materialpart:bronze:gearpart>;
bronzegearpart.maxStackSize = 4;

val invargearpart = <materialpart:invar:gearpart>;
invargearpart.maxStackSize = 4;

val ssteelgearpart = <materialpart:ssteel:gearpart>;
ssteelgearpart.maxStackSize = 4;

val titaniumgearpart = <materialpart:titanium:gearpart>;
titaniumgearpart.maxStackSize = 4;

val tungstengearpart = <materialpart:tungsten:gearpart>;
tungstengearpart.maxStackSize = 4;


val ironmech = <immersiveengineering:material:8>;
ironmech.maxStackSize = 8;

val steelmech = <immersiveengineering:material:9>;
steelmech.maxStackSize = 8;

val bushingbase = <railcraft:gear:3>;
bushingbase.maxStackSize = 8;
