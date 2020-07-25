import crafttweaker.item.IItemStack;
import scripts.functions;

//Recipe tweaks
furnace.remove(<magneticraft:ingots:5>);

static removed as IItemStack[] = [
  <magneticraft:feeding_trough>,
  <magneticraft:thermopile>,
  <magneticraft:wind_turbine>,
  <magneticraft:box>,
  <magneticraft:sluice_box>,
  <magneticraft:gasification_unit>,
  <magneticraft:steam_boiler>,
  <magneticraft:crushing_table>,
  <magneticraft:electric_drill>,
  <magneticraft:electric_chainsaw>

];

for item in removed {
  functions.removeItem(item);
}

recipes.remove(<magneticraft:electric_piston>);

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

mods.magneticraft.CrushingTable.removeRecipe(<minecraft:iron_block>);
mods.magneticraft.CrushingTable.removeRecipe(<minecraft:gold_block>);
mods.magneticraft.CrushingTable.removeRecipe(<railcraft:metal>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:storage_blocks:1>);
mods.magneticraft.CrushingTable.removeRecipe(<magneticraft:storage_blocks:3>);
mods.magneticraft.CrushingTable.removeRecipe(<ic2:ingot:5>);


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
