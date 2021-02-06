#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

//Recipe tweaks


static removed as IItemStack[] = [
  <opencomputers:upgrade:4>
];

for item in removed {
  functions.removeItem(item);
}
