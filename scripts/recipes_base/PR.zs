#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <projectred-core:resource_item:600>
];

for item in removed {
  functions.removeItem(item);
}

//mods.jei.JEI.removeAndHide(<projectred-expansion:jetpack>);
//mods.jei.JEI.removeAndHide(<projectred-transportation:pipe>);
//mods.jei.JEI.removeAndHide(<projectred-transportation:pipe:1>);
//mods.jei.JEI.removeAndHide(<projectred-transportation:pipe:2>);
//mods.jei.JEI.removeAndHide(<projectred-transportation:pipe:3>);
//mods.jei.JEI.removeAndHide(<projectred-transportation:pipe:4>);
//mods.jei.JEI.removeAndHide(<projectred-transportation:pipe:32>);
//mods.jei.JEI.removeAndHide(<projectred-transportation:pipe:33>);
//mods.jei.JEI.removeAndHide(<projectred-transportation:routing_chip:*>);

furnace.remove(<projectred-core:resource_item:103>);
