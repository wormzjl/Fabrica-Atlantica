import crafttweaker.block.IBlock;

import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.event.IBlockEvent;

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent ) {
    var id as string = event.block.definition.id;
    var meta as int = event.block.meta;

    if (id == "<aquamunda:farmland:7>" ){
        event.drops = [
            <primal:mud_clump>*2
        ];
    }
});
