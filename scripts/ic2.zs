//mods.jei.JEI.removeAndHide(<ic2:te:22>);
//mods.jei.JEI.removeAndHide(<ic2:te:24>);

mods.jei.JEI.removeAndHide(<ic2:ingot:8>);

mods.jei.JEI.removeAndHide(<ic2:te:23>);
mods.jei.JEI.removeAndHide(<ic2:te:25>);
mods.jei.JEI.removeAndHide(<ic2:te:26>);
mods.jei.JEI.removeAndHide(<ic2:resource:14>);

mods.jei.JEI.removeAndHide(<ic2:te:58>);
mods.jei.JEI.removeAndHide(<ic2:te:87>);


recipes.remove(<ic2:resource:12>);
recipes.addShaped(<ic2:resource:12>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateSteel>, null, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<ic2:te:3>);
recipes.addShaped(<ic2:te:3>, [[<ic2:re_battery:*>], [<ic2:resource:12>], [<minecraft:furnace>]]);

