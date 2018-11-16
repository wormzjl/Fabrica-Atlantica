mods.jei.JEI.removeAndHide(<primal:fish_trap:*>);
mods.jei.JEI.removeAndHide(<primal:logs_stacked:*>);
mods.jei.JEI.removeAndHide(<primal:storage_crate:*>);
mods.jei.JEI.removeAndHide(<primal:worktable_slab:*>);
mods.jei.JEI.removeAndHide(<primal:worktable_shelf:*>);


mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:32>, <ore:ingotIron>);
mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:33>, <ore:ingotGold>);
mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:320>, <ore:ingotCopper>);
mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:321>, <ore:ingotTin>);
mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:322>, <ore:ingotSilver>);
mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:323>, <ore:ingotLead>);
mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:325>, <ore:ingotNickel>);
mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:320>, <ore:ingotCopper>);
mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:352>, <ore:ingotSteel>);
mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:353>, <ore:ingotElectrum>);
mods.primaltech.StoneAnvil.addRecipe(<thermalfoundation:material:355>, <ore:ingotBronze>);

//Scrap processing
mods.primaltech.StoneAnvil.addRecipe(<contenttweaker:scrapmetal1>, <contenttweaker:scrap2>);
mods.primaltech.StoneAnvil.addRecipe(<contenttweaker:scrapmetal1>, <contenttweaker:scrap6>);
mods.primaltech.StoneAnvil.addRecipe(<contenttweaker:scrapmetal1>, <contenttweaker:scrap7>);
mods.primaltech.ClayKiln.addRecipe(<contenttweaker:scrapmetal2>, <contenttweaker:scrap3>, 8);
mods.primaltech.StoneAnvil.addRecipe(<contenttweaker:scrapmetal3>, <ic2:crafting:10>);
mods.primaltech.StoneAnvil.addRecipe(<contenttweaker:scrapmetal6>, <contenttweaker:scrap9>);

mods.primal.Cauldron.addRecipe("Used_battery", 5, <liquid:water> * 500, [<contenttweaker:scrap4>], [<contenttweaker:scrapmetal5>, <minecraft:redstone>]);
mods.primal.Cauldron.addRecipe("Paint_cans", 5, <liquid:water> * 500, [<contenttweaker:scrap5>], [<contenttweaker:scrapmetal3>, <minecraft:dye:4>]);

mods.primaltech.ClayKiln.addRecipe(<thermalfoundation:material:771>, <primal:corypha_stalk>, 8);
mods.primaltech.StoneAnvil.addRecipe(<betterwithmods:material:26>, <primal:salt_dust_fire>);

mods.primal.Cauldron.addRecipe("Sulfuric_acid", 5, <liquid:water> * 500, <liquid:sulfuric_acid> * 1000, [<thermalfoundation:material:771>, <betterwithmods:material:26>], [<forestry:ash>]);

mods.primal.Cauldron.addRecipe("Scrap_electronics", 15, <liquid:sulfuric_acid> * 200, <liquid:waste> * 200, [<contenttweaker:scrap1>], [<contenttweaker:scrapmetal4>, <minecraft:redstone>]);




//Smelter
mods.primal.Smelter.removeRecipe("magnetite_ore");
mods.primal.Smelter.removeRecipe("bog_iron_sand_fair");
mods.primal.Smelter.removeRecipe("bog_iron_sand_good");
mods.primal.Smelter.removeRecipe("bog_iron_lime_fair");
mods.primal.Smelter.removeRecipe("bog_iron_lime_good");
mods.primal.Smelter.removeRecipe("iron");
mods.primal.Smelter.removeRecipe("ore_iron");
mods.primal.Smelter.removeRecipe("ore_gold");
mods.primal.Smelter.removeRecipe("ore_Copper");
mods.primal.Smelter.removeRecipe("ore_Tin");
mods.primal.Smelter.removeRecipe("ore_Silver");
mods.primal.Smelter.removeRecipe("ore_Lead");
mods.primal.Smelter.removeRecipe("ore_Aluminum");
mods.primal.Smelter.removeRecipe("ore_Nickel");
mods.primal.Smelter.removeRecipe("ore_Platinum");
mods.primal.Smelter.removeRecipe("ore_Zinc");
mods.primal.Smelter.removeRecipe("ore_Uranium");
mods.primal.Smelter.removeRecipe("ore_Thorium");
mods.primal.Smelter.removeRecipe("ore_Boron");
mods.primal.Smelter.removeRecipe("ore_Lithium");
mods.primal.Smelter.removeRecipe("ore_Magnesium");

mods.primal.Smelter.addRecipe("Crude_iron", 15, [<contenttweaker:scrapmetal1>, <ore:fluxSmelting>, <minecraft:coal:1>], [<primal:crude_iron_nugget>*3, <primal:slag>]);

//Recipes
recipes.addShapeless(<minecraft:flint_and_steel>, [<primal:crude_iron_ingot>, <minecraft:flint>]);

