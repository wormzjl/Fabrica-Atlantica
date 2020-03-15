#priority 1000

import crafttweaker.item.IItemStack;

//Batch removal
static removedtools as IItemStack[] = [
  <primal:bone_pickaxe>,
  <primal:bone_shovel>,
  <primal:bone_hoe>,
  <primal:bone_hatchet>,
  <primal:bone_shears>,
  <primal:bone_saw>,
  <primal:opal_pickaxe>,
  <primal:opal_shovel>,
  <primal:opal_hoe>,
  <primal:opal_axe>,
  <primal:opal_hatchet>,
  <primal:obsidian_pickaxe>,
  <primal:obsidian_shovel>,
  <primal:obsidian_hoe>,
  <primal:obsidian_axe>,
  <primal:quartz_pickaxe>,
  <primal:quartz_shovel>,
  <primal:quartz_hoe>,
  <primal:quartz_axe>,
  <primal:quartz_hatchet>,
  <primal:quartz_shears>,
  <primal:quartz_saw>,
  <primal:diamond_pickaxe>,
  <primal:diamond_shovel>,
  <primal:diamond_hoe>,
  <primal:diamond_axe>,
  <primal:diamond_hatchet>,
  <primal:emerald_pickaxe>,
  <primal:emerald_shovel>,
  <primal:emerald_hoe>,
  <primal:emerald_axe>,
  <primal:emerald_hatchet>,
  <primal:emerald_saw>,
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

  <pyrotech:crude_hoe>,
  <pyrotech:crude_pickaxe>,
  <pyrotech:crude_shovel>,
  <pyrotech:bone_axe>,
  <pyrotech:bone_hoe>,
  <pyrotech:bone_pickaxe>,
  <pyrotech:bone_shovel>,
  <pyrotech:bone_sword>,
  <pyrotech:flint_axe>,
  <pyrotech:flint_hoe>,
  <pyrotech:flint_pickaxe>,
  <pyrotech:flint_shovel>,
  <pyrotech:flint_sword>,
  <pyrotech:obsidian_axe>,
  <pyrotech:obsidian_hoe>,
  <pyrotech:obsidian_pickaxe>,
  <pyrotech:obsidian_shovel>,
  <pyrotech:obsidian_sword>,
  <pyrotech:unfired_clay_shears>,
  <pyrotech:clay_shears>,
  <pyrotech:stone_shears>,
  <pyrotech:bone_shears>,
  <pyrotech:flint_shears>,
  <pyrotech:gold_shears>,
  <pyrotech:diamond_shears>,
  <pyrotech:obsidian_shears>,
  <pyrotech:stone_hammer>,
  <pyrotech:bone_hammer>,
  <pyrotech:flint_hammer>,
  <pyrotech:iron_hammer>,
  <pyrotech:gold_hammer>,
  <pyrotech:diamond_hammer>,
  <pyrotech:obsidian_hammer>,

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

//Tools crafting
recipes.remove(<pyrotech:crude_axe>);
recipes.addShaped(<pyrotech:crude_axe>, [[<primal:flint_knapp>, <primal:flint_knapp>], [<ore:stickWood>, <pyrotech:material:12>]]);


//Early Game Tool Material unification
recipes.replaceAllOccurences(<ore:fiberPlant>, <pyrotech:material:12>);
recipes.replaceAllOccurences(<ore:cordageGeneral>, <pyrotech:material:14>);
recipes.remove(<primal:plant_fiber>);
recipes.remove(<primal:plant_cordage>);
