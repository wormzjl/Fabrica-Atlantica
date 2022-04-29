#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.IItemUse;
import mods.contenttweaker.Block;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.World;

//grass seed
var grassseed = VanillaFactory.createItem("grassseed");
grassseed.maxStackSize = 16;
grassseed.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (world.getBlockState(pos) == <block:minecraft:dirt>) {
        world.setBlockState(<block:minecraft:grass>, pos);
        player.getHeldItem(hand).shrink(1);
        return ActionResult.success();
    }
    return ActionResult.pass();
};
grassseed.register();


//blocks
var alumina_block = VanillaFactory.createBlock("alumina_block", <blockmaterial:rock>);
alumina_block.register();

var centrifuge = VanillaFactory.createBlock("centrifuge", <blockmaterial:iron>);
centrifuge.fullBlock = false;
centrifuge.register();

var scrapiron = VanillaFactory.createBlock("scrapiron", <blockmaterial:iron>);
scrapiron.register();

var compressedbark = VanillaFactory.createBlock("compressedbark", <blockmaterial:wood>);
compressedbark.register();

var compressedsawdust = VanillaFactory.createBlock("compressedsawdust", <blockmaterial:wood>);
compressedsawdust.register();

var steelcasing = VanillaFactory.createBlock("steelcasing", <blockmaterial:iron>);
steelcasing.register();

var sscasing = VanillaFactory.createBlock("sscasing", <blockmaterial:iron>);
sscasing.register();

var hacasing = VanillaFactory.createBlock("hacasing", <blockmaterial:iron>);
hacasing.register();

var ticasing = VanillaFactory.createBlock("ticasing", <blockmaterial:iron>);
ticasing.register();

var invarcasing = VanillaFactory.createBlock("invarcasing", <blockmaterial:iron>);
invarcasing.register();

var separatorinternal = VanillaFactory.createBlock("separatorinternal", <blockmaterial:iron>);
separatorinternal.register();

var columninternal = VanillaFactory.createBlock("columninternal", <blockmaterial:iron>);
columninternal.register();

var reactorinternal = VanillaFactory.createBlock("reactorinternal", <blockmaterial:iron>);
reactorinternal.register();

var advreactorinternal = VanillaFactory.createBlock("advreactorinternal", <blockmaterial:iron>);
advreactorinternal.register();

var membrane = VanillaFactory.createBlock("membrane", <blockmaterial:iron>);
membrane.register();

//items
var cdteingot = VanillaFactory.createItem("cdteingot");
cdteingot.register();

var glassfiber = VanillaFactory.createItem("glassfiber");
glassfiber.maxStackSize = 32;
glassfiber.register();

var ndmagnet = VanillaFactory.createItem("ndmagnet");
ndmagnet.maxStackSize = 16;
ndmagnet.register();

var tungsticacid = VanillaFactory.createItem("tungsticacid");
tungsticacid.maxStackSize = 16;
tungsticacid.register();

var rawrubber = VanillaFactory.createItem("rawrubber");
rawrubber.maxStackSize = 16;
rawrubber.register();

var driedrawrubber = VanillaFactory.createItem("driedrawrubber");
driedrawrubber.maxStackSize = 16;
driedrawrubber.register();

var scrap1 = VanillaFactory.createItem("scrap1");
scrap1.maxStackSize = 8;
scrap1.register();

var scrap2 = VanillaFactory.createItem("scrap2");
scrap2.maxStackSize = 8;
scrap2.register();

var scrap3 = VanillaFactory.createItem("scrap3");
scrap3.maxStackSize = 8;
scrap3.register();

var scrap4 = VanillaFactory.createItem("scrap4");
scrap4.maxStackSize = 8;
scrap4.register();

var scrap5 = VanillaFactory.createItem("scrap5");
scrap5.maxStackSize = 8;
scrap5.register();

var scrap6 = VanillaFactory.createItem("scrap6");
scrap6.maxStackSize = 8;
scrap6.register();

var scrap7 = VanillaFactory.createItem("scrap7");
scrap7.maxStackSize = 8;
scrap7.register();

var scrap8 = VanillaFactory.createItem("scrap8");
scrap8.maxStackSize = 8;
scrap8.register();

var scrap9 = VanillaFactory.createItem("scrap9");
scrap9.maxStackSize = 8;
scrap9.register();

var solarcell = VanillaFactory.createItem("solarcell");
solarcell.maxStackSize = 4;
solarcell.register();

var advsolarcell = VanillaFactory.createItem("advsolarcell");
advsolarcell.maxStackSize = 4;
advsolarcell.register();

var scalcomb = VanillaFactory.createItem("scalcomb");
scalcomb.maxStackSize = 16;
scalcomb.register();

var bushingadv = VanillaFactory.createItem("bushingadv");
bushingadv.maxStackSize = 1;
bushingadv.register();

var mold_pellet = VanillaFactory.createItem("mold_pellet");
mold_pellet.maxStackSize = 1;
mold_pellet.register();

var tinyzr = VanillaFactory.createItem("tinyzr");
tinyzr.register();

var tinysb = VanillaFactory.createItem("tinysb");
tinysb.register();

var titaniumsponge = VanillaFactory.createItem("titaniumsponge");
titaniumsponge.maxStackSize = 1;
titaniumsponge.register();

var gearbox = VanillaFactory.createItem("gearbox");
gearbox.maxStackSize = 1;
gearbox.register();

var urea = VanillaFactory.createItem("urea");
urea.register();

var melamine = VanillaFactory.createItem("melamine");
melamine.register();

var dinitrotoluene = VanillaFactory.createItem("dinitrotoluene");
dinitrotoluene.register();

var trinitrotoluene = VanillaFactory.createItem("trinitrotoluene");
trinitrotoluene.register();

var diaminotoluene = VanillaFactory.createItem("diaminotoluene");
diaminotoluene.register();

var advplastic = VanillaFactory.createItem("advplastic");
advplastic.maxStackSize = 16;
advplastic.register();

var electromagnet = VanillaFactory.createItem("electromagnet");
electromagnet.maxStackSize = 1;
electromagnet.register();

var motor = VanillaFactory.createItem("motor");
motor.maxStackSize = 1;
motor.register();

var controller = VanillaFactory.createItem("controller");
controller.maxStackSize = 1;
controller.register();

var advcontroller = VanillaFactory.createItem("advcontroller");
advcontroller.maxStackSize = 1;
advcontroller.register();

var eengine = VanillaFactory.createItem("eengine");
eengine.maxStackSize = 1;
eengine.register();

var nuke = VanillaFactory.createItem("nuke");
nuke.maxStackSize = 1;
nuke.register();

var data1 = VanillaFactory.createItem("data1");
data1.maxStackSize = 1;
data1.register();

var resistor = VanillaFactory.createItem("resistor");
resistor.maxStackSize = 16;
resistor.register();

var advancedwafer = VanillaFactory.createItem("advancedwafer");
advancedwafer.maxStackSize = 16;
advancedwafer.register();

var solder = VanillaFactory.createItem("solder");
solder.register();

var fiberglassboard = VanillaFactory.createItem("fiberglassboard");
fiberglassboard.maxStackSize = 16;
fiberglassboard.register();

//Material system alt
var gearpart_iron = VanillaFactory.createItem("gearpart_iron");
gearpart_iron.maxStackSize = 1;
gearpart_iron.register();

var gearpart_steel = VanillaFactory.createItem("gearpart_steel");
gearpart_steel.maxStackSize = 1;
gearpart_steel.register();

var gearpart_bronze = VanillaFactory.createItem("gearpart_bronze");
gearpart_bronze.maxStackSize = 1;
gearpart_bronze.register();

var gearpart_brass = VanillaFactory.createItem("gearpart_brass");
gearpart_brass.maxStackSize = 1;
gearpart_brass.register();

var gearpart_invar = VanillaFactory.createItem("gearpart_invar");
gearpart_invar.maxStackSize = 1;
gearpart_invar.register();

var gearpart_ssteel = VanillaFactory.createItem("gearpart_ssteel");
gearpart_ssteel.maxStackSize = 1;
gearpart_ssteel.register();

var gearpart_titanium = VanillaFactory.createItem("gearpart_titanium");
gearpart_titanium.maxStackSize = 1;
gearpart_titanium.register();

var gearpart_tungsten = VanillaFactory.createItem("gearpart_tungsten");
gearpart_tungsten.maxStackSize = 1;
gearpart_tungsten.register();

var gear_ssteel = VanillaFactory.createItem("gear_ssteel");
gear_ssteel.maxStackSize = 1;
gear_ssteel.register();

var gear_titanium = VanillaFactory.createItem("gear_titanium");
gear_titanium.maxStackSize = 1;
gear_titanium.register();

var gear_tungsten = VanillaFactory.createItem("gear_tungsten");
gear_tungsten.maxStackSize = 1;
gear_tungsten.register();

var data_t1 = VanillaFactory.createItem("data_t1");
data_t1.maxStackSize = 1;
data_t1.register();

var data_t2 = VanillaFactory.createItem("data_t2");
data_t2.maxStackSize = 1;
data_t2.register();

var data_t3 = VanillaFactory.createItem("data_t3");
data_t3.maxStackSize = 1;
data_t3.register();

var data_t4 = VanillaFactory.createItem("data_t4");
data_t4.maxStackSize = 1;
data_t4.register();

var data_t5 = VanillaFactory.createItem("data_t5");
data_t5.maxStackSize = 1;
data_t5.register();
