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
mods.primal.Smelter.removeRecipe("ore_good_lithium");
mods.primal.Smelter.removeRecipe("ore_sand_aluminum");
mods.primal.Smelter.removeRecipe("dust_boron");
mods.primal.Smelter.removeRecipe("dust_constantan");
mods.primal.Smelter.removeRecipe("ore_good_iron");
mods.primal.Smelter.removeRecipe("alloy_constantan");
mods.primal.Smelter.removeRecipe("bog_iron_sand_good");
mods.primal.Smelter.removeRecipe("plate_lead");
mods.primal.Smelter.removeRecipe("plate_gold");
mods.primal.Smelter.removeRecipe("ore_good_silver");
mods.primal.Smelter.removeRecipe("appliedenergistics2_smooth_sky_stone");
mods.primal.Smelter.removeRecipe("ore_fair_iron");
mods.primal.Smelter.removeRecipe("dust_lithium");
mods.primal.Smelter.removeRecipe("dust_platinum");
mods.primal.Smelter.removeRecipe("ore_sand_boron");
mods.primal.Smelter.removeRecipe("plate_wootz");
mods.primal.Smelter.removeRecipe("dust_lead");
mods.primal.Smelter.removeRecipe("bog_iron_lime_fair");
mods.primal.Smelter.removeRecipe("dust_gold");
mods.primal.Smelter.removeRecipe("dust_magnesium");
mods.primal.Smelter.removeRecipe("dust_uranium");
mods.primal.Smelter.removeRecipe("ore_fair_copper");
mods.primal.Smelter.removeRecipe("ore_good_copper");
mods.primal.Smelter.removeRecipe("ore_sand_lithium");
mods.primal.Smelter.removeRecipe("dust_nickel");
mods.primal.Smelter.removeRecipe("ore_sand_platinum");
mods.primal.Smelter.removeRecipe("plate_vanadium");
mods.primal.Smelter.removeRecipe("crude_iron");
mods.primal.Smelter.removeRecipe("dust_brass");
mods.primal.Smelter.removeRecipe("bucket_to_ingot");
mods.primal.Smelter.removeRecipe("ore_sand_lead");
mods.primal.Smelter.removeRecipe("plate_nickel");
mods.primal.Smelter.removeRecipe("ore_sand_gold");
mods.primal.Smelter.removeRecipe("ore_good_tin");
mods.primal.Smelter.removeRecipe("plate_brass");
mods.primal.Smelter.removeRecipe("dust_osmium");
mods.primal.Smelter.removeRecipe("alloy_electrum");
mods.primal.Smelter.removeRecipe("dust_tin");
mods.primal.Smelter.removeRecipe("ore_sand_magnesium");
mods.primal.Smelter.removeRecipe("door_to_ingot");
mods.primal.Smelter.removeRecipe("plate_tamahagane");
mods.primal.Smelter.removeRecipe("charcoal_log");
mods.primal.Smelter.removeRecipe("ore_good_aluminum");
mods.primal.Smelter.removeRecipe("ore_sand_copper");
mods.primal.Smelter.removeRecipe("pure_carbon");
mods.primal.Smelter.removeRecipe("bog_iron_sand_high");
mods.primal.Smelter.removeRecipe("ore_fair_aluminum");
mods.primal.Smelter.removeRecipe("ore_fair_tin");
mods.primal.Smelter.removeRecipe("plate_iron");
mods.primal.Smelter.removeRecipe("plate_steel");
mods.primal.Smelter.removeRecipe("dust_copper");
mods.primal.Smelter.removeRecipe("ore_fair_magnesium");
mods.primal.Smelter.removeRecipe("ore_fair_nickel");
mods.primal.Smelter.removeRecipe("bog_iron_lime_good");
mods.primal.Smelter.removeRecipe("dust_silver");
mods.primal.Smelter.removeRecipe("dust_steel");
mods.primal.Smelter.removeRecipe("dust_bronze");
mods.primal.Smelter.removeRecipe("ore_good_boron");
mods.primal.Smelter.removeRecipe("ore_sand_nickel");
mods.primal.Smelter.removeRecipe("alloy_bronze");
mods.primal.Smelter.removeRecipe("plate_platinum");
mods.primal.Smelter.removeRecipe("dust_thorium");
mods.primal.Smelter.removeRecipe("ore_good_thorium");
mods.primal.Smelter.removeRecipe("ore_good_nickel");
mods.primal.Smelter.removeRecipe("ore_sand_uranium");
mods.primal.Smelter.removeRecipe("plate_electrum");
mods.primal.Smelter.removeRecipe("dust_electrum");
mods.primal.Smelter.removeRecipe("dust_iron");
mods.primal.Smelter.removeRecipe("ore_fair_boron");
mods.primal.Smelter.removeRecipe("plate_tin");
mods.primal.Smelter.removeRecipe("ore_sand_tin");
mods.primal.Smelter.removeRecipe("ore_fair_lithium");
mods.primal.Smelter.removeRecipe("bog_iron_lime_high");
mods.primal.Smelter.removeRecipe("appliedenergistics2_silicon_quartz");
mods.primal.Smelter.removeRecipe("ore_fair_silver");
mods.primal.Smelter.removeRecipe("plate_constantan");
mods.primal.Smelter.removeRecipe("ore_fair_gold");
mods.primal.Smelter.removeRecipe("plate_uranium");
mods.primal.Smelter.removeRecipe("ore_good_platinum");
mods.primal.Smelter.removeRecipe("plate_zinc");
mods.primal.Smelter.removeRecipe("dust_zinc");
mods.primal.Smelter.removeRecipe("ore_good_magnesium");
mods.primal.Smelter.removeRecipe("ore_fair_lead");
mods.primal.Smelter.removeRecipe("ore_fair_uranium");
mods.primal.Smelter.removeRecipe("plate_silver");
mods.primal.Smelter.removeRecipe("zinc_lime_good");
mods.primal.Smelter.removeRecipe("ore_good_uranium");
mods.primal.Smelter.removeRecipe("ore_good_lead");
mods.primal.Smelter.removeRecipe("alloy_brass");
mods.primal.Smelter.removeRecipe("alloy_shibuichi");
mods.primal.Smelter.removeRecipe("ore_good_gold");
mods.primal.Smelter.removeRecipe("ore_sand_iron");
mods.primal.Smelter.removeRecipe("ore_sand_thorium");
mods.primal.Smelter.removeRecipe("plate_shibuichi");
mods.primal.Smelter.removeRecipe("dust_aluminum");
mods.primal.Smelter.removeRecipe("magnetite_ore");
mods.primal.Smelter.removeRecipe("plate_bronze");
mods.primal.Smelter.removeRecipe("plate_adamant");
mods.primal.Smelter.removeRecipe("ore_fair_platinum");
mods.primal.Smelter.removeRecipe("iron");
mods.primal.Smelter.removeRecipe("zinc_lime_high");
mods.primal.Smelter.removeRecipe("ore_fair_thorium");
mods.primal.Smelter.removeRecipe("plate_aluminum");
mods.primal.Smelter.removeRecipe("bog_iron_sand_fair");
mods.primal.Smelter.removeRecipe("plate_copper");


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

