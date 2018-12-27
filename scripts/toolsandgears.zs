import crafttweaker.item.IItemStack;

//Batch removal
static removedtools as IItemStack[] = [
  <primal:bone_pickaxe>,
  <primal:bone_shovel>,
  <primal:bone_hoe>,
  <primal:opal_pickaxe>,
  <primal:opal_shovel>,
  <primal:opal_hoe>,
  <primal:opal_axe>,
  <primal:obsidian_pickaxe>,
  <primal:obsidian_shovel>,
  <primal:obsidian_hoe>,
  <primal:obsidian_axe>,
  <primal:quartz_pickaxe>,
  <primal:quartz_shovel>,
  <primal:quartz_hoe>,
  <primal:quartz_axe>,
  <primal:quartz_shears>,
  <primal:diamond_pickaxe>,
  <primal:diamond_shovel>,
  <primal:diamond_hoe>,
  <primal:diamond_axe>,
  <primal:emerald_pickaxe>,
  <primal:emerald_shovel>,
  <primal:emerald_hoe>,
  <primal:emerald_axe>,
  <primal:sword_crude_bone>,
  <primal:sword_crude_wootz>,
  <primal:sword_crude_quartz>,
  <primal:quartz_workblade>,
  <primal:opal_workblade>,
  <primal:emerald_workblade>,
  <primal:armor_obsidian_head>,
  <primal:armor_obsidian_body>,
  <primal:armor_obsidian_legs>,
  <primal:armor_obsidian_feet>,
  
  <ic2:bronze_pickaxe>,
  <ic2:bronze_axe>,
  <ic2:bronze_hoe>,
  <ic2:bronze_shovel>,
  <ic2:bronze_sword>,
  <ic2:bronze_boots>,
  <ic2:bronze_chestplate>,
  <ic2:bronze_helmet>,
  <ic2:bronze_leggings>,
  
  <forestry:bronze_pickaxe>,
  <forestry:bronze_shovel>,
  
  <immersiveengineering:pickaxe_steel>,
  <immersiveengineering:shovel_steel>,
  <immersiveengineering:axe_steel>,
  <immersiveengineering:sword_steel>,

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
  <iceandfire:dragonbone_hoe>,
];


for item in removedtools {
	mods.jei.JEI.removeAndHide(item);
}

mods.forestry.Carpenter.removeRecipe(<forestry:kit_pickaxe>);
mods.forestry.Carpenter.removeRecipe(<forestry:kit_shovel>);
