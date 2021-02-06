#priority 1000

recipes.remove(<libvulpes:productgear:*>);
recipes.remove(<forestry:gear_bronze>);
recipes.remove(<forestry:gear_copper>);
recipes.remove(<forestry:gear_tin>);

//Parts making
mods.immersiveengineering.MetalPress.removeRecipeByMold(<immersiveengineering:mold:1>);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:gearpart_iron>, <ore:plateIron>, <immersiveengineering:mold:1>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:gearpart_steel>, <ore:plateSteel>, <immersiveengineering:mold:1>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:gearpart_bronze>, <ore:plateBronze>, <immersiveengineering:mold:1>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:gearpart_invar>, <ore:plateInvar>, <immersiveengineering:mold:1>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:gearpart_brass>, <ore:plateBrass>, <immersiveengineering:mold:1>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:gearpart_ssteel>, <ore:plateSsteel>, <immersiveengineering:mold:1>, 2000);

mods.techguns.MetalPress.addRecipe("plateBronze", "plateBronze", <railcraft:gear:3>*2, false);
mods.techguns.MetalPress.addRecipe("plateBrass", "plateBrass", <railcraft:gear:3>*2, false);
mods.techguns.MetalPress.addRecipe("plateBronze", "plateBrass", <railcraft:gear:3>*2, true);

mods.techguns.ReactionChamber.addRecipe("Titanium Bushing", "plateTitanium", <liquid:lubricant>, [<contenttweaker:bushingadv>], <techguns:itemshared:104>, 2, 1, 4, 0, 5, 400, 0.0, "NONE", 4096);
mods.techguns.ReactionChamber.addRecipe("Titanium Gear Part", "plateTitanium", <liquid:xenon>, [<contenttweaker:gearpart_titanium>], <techguns:itemshared:104>, 3, 2, 4, 0, 4, 100, 0.0, "NONE", 4096);
mods.techguns.ReactionChamber.addRecipe("Tungsten Gear Part", "plateTungsten", <liquid:xenon>, [<contenttweaker:gearpart_tungsten>], <techguns:itemshared:104>, 3, 2, 4, 0, 4, 100, 0.0, "NONE", 16384);


//TG final assembly
mods.techguns.MetalPress.addRecipe(<contenttweaker:gearpart_iron>, <railcraft:gear:3>, <railcraft:gear:1>, true);
mods.techguns.MetalPress.addRecipe(<contenttweaker:gearpart_steel>, <railcraft:gear:3>, <railcraft:gear:2>, true);
mods.techguns.MetalPress.addRecipe(<contenttweaker:gearpart_bronze>, <railcraft:gear:3>, <railcraft:gear:4>, true);
mods.techguns.MetalPress.addRecipe(<contenttweaker:gearpart_invar>, <railcraft:gear:3>, <railcraft:gear:5>, true);
mods.techguns.MetalPress.addRecipe(<contenttweaker:gearpart_brass>, <railcraft:gear:3>, <railcraft:gear>, true);
mods.techguns.MetalPress.addRecipe(<contenttweaker:gearpart_titanium>, <contenttweaker:bushingadv>, <contenttweaker:gear_titanium>, true);
mods.techguns.MetalPress.addRecipe(<contenttweaker:gearpart_tungsten>, <contenttweaker:bushingadv>, <contenttweaker:gear_tungsten>, true);
mods.techguns.MetalPress.addRecipe(<contenttweaker:gearpart_ssteel>, <contenttweaker:bushingadv>, <contenttweaker:gear_ssteel>, true);

//Stack size modification
val gear = <railcraft:gear>;
gear.maxStackSize = 1;
