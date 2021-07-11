#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <pneumaticcraft:spawner_agitator>,
  <pneumaticcraft:pneumatic_dynamo>,
  <pneumaticcraft:pneumatic_generator>,
  <pneumaticcraft:aerial_interface>
];

for item in removed {
  functions.removeItem(item);
}

//mods.pneumaticcraft.refinery.addRecipe(203, <liquid:water> * 10, [<liquid:lava> * 2, <liquid:lpg> * 2]);
//mods.pneumaticcraft.refinery.addRecipe(173, <liquid:water> * 10, [<liquid:ammonia> * 2, <liquid:ammonia> * 2]);
//mods.pneumaticcraft.refinery.addRecipe(1730153, <liquid:water> * 10, [<liquid:lava> * 2, <liquid:lava> * 2]);
