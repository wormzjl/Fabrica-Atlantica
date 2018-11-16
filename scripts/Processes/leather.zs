recipes.remove(<minecraft:leather>);

//Removing BWM tanned leather
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:6>]);
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:32>]);

//Replacement recipes
recipes.addShapeless(<betterwithmods:material:6>,[<primal:hide_tanned>]);
recipes.addShapeless(<primal:hide_tanned>,[<betterwithmods:material:6>]);

recipes.addShapeless(<betterwithmods:material:32>*2,[<primal:hide_tanned>,<ore:toolShears>.transformDamage(1)]);


//Upgraded process
mods.betterwithmods.Cauldron.addStoked([<primal:hide_dried>, <betterwithmods:bark>*5],[<primal:hide_tanned>]);
mods.betterwithmods.Cauldron.addStoked([<primal:hide_dried>, <betterwithmods:bark:1>*3],[<primal:hide_tanned>]);
mods.betterwithmods.Cauldron.addStoked([<primal:hide_dried>, <betterwithmods:bark:2>*2],[<primal:hide_tanned>]);
mods.betterwithmods.Cauldron.addStoked([<primal:hide_dried>, <betterwithmods:bark:3>*4],[<primal:hide_tanned>]);
mods.betterwithmods.Cauldron.addStoked([<primal:hide_dried>, <betterwithmods:bark:4>*8],[<primal:hide_tanned>]);
mods.betterwithmods.Cauldron.addStoked([<primal:hide_dried>, <betterwithmods:bark:5>*8],[<primal:hide_tanned>]);
mods.betterwithmods.Cauldron.addStoked([<primal:hide_dried>, <betterwithmods:bark:6>*8],[<primal:hide_tanned>]);

//Industrial process

