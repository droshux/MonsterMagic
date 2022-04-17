#Summoning the Altar
execute as @e[type=armor_stand] at @s if block ~ ~-1 ~ diamond_block if block ~ ~-2 ~ end_portal if block ~-2 ~-2 ~ end_portal_frame[eye=true] if block ~2 ~-2 ~ end_portal_frame[eye=true] if block ~ ~-2 ~-2 end_portal_frame[eye=true] if block ~ ~-2 ~2 end_portal_frame[eye=true] run tag @s add upgradeAltarSummon
execute as @e[type=armor_stand,tag=upgradeAltarSummon] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:soul_lantern"}},distance=..1] run summon husk ~ ~ ~ {Invulnerable:1,PersistenceRequired:1,Silent:1,NoAI:1,CustomName:'"MANA ALTAR"',ActiveEffects:[{Id:14,Amplifier:0,Duration:999999},{Id:24,Amplifier:0,Duration:999999}],Tags:["upgradeAltar"]}
execute as @e[type=armor_stand,tag=upgradeAltarSummon] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:soul_lantern"}},distance=..1] run summon lightning_bolt
execute as @e[tag=upgradeAltar] at @s run kill @e[type=armor_stand,tag=upgradeAltarSummon,sort=nearest,limit=1,distance=..1]
execute as @e[tag=upgradeAltar] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:soul_lantern"}},sort=nearest,limit=1,distance=..1]

#Altar special effects
execute as @e[tag=upgradeAltar] at @s run particle minecraft:glow_squid_ink ~ ~1 ~ 0.1 0.1 0.1 0 100 force
execute as @e[tag=upgradeAltar] at @s run playsound minecraft:ambient.cave hostile @a[distance=..10] ~ ~ ~ 0.5 0.5

#Sacrifice totem of undying for mana purifier
execute as @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}}] at @s store success score @s DidGivePurifier if entity @e[tag=upgradeAltar,distance=..1] if entity @p[distance=..10] run give @p[distance=..10] vex_spawn_egg{display:{Name:'[{"text":"Mana Purifier","italic":false}]',Lore:['[{"text":"Removes impurities...","italic":false}]']},EntityTag:{id:"minecraft:vex",CustomName:'"Mana Purifier"',CustomNameVisible:1,Tags:["manaPurifier"],PersistenceRequired:1,NoAI:1}}
execute as @e[scores={DidGivePurifier=1}] at @s run playsound minecraft:block.amethyst_block.chime block @a[distance=..10] ~ ~ ~ 100
kill @e[scores={DidGivePurifier=1}]

#Upgrade Shulker
execute as @e[tag=upgradeAltar] at @s run tag @e[type=shulker,distance=..4,tag=!EnderGenerator] add EnderGenerator