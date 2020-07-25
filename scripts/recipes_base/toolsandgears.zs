import crafttweaker.item.IItemStack;
import scripts.functions;

//Batch removal
static removed as IItemStack[] = [
  <iceandfire:silver_pickaxe>,
  <iceandfire:silver_shovel>,
  <iceandfire:silver_axe>,
  <iceandfire:silver_hoe>,
  <iceandfire:armor_silver_metal_helmet>,
  <iceandfire:armor_silver_metal_chestplate>,
  <iceandfire:armor_silver_metal_leggings>,
  <iceandfire:armor_silver_metal_boots>,

  <iceandfire:dragonbone_pickaxe>,
  <iceandfire:dragonbone_shovel>,
  <iceandfire:dragonbone_axe>,
  <iceandfire:dragonbone_hoe>
];


for item in removed {
  functions.removeItem(item);
}
