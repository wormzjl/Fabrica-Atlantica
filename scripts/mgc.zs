//Recipe tweaks

furnace.remove(<magneticraft:ingots:5>);

mods.jei.JEI.removeAndHide(<magneticraft:feeding_trough>);
mods.jei.JEI.removeAndHide(<magneticraft:thermopile>);
mods.jei.JEI.removeAndHide(<magneticraft:wind_turbine>);
mods.jei.JEI.removeAndHide(<magneticraft:box>);
mods.jei.JEI.removeAndHide(<magneticraft:sluice_box>);
mods.jei.JEI.removeAndHide(<magneticraft:gasification_unit>);
mods.jei.JEI.removeAndHide(<magneticraft:steam_boiler>);

recipes.remove(<magneticraft:solar_panel>);
recipes.remove(<magneticraft:shelving_unit>);
recipes.remove(<magneticraft:steam_engine>);
recipes.remove(<magneticraft:grinder>);
recipes.remove(<magneticraft:sieve>);
recipes.remove(<magneticraft:solar_tower>);
recipes.remove(<magneticraft:solar_mirror>);
recipes.remove(<magneticraft:container>);
recipes.remove(<magneticraft:pumpjack>);
recipes.remove(<magneticraft:hydraulic_press>);
recipes.remove(<magneticraft:oil_heater>);
recipes.remove(<magneticraft:refinery>);
recipes.remove(<magneticraft:big_combustion_chamber>);

recipes.remove(<magneticraft:iron_gear>);
recipes.remove(<magneticraft:steel_gear>);
recipes.remove(<magneticraft:tungsten_gear>);

recipes.remove(<magneticraft:multiblock_parts:*>);
recipes.remove(<magneticraft:multiblock_column>);


//recipes.remove(<magneticraft:multiblock_parts>);
//recipes.addShaped(<magneticraft:multiblock_parts> * 4, [[<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:lightPlateIron>], [<ore:ingotIron>, <magneticraft:crafting:2>, <ore:ingotIron>], [<ore:lightPlateLead>, <ore:lightPlateLead>, <ore:lightPlateLead>]]);

recipes.remove(<magneticraft:combustion_chamber>);
recipes.addShaped(<magneticraft:combustion_chamber>, [[<ore:ingotBrick>, <ore:plateSteel>, <ore:ingotBrick>], [<ore:ingotBrick>, null, <ore:plateSteel>], [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick>]]);

recipes.remove(<magneticraft:combustion_chamber>);
recipes.addShaped(<magneticraft:rf_heater>, [[<ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>], [<ore:plateSteel>, <magneticraft:multiblock_parts:2>, <ore:plateSteel>], [<ore:dustRedstone>, <ore:ingotGold>, <ore:dustRedstone>]]);

recipes.remove(<magneticraft:electric_heater>);
recipes.addShaped(<magneticraft:electric_heater>, [[<ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>], [<ore:plateSteel>, <magneticraft:multiblock_parts:2>, <ore:plateSteel>], [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]]);

recipes.remove(<magneticraft:tube_light>);
recipes.addShaped(<magneticraft:tube_light>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:nuggetIron>, <ore:dustGlowstone>, <ore:nuggetIron>]]);


recipes.remove(<magneticraft:iron_pipe>);
recipes.addShaped(<magneticraft:iron_pipe> * 8, [[<ore:plateSteel>, null, <ore:plateSteel>], [<ore:plateSteel>, <ore:blockGlass>, <ore:plateSteel>], [<ore:plateSteel>, null, <ore:plateSteel>]]);

recipes.remove(<magneticraft:conveyor_belt>);
recipes.addShaped(<magneticraft:conveyor_belt> * 8, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ore:ingotIron>, <magneticraft:multiblock_parts>, <ore:ingotIron>], [<ore:ingotIron>, null, <ore:ingotIron>]]);

recipes.remove(<magneticraft:heat_pipe>);
recipes.addShaped(<magneticraft:heat_pipe> * 5, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, <ore:ingotCopper>, <ore:plateSteel>], [null, <ore:plateSteel>, null]]);

recipes.remove(<magneticraft:insulated_heat_pipe>);
recipes.addShaped(<magneticraft:insulated_heat_pipe> * 5, [[<pneumaticcraft:plastic:15>, <magneticraft:heat_pipe>, <pneumaticcraft:plastic:15>], [<magneticraft:heat_pipe>, <magneticraft:heat_pipe>, <magneticraft:heat_pipe>], [<pneumaticcraft:plastic:15>, <magneticraft:heat_pipe>, <pneumaticcraft:plastic:15>]]);
recipes.addShaped(<magneticraft:insulated_heat_pipe> * 5, [[<pneumaticcraft:plastic:15>, <ore:plateSteel>, <pneumaticcraft:plastic:15>], [<ore:plateSteel>, <ore:ingotCopper>, <ore:plateSteel>], [<pneumaticcraft:plastic:15>, <ore:plateSteel>, <pneumaticcraft:plastic:15>]]);

recipes.remove(<magneticraft:battery>);
recipes.addShaped(<magneticraft:battery>, [[<magneticraft:battery_item_low:*>, <magneticraft:battery_item_low:*>, <magneticraft:battery_item_low:*>], [<ore:plateSteel>, <magneticraft:multiblock_parts:2>, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<magneticraft:wrench>);
recipes.addShaped(<magneticraft:wrench>, [[null, <ore:plateIron>, <ore:ingotIron>], [<ore:dustRedstone>, <ore:ingotIron>, null], [<ore:ingotIron>, <ore:dustRedstone>, null]]);

recipes.remove(<magneticraft:water_generator>);
recipes.addShaped(<magneticraft:water_generator>, [[<ore:denseplateTitanium>, <ore:blockGlass>, <ore:denseplateTitanium>], [<ore:blockGlass>, <minecraft:water_bucket>, <ore:blockGlass>], [<ore:denseplateTitanium>, <ore:blockGlass>, <ore:denseplateTitanium>]]);

recipes.remove(<magneticraft:heat_sink>);
recipes.addShaped(<magneticraft:heat_sink>, [[<ore:stickSteel>, <ore:stickSteel>, <ore:stickSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<magneticraft:electric_pole_transformer>);
recipes.addShaped(<magneticraft:electric_pole_transformer>, [[null, <magneticraft:connector>, null], [<ore:plateLead>, <immersiveengineering:metal_decoration0>, <ore:plateLead>], [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]]);

recipes.remove(<magneticraft:electric_furnace>);
recipes.addShaped(<magneticraft:electric_furnace>, [[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>], [<minecraft:brick_block>, null, <minecraft:brick_block>], [<minecraft:brick_block>, <ic2:te:44>, <minecraft:brick_block>]]);

recipes.remove(<magneticraft:copper_coil>);
recipes.addShapeless(<magneticraft:copper_coil>,[<immersiveengineering:wirecoil>]);

recipes.remove(<magneticraft:connector>);
recipes.addShapeless(<magneticraft:connector>,[<immersiveengineering:connector>]);


//Wrenches
mods.magneticraft.Wrench.addWrench(<appliedenergistics2:certus_quartz_wrench>);
mods.magneticraft.Wrench.addWrench(<appliedenergistics2:nether_quartz_wrench>);
mods.magneticraft.Wrench.addWrench(<forestry:wrench>);
mods.magneticraft.Wrench.addWrench(<ic2:wrench>);
mods.magneticraft.Wrench.addWrench(<ic2:electric_wrench>);
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


//refining
mods.magneticraft.GasificationUnit.removeRecipe(<minecraft:coal>);
mods.magneticraft.OilHeater.removeRecipe(<liquid:oil>);
mods.magneticraft.OilHeater.removeRecipe(<liquid:water>);

mods.magneticraft.Refinery.removeRecipe(<liquid:hot_crude>);
mods.magneticraft.Refinery.removeRecipe(<liquid:heavy_oil>);
mods.magneticraft.Refinery.removeRecipe(<liquid:lpg>);
