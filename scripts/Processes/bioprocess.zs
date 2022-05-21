#priority 1000


//Seed oil
mods.immersiveengineering.Squeezer.removeFluidRecipe(<liquid:plantoil>);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:seed.oil>*110, <minecraft:wheat_seeds>*20, 800);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:seed.oil>*110, <minecraft:pumpkin_seeds>*20, 800);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:seed.oil>*110, <minecraft:melon_seeds>*20, 800);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:seed.oil>*110, <minecraft:beetroot_seeds>*20, 800);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:seed.oil>*110, <betterwithmods:hemp>*20, 800);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:seed.oil>*110, <immersiveengineering:seed>*20, 800);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:seed.oil>*110, <forestry:fruits>*4, 800);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:seed.oil>*198, <forestry:fruits:1>*2, 800);
mods.immersiveengineering.Squeezer.addRecipe(null, <liquid:seed.oil>*242, <forestry:fruits:2>*2, 800);

//Reactions
mods.nuclearcraft.ChemicalReactor.addRecipe(<liquid:seed.oil>*1000, <liquid:steam>*1000, <liquid:glycerol>*100, <liquid:fattyacids>*900);
