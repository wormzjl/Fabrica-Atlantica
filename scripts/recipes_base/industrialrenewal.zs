import crafttweaker.item.IItemStack;
import scripts.functions;

static removed as IItemStack[] = [
  <industrialrenewal:solar_panel>,
  <industrialrenewal:sponge_iron>,
  <industrialrenewal:stick_iron>,
  <industrialrenewal:chunk_loader>,
  <industrialrenewal:solar_panel_frame>,
  <industrialrenewal:small_wind_turbine_pillar>,
  <industrialrenewal:small_wind_turbine>
];

for item in removed {
  functions.removeItem(item);
}


//recipes
recipes.removeShaped(<industrialrenewal:catwalk_pillar>*6,
 [[<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>],
  [<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>],
  [<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>]]);

recipes.addShaped(<industrialrenewal:catwalk_pillar>*32,
 [[<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>],
  [<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>],
  [<ore:ingotSteel>, <ore:stickIron>, <ore:ingotSteel>]]);

recipes.remove(<industrialrenewal:catwalk>);
recipes.remove(<industrialrenewal:catwalk_stair>);

recipes.addShaped(<industrialrenewal:catwalk> * 8, [[<ore:stickIron>, null, <ore:stickIron>], [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>]]);

recipes.addShapeless(<industrialrenewal:catwalk_stair>,[<industrialrenewal:catwalk>]);
recipes.addShapeless(<industrialrenewal:catwalk>,[<industrialrenewal:catwalk_stair>]);

recipes.remove(<industrialrenewal:catwalk_column>);
recipes.addShaped(<industrialrenewal:catwalk_column>*24,
 [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>],
  [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);

recipes.remove(<industrialrenewal:catwalk_ladder>);
recipes.addShaped(<industrialrenewal:catwalk_ladder>*12,
 [[<ore:stickIron>, <minecraft:ladder>, <ore:stickIron>],
  [<ore:ingotIron>, <minecraft:ladder>, <ore:ingotIron>],
  [<ore:stickIron>, <minecraft:ladder>, <ore:stickIron>]]);

recipes.remove(<industrialrenewal:roof>);
recipes.addShaped(<industrialrenewal:roof>*16,
 [[<industrialrenewal:small_slab>, <industrialrenewal:small_slab>, null],
  [null, <industrialrenewal:small_slab>, <industrialrenewal:small_slab>],
  [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

recipes.remove(<industrialrenewal:window>);
recipes.addShaped(<industrialrenewal:window>*24,
 [[<ore:paneGlass>, <ore:stickIron>, <ore:paneGlass>],
  [<ore:paneGlass>, <ore:stickIron>, <ore:paneGlass>],
  [<ore:paneGlass>, <ore:stickIron>, <ore:paneGlass>]]);

recipes.remove(<industrialrenewal:platform>);
recipes.addShaped(<industrialrenewal:platform>*8,
 [[<ore:stickIron>, null, <ore:stickIron>],
  [<ore:stickIron>, <ore:plankWood>, <ore:stickIron>],
  [null, <industrialrenewal:catwalk_pillar>, null]]);

recipes.remove(<industrialrenewal:scaffold>);
recipes.addShaped(<industrialrenewal:scaffold> * 24, [[<ore:stickIron>, <ore:plankWood>, <ore:stickIron>], [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], [<ore:stickIron>, null, <ore:stickIron>]]);

recipes.remove(<industrialrenewal:frame>);
recipes.addShaped(<industrialrenewal:frame> * 12, [[<ore:stickIron>, <ore:ingotSteel>, <ore:stickIron>], [<ore:stickIron>, <ore:ingotSteel>, <ore:stickIron>], [<ore:stickIron>, <ore:ingotSteel>, <ore:stickIron>]]);

recipes.remove(<industrialrenewal:industrial_floor>);
recipes.addShaped(<industrialrenewal:industrial_floor> * 24, [[<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>], [null, null, null], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
