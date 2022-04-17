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

#Aron Balls
execute as @e[type=armor_stand,scores={DirtyMana=16..}] at @s store success score @s DidSummonAron if block ~ ~-2 ~ chiseled_sandstone if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:cactus",Count:1b}}] run summon minecraft:villager ~ ~ ~ {VillagerData:{type:"plains",profession:"leatherworker",level:2},Offers:{Recipes:[{rewardExp:0b,buy:{id:"lime_dye",Count:2},sell:{id:"slime_ball",Count:1}},{maxUses:1,rewardExp:0b,buy:{id:"elytra",Count:1},sell:{id:"slime_spawn_egg",Count:1,tag:{EntityTag:{id:"minecraft:slime",PersistenceRequired:1b,Glowing:1,Size:9,Health:100,Attributes:[{Name:"minecraft:generic.max_health",Base:100}]}}}}]},CustomName:'[{"text":"Aron Balls"}]'}
execute as @e[scores={DidSummonAron=1}] at @s run playsound minecraft:entity.villager.celebrate voice @a ~ ~ ~ 10
execute as @e[scores={DidSummonAron=1}] at @s run tellraw @a {"text":"ARON BALLS HAS BEEN SUMMONED","color": "green","bold": true,"underlined": true}
scoreboard players remove @e[scores={DidSummonAron=1}] DirtyMana 16
scoreboard players set @e[scores={DidSummonAron=1}] DidSummonAron 0