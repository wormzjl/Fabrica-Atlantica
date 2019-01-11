mods.jei.JEI.removeAndHide(<magneticraft:feeding_trough>);
mods.jei.JEI.removeAndHide(<magneticraft:thermopile>);
mods.jei.JEI.removeAndHide(<magneticraft:wind_turbine>);
mods.jei.JEI.removeAndHide(<magneticraft:box>);

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
//mods.magneticraft.CrushingTable.removeRecipe(<railcraft:ore_metal:5>);

mods.magneticraft.CrushingTable.removeRecipe(<minecraft:iron_ingot>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:gold_ingot>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:ingots:5>);
mods.magneticraft.CrushingTable.removeRecipe(<ic2:ingot:2>);
mods.magneticraft.CrushingTable.removeRecipe(<ic2:ingot:3>);
mods.magneticraft.CrushingTable.removeRecipe(<ic2:ingot:5>);


mods.magneticraft.CrushingTable.addRecipe(<minecraft:iron_ingot>, <materialpart:iron:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<minecraft:gold_ingot>, <materialpart:gold:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot>, <materialpart:steel:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot:1>, <materialpart:copper:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot:2>, <materialpart:tin:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot:3>, <materialpart:lead:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot:4>, <materialpart:silver:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot:5>, <materialpart:bronze:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot:6>, <materialpart:nickel:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot:7>, <materialpart:invar:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot:8>, <materialpart:zinc:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<railcraft:ingot:9>, <materialpart:brass:plate>, true);
mods.magneticraft.CrushingTable.addRecipe(<betterwithmods:material:14>, <betterwithmods:material:51>, true);

mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:scrap2>, <materialpart:Iron:scrapmetal>, false);
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:scrap6>, <materialpart:Iron:scrapmetal>, false);
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:scrap7>, <materialpart:Iron:scrapmetal>, false);
mods.magneticraft.CrushingTable.addRecipe(<ic2:crafting:10>, <materialpart:Tin:scrapmetal>, false);
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:scrap9>, <materialpart:Silver:scrapmetal>, false);
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:scrap3>, <materialpart:Copper:scrapmetal>, false);
mods.magneticraft.CrushingTable.addRecipe(<primal:salt_dust_fire>, <betterwithmods:material:26>, false);

mods.magneticraft.CrushingTable.addRecipe(<materialpart:bronze:plate>, <ic2:casing>, true);
mods.magneticraft.CrushingTable.addRecipe(<materialpart:copper:plate>, <ic2:casing:1>, true);
mods.magneticraft.CrushingTable.addRecipe(<materialpart:gold:plate>, <ic2:casing:2>, true);
mods.magneticraft.CrushingTable.addRecipe(<materialpart:iron:plate>, <ic2:casing:3>, true);
mods.magneticraft.CrushingTable.addRecipe(<materialpart:lead:plate>, <ic2:casing:4>, true);
mods.magneticraft.CrushingTable.addRecipe(<materialpart:steel:plate>, <ic2:casing:5>, true);
mods.magneticraft.CrushingTable.addRecipe(<materialpart:tin:plate>, <ic2:casing:6>, true);

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
