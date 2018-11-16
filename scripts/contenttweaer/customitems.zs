#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

//blocks
var alumina_block = VanillaFactory.createBlock("alumina_block", <blockmaterial:rock>);
alumina_block.register();


//items
var alumina = VanillaFactory.createItem("alumina");
alumina.register();

var tio2 = VanillaFactory.createItem("tio2");
tio2.register();

var tungsticacid = VanillaFactory.createItem("tungsticacid");
tungsticacid.register();

var berylliumingot = VanillaFactory.createItem("berylliumingot");
berylliumingot.register();

var rawrubber = VanillaFactory.createItem("rawrubber");
rawrubber.register();

var driedrawrubber = VanillaFactory.createItem("driedrawrubber");
driedrawrubber.register();

var scrap1 = VanillaFactory.createItem("scrap1");
scrap1.maxStackSize = 4;
scrap1.register();

var scrap2 = VanillaFactory.createItem("scrap2");
scrap2.maxStackSize = 4;
scrap2.register();

var scrap3 = VanillaFactory.createItem("scrap3");
scrap3.maxStackSize = 4;
scrap3.register();

var scrap4 = VanillaFactory.createItem("scrap4");
scrap4.maxStackSize = 4;
scrap4.register();

var scrap5 = VanillaFactory.createItem("scrap5");
scrap5.maxStackSize = 4;
scrap5.register();

var scrap6 = VanillaFactory.createItem("scrap6");
scrap6.maxStackSize = 4;
scrap6.register();

var scrap7 = VanillaFactory.createItem("scrap7");
scrap7.maxStackSize = 4;
scrap7.register();

var scrap8 = VanillaFactory.createItem("scrap8");
scrap8.maxStackSize = 4;
scrap8.register();

var scrap9 = VanillaFactory.createItem("scrap9");
scrap9.maxStackSize = 4;
scrap9.register();

var scrapmetal1 = VanillaFactory.createItem("scrapmetal1");
scrapmetal1.maxStackSize = 8;
scrapmetal1.register();

var scrapmetal2 = VanillaFactory.createItem("scrapmetal2");
scrapmetal2.maxStackSize = 8;
scrapmetal2.register();

var scrapmetal3 = VanillaFactory.createItem("scrapmetal3");
scrapmetal3.maxStackSize = 8;
scrapmetal3.register();

var scrapmetal4 = VanillaFactory.createItem("scrapmetal4");
scrapmetal4.maxStackSize = 8;
scrapmetal4.register();

var scrapmetal5 = VanillaFactory.createItem("scrapmetal5");
scrapmetal5.maxStackSize = 8;
scrapmetal5.register();

var scrapmetal6 = VanillaFactory.createItem("scrapmetal6");
scrapmetal6.maxStackSize = 8;
scrapmetal6.register();


//fluids
var animaloil = VanillaFactory.createFluid("animaloil", Color.fromHex("FDFFD9"));
animaloil.register();

var liquidrubber = VanillaFactory.createFluid("liquidrubber", Color.fromHex("7A7A7A"));
liquidrubber.viscosity = 2000;
liquidrubber.register();

var formicacid = VanillaFactory.createFluid("formicacid", Color.fromHex("00FFFF"));
formicacid.register();
