#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

//Chemicals
var animaloil = VanillaFactory.createFluid("animaloil", Color.fromHex("FDFFD9"));
animaloil.register();

var liquidrubber = VanillaFactory.createFluid("liquidrubber", Color.fromHex("7A7A7A"));
liquidrubber.viscosity = 2000;
liquidrubber.register();

var formicacid = VanillaFactory.createFluid("formicacid", Color.fromHex("00FFFF"));
formicacid.register();

var chlorine = VanillaFactory.createFluid("chlorine", Color.fromHex("00FF00"));
chlorine.gaseous = true;
chlorine.register();

var phosgen = VanillaFactory.createFluid("phosgen", Color.fromHex("FFA07A"));
phosgen.gaseous = true;
phosgen.register();

var fumingsulfuricacid = VanillaFactory.createFluid("fumingsulfuricacid", Color.fromHex("C7DB8E"));
fumingsulfuricacid.register();

var sulfuricnitricacid = VanillaFactory.createFluid("sulfuricnitricacid", Color.fromHex("DFE58E"));
sulfuricnitricacid.register();

var fumingsulfuricnitricacid = VanillaFactory.createFluid("fumingsulfuricnitricacid", Color.fromHex("FAFFA8"));
fumingsulfuricnitricacid.register();

var flotation_solution = VanillaFactory.createFluid("flotation_solution", Color.fromHex("99E6FF"));
flotation_solution.register();

var flotation_waste = VanillaFactory.createFluid("flotation_waste", Color.fromHex("1A1A00"));
flotation_waste.register();

var iron_slurry = VanillaFactory.createFluid("iron_slurry", Color.fromHex("484848"));
iron_slurry.register();

var gold_slurry = VanillaFactory.createFluid("gold_slurry", Color.fromHex("484848"));
gold_slurry.register();

var copper_slurry = VanillaFactory.createFluid("copper_slurry", Color.fromHex("484848"));
copper_slurry.register();

var tin_slurry = VanillaFactory.createFluid("tin_slurry", Color.fromHex("484848"));
tin_slurry.register();

var lead_slurry = VanillaFactory.createFluid("lead_slurry", Color.fromHex("484848"));
lead_slurry.register();

var aluminium_slurry = VanillaFactory.createFluid("aluminium_slurry", Color.fromHex("484848"));
aluminium_slurry.register();

var titanium_slurry = VanillaFactory.createFluid("titanium_slurry", Color.fromHex("484848"));
titanium_slurry.register();

var tungsten_slurry = VanillaFactory.createFluid("tungsten_slurry", Color.fromHex("484848"));
tungsten_slurry.register();

var uranium_slurry = VanillaFactory.createFluid("uranium_slurry", Color.fromHex("484848"));
uranium_slurry.register();

var thorium_slurry = VanillaFactory.createFluid("thorium_slurry", Color.fromHex("484848"));
thorium_slurry.register();


//Petrochem liquid
var crude_heavy = VanillaFactory.createFluid("crude_heavy", Color.fromHex("252525"));
crude_heavy.viscosity = 3000;
crude_heavy.register();

var crude_heavy_desalted = VanillaFactory.createFluid("crude_heavy_desalted", Color.fromHex("252525"));
crude_heavy_desalted.viscosity = 3000;
crude_heavy_desalted.register();

var crude_heavy_desalted_hot = VanillaFactory.createFluid("crude_heavy_desalted_hot", Color.fromHex("252525"));
crude_heavy_desalted_hot.viscosity = 3000;
crude_heavy_desalted_hot.temperature = 1000;
crude_heavy_desalted_hot.register();

var crude_desalted = VanillaFactory.createFluid("crude_desalted", Color.fromHex("252525"));
crude_desalted.viscosity = 2000;
crude_desalted.register();

var crude_desalted_hot = VanillaFactory.createFluid("crude_desalted_hot", Color.fromHex("252525"));
crude_desalted_hot.viscosity = 2000;
crude_desalted_hot.temperature = 1000;
crude_desalted_hot.register();

var oil_brine = VanillaFactory.createFluid("oil_brine", Color.fromHex("ADD8E6"));
oil_brine.register();

var heavy_oil_hot = VanillaFactory.createFluid("heavy_oil_hot", Color.fromHex("DAA520"));
heavy_oil_hot.temperature = 1000;
heavy_oil_hot.register();

var gas_oil = VanillaFactory.createFluid("gas_oil", Color.fromHex("F4A460"));
gas_oil.register();

var vgo = VanillaFactory.createFluid("vgo", Color.fromHex("D2691E"));
vgo.register();

var naphtha_desulfurized = VanillaFactory.createFluid("naphtha_desulfurized", Color.fromHex("F5DEB3"));
naphtha_desulfurized.register();

var kerosene_desulfurized = VanillaFactory.createFluid("kerosene_desulfurized", Color.fromHex("87CEEB"));
kerosene_desulfurized.register();

var gas_oil_desulfurized = VanillaFactory.createFluid("gas_oil_desulfurized", Color.fromHex("F5B379"));
gas_oil_desulfurized.register();

var vgo_desulfurized = VanillaFactory.createFluid("vgo_desulfurized", Color.fromHex("DB813C"));
vgo_desulfurized.register();

var benzene = VanillaFactory.createFluid("benzene", Color.fromHex("8B4513"));
benzene.register();

var toluene = VanillaFactory.createFluid("toluene", Color.fromHex("A52A2A"));
toluene.register();

var toluenediisocyanate = VanillaFactory.createFluid("toluenediisocyanate", Color.fromHex("800000"));
toluenediisocyanate.register();

var glycerol = VanillaFactory.createFluid("glycerol", Color.fromHex("FFE4C4"));
glycerol.register();

var bisphenola = VanillaFactory.createFluid("bisphenola", Color.fromHex("FFFF00"));
bisphenola.register();

var phenol = VanillaFactory.createFluid("phenol", Color.fromHex("FAFAD2"));
phenol.register();

var acetone = VanillaFactory.createFluid("acetone", Color.fromHex("7FFF00"));
acetone.register();

var ethylbenzene = VanillaFactory.createFluid("ethylbenzene", Color.fromHex("CD853F"));
ethylbenzene.register();

var formaldehyde = VanillaFactory.createFluid("formaldehyde", Color.fromHex("F08080"));
formaldehyde.register();





//Petrochem Gas
var natural_gas = VanillaFactory.createFluid("natural_gas", Color.fromHex("E7F7CA"));
natural_gas.gaseous = true;
natural_gas.register();

var natural_gas_hot = VanillaFactory.createFluid("natural_gas_hot", Color.fromHex("E7F7CA"));
natural_gas_hot.gaseous = true;
natural_gas_hot.temperature = 1000;
natural_gas_hot.register();

var natural_gas_sour = VanillaFactory.createFluid("natural_gas_sour", Color.fromHex("E7F7CA"));
natural_gas_sour.gaseous = true;
natural_gas_sour.register();

var natural_gas_sour_hot = VanillaFactory.createFluid("natural_gas_sour_hot", Color.fromHex("E7F7CA"));
natural_gas_sour_hot.gaseous = true;
natural_gas_sour_hot.temperature = 1000;
natural_gas_sour_hot.register();

var gas_condensate = VanillaFactory.createFluid("gas_condensate", Color.fromHex("E1E1E1"));
gas_condensate.register();

var natural_gas_humid = VanillaFactory.createFluid("natural_gas_humid", Color.fromHex("E7F7CA"));
natural_gas_humid.gaseous = true;
natural_gas_humid.register();

var natural_gas_sour_humid = VanillaFactory.createFluid("natural_gas_sour_humid", Color.fromHex("E7F7CA"));
natural_gas_sour_humid.gaseous = true;
natural_gas_sour_humid.register();

var natural_gas_dried = VanillaFactory.createFluid("natural_gas_dried", Color.fromHex("E7F7CA"));
natural_gas_dried.gaseous = true;
natural_gas_dried.register();

var natural_gas_sour_dried = VanillaFactory.createFluid("natural_gas_sour_dried", Color.fromHex("E7F7CA"));
natural_gas_sour_dried.gaseous = true;
natural_gas_sour_dried.register();

var ngl = VanillaFactory.createFluid("ngl", Color.fromHex("98FB98"));
ngl.register();

var acid_gas = VanillaFactory.createFluid("acid_gas", Color.fromHex("F0E68C"));
acid_gas.gaseous = true;
acid_gas.register();

var methane_natural = VanillaFactory.createFluid("methane_natural", Color.fromHex("ADFF2F"));
methane_natural.gaseous = true;
methane_natural.register();

var methane = VanillaFactory.createFluid("methane", Color.fromHex("ADFF2F"));
methane.gaseous = true;
methane.register();

var ethane = VanillaFactory.createFluid("ethane", Color.fromHex("9ACD32"));
ethane.gaseous = true;
ethane.register();

var propane = VanillaFactory.createFluid("propane", Color.fromHex("32CD32"));
propane.gaseous = true;
propane.register();

var isopropane = VanillaFactory.createFluid("isopropane", Color.fromHex("32CD32"));
isopropane.gaseous = true;
isopropane.register();

var butane = VanillaFactory.createFluid("butane", Color.fromHex("228B22"));
butane.gaseous = true;
butane.register();

var isobutane = VanillaFactory.createFluid("isobutane", Color.fromHex("228B22"));
isobutane.gaseous = true;
isobutane.register();

var propene = VanillaFactory.createFluid("propene", Color.fromHex("FFE4B5"));
propene.gaseous = true;
propene.register();

var butadiene = VanillaFactory.createFluid("butadiene", Color.fromHex("BDB76B"));
butadiene.gaseous = true;
butadiene.register();

var refinerygas = VanillaFactory.createFluid("refinerygas", Color.fromHex("C1C1C1"));
refinerygas.gaseous = true;
refinerygas.register();

