import crafttweaker.oredict.IOreDictEntry;

//Oredict additions
val dustTungsticacid = <ore:dustTungsticacid>;
dustTungsticacid.add(<contenttweaker:tungsticacid>);

val dustUranium = <ore:dustUranium>;
dustUranium.add(<rockhounding_chemistry:chemical_dusts:55>);

val toolShears = <ore:toolShears>;
toolShears.add(<minecraft:shears>);

val sheetPlastic = <ore:sheetPlastic>;
sheetPlastic.add(<pneumaticcraft:plastic:15>);

val gearTitanium = <ore:gearTitanium>;
gearTitanium.add(<contenttweaker:gear_titanium>);

val gearTungsten = <ore:gearTungsten>;
gearTungsten.add(<contenttweaker:gear_tungsten>);

val gearSsteel = <ore:gearSsteel>;
gearSsteel.add(<contenttweaker:gear_ssteel>);


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

//Research related stack size
val solenoid = <nuclearcraft:part:4>;
solenoid.maxStackSize = 8;

val motor = <nuclearcraft:part:8>;
motor.maxStackSize = 4;

val rocketengine = <advancedrocketry:rocketmotor>;
rocketengine.maxStackSize = 1;

val rocketengine2 = <advancedrocketry:advrocketmotor>;
rocketengine2.maxStackSize = 1;


//Stack sizes
val iematerial = <immersiveengineering:material>;
iematerial.maxStackSize = 32;

val capacitor = <pneumaticcraft:capacitor>;
capacitor.maxStackSize = 16;

val transistor = <pneumaticcraft:transistor>;
transistor.maxStackSize = 16;
