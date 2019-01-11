import mods.techguns.ReactionChamber;

mods.jei.JEI.hide(<techguns:itemshared:56>);
furnace.remove(<techguns:itemshared:56>);

mods.jei.JEI.hide(<techguns:steam_helmet:*>);
mods.jei.JEI.hide(<techguns:steam_chestplate:*>);
mods.jei.JEI.hide(<techguns:steam_leggings:*>);
mods.jei.JEI.hide(<techguns:steam_boots:*>);


mods.techguns.ChemLab.removeRecipe(<techguns:itemshared:95>, null);
mods.techguns.ChemLab.removeRecipe(<techguns:itemshared:96>, null);

mods.techguns.ReactionChamber.removeRecipe(<minecraft:redstone_block>, <liquid:lava>);
mods.techguns.ReactionChamber.removeRecipe(<techguns:basicore:3>, <liquid:creeper_acid>);
mods.techguns.ReactionChamber.removeRecipe(<techguns:itemshared:97>, <liquid:water>);

mods.techguns.ReactionChamber.addRecipe("Titanium", <techguns:itemshared:78>, <liquid:argon>, [<rockhounding_chemistry:metal_items:4>], <techguns:itemshared:104>, 3, 3, 7, 0, 10, 100, 0.0, "NONE", 4096);

