#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

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
  <ic2:resource:14>,
  <ic2:coke>,
  <ic2:refractory_bricks>,
  <ic2:tool_box:*>,
  <ic2:energy_pack:26>,
  <ic2:te:11>,
  <ic2:te:17>,
  <ic2:te:21>,
  <ic2:te:23>,
  <ic2:te:25>,
  <ic2:te:26>,
  <ic2:te:50>,
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
  <ic2:te:134>,
  <energycontrol:afsu>,
  <energycontrol:afb:*>,
  <energycontrol:afsu_upgrade_kit>
];

for item in removed {
  functions.removeItem(item);
}


furnace.remove(<ic2:ingot:8>);

//Not working
//recipes.replaceAllOccurences(<ic2:casing:3>, <ic2:casing:5>);
recipes.addShaped(<ic2:re_battery:26>, [[null, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte}), null], [<ic2:casing:6>, <minecraft:redstone>, <ic2:casing:6>], [<ic2:casing:6>, <minecraft:redstone>, <ic2:casing:6>]]);

recipes.addShaped(<ic2:resource:12>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:plateSteel>, null, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.addShaped(<ic2:te:3>, [[<ic2:re_battery:*>], [<ic2:resource:12>], [<minecraft:furnace>]]);

recipes.addShaped(<ic2:te:46>, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, null, <ore:plateSteel>], [<ore:plateSteel>, <minecraft:furnace>, <ore:plateSteel>]]);

recipes.addShaped(<ic2:te:47>, [[<ic2:dust:5>, <ic2:dust:5>, <ic2:dust:5>], [<ic2:crafting:6>, <ic2:resource:12>, <ic2:crafting:6>], [null, <ore:circuitBasic>, null]]);

recipes.addShaped(<ic2:te:55>, [[null, <ore:circuitBasic>, null], [<ic2:crafting:6>, <ic2:resource:12>, <ic2:crafting:6>], [<ic2:crafting:5>, <ic2:crafting:5>, <ic2:crafting:5>]]);




//Consider moving to RC rolling machine after
recipes.addShaped(<ic2:ingot>*3, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:platebronze>, <ore:platebronze>, <ore:platebronze>], [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
recipes.addShaped(<ic2:ingot>*4, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateTin>, <ore:plateTin>, <ore:plateTin>]]);
recipes.addShaped(<ic2:ingot>*6, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);
recipes.addShaped(<ic2:ingot>*8, [[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);
recipes.addShaped(<ic2:ingot>*10, [[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>], [<ore:platebrass>, <ore:platebrass>, <ore:platebrass>], [<ore:plateTungsten>, <ore:plateTungsten>, <ore:plateTungsten>]]);
