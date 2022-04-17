#Basic flesh dropping DirtyMana generation
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ minecraft:waxed_oxidized_copper if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..1,limit=1,sort=nearest] store result score @s DeltaDirtyMana run data get entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..1,limit=1] Item.Count
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ minecraft:waxed_oxidized_copper if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..1,limit=1,sort=nearest] run kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..1,limit=1]
execute as @e run scoreboard players operation @s DirtyMana += @s DeltaDirtyMana
scoreboard players set @e DeltaDirtyMana 0