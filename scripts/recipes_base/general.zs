#priority 100

import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <minecraft:ender_chest>,
  <compactmachines3:psd>,
  <rs_ctr:wireless_b>,
  <rs_ctr:chunk_loader>,
  <rs_ctr:teleporter1>,
  <rs_ctr:teleporter>,
  <rs_ctr:solar_cell>,
  <rs_ctr:item_placer>,
  <ariente:ariente_pearl>,
  <funkylocomotion:teleporter>
];

for item in removed {
  functions.removeItem(item);
}


mods.jei.JEI.hide(<appliedenergistics2:facade:*>);
mods.jei.JEI.hide(<microblockcbe:microblock:*>);



//Chest
recipes.replaceAllOccurences(<ore:shulkerBox>, <minecraft:chest>);

//Compact machines
mods.jei.JEI.hide(<compactmachines3:machine>);
mods.jei.JEI.hide(<compactmachines3:machine:1>);
mods.jei.JEI.hide(<compactmachines3:machine:2>);
mods.jei.JEI.hide(<compactmachines3:machine:3>);
mods.jei.JEI.hide(<compactmachines3:machine:4>);
mods.jei.JEI.hide(<compactmachines3:machine:5>);
mods.jei.JEI.hide(<compactmachines3:wallbreakable>);
mods.jei.JEI.hide(<compactmachines3:tunneltool>);
mods.jei.JEI.hide(<compactmachines3:redstonetunneltool>);

recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector> * 4, [[null, <minecraft:ender_eye>, null], [null, <minecraft:redstone_torch>, null], [<minecraft:diamond>, <ore:plateTitanium>, <minecraft:diamond>]]);

recipes.addShaped(<contenttweaker:grassseed>, [[<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>], [<minecraft:dye:15>, <minecraft:wheat_seeds>, <minecraft:dye:15>], [<minecraft:dye:15>, <minecraft:dye:15>, <minecraft:dye:15>]]);
<contenttweaker:grassseed>.addTooltip("Use this on dirt to get a grass block!");

//Salvaged solar panel only
recipes.remove(<worsesolars:solar_cell>);

//Gated recipes
//Crafting table
recipes.remove(<minecraft:crafting_table>);
recipes.addShaped(<minecraft:crafting_table>, [[<betterwithmods:siding_wood:*>, <betterwithmods:siding_wood:*>, <betterwithmods:siding_wood:*>], [<betterwithmods:siding_wood:*>, <ore:plateIron>, <betterwithmods:siding_wood:*>], [<betterwithmods:siding_wood:*>, <betterwithmods:siding_wood:*>, <betterwithmods:siding_wood:*>]]);

recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:nuggetSteel>, <minecraft:flint>]);

//Chest
//recipes.removeShaped(<minecraft:chest>, [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>], [<ore:plankWood>, null, <ore:plankWood>], [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]]);

//Hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [[<betterwithmods:material:14>, null, <betterwithmods:material:14>], [<betterwithmods:material:14>, <ore:chestWood>, <betterwithmods:material:14>], [null, <betterwithmods:material:14>, null]]);
recipes.addShaped(<minecraft:hopper>, [[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:chestWood>, <ore:ingotSteel>], [null, <ore:ingotSteel>, null]]);

//Furnace
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, null, <ore:stone>], [<ore:stone>, <ore:ingotSteel>, <ore:stone>]]);

//Water strainer
recipes.remove(<waterstrainer:strainer_base>);
recipes.addShaped(<waterstrainer:strainer_base>, [[<minecraft:iron_bars:*>, null, <minecraft:iron_bars:*>], [<ore:plankWood>, <quark:chute>, <ore:plankWood>], [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>]]);

recipes.remove(<waterstrainer:strainer_survivalist_dense>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense>, [[<ore:stickWood>, <ore:nuggetBronze>, <ore:stickWood>], [<ore:nuggetBronze>, <waterstrainer:net:1>, <ore:nuggetBronze>], [<ore:stickWood>, <ore:nuggetBronze>, <ore:stickWood>]]);

recipes.remove(<waterstrainer:net>);
recipes.remove(<waterstrainer:net:1>);
recipes.addShaped(<waterstrainer:net>, [[<pyrotech:material:14>, <pyrotech:material:14>], [<pyrotech:material:14>, <pyrotech:material:14>]]);
recipes.addShaped(<waterstrainer:net:1>, [[<pyrotech:material:14>, <pyrotech:material:14>, <pyrotech:material:14>], [<pyrotech:material:14>, <pyrotech:material:14>, <pyrotech:material:14>]]);
recipes.addShaped(<waterstrainer:strainer_fisherman>, [[<pyrotech:material:14>, <pyrotech:material:14>, <pyrotech:material:14>], [<pyrotech:material:14>, <waterstrainer:net>, <pyrotech:material:14>], [<pyrotech:material:14>, <pyrotech:material:14>, <pyrotech:material:14>]]);

recipes.remove(<waterstrainer:strainer_survivalist_solid>);
recipes.addShaped(<waterstrainer:strainer_survivalist_solid>*2, [[<ore:ingotIron>, <minecraft:iron_bars:*>, <ore:ingotIron>], [<minecraft:iron_bars:*>, <waterstrainer:net>, <minecraft:iron_bars:*>], [<ore:ingotIron>, <minecraft:iron_bars:*>, <ore:ingotIron>]]);

recipes.remove(<waterstrainer:strainer_survivalist_dense_solid>);
recipes.addShaped(<waterstrainer:strainer_survivalist_dense_solid>*2, [[<ore:ingotIron>, <minecraft:iron_bars:*>, <ore:ingotIron>], [<minecraft:iron_bars:*>, <waterstrainer:net:1>, <minecraft:iron_bars:*>], [<ore:ingotIron>, <minecraft:iron_bars:*>, <ore:ingotIron>]]);

//Bedrock ore
recipes.remove(<bedrockores:bedrock_miner>);
recipes.addShaped(<bedrockores:bedrock_miner>, [[<ore:plateSteel>, <minecraft:dropper>, <ore:plateSteel>], [<ore:blockRedstone>, <minecraft:piston>, <ore:blockRedstone>], [<ore:obsidian>, <forgecraft:steelpickaxe>, <ore:obsidian>]]);
recipes.addShaped(<bedrockores:bedrock_miner>, [[<ore:plateSteel>, <minecraft:dropper>, <ore:plateSteel>], [<ore:blockRedstone>, <minecraft:piston>, <ore:blockRedstone>], [<ore:obsidian>, <ore:gemDiamond>, <ore:obsidian>]]);


//Autoverse
recipes.remove(<autoverse:pipe>);
recipes.remove(<autoverse:pipe:1>);
recipes.remove(<autoverse:pipe:2>);
recipes.remove(<autoverse:pipe:3>);

recipes.addShaped(<autoverse:pipe> * 4, [[<ore:ingotSteel>, <minecraft:cobblestone>, <ore:ingotSteel>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:ingotSteel>, <minecraft:cobblestone>, <ore:ingotSteel>]]);
recipes.addShaped(<autoverse:pipe:1> * 4, [[<ore:ingotSteel>, <minecraft:hopper>, <ore:ingotSteel>], [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<autoverse:pipe:2> * 4, [[<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>], [<ore:blockGlass>, <ore:blockGlass>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
recipes.addShaped(<autoverse:pipe:3> * 4, [[<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>], [<ore:blockGlass>, <minecraft:comparator>, <ore:blockGlass>], [<ore:ingotSteel>, <ore:blockGlass>, <ore:ingotSteel>]]);

recipes.remove(<autoverse:crafter>);
recipes.addShaped(<autoverse:crafter>, [[<minecraft:redstone>, <minecraft:piston>, <minecraft:redstone>], [<ore:plateIron>, <ore:workbench>, <ore:plateIron>], [<ore:stone>, <pyrotech:mechanical_hopper>, <ore:stone>]]);


//RSC

//Integrated dynamics
mods.forestry.Squeezer.addRecipe(<liquid:menrilresin>*1000, [<integrateddynamics:menril_log>], 250);
mods.forestry.Squeezer.addRecipe(<liquid:liquidchorus>*250, [<minecraft:chorus_fruit_popped>], 250);

recipes.remove(<integrateddynamics:cable>);
recipes.addShaped(<integrateddynamics:cable>*6, [[<integrateddynamics:crystalized_menril_chunk>, <contenttweaker:aluminum_rod>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <ore:dustRedstone>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <contenttweaker:aluminum_rod>, <integrateddynamics:crystalized_menril_chunk>]]);

recipes.removeByRecipeName("integrateddynamics:variable");
recipes.addShaped(<integrateddynamics:variable>*24, [[<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <pneumaticcraft:plastic:15>, <integrateddynamics:crystalized_menril_chunk>], [<integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>, <integrateddynamics:crystalized_menril_chunk>]]);
