//Charcoal pit stuff
mods.charcoalpit.addAlloyRecipe(<minecraft:iron_nugget>, 8, true, false, [<contenttweaker:scrapmetal1>*2, <primal:carbonate_slack>]);
mods.charcoalpit.addAlloyRecipe(<minecraft:gold_nugget>, 4, false, false, [<contenttweaker:scrapmetal4>]);
mods.charcoalpit.addAlloyRecipe(<thermalfoundation:material:195>, 4, false, false, [<contenttweaker:scrapmetal5>]);
mods.charcoalpit.addAlloyRecipe(<thermalfoundation:material:192>, 4, false, false, [<contenttweaker:scrapmetal2>]);
mods.charcoalpit.addAlloyRecipe(<thermalfoundation:material:193>, 4, false, false, [<contenttweaker:scrapmetal3>]);
mods.charcoalpit.addAlloyRecipe(<thermalfoundation:material:194>, 4, false, false, [<contenttweaker:scrapmetal6>]);

mods.charcoalpit.addAlloyRecipe(<thermalfoundation:material:227>, 16, false, false, [<contenttweaker:scrapmetal3>,<contenttweaker:scrapmetal3>,<contenttweaker:scrapmetal3>,<contenttweaker:scrapmetal2>]);

//Aluminium modification
mods.jei.JEI.hide(<microblockcbe:microblock:*>);

mods.jei.JEI.removeAndHide(<magneticraft:ingots:7>);
mods.jei.JEI.removeAndHide(<rockhounding_chemistry:metal_items:3>);
mods.jei.JEI.removeAndHide(<libvulpes:productingot:9>);

//furnace.remove(<thermalfoundation:material:132>);
//furnace.remove(<thermalfoundation:material:196>);
//furnace.remove(<thermalfoundation:material:132>);
furnace.remove(<rockhounding_chemistry:metal_items:3>);
furnace.remove(<magneticraft:ingots:7>);
furnace.remove(<immersiveengineering:metal:1>);
furnace.remove(<primal:aluminum_ingot>);
furnace.remove(<thermalfoundation:material:196>);

mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:132>, <ore:dustAluminum>, null, 300, 512);
mods.immersiveengineering.ArcFurnace.addRecipe(<thermalfoundation:material:196>*3, <contenttweaker:alumina>, null, 500, 512);

mods.industrialwires.MarxGenerator.addRecipe(<contenttweaker:alumina_block>, 2.5, 9, <thermalfoundation:material:68>);


