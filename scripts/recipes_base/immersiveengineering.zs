import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <immersivetech:stone_decoration>,
  <immersivetech:stone_decoration_slab>,
  <immersiveengineering:toolbox>,
  <immersiveengineering:wooden_device1>,
  <immersiveengineering:metal_device1:3>,
  <immersiveengineering:metal_device1:13>,
  <immersiveengineering:metal:29>
];

for item in removed {
  functions.removeItem(item);
}

//Recipes
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

recipes.removeShaped(<immersiveengineering:stone_decoration> * 3, [[<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>], [<ore:ingotBrick>, <ore:sandstone>, <ore:ingotBrick>], [<minecraft:clay_ball>, <ore:ingotBrick>, <minecraft:clay_ball>]]);
recipes.addShaped(<immersiveengineering:stone_decoration> * 6, [[<ore:plateSteel>, <ore:ingotBrick>, <ore:plateSteel>], [<ore:ingotBrick>, <ore:sandstone>, <ore:ingotBrick>], [<ore:plateSteel>, <ore:ingotBrick>, <ore:plateSteel>]]);

recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[<ore:dustRedstone>, <immersiveengineering:metal_decoration0>, <ore:dustRedstone>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.removeShaped(<immersiveengineering:stone_decoration:1> * 3, [[<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>], [<ore:ingotBrick>, <minecraft:blaze_powder>, <ore:ingotBrick>], [<ore:ingotBrickNether>, <ore:ingotBrick>, <ore:ingotBrickNether>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [[<betterwithmods:material:14>, <ore:ingotBrick>, <betterwithmods:material:14>], [<ore:ingotBrick>, <minecraft:blaze_powder>, <ore:ingotBrick>], [<betterwithmods:material:14>, <ore:ingotBrick>, <betterwithmods:material:14>]]);

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
recipes.addShaped(<immersiveengineering:material:3> * 2, [[<ore:ingotAluminium>], [<ore:ingotAluminium>]]);

//IW - Using converting variant
mods.jei.JEI.removeAndHide(<industrialwires:mechanical_converter>);
mods.jei.JEI.removeAndHide(<industrialwires:mechanical_converter:1>);
mods.jei.JEI.removeAndHide(<industrialwires:mechanical_converter:2>);

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
//mods.immersiveengineering.Crusher.removeRecipe(<rockhounding_chemistry:alloy_items_tech:12>);

mods.immersiveengineering.Crusher.removeRecipe(<rockhounding_chemistry:chemical_dusts:55>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:sandstone>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:iron_ore>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:gold_ore>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:emerald_ore>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<forestry:resources>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<forestry:resources:1>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<forestry:resources:2>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:1>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:2>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:3>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:4>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<immersiveengineering:ore:5>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<draconicevolution:draconium_ore>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<nuclearcraft:ore:3>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<nuclearcraft:ore:5>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<nuclearcraft:ore:6>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<nuclearcraft:ore:7>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<magneticraft:ores:2>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<magneticraft:ores:3>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0:8>);
mods.immersiveengineering.Crusher.removeRecipesForInput(<libvulpes:ore0:10>);


mods.immersiveengineering.ArcFurnace.removeRecipe(<magneticraft:ingots:5>);
mods.immersiveengineering.ArcFurnace.addRecipe(<magneticraft:ingots:5>, <ore:dustTungsten>, null, 512, 4096);

mods.immersiveengineering.ArcFurnace.removeRecipe(<draconicevolution:draconium_ingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<magneticraft:ingots:4>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:8>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:iron_ingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<minecraft:gold_ingot>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:1>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:2>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:3>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:4>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:metal:5>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:2>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:3>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:4>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:6>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<ic2:ingot:8>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:3>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:5>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:6>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<nuclearcraft:ingot:7>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<libvulpes:productingot:7>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<libvulpes:productingot:10>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<railcraft:ingot:8>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<magneticraft:ingots:5>);

//Industrial wires
mods.industrialwires.MarxGenerator.removeRecipe(<minecraft:iron_ore>);
mods.industrialwires.MarxGenerator.removeRecipe(<minecraft:gold_ore>);
mods.industrialwires.MarxGenerator.removeRecipe(<minecraft:coal_ore>);
mods.industrialwires.MarxGenerator.removeRecipe(<forestry:resources:1>);
mods.industrialwires.MarxGenerator.removeRecipe(<forestry:resources:2>);
mods.industrialwires.MarxGenerator.removeRecipe(<ic2:resource:2>);
mods.industrialwires.MarxGenerator.removeRecipe(<ic2:resource:4>);
mods.industrialwires.MarxGenerator.removeRecipe(<immersiveengineering:ore:1>);
mods.industrialwires.MarxGenerator.removeRecipe(<immersiveengineering:ore:3>);
mods.industrialwires.MarxGenerator.removeRecipe(<immersiveengineering:ore:4>);
