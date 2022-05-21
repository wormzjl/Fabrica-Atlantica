#priority 1000


//Sodium ethyl xanthate
mods.nuclearcraft.ChemicalReactor.addRecipe(<liquid:methane>*100, <liquid:sulfur>*800, <liquid:carbon_disulfide>*475, <liquid:h2s>*425);

mods.nuclearcraft.Enricher.addRecipe(<nuclearcraft:compound:5>*8, <liquid:ethanol>*1000, <liquid:sodium_ethylate>*1478);

mods.nuclearcraft.ChemicalReactor.addRecipe(<liquid:carbon_disulfide>*1000, <liquid:sodium_ethylate>*895, <liquid:sodium_ethyl_xanthate>*1895, null);

//Flotation solution
mods.nuclearcraft.SaltMixer.addRecipe(<liquid:fattyacids>*500, <liquid:distwater>*500, <liquid:flotation_solution>*1000);
mods.nuclearcraft.SaltMixer.addRecipe(<liquid:sodium_ethyl_xanthate>*100, <liquid:distwater>*900, <liquid:flotation_solution>*1000);
