import crafttweaker.item.IItemStack;
import scripts.functions;

//World generation to be revisited
static removed as IItemStack[] = [
  <better_diving:titanium>,
  <better_diving:copper_ore>,
  <better_diving:silver_ore>,
  <better_diving:lead>,
  <better_diving:gold>,
  <better_diving:titanium_ingot>,
  <better_diving:wiring_kit>,
  <better_diving:battery>,
  <better_diving:power_cell>,
  <better_diving:lubricant>,
  <better_diving:silicone_rubber>,
  <better_diving:fiber_mesh>
];

for item in removed {
  functions.removeItem(item);
}

//Recipes
recipes.remove(<better_diving:diving_mask>);
recipes.addShaped(<better_diving:diving_mask>, [[<immersiveengineering:material:5>, <minecraft:glass>, <immersiveengineering:material:5>]]);

recipes.remove(<better_diving:standard_o2_tank>);
recipes.addShaped(<better_diving:standard_o2_tank>, [[<ic2:crafting>, <ore:plateIron>, <ic2:crafting>], [<ore:plateIron>, null, <ore:plateIron>], [<ic2:crafting>, <ore:plateIron>, <ic2:crafting>]]);

recipes.remove(<better_diving:wetsuit_leggings>);
recipes.addShaped(<better_diving:wetsuit_leggings>, [[<immersiveengineering:material:5>, <ic2:crafting>, <immersiveengineering:material:5>], [<ic2:crafting>, null, <ic2:crafting>], [<ic2:crafting>, null, <ic2:crafting>]]);

recipes.remove(<better_diving:fins>);
recipes.addShaped(<better_diving:fins>, [[<ic2:crafting>, null, <ic2:crafting>], [<ic2:crafting>, null, <ic2:crafting>]]);

recipes.remove(<better_diving:rebreather>);
recipes.addShaped(<better_diving:rebreather>, [[<betterwithmods:material:14>, <better_diving:diving_mask>, <betterwithmods:material:14>], [<betterwithmods:material:14>, <immersiveengineering:material:5>, <betterwithmods:material:14>]]);

recipes.remove(<better_diving:high_capacity_o2_tank>);
recipes.addShaped(<better_diving:high_capacity_o2_tank>, [[<betterwithmods:material:14>, <better_diving:standard_o2_tank>, <betterwithmods:material:14>], [<betterwithmods:material:14>, <immersiveengineering:material:5>, <betterwithmods:material:14>]]);

recipes.remove(<better_diving:improved_wetsuit_leggings>);
recipes.addShaped(<better_diving:improved_wetsuit_leggings>, [[<betterwithmods:material:14>, <better_diving:wetsuit_leggings>, <betterwithmods:material:14>], [<betterwithmods:material:14>, <immersiveengineering:material:5>, <betterwithmods:material:14>]]);

recipes.remove(<better_diving:ultra_glide_fins>);
recipes.addShaped(<better_diving:ultra_glide_fins>, [[<betterwithmods:material:14>, <better_diving:fins>, <betterwithmods:material:14>], [<betterwithmods:material:14>, <immersiveengineering:material:5>, <betterwithmods:material:14>]]);

recipes.remove(<better_diving:reinforced_diving_mask>);
recipes.addShaped(<better_diving:reinforced_diving_mask>, [[<ore:plateSteel>, <better_diving:diving_mask>, <ore:plateSteel>], [<ore:plateSteel>, <immersiveengineering:material:5>, <ore:plateSteel>]]);

recipes.remove(<better_diving:reinforced_o2_tank>);
recipes.addShaped(<better_diving:reinforced_o2_tank>, [[<ore:plateSteel>, <better_diving:standard_o2_tank>, <ore:plateSteel>], [<ore:plateSteel>, <immersiveengineering:material:5>, <ore:plateSteel>]]);

recipes.remove(<better_diving:reinforced_wetsuit_leggings>);
recipes.addShaped(<better_diving:reinforced_wetsuit_leggings>, [[<ore:plateSteel>, <better_diving:wetsuit_leggings>, <ore:plateSteel>], [<ore:plateSteel>, <immersiveengineering:material:5>, <ore:plateSteel>]]);

recipes.remove(<better_diving:reinforced_fins>);
recipes.addShaped(<better_diving:reinforced_fins>, [[<ore:plateSteel>, <better_diving:fins>, <ore:plateSteel>], [<ore:plateSteel>, <immersiveengineering:material:5>, <ore:plateSteel>]]);

recipes.remove(<better_diving:seamoth>);
recipes.addShaped(<better_diving:seamoth>, [[<ore:denseplateInvar>, <ic2:glass>, <ore:denseplateInvar>], [<ic2:glass>, <ic2:boat:3>, <ic2:glass>], [<ore:denseplateInvar>, <ic2:glass>, <ore:denseplateInvar>]]);
