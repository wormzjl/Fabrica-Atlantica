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

var rubber = VanillaFactory.createFluid("rubber", Color.fromHex("4D4D4D"));
rubber.viscosity = 2000;
rubber.register();

var formicacid = VanillaFactory.createFluid("formicacid", Color.fromHex("00FFFF"));
formicacid.register();

var chlorine = VanillaFactory.createFluid("chlorine", Color.fromHex("00FF00"));
chlorine.gaseous = true;
chlorine.register();

var phosgene = VanillaFactory.createFluid("phosgene", Color.fromHex("FFA07A"));
phosgene.gaseous = true;
phosgene.register();

var fumingsulfuricacid = VanillaFactory.createFluid("fumingsulfuricacid", Color.fromHex("C7DB8E"));
fumingsulfuricacid.register();

var sulfuricnitricacid = VanillaFactory.createFluid("sulfuricnitricacid", Color.fromHex("DFE58E"));
sulfuricnitricacid.register();

var fumingsulfuricnitricacid = VanillaFactory.createFluid("fumingsulfuricnitricacid", Color.fromHex("FAFFA8"));
fumingsulfuricnitricacid.register();

var epoxyresin = VanillaFactory.createFluid("epoxyresin", Color.fromHex("2AB4D7"));
epoxyresin.register();


//Mineral processing
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
var kerosene_desulfurized = VanillaFactory.createFluid("kerosene_desulfurized", Color.fromHex("87CEEB"));
kerosene_desulfurized.register();

var gas_oil_desulfurized = VanillaFactory.createFluid("gas_oil_desulfurized", Color.fromHex("F5B379"));
gas_oil_desulfurized.gaseous = true;
gas_oil_desulfurized.register();

var vgo_desulfurized = VanillaFactory.createFluid("vgo_desulfurized", Color.fromHex("DB813C"));
vgo_desulfurized.gaseous = true;
vgo_desulfurized.register();

var benzene = VanillaFactory.createFluid("benzene", Color.fromHex("8B4513"));
benzene.register();

var benzene_vapour = VanillaFactory.createFluid("benzene_vapour", Color.fromHex("8B4513"));
benzene_vapour.gaseous = true;
benzene_vapour.register();

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

var ethylene_glycol = VanillaFactory.createFluid("ethylene_glycol", Color.fromHex("9CC9EC"));
ethylene_glycol.register();

var ethylene_glycol_rich = VanillaFactory.createFluid("ethylene_glycol_rich", Color.fromHex("9CC9EC"));
ethylene_glycol_rich.register();

var ethylene_oxide = VanillaFactory.createFluid("ethylene_oxide", Color.fromHex("69AEE2"));
ethylene_oxide.register();

var naphtha_cracked = VanillaFactory.createFluid("naphtha_cracked", Color.fromHex("F0E1C3"));
naphtha_cracked.register();

var naphtha_cracked_hot = VanillaFactory.createFluid("naphtha_cracked_hot", Color.fromHex("F0E1C3"));
naphtha_cracked_hot.temperature = 1000;
naphtha_cracked_hot.register();

var gas_oil_cracked = VanillaFactory.createFluid("gas_oil_cracked", Color.fromHex("FFB270"));
gas_oil_cracked.register();

var gas_oil_cracked_hot = VanillaFactory.createFluid("gas_oil_cracked_hot", Color.fromHex("FFB270"));
gas_oil_cracked_hot.temperature = 1000;
gas_oil_cracked_hot.register();


//Petrochem Gas
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

var propene = VanillaFactory.createFluid("propene", Color.fromHex("23A923"));
propene.gaseous = true;
propene.register();

var butadiene = VanillaFactory.createFluid("butadiene", Color.fromHex("BDB76B"));
butadiene.gaseous = true;
butadiene.register();

var refinerygas = VanillaFactory.createFluid("refinerygas", Color.fromHex("C1C1C1"));
refinerygas.gaseous = true;
refinerygas.register();

var butane_cracked = VanillaFactory.createFluid("butane_cracked", Color.fromHex("2B9F2B"));
butane_cracked.gaseous = true;
butane_cracked.register();

var butane_cracked_hot = VanillaFactory.createFluid("butane_cracked_hot", Color.fromHex("2B9F2B"));
butane_cracked_hot.gaseous = true;
butane_cracked_hot.temperature = 1000;
butane_cracked_hot.register();

var propane_cracked = VanillaFactory.createFluid("propane_cracked", Color.fromHex("3ED73E"));
propane_cracked.gaseous = true;
propane_cracked.register();

var propane_cracked_hot = VanillaFactory.createFluid("propane_cracked_hot", Color.fromHex("3ED73E"));
propane_cracked_hot.gaseous = true;
propane_cracked_hot.temperature = 1000;
propane_cracked_hot.register();

var ethane_cracked = VanillaFactory.createFluid("ethane_cracked", Color.fromHex("A4D83C"));
ethane_cracked.gaseous = true;
ethane_cracked.register();

var ethane_cracked_hot = VanillaFactory.createFluid("ethane_cracked_hot", Color.fromHex("A4D83C"));
ethane_cracked_hot.gaseous = true;
ethane_cracked_hot.temperature = 1000;
ethane_cracked_hot.register();

var syngas_hot = VanillaFactory.createFluid("syngas_hot", Color.fromHex("545454"));
syngas_hot.gaseous = true;
syngas_hot.temperature = 1000;
syngas_hot.register();

var fuel_gas = VanillaFactory.createFluid("fuel_gas", Color.fromHex("A4D83C"));
fuel_gas.gaseous = true;
fuel_gas.register();

var fuel_gas_raw = VanillaFactory.createFluid("fuel_gas_raw", Color.fromHex("A4D83C"));
fuel_gas_raw.gaseous = true;
fuel_gas_raw.register();

var gas_oil_hydrocracked = VanillaFactory.createFluid("gas_oil_hydrocracked", Color.fromHex("F4A460"));
gas_oil_hydrocracked.register();

var vgo_hydrocracked = VanillaFactory.createFluid("vgo_hydrocracked", Color.fromHex("D2691E"));
vgo_hydrocracked.register();

var gas_oil_fcc = VanillaFactory.createFluid("gas_oil_fcc", Color.fromHex("F4A460"));
gas_oil_fcc.gaseous = true;
gas_oil_fcc.register();

var vgo_fcc = VanillaFactory.createFluid("vgo_fcc", Color.fromHex("D2691E"));
vgo_fcc.gaseous = true;
vgo_fcc.register();

var naphtha_reformed = VanillaFactory.createFluid("naphtha_reformed", Color.fromHex("F5DEB3"));
naphtha_reformed.register();

var pygas = VanillaFactory.createFluid("pygas", Color.fromHex("FFB31A"));
pygas.register();

var vgo_cracked_hot = VanillaFactory.createFluid("vgo_cracked_hot", Color.fromHex("D2691E"));
vgo_cracked_hot.temperature = 1000;
vgo_cracked_hot.register();

var vgo_cracked = VanillaFactory.createFluid("vgo_cracked", Color.fromHex("D2691E"));
vgo_cracked.register();

var gasoline_adv = VanillaFactory.createFluid("gasoline_adv", Color.fromHex("CC8800"));
gasoline_adv.register();

var gasoline_bio = VanillaFactory.createFluid("gasoline_bio", Color.fromHex("E69900"));
gasoline_bio.register();

var diesel_bio = VanillaFactory.createFluid("diesel_bio", Color.fromHex("86592D"));
diesel_bio.register();

var gasoline_adv_bio = VanillaFactory.createFluid("gasoline_adv_bio", Color.fromHex("FFAA00"));
gasoline_adv_bio.register();

var ftproduct = VanillaFactory.createFluid("ftproduct", Color.fromHex("FFE0CC"));
ftproduct.register();

var wgsproduct = VanillaFactory.createFluid("wgsproduct", Color.fromHex("F5F5F0"));
wgsproduct.gaseous = true;
wgsproduct.register();

var cumene = VanillaFactory.createFluid("cumene", Color.fromHex("FFCC33"));
cumene.register();

var propyleneoxide = VanillaFactory.createFluid("propyleneoxide", Color.fromHex("166A16"));
propyleneoxide.gaseous = true;
propyleneoxide.register();

var polyol = VanillaFactory.createFluid("polyol", Color.fromHex("FFFFCC"));
polyol.register();
