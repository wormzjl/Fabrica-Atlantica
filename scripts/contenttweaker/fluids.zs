#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

//Chemicals
var animaloil = VanillaFactory.createFluid("animaloil", Color.fromHex("FDFFD9"));
animaloil.register();

var fumingsulfuricacid = VanillaFactory.createFluid("fumingsulfuricacid", Color.fromHex("C7DB8E"));
fumingsulfuricacid.register();

var sulfuricnitricacid = VanillaFactory.createFluid("sulfuricnitricacid", Color.fromHex("DFE58E"));
sulfuricnitricacid.register();

var fumingsulfuricnitricacid = VanillaFactory.createFluid("fumingsulfuricnitricacid", Color.fromHex("FAFFA8"));
fumingsulfuricnitricacid.register();


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


//Petrochem Gas

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
