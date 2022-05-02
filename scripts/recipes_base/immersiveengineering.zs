#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <immersiveengineering:pickaxe_steel>,
  <immersiveengineering:shovel_steel>,
  <immersiveengineering:axe_steel>,
  <immersiveengineering:sword_steel>,
  <immersiveengineering:toolbox>,
  <immersiveengineering:wooden_device1>,
  <immersiveengineering:metal_device1:3>,
  <immersiveengineering:metal_device1:13>,
  <immersiveengineering:metal:29>,
  <immersivetech:stone_decoration>,
  <immersivetech:stone_decoration_slab>,
  <industrialwires:mechanical_converter>,
  <industrialwires:mechanical_converter:1>,
  <industrialwires:mechanical_converter:2>,
  <immersiveintelligence:motor_gear:*>
];

for item in removed {
  functions.removeItem(item);
}

//Recipes
mods.immersiveengineering.Fermenter.removeFluidRecipe(<liquid:ammonia>);

recipes.remove(<immersiveengineering:metal:29>);
recipes.remove(<immersiveengineering:metal:30>);
recipes.remove(<immersiveengineering:metal:31>);
recipes.remove(<immersiveengineering:metal:32>);
recipes.remove(<immersiveengineering:metal:33>);
recipes.remove(<immersiveengineering:metal:34>);
recipes.remove(<immersiveengineering:metal:35>);
recipes.remove(<immersiveengineering:metal:36>);
recipes.remove(<immersiveengineering:metal:37>);
recipes.remove(<immersiveengineering:metal:38>);
recipes.remove(<immersiveengineering:metal:39>);
recipes.remove(<immersiveengineering:metal:40>);


recipes.addShapeless(<minecraft:iron_nugget>*9,[<minecraft:iron_ingot>]);

recipes.removeShaped(<immersiveengineering:stone_decoration> * 3, [[<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>], [<ore:ingotBrick>, <ore:sandstone>, <ore:ingotBrick>], [<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>]]);
recipes.addShaped(<immersiveengineering:stone_decoration> * 6, [[<ore:plateSteel>, <ore:ingotBrick>, <ore:plateSteel>], [<ore:ingotBrick>, <ore:sandstone>, <ore:ingotBrick>], [<ore:plateSteel>, <ore:ingotBrick>, <ore:plateSteel>]]);

recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<ore:dustRedstone>, <immersiveengineering:metal_decoration0>, <ore:dustRedstone>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.removeShaped(<immersiveengineering:stone_decoration:1> * 3, [[<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>], [<ore:ingotBrick>, <minecraft:blaze_powder>, <ore:ingotBrick>], [<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 9, [[<betterwithmods:material:14>, <ore:ingotBrick>, <betterwithmods:material:14>], [<ore:ingotBrick>, <minecraft:blaze_powder>, <ore:ingotBrick>], [<betterwithmods:material:14>, <ore:ingotBrick>, <betterwithmods:material:14>]]);

recipes.remove(<immersiveengineering:metal_decoration0:5>);
recipes.addShaped(<immersiveengineering:metal_decoration0:5> * 2, [[<ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>], [<minecraft:piston>, <ore:plateElectrum>, <minecraft:piston>], [<ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>]]);

recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2, [[<ore:plateIron>, <immersiveengineering:material:8>, <ore:plateIron>], [<ore:plateCopper>, <ore:plateCopper>, <ore:plateCopper>], [<ore:plateIron>, <immersiveengineering:material:8>, <ore:plateIron>]]);

recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 2, [[<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>], [<ore:dustRedstone>, <ore:plateCopper>, <ore:dustRedstone>], [<ore:plateSteel>, <ore:dustRedstone>, <ore:plateSteel>]]);

recipes.remove(<immersiveengineering:metal_device0:5>);
recipes.addShaped(<immersiveengineering:metal_device0:5>*2, [[null, <ore:plateSteel>, null], [<ore:plateSteel>, <immersiveengineering:material:8>, <ore:plateSteel>], [<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>]]);

recipes.remove(<immersiveengineering:metal_device1:6>);
recipes.addShaped(<immersiveengineering:metal_device1:6> * 8, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], [null, null, null], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<immersiveengineering:wooden_device0:3>);
recipes.addShaped(<immersiveengineering:wooden_device0:3>, [[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>], [<ore:plateSteel>, <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}), <ore:plateSteel>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);

recipes.remove(<immersiveengineering:wooden_device0:7>);
recipes.addShaped(<immersiveengineering:wooden_device0:7>, [[<ore:plankTreatedWood>, <ore:dustRedstone>, <ore:plankTreatedWood>], [<ore:plateSteel>, <immersiveengineering:metal_device1:6>, <ore:plateSteel>], [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]]);

recipes.removeShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.removeShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);

recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4, [[<ore:itemRubber>, <ore:itemRubber>, <ore:itemRubber>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 4, [[<ore:leather>, <ore:leather>, <ore:leather>], [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);

recipes.remove(<immersiveengineering:material:1>);
recipes.addShaped(<immersiveengineering:material:1> * 2, [[<ore:ingotIron>], [<ore:ingotIron>]]);

recipes.remove(<immersiveengineering:material:2>);
recipes.addShaped(<immersiveengineering:material:2> * 2, [[<ore:ingotSteel>], [<ore:ingotSteel>]]);

recipes.remove(<immersiveengineering:material:3>);
recipes.addShaped(<immersiveengineering:material:3> * 2, [[<ore:ingotAluminum>], [<ore:ingotAluminum>]]);

//IW - Using converting variant
recipes.remove(<industrialwires:control_panel:4>);
recipes.addShaped(<industrialwires:control_panel:4>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], [<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

recipes.remove(<industrialwires:panel_component:*>);
recipes.addShapeless(<industrialwires:panel_component>*4, [<ore:dustGlowstone>, <minecraft:stone_button>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})]);
recipes.addShapeless(<industrialwires:panel_component:1>*4, [<ore:paper>, <ore:plateSteel>]);
recipes.addShapeless(<industrialwires:panel_component:2>*4, [<ore:dustGlowstone>, <ore:dustRedstone>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})]);
recipes.addShapeless(<industrialwires:panel_component:3>*4, [<minecraft:stone_button>, <immersiveengineering:wirecoil:2>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})]);
recipes.addShaped(<industrialwires:panel_component:4>*4, [[<ore:itemRubber>], [<ore:ingotHOPGraphite>], [<ic2:crafting:5>]]);
recipes.addShapeless(<industrialwires:panel_component:5>*4, [<ore:stickIron>, <minecraft:lever>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte})]);
recipes.addShaped(<industrialwires:panel_component:6>, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>], [<ore:paneGlass>, <industrialwires:panel_component:5>, <ore:paneGlass>]]);
recipes.addShaped(<industrialwires:panel_component:7>*4, [[<ore:stickSteel>, <minecraft:iron_door>, <ore:stickSteel>], [null, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), null]]);
recipes.addShapeless(<industrialwires:panel_component:8>*4, [<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <immersiveengineering:tool:2>]);
recipes.addShapeless(<industrialwires:panel_component:9>*4, [<ore:dustRedstone>, <ore:dustGlowstone>, <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}), <ore:electronTube>]);

//Charcoal nerf
mods.immersiveengineering.CokeOven.removeRecipe(<minecraft:coal:1>);
mods.immersiveengineering.CokeOven.addRecipe(<minecraft:coal:1>, 200, <ore:logWood>, 1800);

//Machine
var CrusherRemoved as IItemStack[] = [
  <minecraft:sandstone>,
  <minecraft:iron_ore>,
  <minecraft:gold_ore>,
  <minecraft:emerald_ore>,
  <forestry:resources>,
  <forestry:resources:1>,
  <forestry:resources:2>,
  <immersiveengineering:ore:1>,
  <immersiveengineering:ore:2>,
  <immersiveengineering:ore:3>,
  <immersiveengineering:ore:4>,
  <immersiveengineering:ore:5>,
  <immersiveintelligence:ore:1>,
  <immersiveintelligence:ore:3>,
  <immersiveintelligence:ore:4>,
  <immersiveintelligence:ore:5>,
  <nuclearcraft:ore:3>,
  <nuclearcraft:ore:5>,
  <nuclearcraft:ore:6>,
  <nuclearcraft:ore:7>,
  <nuclearcraft:gem>,
  <nuclearcraft:gem:3>,
  <nuclearcraft:gem:4>,
  <qmd:ingot:9>,
  <magneticraft:ores:2>,
  <magneticraft:ores:3>,
  <libvulpes:ore0>,
  <libvulpes:ore0:8>,
  <libvulpes:ore0:10>,
  <ariente:platinumore>,
  <ariente:manganeseore>,
  <ariente:siliconore>,
  <draconicevolution:draconium_ore>
];

for item in CrusherRemoved {
  mods.immersiveengineering.Crusher.removeRecipesForInput(item);
}

//mods.immersiveengineering.Crusher.removeRecipe(<rockhounding_chemistry:chemical_dusts:55>);

var ArcFurnaceRemoved as IItemStack[] = [
  <draconicevolution:draconium_ingot>,
  <magneticraft:ingots:4>,
  <magneticraft:ingots:5>,
  <minecraft:iron_ingot>,
  <minecraft:gold_ingot>,
  <immersiveengineering:metal>,
  <immersiveengineering:metal:1>,
  <immersiveengineering:metal:2>,
  <immersiveengineering:metal:3>,
  <immersiveengineering:metal:4>,
  <immersiveengineering:metal:5>,
  <immersiveintelligence:material_boule>,
  <ic2:ingot:2>,
  <ic2:ingot:3>,
  <ic2:ingot:4>,
  <ic2:ingot:6>,
  <ic2:ingot:8>,
  <nuclearcraft:ingot:3>,
  <nuclearcraft:ingot:5>,
  <nuclearcraft:ingot:6>,
  <nuclearcraft:ingot:7>,
  <nuclearcraft:ingot:11>,
  <qmd:ingot>,
  <qmd:ingot:3>,
  <qmd:ingot:4>,
  <qmd:ingot:9>,
  <qmd:ingot:10>,
  <libvulpes:productingot:3>,
  <libvulpes:productingot:7>,
  <libvulpes:productingot:10>,
  <railcraft:ingot:8>
];

for item in ArcFurnaceRemoved {
  mods.immersiveengineering.ArcFurnace.removeRecipe(item);
}

var MetalPressRemoved as IItemStack[] = [
  <materialpart:tungsten:plate>,
  <materialpart:tungsten:rod>,
  <advancedrocketry:productplate>,
  <advancedrocketry:productplate:1>,
  <advancedrocketry:productplate:7>,
  <advancedrocketry:productrod>,
  <advancedrocketry:productrod:1>,
  <advancedrocketry:productrod:7>,
  <libvulpes:productrod:7>,
  <libvulpes:productrod:10>,
  <libvulpes:productplate:3>,
  <libvulpes:productplate:7>,
  <libvulpes:productplate:10>,
  <rockhounding_chemistry:alloy_parts:34>,
  <rockhounding_chemistry:alloy_parts:43>,
  <ic2:crafting:15>,
  <immersiveintelligence:material_plate:3>,
  <immersiveintelligence:material_wire>,
  <minecraft:paper>
];

for item in MetalPressRemoved {
  mods.immersiveengineering.MetalPress.removeRecipe(item);
}

mods.immersiveengineering.Mixer.removeRecipe(<fluid:methanol>);
mods.immersiveengineering.Mixer.removeRecipe(<fluid:etching_acid>);
mods.immersiveengineering.Mixer.removeRecipe(<fluid:sulfuric_acid>);
mods.immersiveengineering.Mixer.removeRecipe(<fluid:nitric_acid>);
mods.immersiveengineering.Mixer.removeRecipe(<fluid:hydrofluoric_acid>);

mods.immersiveengineering.BottlingMachine.removeRecipe(<immersiveintelligence:material:17>);
mods.immersiveengineering.BottlingMachine.removeRecipe(<immersiveintelligence:material:23>);
mods.immersiveengineering.BottlingMachine.removeRecipe(<immersiveintelligence:material:24>);

//Industrial wires
var MarxGeneratorRemoved as IItemStack[] = [
  <minecraft:iron_ore>,
  <minecraft:gold_ore>,
  <minecraft:coal_ore>,
  <forestry:resources:1>,
  <forestry:resources:2>,
  <ic2:resource:2>,
  <ic2:resource:4>,
  <immersiveengineering:ore:1>,
  <immersiveengineering:ore:3>,
  <immersiveengineering:ore:4>
];

for item in MarxGeneratorRemoved {
  mods.industrialwires.MarxGenerator.removeRecipe(item);
}
