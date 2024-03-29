#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [

];

for item in removed {
  functions.removeItem(item);
}



recipes.remove(<railcraft:circuit>);
recipes.remove(<railcraft:circuit:1>);
recipes.remove(<railcraft:circuit:2>);
recipes.remove(<railcraft:circuit:3>);

recipes.addShapeless(<railcraft:circuit>, [<ore:dyeRed>, <ic2:crafting:1>]);
recipes.addShapeless(<railcraft:circuit:1>, [<ore:dyeGreen>, <ic2:crafting:1>]);
recipes.addShapeless(<railcraft:circuit:2>, [<ore:dyeYellow>, <ic2:crafting:1>]);
recipes.addShapeless(<railcraft:circuit:3>, [<ore:dyeBlue>, <ic2:crafting:1>]);


mods.railcraft.RockCrusher.removeRecipe(<minecraft:coal:1>);
mods.railcraft.RockCrusher.removeRecipe(<rockhounding_chemistry:misc_blocks_a:11>);
mods.railcraft.RockCrusher.removeRecipe(<minecraft:coal_block>);
mods.railcraft.RockCrusher.removeRecipe(<minecraft:coal>);
mods.railcraft.RockCrusher.removeRecipe(<minecraft:gravel>);
mods.railcraft.RockCrusher.removeRecipe(<minecraft:coal_ore>);
