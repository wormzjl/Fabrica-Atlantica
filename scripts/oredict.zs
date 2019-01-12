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

//Stack size for automation intermediates
val irongear = <materialpart:iron:gear>;
irongear.maxStackSize = 4;

val steelgear = <materialpart:steel:gear>;
steelgear.maxStackSize = 4;

val invargear = <materialpart:invar:gear>;
invargear.maxStackSize = 4;

val aluminiumgear = <materialpart:aluminium:gear>;
aluminiumgear.maxStackSize = 4;

val titaniumgear = <materialpart:titanium:gearadv>;
titaniumgear.maxStackSize = 4;

val tungstengear = <materialpart:tungsten:gearadv>;
tungstengear.maxStackSize = 4;

val ironmech = <immersiveengineering:material:8>;
ironmech.maxStackSize = 8;

val steelmech = <immersiveengineering:material:9>;
steelmech.maxStackSize = 8;
