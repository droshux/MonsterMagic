# Monster Magic Guide:
Welcome to monster magic. A "mod like" datapack inspired by mods like Botania. 
It's intended to be automation focussed but in nonstandard ways.

**BE WARNED JANK, AHEAD**

## Mana Basics:
The resource that drives monster magic is called "*Mana*" and comes in two varieties, dirty and pure.
Dirty mana is easiest to generate and powers all the early game features.
It is generated by dropping rotten flesh onto an armour stand that is sitting upon a block of waxed oxidized copper.
The honey and copper act as a catalyst to draw out the latent power of monsters left behind in their putrid remains.
While the armour stand is a facsimile of life and monsters meaning you will find it as the focus of much of monster magic.
One rotten flesh corresponds to one mana but be warned: since armour stands are only facsimiles they can only store **64** mana (dirty or pure) before exploding violently.

## What can dirty mana do for you?
### Accelerated sugar-cane growth:
If an armour stand is within *4* blocks of a mine cart with a furnace, and on top of the furnace is a block of dirt/sand then any sugarcane growing on that block will be grown and automatically harvested every ten seconds, at the cost of *8* dirty mana.
### Levitation:
An armour stand that holds *16* dirty mana and sits atop a stripped warped log, will emanate an aura of levitation in a *3* block radius.
### Turtle Helmet Conjuration:
By placing an armour stand with *32* dirty mana on a set of *4* turtle eggs a magical helmet made of the scutes of sea turtles is conjured with improved water breathing properties.
### Diamond Generation:
When sitting upon a solid block of diamonds, every minute an armour stand can solidify *64* dirty mana into a single shining diamond. 

## Moving Mana
In many cases if an aspiring mage wants to automate a ritual involving mana they will have some issues. 
Since often armour stands must be sitting upon a specific block to perform their magic purposes this is in conflict with the fact that only armour stands on waxed oxidized copper blocks can generate mana from rotten flesh.
To solve this problem a few arcane devices have been devised to facilitate mana transfer.
### Anodes, cathodes and zombie batteries.
The two most basic methods of mana transfer are the *anode* and the *cathode*.
Crafted by throwing smelted stone on the ground along with blue or orange dye respectively.
When placed a cathode will extract mana (dirty or pure) from the nearest armour stand and store it in the closest zombie nearby (or drowned zombie if the mana is pure).
Since zombies/drowned are real monsters not fake imitations they have no limit to the amount of mana they can store and so are effective batteries for long term storage.
Anodes will do the opposite, they will transfer mana from a zombie/drowned to a the closest nearby armour stand. Note: the anode has a shorter range than the cathode by a couple of blocks. 
### Redstone Duodes
Crafted with chiseled polished blackstone, both colors of dye and a redstone comparator the redstone duode can switch between acting as an anode and a cathode depending on weather the block beneath it is a redstone block or not.
This allows more complex redstone controlled and two way flows of mana throughout automated systems.
### Detecting mana
When a zombie/drowned that is charged with some form of mana walks over a block of quartz a redstone lamp below the quartz will light up and remain lit.
When a zombie/drowned that is empty of mana walks over a quartz block it will deactivate a redstone lamp directly below the block of quartz.

## MORE TO COME