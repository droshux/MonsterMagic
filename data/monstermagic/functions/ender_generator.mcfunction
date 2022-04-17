#Generate Ender Mana (No limit)
execute as @e[type=shulker,tag=EnderGenerator] at @s run particle minecraft:end_rod ~ ~ ~ 0.5 0.5 0.5 0 10
execute as @e[type=shulker,tag=EnderGenerator] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..5] run scoreboard players add @e[tag=EnderGenerator,sort=nearest] EnderMana 1 
execute as @e[type=shulker,tag=EnderGenerator] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..5] run kill @s

#Send to the overworld
execute in minecraft:the_end as @e[type=shulker,tag=EnderGenerator,distance=0..,scores={EnderMana=1..}] store success score @s DidSendMana run execute in minecraft:overworld as @e[type=zombie,distance=0..,limit=1, sort=random] at @s if block ~ ~-1 ~ purpur_pillar run scoreboard players add @s DirtyMana 2
execute as @e[type=shulker,tag=EnderGenerator,scores={EnderMana=1..}] at @s if score @s DidSendMana matches 1 run scoreboard players remove @s EnderMana 1
execute as @e[type=shulker,tag=EnderGenerator] at @s if score @s DidSendMana matches 1 run scoreboard players set @s DidSendMana 0