//mods.jei.JEI.removeAndHide(<ic2:te:22>);
//mods.jei.JEI.removeAndHide(<ic2:te:24>);

mods.jei.JEI.removeAndHide(<ic2:ingot:8>);

mods.jei.JEI.removeAndHide(<ic2:te:23>);
mods.jei.JEI.removeAndHide(<ic2:te:25>);
mods.jei.JEI.removeAndHide(<ic2:te:26>);
mods.jei.JEI.removeAndHide(<ic2:resource:14>);

mods.jei.JEI.removeAndHide(<ic2:te:58>);
mods.jei.JEI.removeAndHide(<ic2:te:87>);

mods.jei.JEI.removeAndHide(<ic2:tool_box:*>);

//Not working
//recipes.replaceAllOccurences(<ic2:casing:3>, <ic2:casing:5>);


recipes.remove(<ic2:resource:12>);
recipes.addShaped(<ic2:resource:12>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateSteel>, null, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<ic2:te:3>);
recipes.addShaped(<ic2:te:3>, [[<ic2:re_battery:*>], [<ic2:resource:12>], [<minecraft:furnace>]]);

//Consider moving to RC rolling machine after
recipes.addShaped(<ic2:ingot>*3, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:platebronze>, <ore:platebronze>, <ore:platebronze>], [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
recipes.addShaped(<ic2:ingot>*4, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
recipes.addShaped(<ic2:ingot>*6, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
recipes.addShaped(<ic2:ingot>*8, [[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
recipes.addShaped(<ic2:ingot>*10, [[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>]]);
