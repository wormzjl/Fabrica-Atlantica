#priority 500

import mods.zenstages.Stage;

mods.recipestages.Recipes.setPrintContainers(true);

var allStages = ["forestry", "world"] as string[];

mods.recipestages.Recipes.setPackageStage("appeng", allStages);
mods.recipestages.Recipes.setPackageStage("blusunrize.immersiveengineering", allStages);
mods.recipestages.Recipes.setPackageStage("li.cil.oc", allStages);
//mods.recipestages.Recipes.setPackageStage("mcjty.rftools", allStages);
mods.recipestages.Recipes.setPackageStage("ic2.core", allStages);


//mods.recipestages.Recipes.setPackageStage("fi.dy.masa.autoverse", allStages);

//mods.recipestages.Recipes.setContainerStage("fi.dy.masa.autoverse.inventory.container.ContainerCrafter", allStages);
