#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <advancedrocketry:solargenerator>,
  <libvulpes:coalgenerator>
];

for item in removed {
  functions.removeItem(item);
}

recipes.remove(<libvulpes:productrod:*>);
