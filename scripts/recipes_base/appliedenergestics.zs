#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <appliedenergistics2:vibration_chamber>,
  <appliedenergistics2:material:40>
];

for item in removed {
  functions.removeItem(item);
}

furnace.remove(<appliedenergistics2:material:5>);

recipes.remove(<appliedenergistics2:grindstone>);
recipes.addShaped(<appliedenergistics2:grindstone>, [[<ore:stone>, <contenttweaker:scrap7>, <ore:stone>], [<minecraft:flint>, <ore:stone>, <minecraft:flint>], [<ore:cobblestone>, <minecraft:flint>, <ore:cobblestone>]]);

//Primal quern to hand crank
mods.appliedenergistics2.Grinder.removeRecipe(<minecraft:wheat>);
mods.appliedenergistics2.Grinder.removeRecipe(<appliedenergistics2:quartz_ore>);
mods.appliedenergistics2.Grinder.removeRecipe(<appliedenergistics2:charged_quartz_ore>);
mods.appliedenergistics2.Grinder.removeRecipe(<appliedenergistics2:material>);
mods.appliedenergistics2.Grinder.removeRecipe(<appliedenergistics2:material:7>);

mods.appliedenergistics2.Grinder.addRecipe(<betterwithmods:raw_pastry:3>, <minecraft:wheat>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:sugar>*2, <minecraft:reeds>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<primal:urushi_ground>, <minecraft:tallgrass:1>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<primal:tannin_ground>, <primal:bark_oak>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:tannin_ground>, <primal:bark_spruce>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:tannin_ground>, <primal:bark_birch>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:tannin_ground>, <primal:bark_jungle>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:tannin_ground>, <primal:bark_acacia>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:tannin_ground>, <primal:bark_bigoak>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:tannin_ground>, <primal:bark_ironwood>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:tannin_ground>, <primal:bark_yew>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:tannin_ground>, <primal:bark_corypha>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:inferum_ground>, <primal:nether_vine>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:corn_ground>, <primal:corn_seeds>, 5);
mods.appliedenergistics2.Grinder.addRecipe(<primal:plant_fiber_pulp>, <primal:plant_fiber>*4, 5);

mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:11>*2, <minecraft:yellow_flower>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:1>*2, <minecraft:red_flower>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:12>*2, <minecraft:red_flower:1>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:13>*2, <minecraft:red_flower:2>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:7>*2, <minecraft:red_flower:3>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:1>*2, <minecraft:red_flower:4>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:14>*2, <minecraft:red_flower:5>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:7>*2, <minecraft:red_flower:6>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:9>*2, <minecraft:red_flower:7>, 4);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:7>*2, <minecraft:red_flower:8>, 4);
