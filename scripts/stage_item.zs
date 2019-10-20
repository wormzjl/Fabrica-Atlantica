#priority 401

import crafttweaker.item.IItemStack;
import scripts.functions;

val excluded = [<forestry:bee_house>, <forestry:bee_queen_ge:*>, <forestry:bee_drone_ge:*>, <forestry:bee_princess_ge:*>, <forestry:bee_combs:*>] as IItemStack[];

for item in loadedMods["forestry"].items {
  if !(functions.inArray(item, excluded)) {
    functions.stageItem("forestry", item);
  }
  else {
    logger.logInfo("Not Staging" ~ item.displayName);
  }
}
