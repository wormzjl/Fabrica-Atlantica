mods.jei.JEI.removeAndHide(<primal:sinuous_resin>);

//Primal process
mods.primal.Cauldron.addRecipe("Formic_acid", 15, <liquid:water> * 50, <liquid:formicacid> * 50, [<forestry:bee_drone_ge:*>], [<forestry:ash>]);
mods.primal.Cauldron.addRecipe("Raw_rubber", 15, <liquid:formicacid> * 50, null, [<ic2:misc_resource:4>], [<contenttweaker:rawrubber>]);
mods.primal.DryingRack.addNonRottingRecipe("Raw rubber drying", 5, <contenttweaker:rawrubber>, <contenttweaker:driedrawrubber>);
mods.betterwithmods.Cauldron.addUnstoked([<contenttweaker:driedrawrubber>, <betterwithmods:material:37>, <railcraft:dust:1>],[<ic2:crafting>*4]);

//Early Industrial process - need to gate forestry devices further
mods.forestry.Squeezer.addRecipe(<liquid:formicacid>*55, [<forestry:bee_drone_ge:*>], 100);
mods.forestry.Carpenter.addRecipe(<contenttweaker:rawrubber>, [[<ic2:misc_resource:4>]], 40, <liquid:formicacid> * 45);
mods.betterwithmods.Crucible.addStoked([<contenttweaker:rawrubber>],[<contenttweaker:driedrawrubber>]);
mods.forestry.ThermionicFabricator.addSmelting(<liquid:liquidrubber> * 100, <contenttweaker:driedrawrubber>, 500);
mods.forestry.ThermionicFabricator.addCast(<ic2:crafting> * 8, [[<ore:dustSulfur>,<ore:dustCoke>,null]], <liquid: liquidrubber> * 200, <forestry:wax_cast>);
mods.forestry.ThermionicFabricator.addCast(<ic2:crafting> * 8, [[<ore:dustSulfur>,<ore:dustCharcoal>,null]], <liquid: liquidrubber> * 200, <forestry:wax_cast>);

//Advanced industrial process - petrochem
