#Craft the anode
execute as @e[nbt={Item:{id:"minecraft:smooth_stone"}}] at @s if entity @e[nbt={Item:{id:"minecraft:blue_dye"}},distance=..1] run give @p bat_spawn_egg{display:{Name:'[{"text":"Anode","italic":false}]',Lore:['[{"text":"Influences the movement of mana","italic":false}]']},RepairCost:999999999}
execute as @e[nbt={Item:{id:"minecraft:smooth_stone"}}] at @s if entity @e[nbt={Item:{id:"minecraft:blue_dye"}},distance=..1] run kill @e[distance=..1,type=item]

#Place the anode
execute as @e[name="Anode"] at @s align xyz run summon minecraft:shulker ~ ~ ~ {Tags:["anode"],NoAI:true,DeathLootTable:"monstermagic:entities/anode",Silent:true,Health:1,PersistenceRequired:true,NoGravity:1b,Color:3}
kill @e[name="Anode"]
execute as @e[tag=anode] at @s run particle dripping_water ~ ~ ~ 0.4 0.4 0.4 0 5