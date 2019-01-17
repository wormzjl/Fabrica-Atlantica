recipes.remove(<libvulpes:productgear:*>);
recipes.remove(<forestry:gear_bronze>);
recipes.remove(<forestry:gear_copper>);
recipes.remove(<forestry:gear_tin>);

//Parts making
mods.immersiveengineering.MetalPress.removeRecipeByMold(<immersiveengineering:mold:1>);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:iron:gearpart>, <ore:plateIron>, <immersiveengineering:mold:1>, 2000, 2);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:steel:gearpart>, <ore:plateSteel>, <immersiveengineering:mold:1>, 2000, 2);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:bronze:gearpart>, <ore:plateBronze>, <immersiveengineering:mold:1>, 2000, 2);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:invar:gearpart>, <ore:plateInvar>, <immersiveengineering:mold:1>, 2000, 2);

mods.techguns.MetalPress.addRecipe("plateBronze", "plateBronze", <railcraft:gear:3>*2, false);
mods.techguns.MetalPress.addRecipe("plateBrass", "plateBrass", <railcraft:gear:3>*2, false);
mods.techguns.MetalPress.addRecipe("plateBronze", "plateBrass", <railcraft:gear:3>*2, true);

mods.techguns.ReactionChamber.addRecipe("Titanium Bushing", "plateTitanium", <liquid:lubricant>, [<contenttweaker:bushingadv>, <contenttweaker:bushingadv>], <techguns:itemshared:104>, 4, 3, 4, 0, 4, 400, 0.0, "NONE", 4096);
mods.techguns.ReactionChamber.addRecipe("Titanium Gear", "plateTitanium", <liquid:xenon>, [<materialpart:titanium:gearpart>], <techguns:itemshared:104>, 3, 2, 4, 0, 4, 100, 0.0, "NONE", 4096);
mods.techguns.ReactionChamber.addRecipe("Tungsten Gear", "plateTungsten", <liquid:xenon>, [<materialpart:tungsten:gearpart>], <techguns:itemshared:104>, 3, 2, 4, 0, 4, 100, 0.0, "NONE", 16384);


//TG final assembly
mods.techguns.MetalPress.addRecipe(<materialpart:iron:gearpart>, <railcraft:gear:3>, <materialpart:iron:gearbase>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:steel:gearpart>, <railcraft:gear:3>, <materialpart:steel:gearbase>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:bronze:gearpart>, <railcraft:gear:3>, <materialpart:bronze:gearbase>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:invar:gearpart>, <railcraft:gear:3>, <materialpart:invar:gearbase>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:titanium:gearpart>, <contenttweaker:bushingadv>, <materialpart:titanium:gearadv>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:tungsten:gearpart>, <contenttweaker:bushingadv>, <materialpart:tungsten:gearadv>, true);

