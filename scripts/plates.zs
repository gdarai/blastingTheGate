import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

// Fixing all the plates

mods.unidict.removalByKind.get("Crafting").remove("plate");

val plPlates = {
    copper : <immersiveengineering:metal:30>,
    gold : <immersiveengineering:metal:40>,
    silver : <immersiveengineering:metal:33>,
    uran : <immersiveengineering:metal:35>,
    const : <immersiveengineering:metal:36>,
    alu : <immersiveengineering:metal:31>,
    lead : <immersiveengineering:metal:32>,
    elect : <immersiveengineering:metal:37>,
    iron : <immersiveengineering:metal:39>,
    nick : <immersiveengineering:metal:34>,
    steel : <immersiveengineering:metal:38>,
    thMithm : <thaumadditions:mithminite_plate>,
    thMithr : <thaumadditions:mithrillium_plate>,
    thAdam : <thaumadditions:adaminite_plate>,
    thThm : <thaumicbases:thauminite_plate>,
    thPer : <thaumicrestoration:item_plate:5>,
    thOrd : <thaumicrestoration:item_plate:4>,
    thTer : <thaumicrestoration:item_plate:3>,
    thAqu : <thaumicrestoration:item_plate:2>,
    thIgn : <thaumicrestoration:item_plate:1>,
    thAer : <thaumicrestoration:item_plate>,
    thVoid : <thaumcraft:plate:3>,
    thThaum : <thaumcraft:plate:2>,
    thBrass : <thaumcraft:plate>
} as IItemStack[string];

var plIngots = {
    copper : <ore:ingotCopper>,
    gold : <ore:ingotGold>,
    silver : <ore:ingotSilver>,
    thVoid : <ore:ingotVoid>,
    thThaum : <ore:ingotThaumium>,
    thBrass : <ore:ingotBrass>,
    const : <ore:ingotConstantan>,
    alu : <ore:ingotAluminum>,
    lead : <ore:ingotLead>,
    iron : <ore:ingotIron>,
    nick : <ore:ingotNickel>,
    elect : <ore:ingotElectrum>,
    steel : <ore:ingotSteel>,
    thMithm : <ore:ingotMithminite>,
    thMithr : <ore:ingotMithrillium>,
    thAdam : <ore:ingotAdaminite>,
    thThm : <ore:ingotThauminite>,
    thPer : <ore:ingotThaumiumPerditio>,
    thOrd : <ore:ingotThaumiumOrdo>,
    thTer : <ore:ingotThaumiumTerra>,
    thAqu : <ore:ingotThaumiumAqua>,
    thIgn : <ore:ingotThaumiumIgnis>,
    thAer : <ore:ingotThaumiumAer>  
} as IOreDictEntry[string];

var plLiquids = {
    copper : <liquid:copper>,
    gold : <liquid:gold>,
    silver : <liquid:silver>,
    const : <liquid:constantan>,
    alu : <liquid:aluminum>,
    lead : <liquid:lead>,
    elect : <liquid:electrum>,
    iron : <liquid:iron>,
    nick : <liquid:nickel>,
    lead : <liquid:lead>
} as ILiquidStack[string];

var plAll = ["copper", "gold", "silver", "uran", "thBrass", "thThaum", "thVoid", "thPer", "thOrd", "thTer", "thAqu", "thIgn", "thAer", "const", "alu", "lead", "elect", "iron", "nick", "thMithm", "thMithr", "thAdam", "thThm" ] as string[];
var plNamesHammer = ["copper", "gold", "silver", "lead" ] as string[];
var plNamesCast = [ "const", "alu", "elect", "nick", "iron", "steel" ] as string[];
var plNamesStamp = [ "thBrass", "thThaum", "thVoid", "thMithm", "thMithr", "thAdam", "thThm", "thPer", "thOrd", "thTer", "thAqu", "thIgn", "thAer" ] as string[];

for name in plAll {
    var plate = plPlates[name];

    // Remove All
    recipes.remove(plate);
    mods.tconstruct.Casting.removeTableRecipe(plate);
    mods.embers.Stamper.remove(plate);
    mods.immersiveengineering.MetalPress.removeRecipe(plate);
}

for name in plAll {
    var plate = plPlates[name];
    var ingot = plIngots[name];

    // Recreate All
    var test = 0;
    if (plNamesHammer has name) {
        test = 1;
        recipes.addShapeless("tweak-hp-" ~ name, plate, [ingot, ingot, <ore:ingotPsi>, <embers:tinker_hammer>]);
    }
    if (test == 1 | plNamesCast has name) {
        test = 1;
        var liquid = plLiquids[name];
        mods.tconstruct.Casting.addTableRecipe(plate, <tconstruct:cast_custom:3>, liquid, 288);
    }
    if (test == 1 | plNamesStamp has name) {
        test = 1;
        mods.embers.Stamper.add(plate, <liquid:lava>, <embers:stamp_plate>, ingot);
    }
    mods.immersiveengineering.MetalPress.addRecipe(plate, ingot, <immersiveengineering:mold>, 2000);
}
