import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <draconicevolution:generator>,
  <draconicevolution:grinder>
];

for item in removed {
  functions.removeItem(item);
}
