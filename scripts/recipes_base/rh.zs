#priority 100

//Recipes
mods.rockhounding_chemistry.LabOven.removeByOutput(<liquid:sulfuric_acid>*800);
mods.rockhounding_chemistry.LabOven.removeByOutput(<liquid:sulfuric_acid>*400);
mods.rockhounding_chemistry.LabOven.removeByOutput(<liquid:liquid_ammonia>*50);
mods.rockhounding_chemistry.LabOven.removeByOutput(<liquid:hydrofluoric_acid>*400);


mods.rockhounding_chemistry.GasReformer.removeByOutput(<liquid:ammonia>*30);
mods.rockhounding_chemistry.GasReformer.removeByOutput(<liquid:nitric_acid>*15);
mods.rockhounding_chemistry.BedReactor.removeByOutput(<liquid:ammonia>*200);

mods.rockhounding_chemistry.ProfilingBench.removeByOutput(<rockhounding_chemistry:au_catalyst>);

//base
mods.rockhounding_chemistry.InhibitElements.inhibit("dustIridium");
mods.rockhounding_chemistry.InhibitElements.inhibit("dustOsmium");

mods.rockhounding_chemistry.Transposer.add(<liquid:water_vapour>, <liquid:water_vapour>);
mods.rockhounding_chemistry.Transposer.add(<liquid:steam>, <liquid:water_vapour>);
mods.rockhounding_chemistry.Transposer.add(<liquid:helium>, <liquid:helium>);
mods.rockhounding_chemistry.Transposer.add(<liquid:argon>, <liquid:argon>);
mods.rockhounding_chemistry.Transposer.add(<liquid:krypton>, <liquid:krypton>);
mods.rockhounding_chemistry.Transposer.add(<liquid:carbon_dioxide>, <liquid:carbon_dioxide>);
mods.rockhounding_chemistry.Transposer.add(<liquid:carbon_monoxide>, <liquid:carbon_monoxide>);
mods.rockhounding_chemistry.Transposer.add(<liquid:neon>, <liquid:neon>);
mods.rockhounding_chemistry.Transposer.add(<liquid:xenon>, <liquid:xenon>);
mods.rockhounding_chemistry.Transposer.add(<liquid:oxygen>, <liquid:oxygen>);
mods.rockhounding_chemistry.Transposer.add(<liquid:nitrogen>, <liquid:nitrogen>);
mods.rockhounding_chemistry.Transposer.add(<liquid:ammonia>, <liquid:ammonia>);
mods.rockhounding_chemistry.Transposer.add(<liquid:hydrogen>, <liquid:hydrogen>);

//Condenser
mods.rockhounding_chemistry.GasCondenser.add(<liquid:helium>*100, <liquid:liquid_helium>*1);


//Fuel tweaking
mods.rockhounding_chemistry.SlurryPond.add(<immersiveengineering:material:17>, <liquid:water>*350, <liquid:coal_slurry>*350);


//Mineral shards
mods.rockhounding_chemistry.LeachingVat.remove(<rockhounding_chemistry:mineral_ores:1>);
mods.rockhounding_chemistry.LeachingVat.add(<rockhounding_chemistry:mineral_ores:1>,
 [<rockhounding_chemistry:arsenate_shards:1>,
  <rockhounding_chemistry:arsenate_shards:2>,
  <rockhounding_chemistry:arsenate_shards:3>,
  <rockhounding_chemistry:arsenate_shards:4>],
  [5.94F, 2.5F, 3.49F, 3.8F], <liquid:leachate>*216);

mods.rockhounding_chemistry.LeachingVat.remove(<rockhounding_chemistry:mineral_ores:3>);
mods.rockhounding_chemistry.LeachingVat.add(<rockhounding_chemistry:mineral_ores:3>,
 [<rockhounding_chemistry:carbonate_shards>,
  <rockhounding_chemistry:carbonate_shards:1>,
  <rockhounding_chemistry:carbonate_shards:2>,
  <rockhounding_chemistry:carbonate_shards:4>,
  <rockhounding_chemistry:carbonate_shards:5>,
  <rockhounding_chemistry:carbonate_shards:6>],
  [3.05F, 3.71F, 4.06F, 5.03F, 4.45F, 2.69F], <liquid:leachate>*216);


mods.rockhounding_chemistry.LeachingVat.remove(<rockhounding_chemistry:mineral_ores:6>);
mods.rockhounding_chemistry.LeachingVat.add(<rockhounding_chemistry:mineral_ores:6>,
 [<rockhounding_chemistry:native_shards>,
  <rockhounding_chemistry:native_shards:1>,
  <rockhounding_chemistry:native_shards:2>,
  <rockhounding_chemistry:native_shards:3>,
  <rockhounding_chemistry:native_shards:4>,
  <rockhounding_chemistry:native_shards:5>,
  <rockhounding_chemistry:native_shards:6>,
  <rockhounding_chemistry:native_shards:7>,
  <rockhounding_chemistry:native_shards:8>,
  <rockhounding_chemistry:native_shards:9>,
  <rockhounding_chemistry:native_shards:10>,
  <rockhounding_chemistry:native_shards:11>],
  [7.42F, 5.12F, 7.7F, 7.88F, 14.9F, 13.44F, 15.46F, 11.5F, 4.42F, 1.95F, 3.38F, 2.16F], <liquid:leachate>*216);

mods.rockhounding_chemistry.LeachingVat.remove(<rockhounding_chemistry:mineral_ores:8>);
mods.rockhounding_chemistry.LeachingVat.add(<rockhounding_chemistry:mineral_ores:8>,
 [<rockhounding_chemistry:phosphate_shards>,
  <rockhounding_chemistry:phosphate_shards:1>,
  <rockhounding_chemistry:phosphate_shards:3>,
  <rockhounding_chemistry:phosphate_shards:4>,
  <rockhounding_chemistry:phosphate_shards:5>,
  <rockhounding_chemistry:phosphate_shards:7>,
  <rockhounding_chemistry:phosphate_shards:8>,
  <rockhounding_chemistry:phosphate_shards:9>,
  <rockhounding_chemistry:phosphate_shards:10>,
  <rockhounding_chemistry:phosphate_shards:11>,
  <rockhounding_chemistry:phosphate_shards:12>,
  <rockhounding_chemistry:phosphate_shards:13>,
  <rockhounding_chemistry:phosphate_shards:14>],
  [2.92F, 3.05F, 2.89F, 3.5F, 2.34F, 4.37F, 3.71F, 3.28F, 4.95F, 3.61F, 3.86F, 1.88F, 3.19F], <liquid:leachate>*216);

mods.rockhounding_chemistry.LeachingVat.remove(<rockhounding_chemistry:mineral_ores:11>);
mods.rockhounding_chemistry.LeachingVat.add(<rockhounding_chemistry:mineral_ores:11>,
 [<rockhounding_chemistry:sulfide_shards>,
  <rockhounding_chemistry:sulfide_shards:1>,
  <rockhounding_chemistry:sulfide_shards:2>,
  <rockhounding_chemistry:sulfide_shards:3>,
  <rockhounding_chemistry:sulfide_shards:4>,
  <rockhounding_chemistry:sulfide_shards:5>,
  <rockhounding_chemistry:sulfide_shards:6>,
  <rockhounding_chemistry:sulfide_shards:7>,
  <rockhounding_chemistry:sulfide_shards:8>,
  <rockhounding_chemistry:sulfide_shards:9>,
  <rockhounding_chemistry:sulfide_shards:10>,
  <rockhounding_chemistry:sulfide_shards:11>,
  <rockhounding_chemistry:sulfide_shards:15>,
  <rockhounding_chemistry:sulfide_shards:16>,
  <rockhounding_chemistry:sulfide_shards:17>,
  <rockhounding_chemistry:sulfide_shards:18>,
  <rockhounding_chemistry:sulfide_shards:20>,
  <rockhounding_chemistry:sulfide_shards:21>,
  <rockhounding_chemistry:sulfide_shards:22>,
  <rockhounding_chemistry:sulfide_shards:23>],
  [9.0F, 6.44F, 6.31F, 7.4F, 4.56F, 4.8F, 5.01F, 4.4F, 3.11F, 4.05F, 4.61F, 4.66F, 4.49F, 4.77F, 4.0F, 2.82F, 7.3F, 7.8F, 11.0F, 4.97F], <liquid:leachate>*216);

//IrOs
mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:native_shards:12>);
mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:sulfide_shards:13>);
mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:sulfide_shards:14>);
mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:sulfide_shards:19>);


//Leachate retention
mods.rockhounding_chemistry.RetentionVat.remove(<liquid:coal_slurry>);
mods.rockhounding_chemistry.RetentionVat.remove(<liquid:leachate>);
mods.rockhounding_chemistry.RetentionVat.add(<liquid:leachate>*1000,
 [<rockhounding_chemistry:antimonate_shards:1>,
  <rockhounding_chemistry:antimonate_shards:3>,
  <rockhounding_chemistry:antimonate_shards:4>,
  <rockhounding_chemistry:antimonate_shards:5>,
  <rockhounding_chemistry:arsenate_shards:1>,
  <rockhounding_chemistry:arsenate_shards:3>,
  <rockhounding_chemistry:arsenate_shards:4>,
  <rockhounding_chemistry:borate_shards>,
  <rockhounding_chemistry:borate_shards:4>,
  <rockhounding_chemistry:carbonate_shards>,
  <rockhounding_chemistry:carbonate_shards:4>,
  <rockhounding_chemistry:chromate_shards>,
  <rockhounding_chemistry:chromate_shards:4>,
  <rockhounding_chemistry:halide_shards:3>,
  <rockhounding_chemistry:halide_shards:4>,
  <rockhounding_chemistry:native_shards>,
  <rockhounding_chemistry:native_shards:3>,
  <rockhounding_chemistry:native_shards:11>,
  <rockhounding_chemistry:oxide_shards:1>,
  <rockhounding_chemistry:oxide_shards:4>,
  <rockhounding_chemistry:oxide_shards:13>,
  <rockhounding_chemistry:oxide_shards:14>,
  <rockhounding_chemistry:oxide_shards:19>,
  <rockhounding_chemistry:oxide_shards:25>,
  <rockhounding_chemistry:oxide_shards:26>,
  <rockhounding_chemistry:phosphate_shards:1>,
  <rockhounding_chemistry:phosphate_shards:8>,
  <rockhounding_chemistry:phosphate_shards:14>,
  <rockhounding_chemistry:silicate_shards:6>,
  <rockhounding_chemistry:silicate_shards:7>,
  <rockhounding_chemistry:silicate_shards:16>,
  <rockhounding_chemistry:sulfate_shards:6>,
  <rockhounding_chemistry:sulfate_shards:9>,
  <rockhounding_chemistry:sulfate_shards:11>,
  <rockhounding_chemistry:sulfide_shards>,
  <rockhounding_chemistry:sulfide_shards:1>,
  <rockhounding_chemistry:sulfide_shards:3>,
  <rockhounding_chemistry:sulfide_shards:6>,
  <rockhounding_chemistry:sulfide_shards:15>,
  <rockhounding_chemistry:sulfide_shards:20>,
  <rockhounding_chemistry:sulfide_shards:22>,
  <rockhounding_chemistry:vanadate_shards>,
  <rockhounding_chemistry:vanadate_shards:2>],
  [5.95F, 4.62F, 3.1F, 6.63F, 5.94F, 3.94F, 3.8F, 1.71F, 4.73F, 3.05F, 5.03F, 2.69F, 6.27F, 2.62F, 2.69F, 7.42F, 7.88F, 2.16F, 5.22F, 5.49F, 7.82F, 1.92F, 8.14F, 5.24F, 5.96F, 3.05F, 3.71F, 3.19F, 2.67F, 2.95F, 3.3F, 1.9F, 3.48F, 4.34F, 9.0F, 6.44F, 7.4F, 5.01F, 4.49F, 7.3F, 11.0F, 2.38F, 6.3F]);



//Material replacements
mods.rockhounding_chemistry.MaterialCabinet.add("AlO", "dustAlumina", "Alumina");
mods.rockhounding_chemistry.MaterialCabinet.add("TiO", "dustTiO2", "Titanium Dioxide");
mods.rockhounding_chemistry.MaterialCabinet.add("WA", "dustTungsticacid", "Tungstic Acid");
mods.rockhounding_chemistry.MaterialCabinet.add("S", "dustSteel", "Steel Dust");
mods.rockhounding_chemistry.MaterialCabinet.add("REE", "dustMischmetal", "Mischmetal Dust");

//Aluminium
mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:antimonate_shards>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Antimonate", <rockhounding_chemistry:antimonate_shards>, ["dustAntimony", "dustAlumina"], [48, 18]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:antimonate_shards:4>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Antimonate", <rockhounding_chemistry:antimonate_shards:4>, ["dustCopper", "dustAntimony", "dustAlumina", "dustCarbon", "dustSulfur"], [34, 12, 7, 2, 1]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:borate_shards:3>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Borate", <rockhounding_chemistry:borate_shards:3>, ["dustBoron", "dustAlumina", "dustBeryllium", "dustPotassium", "dustLithium", "dustIron"], [15, 13, 6, 2, 1, 1]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:borate_shards:5>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Borate", <rockhounding_chemistry:borate_shards:5>, ["dustAlumina", "dustBoron", "dustBeryllium", "dustPotassium"], [14, 13, 8, 4]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:halide_shards:5>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Halide", <rockhounding_chemistry:halide_shards:5>, ["dustCalcium", "dustAlumina", "dustSulfur"], [24, 11, 6]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:native_shards:1>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <rockhounding_chemistry:native_shards:1>, ["dustCopper", "dustAlumina", "dustZinc", "dustIron"], [60, 26, 7, 7]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:native_shards:8>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Native", <rockhounding_chemistry:native_shards:8>, ["dustAlumina", "dustCopper", "dustZinc"], [46, 40, 14]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:1>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:1>, ["dustChromium", "dustCobalt", "dustIron", "dustNickel", "dustAlumina", "dustMagnesium"], [35, 14, 8, 6, 5, 1]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:2>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:2>, ["dustNiobium", "dustTantalum", "dustIron", "dustManganese", "dustMagnesium", "dustTiO2", "dustAlumina"], [42, 24, 8, 7, 5, 2, 1]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:7>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:7>, ["dustAlumina"], [100]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:8>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:8>, ["dustZinc", "dustAlumina"], [36, 30]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:9>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:9>, ["dustAlumina", "dustIron", "dustCalcium", "dustTiO2", "dustLanthanum", "dustCerium", "dustMagnesium"], [40, 6, 5, 3, 2, 2, 1]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:phosphate_shards:1>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Phosphate", <rockhounding_chemistry:phosphate_shards:1>, ["dustPhosphorus", "dustAlumina", "dustMagnesium"], [20, 18, 8]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:phosphate_shards:5>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Phosphate", <rockhounding_chemistry:phosphate_shards:5>, ["dustAlumina", "dustPhosphorus"], [20, 15]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:phosphate_shards:7>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Phosphate", <rockhounding_chemistry:phosphate_shards:7>, ["dustBismuth", "dustIron", "dustPhosphorus", "dustAlumina"], [32, 20, 10, 3]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:phosphate_shards:13>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Phosphate", <rockhounding_chemistry:phosphate_shards:13>, ["dustAlumina", "dustVanadium", "dustPhosphorus"], [13, 13, 8]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:silicate_shards>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Silicate", <rockhounding_chemistry:silicate_shards>, ["dustSilicon", "dustCalcium", "dustAlumina", "dustManganese", "dustIron",  "dustBoron"], [20, 14, 10, 10, 10, 5]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:silicate_shards:1>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Silicate", <rockhounding_chemistry:silicate_shards:1>, ["dustSilicon", "dustManganese", "dustPotassium", "dustAlumina", "dustIron"], [19, 14, 10, 6, 6]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:silicate_shards:4>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Silicate", <rockhounding_chemistry:silicate_shards:4>, ["dustSilicon", "dustIron", "dustMagnesium", "dustPotassium", "dustScandium", "dustAlumina"], [18, 12, 10, 4, 2, 2]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:silicate_shards:6>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Silicate", <rockhounding_chemistry:silicate_shards:6>, ["dustSilicon", "dustAlumina", "dustLithium"], [22, 22, 6]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:silicate_shards:8>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Silicate", <rockhounding_chemistry:silicate_shards:8>, ["dustAlumina", "dustSilicon", "dustLithium", "dustBoron"], [26, 11, 3, 2]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:silicate_shards:10>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Silicate", <rockhounding_chemistry:silicate_shards:10>, ["dustSilicon", "dustCerium", "dustManganese", "dustAlumina", "dustCalcium", "dustEuropium", "dustLutetium", "dustThulium", "dustTerbium", "dustMagnesium", "dustTiO2", "dustChromium", "dustIron"], [14, 12, 9, 5, 5, 4, 4, 4, 4, 2, 1, 1, 1]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:silicate_shards:13>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Silicate", <rockhounding_chemistry:silicate_shards:13>, ["dustManganese", "dustIron", "dustSilicon", "dustCalcium", "dustAlumina"], [23, 16, 16, 6, 2]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:sulfate_shards>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfate", <rockhounding_chemistry:sulfate_shards>, ["dustAlumina", "dustSulfur", "dustPotassium"], [20, 15, 10]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:sulfate_shards:4>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfate", <rockhounding_chemistry:sulfate_shards:4>, ["dustCalcium", "dustSulfur", "dustChromium", "dustAlumina"], [19, 7, 6, 1]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:sulfide_shards:8>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <rockhounding_chemistry:sulfide_shards:8>, ["dustIron", "dustSulfur", "dustCopper", "dustMagnesium", "dustAlumina"], [26, 26, 24, 9, 7]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:vanadate_shards:3>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Vanadate", <rockhounding_chemistry:vanadate_shards:3>, ["dustAlumina", "dustVanadium", "dustZinc", "dustNickel"], [18, 17, 8, 2]);

//Titanium
mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:3>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:3>, ["dustNiobium", "dustYttrium", "dustCerium", "dustCalcium", "dustTiO2"], [33, 16, 3, 2, 2]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:10>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:10>, ["dustTiO2", "dustIron", "dustManganese", "dustLead"], [25, 21, 12, 11]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:11>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:11>, ["dustTiO2", "dustThorium", "dustYellowcake", "dustCalcium"], [25, 24, 24, 2]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:20>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:20>, ["dustTiO2", "dustCerium", "dustNiobium", "dustLanthanum", "dustSodium", "dustCalcium"], [23, 17, 11, 8, 8, 2]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:22>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:22>, ["dustTiO2"], [60]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:24>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:24>, ["dustZirconium", "dustTiO2", "dustNiobium", "dustThorium", "dustCalcium", "dustCerium"], [24, 19, 12, 6, 6, 4]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:silicate_shards:5>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Silicate", <rockhounding_chemistry:silicate_shards:5>, ["dustSilicon", "dustYttrium", "dustTiO2", "dustPotassium", "dustDysprosium", "dustGadolinium", "dustHolmium", "dustTerbium", "dustSamarium"], [28, 11, 7, 6, 3, 1, 1, 1, 1]);

//Tungsten
mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:16>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:16>, ["dustTungsticacid"], [75]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:17>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:17>, ["dustTungsticacid", "dustIron", "dustManganese"], [61, 9, 9]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:oxide_shards:18>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Oxide", <rockhounding_chemistry:oxide_shards:18>, ["dustTungsticacid", "dustIron"], [61, 18]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:sulfate_shards:7>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfate", <rockhounding_chemistry:sulfate_shards:7>, ["dustTungsticacid", "dustCalcium"], [64, 14]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:sulfate_shards:8>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfate", <rockhounding_chemistry:sulfate_shards:8>, ["dustLead", "dustTungsticacid"], [64, 14]);

mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:sulfide_shards:12>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Sulfide", <rockhounding_chemistry:sulfide_shards:12>, ["dustTungsticacid", "dustSulfur"], [74, 26]);

//Rare Earth stuff
mods.rockhounding_chemistry.ChemicalExtractor.remove(<rockhounding_chemistry:arsenate_shards:3>);
mods.rockhounding_chemistry.ChemicalExtractor.add("Arsenate", <rockhounding_chemistry:arsenate_shards:3>, ["dustCopper", "dustArsenic", "dustCalcium"], [38, 22, 3]);


//Custom alloys
mods.rockhounding_chemistry.MetalAlloyer.add(["dustSteel", "dustManganese", "dustMolybdenum", "dustNickel", "dustSilicon"], [95, 1, 1, 1, 1], <nuclearcraft:alloy:1>);

mods.rockhounding_chemistry.MetalAlloyer.add(["dustMagnesium", "dustBoron"], [33, 67], <nuclearcraft:alloy:3>);

mods.rockhounding_chemistry.MetalAlloyer.add(["dustSteel", "dustBoron", "dustSilicon", "dustAluminum"], [78, 19, 2, 1], <nuclearcraft:alloy:6>);

mods.rockhounding_chemistry.MetalAlloyer.add(["dustSteel", "dustChrome", "dustNickel", "dustManganese"], [53, 25, 20, 2], <materialpart:ssteel:ingot>);
