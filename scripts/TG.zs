import mods.techguns.ReactionChamber;

mods.jei.JEI.hide(<techguns:itemshared:56>);
furnace.remove(<techguns:itemshared:55>);
furnace.remove(<techguns:itemshared:56>);

mods.jei.JEI.hide(<techguns:steam_helmet:*>);
mods.jei.JEI.hide(<techguns:steam_chestplate:*>);
mods.jei.JEI.hide(<techguns:steam_leggings:*>);
mods.jei.JEI.hide(<techguns:steam_boots:*>);

mods.techguns.ChemLab.removeRecipe(<techguns:itemshared:64>, null);
mods.techguns.ChemLab.removeRecipe(<techguns:itemshared:75>, null);
mods.techguns.ChemLab.removeRecipe(<techguns:itemshared:95>, null);
mods.techguns.ChemLab.removeRecipe(<techguns:itemshared:96>, null);
mods.techguns.ChemLab.removeRecipe(<techguns:itemshared:97>, null);
mods.techguns.ChemLab.removeRecipe(<minecraft:slime_ball>, null);
mods.techguns.ChemLab.removeRecipe(null, <liquid:creeper_acid>);
mods.techguns.ChemLab.removeRecipe(<minecraft:leather>,null);

mods.techguns.ReactionChamber.removeRecipe(<minecraft:redstone_block>, <liquid:lava>);
mods.techguns.ReactionChamber.removeRecipe(<techguns:basicore:3>, <liquid:creeper_acid>);
mods.techguns.ReactionChamber.removeRecipe(<techguns:itemshared:97>, <liquid:water>);
mods.techguns.ReactionChamber.removeRecipe(<minecraft:diamond>, <liquid:lava>);

mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:45>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:46>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:47>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:48>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:49>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:50>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:51>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:52>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:53>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:54>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:55>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:62>);
mods.techguns.MetalPress.removeRecipe(<techguns:itemshared:63>);


mods.techguns.ReactionChamber.addRecipe("Titanium", <contenttweaker:titaniumsponge>, <liquid:argon>, [<rockhounding_chemistry:metal_items:4>], <techguns:itemshared:104>, 4, 3, 7, 0, 5, 100, 0.0, "NONE", 4096);

mods.techguns.ReactionChamber.addRecipe("Laser Focus", <rockhounding_chemistry:alloy_items_gems:1>, <liquid:krypton>, [<techguns:itemshared:71>], <techguns:itemshared:104>, 4, 3, 8, 0, 5, 1000, 0.0, "NONE", 4096);

recipes.replaceAllOccurences(<techguns:itemshared:70>, <ic2:crafting:6>);
//recipes.replaceAllOccurences(<techguns:itemshared:66>, <pneumaticcraft:printed_circuit_board>);

recipes.remove(<techguns:itemshared:104>);
recipes.addShaped(<techguns:itemshared:104>, [[<pneumaticcraft:printed_circuit_board>, <ic2:lapotron_crystal:*>, <pneumaticcraft:printed_circuit_board>], [<ore:denseplateInvar>, <rockhounding_chemistry:alloy_items_gems:1>, <ore:denseplateInvar>], [<ore:denseplateInvar>, <rockhounding_chemistry:alloy_items_gems:1>, <ore:denseplateInvar>]]);


recipes.addShaped(<techguns:itemshared:69>, [[<ore:sheetPlastic>, <pneumaticcraft:printed_circuit_board>, <ore:sheetPlastic>], [<ic2:dust:6>, <materialpart:ssteel:gearadv>, <ic2:dust:6>], [<ore:sheetPlastic>, <pneumaticcraft:printed_circuit_board>, <ore:sheetPlastic>]]);

mods.techguns.Fabricator.removeRecipe(<techguns:itemshared:69>);
mods.techguns.Fabricator.addRecipe(<materialpart:ssteel:gearadv>, 1, <pneumaticcraft:printed_circuit_board>, 1, <ic2:dust:6>, 1, "sheetPlastic", 2, <techguns:itemshared:69>);

