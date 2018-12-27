mods.jei.JEI.removeAndHide(<magneticraft:feeding_trough>);
mods.jei.JEI.removeAndHide(<magneticraft:thermopile>);
mods.jei.JEI.removeAndHide(<magneticraft:wind_turbine>);

//mods.jei.JEI.removeAndHide(<magneticraft:sluice_box>);

//temp
mods.jei.JEI.removeAndHide(<magneticraft:gasification_unit>);

//Wrenches
mods.magneticraft.Wrench.addWrench(<appliedenergistics2:certus_quartz_wrench>);
mods.magneticraft.Wrench.addWrench(<appliedenergistics2:nether_quartz_wrench>);
mods.magneticraft.Wrench.addWrench(<forestry:wrench>);
mods.magneticraft.Wrench.addWrench(<ic2:wrench>);
mods.magneticraft.Wrench.addWrench(<ic2:electric_wrench>);
//mods.magneticraft.Wrench.addWrench(<matteroverdrive:tritanium_wrench>);
mods.magneticraft.Wrench.addWrench(<quacklib:wrench>);
mods.magneticraft.Wrench.addWrench(<rockhounding_core:mod_wrench>);
mods.magneticraft.Wrench.addWrench(<immersiveengineering:tool>);
mods.magneticraft.Wrench.addWrench(<thermalfoundation:wrench>);
mods.magneticraft.Wrench.addWrench(<tow:wrench>);

//Crushing table
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:iron_ore>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:gold_ore>);
mods.magneticraft.CrushingTable.removeRecipe(<ic2:resource:1>);
mods.magneticraft.CrushingTable.removeRecipe(<ic2:resource:2>);
mods.magneticraft.CrushingTable.removeRecipe(<ic2:resource:3>);
//mods.magneticraft.CrushingTable.removeRecipe(<ic2:resource:4>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ores:1>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ores:2>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ores:3>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ores:4>);
mods.magneticraft.CrushingTable.removeRecipe(<libvulpes:ore0:9>);
mods.magneticraft.CrushingTable.removeRecipe(<immersiveengineering:ore:4>);
mods.magneticraft.CrushingTable.removeRecipe(<railcraft:ore_metal:5>);
mods.magneticraft.CrushingTable.removeRecipe(<thermalfoundation:ore:8>);

mods.magneticraft.CrushingTable.removeRecipe(<minecraft:iron_ingot>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:gold_ingot>);
mods.magneticraft.CrushingTable.removeRecipe(<thermalfoundation:material:128>);
mods.magneticraft.CrushingTable.removeRecipe(<thermalfoundation:material:131>);
mods.magneticraft.CrushingTable.removeRecipe(<thermalfoundation:material:160>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ingots:5>);


mods.magneticraft.CrushingTable.addRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:32>, true);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:gold_ingot>, <thermalfoundation:material:33>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:320>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:129>, <thermalfoundation:material:321>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:130>, <thermalfoundation:material:322>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:131>, <thermalfoundation:material:323>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:160>, <thermalfoundation:material:352>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:161>, <thermalfoundation:material:353>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:163>, <thermalfoundation:material:355>, true);
mods.magneticraft.CrushingTable.addRecipe(<betterwithmods:material:14>, <betterwithmods:material:51>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot:9>, <railcraft:plate:11>, true);

mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:scrap2>, <contenttweaker:scrapmetal1>, false);
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:scrap6>, <contenttweaker:scrapmetal1>, false);
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:scrap7>, <contenttweaker:scrapmetal1>, false);
mods.magneticraft.CrushingTable.addRecipe(<ic2:crafting:10>, <contenttweaker:scrapmetal3>, false);
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:scrap9>, <contenttweaker:scrapmetal6>, false);
mods.magneticraft.CrushingTable.addRecipe(<primal:salt_dust_fire>, <betterwithmods:material:26>, false);

mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:355>, <ic2:casing>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:320>, <ic2:casing:1>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:33>, <ic2:casing:2>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:32>, <ic2:casing:3>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:323>, <ic2:casing:4>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:352>, <ic2:casing:5>, true);
mods.magneticraft.CrushingTable.addRecipe(<thermalfoundation:material:321>, <ic2:casing:6>, true);

//Sluice box
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:1>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:2>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:3>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:4>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:5>);
//mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:6>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:7>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:8>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:9>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:10>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:11>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:12>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:13>);
mods.magneticraft.SluiceBox.removeRecipe(<magneticraft:rocky_chunks:14>);

furnace.remove(<magneticraft:ingots:5>);

mods.magneticraft.OilHeater.removeRecipe(<liquid:water>);

//refining
