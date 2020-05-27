import crafttweaker.item.IItemStack;

//Recipe tweaks


static removed as IItemStack[] = [
  <opencomputers:upgrade:4>
];

for item in removed {
	mods.jei.JEI.removeAndHide(item);
}
