mods.recipestages.Recipes.setPrintContainers(true);

static t0 as string[] = [
    "forestry",
    "world"
];

static t1 as string[] = [
    "forestry",
    "basictech"
];

static allStages as string[] = [
    "forestry",
    "basictech"
];

mods.recipestages.Recipes.setPackageStage("appeng", allStages);
mods.recipestages.Recipes.setPackageStage("blusunrize.immersiveengineering", t1);
mods.recipestages.Recipes.setPackageStage("li.cil.oc", allStages);
//mods.recipestages.Recipes.setPackageStage("mcjty.rftools", allStages);
mods.recipestages.Recipes.setPackageStage("ic2", allStages);


mods.recipestages.Recipes.setPackageStage("autoverse", allStages);

//mods.recipestages.Recipes.setContainerStage("fi.dy.masa.autoverse.inventory.container.ContainerCrafter", allStages);
