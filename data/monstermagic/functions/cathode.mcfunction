#Craft the anode
execute as @e[nbt={Item:{id:"minecraft:smooth_stone"}}] at @s if entity @e[nbt={Item:{id:"minecraft:orange_dye"}},distance=..1] run give @p bat_spawn_egg{display:{Name:'[{"text":"Cathode","italic":false}]',Lore:['[{"text":"Influences the movement of mana","italic":false}]']},RepairCost:999999999}
execute as @e[nbt={Item:{id:"minecraft:smooth_stone"}}] at @s if entity @e[nbt={Item:{id:"minecraft:orange_dye"}},distance=..1] run kill @e[distance=..1,type=item]

#Place the anode
execute as @e[name="Cathode"] at @s align xyz run summon minecraft:shulker ~ ~ ~ {Tags:["cathode"],NoAI:true,DeathLootTable:"monstermagic:entities/cathode",Silent:true,Health:1,PersistenceRequired:true,NoGravity:1b,Color:1}
kill @e[name="Cathode"]
execute as @e[tag=cathode] at @s run particle dripping_lava ~ ~ ~ 0.4 0.4 0.4 0 5