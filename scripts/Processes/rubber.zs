#priority 1000

mods.immersiveengineering.Refinery.removeRecipe(<liquid:formic_acid>);
mods.nuclearcraft.ChemicalReactor.addRecipe(<liquid:methanol>*1000, <liquid:carbon_monoxide>*875, <liquid:methyl_formate>*1875, null);
mods.nuclearcraft.ChemicalReactor.addRecipe(<liquid:methyl_formate>*1875, <liquid:distwater>*563, <liquid:methanol>*980, <liquid:formic_acid>*1437);


recipes.remove(<immersiveintelligence:material:31>);
recipes.addShapeless(<immersiveintelligence:material:31>*6,[<immersiveintelligence:material_dust:4>,<betterwithmods:material:37>,<betterwithmods:material:37>]);
recipes.addShapeless(<immersiveintelligence:material:31>*6,[<immersiveintelligence:material_dust:4>,<immersiveengineering:material:17>,<immersiveengineering:material:17>]);

//Primal process
mods.primal.Cauldron.addRecipe("Formic_acid", 5, null, <liquid:formic_acid> * 100, [<forestry:bee_drone_ge:*>], [<forestry:ash>]);
mods.primal.Cauldron.addRecipe("Raw_rubber", 5, <liquid:formic_acid> * 50, null, [<ic2:misc_resource:4>], [<contenttweaker:rawrubber>]);
mods.primal.DryingRack.addNonRottingRecipe("Raw_rubber", 5, <contenttweaker:rawrubber>, <contenttweaker:driedrawrubber>);
mods.pyrotech.DryingRack.addRecipe("Raw_rubber", <contenttweaker:driedrawrubber>, <contenttweaker:rawrubber>, 5 * 60 * 20, true);

mods.betterwithmods.Cauldron.addUnstoked([<contenttweaker:driedrawrubber>, <immersiveintelligence:material:31>, <railcraft:dust:1>],[<ic2:crafting>*6]);

//Early Industrial process - need to gate forestry devices further
mods.forestry.Squeezer.addRecipe(<liquid:formic_acid>*120, [<forestry:bee_drone_ge:*>], 100);
mods.forestry.Carpenter.addRecipe(<contenttweaker:rawrubber>, [[<ic2:misc_resource:4>]], 320, <liquid:formic_acid> * 45);
mods.betterwithmods.Crucible.addStoked([<contenttweaker:rawrubber>],[<contenttweaker:driedrawrubber>]);
mods.forestry.ThermionicFabricator.addSmelting(<liquid:liquidrubber> * 100, <contenttweaker:driedrawrubber>, 500);
mods.forestry.ThermionicFabricator.addCast(<ic2:crafting> * 8, [[<ore:dustSulfur>,<immersiveintelligence:material:31>,null]], <liquid: liquidrubber> * 200, <forestry:wax_cast>);

//Wait for II update
//mods.nuclearcraft.Melter.addRecipe(<ic2:misc_resource:4>, <liquid:latex>*1000, 0.2);

//mods.immersiveintelligence.Coagulator.removeRecipe(<immersiveintelligence:material:28>);
//mods.immersiveintelligence.Coagulator.addRecipe(<immersiveintelligence:material:28>*8, <liquid:latex>*1000, <liquid:formic_acid>*40, 3000, 400);


//Advanced industrial process - petrochem
recipes.addShapeless(<ic2:dust:27>*9,[<ore:dustSulfur>]);
mods.pneumaticcraft.thermopneumaticprocessingplant.addRecipe(<liquid:butadiene>*1000, <ic2:dust:27>, 3.0, 473, <liquid:rubber> * 1000);
mods.pneumaticcraft.plasticmixer.addSolidifyOnlyRecipe(<liquid:rubber> * 100, <contenttweaker:driedrawrubber>, false, 0);

mods.immersiveintelligence.Vulcanizer.removeRecipe(<immersiveintelligence:material:29>);
mods.immersiveintelligence.Vulcanizer.addRecipe(<contenttweaker:driedrawrubber>, <immersiveintelligence:material:31>, <railcraft:dust:1>, <immersiveintelligence:vulcanizer_mold>, <ic2:crafting>*12, 18000);

//mods.pneumaticcraft.plasticmixer.addSolidifyOnlyRecipe(<liquid:rubber> * 100, <ic2:crafting:0>);
