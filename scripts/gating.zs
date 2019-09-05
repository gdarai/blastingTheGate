import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

// Botania
recipes.remove(<botania:fertilizer>);
recipes.addShaped(<botania:fertilizer>, [[<rootsclassic:elderberry>, <twilightforest:firefly>, <rootsclassic:elderberry>],[<twilightforest:firefly>, <minecraft:dye:15>, <twilightforest:firefly>], [<rootsclassic:elderberry>, <twilightforest:firefly>, <rootsclassic:elderberry>]]);


// Advanced TConstruct
recipes.remove(<tconstruct:soil>);
recipes.addShapeless(<tconstruct:soil>, [<minecraft:sand>,<minecraft:gravel>,<psi:material>,<botania:manaresource:23>,<minecraft:clay_ball>]);


// Erebus portal
recipes.remove(<erebus:altar_offering>);
recipes.addShaped(<erebus:altar_offering>, [[<bloodmagic:demon_brick_2:10>, <botania:manaresource:7>, <bloodmagic:demon_brick_2:10>],[<bloodmagic:demon_brick_2:10>, <thaumicbases:blockthauminite>, <bloodmagic:demon_brick_2:10>], [<botania:storage>, <bloodmagic:demon_brick_2:10>, <botania:storage>]]);


// Basic MystAgric
recipes.removeShaped(<mysticalagriculture:crafting:16>);
recipes.addShaped(<mysticalagriculture:crafting:16>, [[<ore:gemAmbrosium>, <mysticalagriculture:crafting:5>, <ore:gemAmbrosium>],[<mysticalagriculture:crafting:5>, <botania:grassseeds>, <mysticalagriculture:crafting:5>], [<ore:gemAmbrosium>, <mysticalagriculture:crafting:5>, <ore:gemAmbrosium>]]);


// Wizardry Seeds
recipes.remove(<t3s4ebw:magic_seed>);
recipes.addShaped(<t3s4ebw:magic_seed>, [[<embers:seed_silver>, <thaumicbases:fireingot>, <embers:seed_gold>],[<thaumicbases:airingot>, <botania:grassseeds>, <thaumicbases:earthingot>], [<embers:seed_gold>, <thaumicbases:wateringot>, <embers:seed_silver>]]);


// Immersive Engineering
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped(<immersiveengineering:stone_decoration>, [[<aether_legacy:ambrosium_shard>, <tconstruct:materials:2>, <aether_legacy:ambrosium_shard>],[<tconstruct:materials:2>, <erebus:amber_glass>, <tconstruct:materials:2>], [<aether_legacy:ambrosium_shard>, <tconstruct:materials:2>, <aether_legacy:ambrosium_shard>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:1>, [[<thebetweenlands:items_misc:18>, <minecraft:netherbrick>, <thebetweenlands:items_misc:18>],[<minecraft:netherbrick>, <erebus:amber_glass>, <minecraft:netherbrick>], [<thebetweenlands:items_misc:18>, <minecraft:netherbrick>, <thebetweenlands:items_misc:18>]]);


// Advanced Mystical Agric
recipes.remove(<mysticalagriculture:crafting:20>);
recipes.addShaped(<mysticalagriculture:crafting:20>, [[<astralsorcery:itemcraftingcomponent:2>, <mysticalagriculture:crafting:19>, <astralsorcery:itemcraftingcomponent:2>],[<mysticalagriculture:crafting:19>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <mysticalagriculture:crafting:19>], [<astralsorcery:itemcraftingcomponent:2>, <mysticalagriculture:crafting:19>, <astralsorcery:itemcraftingcomponent:2>]]);


// Mystcraft
recipes.remove(<mystcraft:blockbookbinder>);
recipes.remove(<mystcraft:blockinkmixer>);
recipes.addShaped(<mystcraft:blockinkmixer>, [[<aether_legacy:holystone_brick>, null, <aether_legacy:holystone_brick>],[<aether_legacy:holystone_brick>, <botania:pool:3>, <aether_legacy:holystone_brick>], [<erebus:capstone>, <aether_legacy:holystone_brick>, <erebus:capstone>]]);
recipes.addShaped(<mystcraft:blockbookbinder>, [[<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:1>],[<thaumcraft:plank_silverwood>, <thaumcraft:metal_void>, <thaumcraft:plank_silverwood>], [<thaumcraft:plank_silverwood>, null, <thaumcraft:plank_silverwood>]]);


// ProjectE
recipes.remove(<projecte:transmutation_table>);
recipes.addShaped(<projecte:transmutation_table>, [[<thaumcraft:plate:3>, <mysticalagriculture:jade_seeds>, <thaumcraft:plate:3>],[<mysticalagriculture:valonite_seeds>, <mystcraft:blockcrystal>, <mysticalagriculture:draconium_seeds>], [<thaumcraft:plate:3>, <mysticalagriculture:fiery_ingot_seeds>, <thaumcraft:plate:3>]]);


// Remove Uranium recipe
furnace.remove(<immersiveengineering:metal:5>);
mods.tconstruct.Casting.removeTableRecipe(<immersiveengineering:metal:5>);
mods.tconstruct.Casting.removeTableRecipe(<immersiveengineering:metal:25>);
mods.tconstruct.Casting.removeBasinRecipe(<immersiveengineering:storage:5>);
mods.tconstruct.Melting.removeRecipe(<liquid:uranium>);

recipes.remove(<immersiveengineering:metal:5>);
recipes.addShaped(<immersiveengineering:ore:5> * 2, [[<mysticalagriculture:uranium_essence>, <mysticalagriculture:uranium_essence>, <mysticalagriculture:uranium_essence>],[<mysticalagriculture:uranium_essence>, null, <mysticalagriculture:uranium_essence>], [<mysticalagriculture:uranium_essence>, <mysticalagriculture:uranium_essence>, <mysticalagriculture:uranium_essence>]]);
mods.tconstruct.Casting.addBasinRecipe(<immersiveengineering:ore:5>, <minecraft:cobblestone>, <liquid:uranium>, 36, true, 200);

// Ender IO
recipes.remove(<enderio:item_material:66>);
recipes.remove(<enderio:item_material>);
recipes.addShaped(<enderio:item_material:66>, [[<enderio:block_end_iron_bars>, <thaumcraft:stone_ancient_glyphed>, <enderio:block_end_iron_bars>],[<thaumcraft:stone_ancient_glyphed>, <enderio:item_material>, <thaumcraft:stone_ancient_glyphed>], [<enderio:block_end_iron_bars>, <thaumcraft:stone_ancient_glyphed>, <enderio:block_end_iron_bars>]]);
recipes.addShaped(<enderio:item_material>, [[<botanicadds:gaia_shard>, <immersiveengineering:metal:5>, <botanicadds:gaia_shard>],[<immersiveengineering:metal:5>, <enderio:item_material:20>, <immersiveengineering:metal:5>], [<botanicadds:gaia_shard>, <immersiveengineering:metal:5>, <botanicadds:gaia_shard>]]);


// Draconic Evolution
recipes.remove(<draconicevolution:draconic_core>);
recipes.addShaped(<draconicevolution:draconic_core>, [[<enderio:block_solar_panel:3>, <embers:inflictor_gem>, <enderio:block_solar_panel:3>],[<rootsclassic:mutagen>, <botanicadds:gaia_shard>, <rootsclassic:mutagen>], [<enderio:block_solar_panel:3>, <embers:inflictor_gem>, <enderio:block_solar_panel:3>]]);


// Tropicraft
recipes.addShaped(<tropicraft:coconut>, [[<botania:manaresource:18>, <harvestcraft:coconutitem>, <botania:manaresource:18>],[<harvestcraft:coconutitem>, <harvestcraft:coconutitem>, <harvestcraft:coconutitem>], [<botania:manaresource:18>, <harvestcraft:coconutitem>, <botania:manaresource:18>]]);


// BetweenLands
recipes.addShaped(<thebetweenlands:swamp_talisman:1>, [[<rootsclassic:growthsalve>, <rootsclassic:midnightbloom>, <rootsclassic:growthsalve>],[<rootsclassic:verdantsprig>, <bloodmagic:slate:1>, <rootsclassic:verdantsprig>], [<rootsclassic:verdantsprig>, <rootsclassic:flareorchid>, <rootsclassic:verdantsprig>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:2>, [[null, <rootsclassic:darkoaktreebark>, <rootsclassic:mutagen>],[<rootsclassic:infernalstem>, <bloodmagic:slate:1>, <rootsclassic:infernalstem>], [<bloodmagic:slate:1>, <rootsclassic:darkoaktreebark>, null]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:3>, [[<rootsclassic:verdantsprig>, null, null],[<rootsclassic:jungletreebark>, <bloodmagic:slate:1>, null], [<rootsclassic:radiantdaisy>, <rootsclassic:jungletreebark>, <rootsclassic:verdantsprig>]]);
recipes.addShaped(<thebetweenlands:swamp_talisman:4>, [[<rootsclassic:verdantsprig>, <rootsclassic:mutagen>, null],[<rootsclassic:growthsalve>, <bloodmagic:slate:1>, <rootsclassic:mutagen>], [null, <rootsclassic:growthsalve>, <rootsclassic:verdantsprig>]]);


// Ender Storage
recipes.removeShaped(<enderstorage:ender_storage:1>, [[<immersiveengineering:metal:40>, <tropicraft:zircon>, <immersiveengineering:metal:40>],[<aether_legacy:zanite_gemstone>, <bloodmagic:blood_tank>, <aether_legacy:zanite_gemstone>], [<immersiveengineering:metal:40>, <tropicraft:zircon>, <immersiveengineering:metal:40>]]);
recipes.remove(<enderstorage:ender_pouch>);
recipes.remove(<enderstorage:ender_storage>);
recipes.addShaped(<enderstorage:ender_storage:1>, [[<immersiveengineering:metal:40>, <tropicraft:zircon>, <immersiveengineering:metal:40>],[<aether_legacy:zanite_gemstone>, <bloodmagic:blood_tank>, <aether_legacy:zanite_gemstone>], [<immersiveengineering:metal:40>, <tropicraft:zircon>, <immersiveengineering:metal:40>]]);
recipes.addShaped(<enderstorage:ender_pouch>, [[<immersiveengineering:metal:40>, <tropicraft:zircon>, <immersiveengineering:metal:40>],[<aether_legacy:zanite_gemstone>, <botania:enderhand>, <aether_legacy:zanite_gemstone>], [<immersiveengineering:metal:40>, <tropicraft:zircon>, <immersiveengineering:metal:40>]]);
recipes.addShaped(<enderstorage:ender_storage>, [[<immersiveengineering:metal:40>, <tropicraft:zircon>, <immersiveengineering:metal:40>],[<aether_legacy:zanite_gemstone>, <minecraft:ender_chest>, <aether_legacy:zanite_gemstone>], [<immersiveengineering:metal:40>, <tropicraft:zircon>, <immersiveengineering:metal:40>]]);
