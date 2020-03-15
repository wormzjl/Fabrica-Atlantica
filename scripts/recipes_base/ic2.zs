import crafttweaker.item.IItemStack;

//mods.jei.JEI.removeAndHide(<ic2:te:22>);
//mods.jei.JEI.removeAndHide(<ic2:te:24>);


static removed as IItemStack[] = [
  <ic2:bronze_pickaxe>,
  <ic2:bronze_axe>,
  <ic2:bronze_hoe>,
  <ic2:bronze_shovel>,
  <ic2:bronze_sword>,
  <ic2:bronze_boots>,
  <ic2:bronze_chestplate>,
  <ic2:bronze_helmet>,
  <ic2:bronze_leggings>,
  <ic2:ingot:8>,
  <ic2:resource:14>,
  <ic2:refractory_bricks>,
  <ic2:tool_box:*>,
  <ic2:te:17>,
  <ic2:te:23>,
  <ic2:te:25>,
  <ic2:te:26>,
  <ic2:te:58>,
  <ic2:te:87>,
  <ic2:te:100>,
  <ic2:te:101>,
  <ic2:te:102>,
  <ic2:te:111>,
  <ic2:te:112>,
  <ic2:te:113>,
  <ic2:te:114>,
  <ic2:te:115>,
  <ic2:te:131>,
  <ic2:te:132>,
  <ic2:te:133>,
  <ic2:te:134>
];

for item in removed {
	mods.jei.JEI.removeAndHide(item);
}

//Not working
//recipes.replaceAllOccurences(<ic2:casing:3>, <ic2:casing:5>);
recipes.remove(<ic2:re_battery:*>);
recipes.addShaped(<ic2:re_battery:26>, [[null, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte}), null], [<ic2:casing:6>, <minecraft:redstone>, <ic2:casing:6>], [<ic2:casing:6>, <minecraft:redstone>, <ic2:casing:6>]]);


recipes.remove(<ic2:resource:12>);
recipes.addShaped(<ic2:resource:12>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateSteel>, null, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<ic2:te:3>);
recipes.addShaped(<ic2:te:3>, [[<ic2:re_battery:*>], [<ic2:resource:12>], [<minecraft:furnace>]]);

recipes.remove(<ic2:te:46>);
recipes.addShaped(<ic2:te:46>, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, null, <ore:plateSteel>], [<ore:plateSteel>, <minecraft:furnace>, <ore:plateSteel>]]);


//Consider moving to RC rolling machine after
recipes.addShaped(<ic2:ingot>*3, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:platebronze>, <ore:platebronze>, <ore:platebronze>], [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
recipes.addShaped(<ic2:ingot>*4, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
recipes.addShaped(<ic2:ingot>*6, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
recipes.addShaped(<ic2:ingot>*8, [[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateAluminium>, <ore:plateAluminium>, <ore:plateAluminium>]]);
recipes.addShaped(<ic2:ingot>*10, [[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>]]);
