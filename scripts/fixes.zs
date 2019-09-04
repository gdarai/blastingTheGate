// Silk
recipes.removeShapeless(<minecraft:string> * 9, [<erebus:silk>]);
recipes.remove(<erebus:silk>);
recipes.addShaped(<minecraft:string> * 8, [[<erebus:silk>, null, null],[null, null, null], [null, null, null]]);
recipes.addShaped(<erebus:silk>, [[<minecraft:string>, <minecraft:string>, <minecraft:string>],[<minecraft:string>, null, <minecraft:string>], [<minecraft:string>, <minecraft:string>, <minecraft:string>]]);

// Spellbooks and totems
recipes.addShapeless(<minecraft:gold_nugget> * 3, [<everlastingabilities:ability_totem>]);
recipes.addShapeless(<minecraft:paper> * 2, [<ebwizardry:spell_book>]);

// Wizardry
recipes.addShaped(<ebwizardry:grand_crystal>, [[<ebwizardry:magic_crystal>, <ebwizardry:magic_crystal>, <ebwizardry:magic_crystal>],[<ebwizardry:magic_crystal>, <ebwizardry:magic_crystal>, <ebwizardry:magic_crystal>], [<ebwizardry:magic_crystal>, <ebwizardry:magic_crystal>, <ebwizardry:magic_crystal>]]);
