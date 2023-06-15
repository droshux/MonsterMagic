execute as @e[type=armor_stand,scores={DirtyMana=16..}] at @s if block ~ ~-1 ~ stripped_warped_stem[axis=y] run effect give @e[distance=..3,type=!armor_stand,tag=!anode,tag=!cathode] levitation 1 3 false

#Easter turtle eggss
execute as @e[type=armor_stand,scores={DirtyMana=..32}] at @s if block ~ ~ ~ turtle_egg[eggs=4] if entity @p[distance=..5] run give @p turtle_helmet{Enchantments:[{id:"minecraft:protection",lvl:4},{id:"minecraft:respiration",lvl:3}]}
execute as @e[type=armor_stand,scores={DirtyMana=..32}] at @s if block ~ ~ ~ turtle_egg[eggs=4] if entity @p[distance=..5] run kill @s

#Block breaker
execute as @e[type=armor_stand,scores={Mana=1..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:diamond_pickaxe"}},distance=..1] if block ~ ~-1 ~ sea_lantern if block ~ ~-2 ~ deepslate_iron_ore unless block ~ ~-3 ~ air store success score @s DidBreakBlock run setblock ~ ~-3 ~ air destroy
scoreboard players remove @e[type=armor_stand,scores={Mana=1..,DidBreakBlock=1}] Mana 1
scoreboard players set @e[scores={DidBreakBlock=1}] DidBreakBlock 0

#Infinite Iron
execute as @e[type=armor_stand,scores={DirtyMana=8..}] at @s store success score @s DidMakeIron if block ~ ~-1 ~ raw_iron_block if block ~ ~-2 ~ basalt run setblock ~ ~-2 ~ iron_ore replace
scoreboard players remove @e[scores={DirtyMana=8..,DidMakeIron=1}] DirtyMana 8
scoreboard players set @e[scores={DidMakeIron=1}] DidMakeIron 0

#Slime generating:
execute as @e[type=armor_stand,scores={Mana=16..}] at @s if block ~ ~-1 ~ water if block ~ ~ ~ lily_pad store success score @s DidSummonSlime run summon slime ~ ~ ~ {Size:0}
scoreboard players remove @e[scores={Mana=16..,DidSummonSlime=1}] Mana 16
execute as @e[type=armor_stand,scores={DidSummonSlime=1}] at @s run particle item_slime ~ ~ ~ .5 .5 .5 10 20
scoreboard players remove @e[scores={DidSummonSlime=1}] DidSummonSlime 1
