#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <appliedenergistics2:vibration_chamber>,
  <appliedenergistics2:grindstone>,
  <appliedenergistics2:crank>,
  <appliedenergistics2:material:40>
];

for item in removed {
  functions.removeItem(item);
}
