recipes.remove(<libvulpes:productgear:*>);
recipes.remove(<forestry:gear_bronze>);
recipes.remove(<forestry:gear_copper>);
recipes.remove(<forestry:gear_tin>);

//Parts making
mods.immersiveengineering.MetalPress.removeRecipeByMold(<immersiveengineering:mold:1>);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:iron:gearpart>, <ore:plateIron>, <immersiveengineering:mold:1>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:steel:gearpart>, <ore:plateSteel>, <immersiveengineering:mold:1>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:bronze:gearpart>, <ore:plateBronze>, <immersiveengineering:mold:1>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:invar:gearpart>, <ore:plateInvar>, <immersiveengineering:mold:1>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:brass:gearpart>, <ore:plateBrass>, <immersiveengineering:mold:1>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<materialpart:ssteel:gearpart>, <ore:plateSsteel>, <immersiveengineering:mold:1>, 2000);

mods.techguns.MetalPress.addRecipe("plateBronze", "plateBronze", <railcraft:gear:3>*2, false);
mods.techguns.MetalPress.addRecipe("plateBrass", "plateBrass", <railcraft:gear:3>*2, false);
mods.techguns.MetalPress.addRecipe("plateBronze", "plateBrass", <railcraft:gear:3>*2, true);

mods.techguns.ReactionChamber.addRecipe("Titanium Bushing", "plateTitanium", <liquid:lubricant>, [<contenttweaker:bushingadv>], <techguns:itemshared:104>, 2, 1, 4, 0, 5, 400, 0.0, "NONE", 4096);
mods.techguns.ReactionChamber.addRecipe("Titanium Gear Part", "plateTitanium", <liquid:xenon>, [<materialpart:titanium:gearpart>], <techguns:itemshared:104>, 3, 2, 4, 0, 4, 100, 0.0, "NONE", 4096);
mods.techguns.ReactionChamber.addRecipe("Tungsten Gear Part", "plateTungsten", <liquid:xenon>, [<materialpart:tungsten:gearpart>], <techguns:itemshared:104>, 3, 2, 4, 0, 4, 100, 0.0, "NONE", 16384);


//TG final assembly
mods.techguns.MetalPress.addRecipe(<materialpart:iron:gearpart>, <railcraft:gear:3>, <railcraft:gear:1>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:steel:gearpart>, <railcraft:gear:3>, <railcraft:gear:2>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:bronze:gearpart>, <railcraft:gear:3>, <railcraft:gear:4>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:invar:gearpart>, <railcraft:gear:3>, <railcraft:gear:5>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:titanium:gearpart>, <contenttweaker:bushingadv>, <materialpart:titanium:gearadv>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:tungsten:gearpart>, <contenttweaker:bushingadv>, <materialpart:tungsten:gearadv>, true);
mods.techguns.MetalPress.addRecipe(<materialpart:ssteel:gearpart>, <contenttweaker:bushingadv>, <materialpart:ssteel:gearadv>, true);
//mods.techguns.MetalPress.addRecipe(<materialpart:brass:gearpart>, <contenttweaker:bushingadv>, <materialpart:ssteel:gearadv>, true);

//Stack size modification
val gear = <railcraft:gear>;
gear.maxStackSize = 1;
