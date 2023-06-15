#Craft the redstone duode
execute as @e[nbt={Item:{id:"minecraft:chiseled_polished_blackstone"}}] at @s if entity @e[nbt={Item:{id:"minecraft:blue_dye"}},distance=..1] if entity @e[nbt={Item:{id:"minecraft:orange_dye"}},distance=..1] if entity @e[nbt={Item:{id:"minecraft:comparator"}}] run give @p bat_spawn_egg{display:{Name:'[{"text":"Redstone Duode","italic":false}]',Lore:['[{"text":"Influences the movement of mana","italic":false}]']},RepairCost:999999999}
execute as @e[nbt={Item:{id:"minecraft:chiseled_polished_blackstone"}}] at @s if entity @e[nbt={Item:{id:"minecraft:blue_dye"}},distance=..1] if entity @e[nbt={Item:{id:"minecraft:orange_dye"}},distance=..1] if entity @e[nbt={Item:{id:"minecraft:comparator"}}] run kill @e[distance=..1,type=item]

#Craft the anode
execute as @e[nbt={Item:{id:"minecraft:smooth_stone"}}] at @s if entity @e[nbt={Item:{id:"minecraft:blue_dye"}},distance=..1] run give @p bat_spawn_egg{display:{Name:'[{"text":"Anode","italic":false}]',Lore:['[{"text":"Influences the movement of mana","italic":false}]']},RepairCost:999999999}
execute as @e[nbt={Item:{id:"minecraft:smooth_stone"}}] at @s if entity @e[nbt={Item:{id:"minecraft:blue_dye"}},distance=..1] run kill @e[distance=..1,type=item]

#Place the anode
execute as @e[name="Anode",type=bat] at @s align xyz run summon minecraft:shulker ~ ~ ~ {Tags:["anode"],NoAI:true,DeathLootTable:"monstermagic:entities/anode",Silent:true,Health:1,PersistenceRequired:true,NoGravity:1b,Color:3}
kill @e[name="Anode",type=bat]
execute as @e[tag=anode] at @s run particle dripping_water ~ ~ ~ 0.4 0.4 0.4 0 5

#Craft the anode
execute as @e[nbt={Item:{id:"minecraft:smooth_stone"}}] at @s if entity @e[nbt={Item:{id:"minecraft:orange_dye"}},distance=..1] run give @p bat_spawn_egg{display:{Name:'[{"text":"Cathode","italic":false}]',Lore:['[{"text":"Influences the movement of mana","italic":false}]']},RepairCost:999999999}
execute as @e[nbt={Item:{id:"minecraft:smooth_stone"}}] at @s if entity @e[nbt={Item:{id:"minecraft:orange_dye"}},distance=..1] run kill @e[distance=..1,type=item]

#Place the anode
execute as @e[name="Cathode",type=bat] at @s align xyz run summon minecraft:shulker ~ ~ ~ {Tags:["cathode"],NoAI:true,DeathLootTable:"monstermagic:entities/cathode",Silent:true,Health:1,PersistenceRequired:true,NoGravity:1b,Color:1}
kill @e[name="Cathode",type=bat]
execute as @e[tag=cathode] at @s run particle dripping_lava ~ ~ ~ 0.4 0.4 0.4 0 5

#Place the redstone duode
execute as @e[name="Redstone Duode",type=bat] at @s align xyz run summon minecraft:shulker ~ ~ ~ {Tags:["duode"],NoAI:true,DeathLootTable:"monstermagic:entities/duode",Silent:true,Health:1,PersistenceRequired:true,NoGravity:1b,Color:14}
kill @e[name="Redstone Duode",type=bat]