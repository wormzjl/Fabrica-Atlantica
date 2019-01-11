//Charcoal pit stuff
mods.charcoalpit.addAlloyRecipe(<minecraft:iron_nugget>, 8, true, false, [<materialpart:iron:scrapmetal>*2]);
mods.charcoalpit.addAlloyRecipe(<minecraft:gold_nugget>, 4, false, false, [<materialpart:gold:scrapmetal>]);
mods.charcoalpit.addAlloyRecipe(<railcraft:nugget:1>, 4, false, false, [<materialpart:copper:scrapmetal>]);
mods.charcoalpit.addAlloyRecipe(<railcraft:nugget:2>, 4, false, false, [<materialpart:tin:scrapmetal>]);
mods.charcoalpit.addAlloyRecipe(<railcraft:nugget:3>, 4, false, false, [<materialpart:lead:scrapmetal>]);
mods.charcoalpit.addAlloyRecipe(<railcraft:nugget:4>, 4, false, false, [<materialpart:silver:scrapmetal>]);

mods.charcoalpit.addAlloyRecipe(<railcraft:nugget:5>, 16, false, false, [<materialpart:copper:scrapmetal>,<materialpart:copper:scrapmetal>,<materialpart:copper:scrapmetal>,<materialpart:tin:scrapmetal>]);

//Aluminium modification
mods.jei.JEI.removeAndHide(<rockhounding_chemistry:metal_items:3>);
mods.jei.JEI.removeAndHide(<magneticraft:ingots:7>);
mods.jei.JEI.removeAndHide(<libvulpes:productingot:9>);
mods.jei.JEI.removeAndHide(<primal:aluminum_ingot>);
mods.jei.JEI.removeAndHide(<nuclearcraft:ingot:12>);

furnace.remove(<rockhounding_chemistry:metal_items:3>);
furnace.remove(<magneticraft:ingots:7>);
furnace.remove(<immersiveengineering:metal:1>);
furnace.remove(<primal:aluminum_ingot>);
furnace.remove(<nuclearcraft:ingot:12>);
furnace.remove(<libvulpes:productingot:9>);

mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:1>, <ore:dustAluminum>, null, 300, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<immersiveengineering:metal:21>*3, <contenttweaker:alumina>, null, 500, 512);

mods.industrialwires.MarxGenerator.addRecipe(<contenttweaker:alumina_block>, 2.5, 9, <immersiveengineering:metal:10>);


