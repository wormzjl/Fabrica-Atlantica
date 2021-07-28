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
var glycerol = VanillaFactory.createFluid("glycerol", Color.fromHex("FFE4C4"));
glycerol.register();

var naphtha_cracked = VanillaFactory.createFluid("naphtha_cracked", Color.fromHex("F0E1C3"));
naphtha_cracked.register();

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

var refinerygas = VanillaFactory.createFluid("refinerygas", Color.fromHex("C1C1C1"));
refinerygas.gaseous = true;
refinerygas.register();

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

var vgo_cracked_hot = VanillaFactory.createFluid("vgo_cracked_hot", Color.fromHex("D2691E"));
vgo_cracked_hot.temperature = 1000;
vgo_cracked_hot.register();

var vgo_cracked = VanillaFactory.createFluid("vgo_cracked", Color.fromHex("D2691E"));
vgo_cracked.register();

var gasoline_bio = VanillaFactory.createFluid("gasoline_bio", Color.fromHex("E69900"));
gasoline_bio.register();

var diesel_bio = VanillaFactory.createFluid("diesel_bio", Color.fromHex("86592D"));
diesel_bio.register();

var gasoline_adv_bio = VanillaFactory.createFluid("gasoline_adv_bio", Color.fromHex("FFAA00"));
gasoline_adv_bio.register();

var cumene = VanillaFactory.createFluid("cumene", Color.fromHex("FFCC33"));
cumene.register();

var propyleneoxide = VanillaFactory.createFluid("propyleneoxide", Color.fromHex("166A16"));
propyleneoxide.gaseous = true;
propyleneoxide.register();

var polyol = VanillaFactory.createFluid("polyol", Color.fromHex("FFFFCC"));
polyol.register();
