#Anode: Mana from drowned to stand
execute as @e[type=drowned,scores={Mana=1..}] at @s store success score @s DidAnode if entity @e[tag=anode,distance=..3] if entity @e[type=armor_stand,distance=..2] run scoreboard players add @e[type=armor_stand,distance=..2,sort=nearest,limit=1] Mana 1
scoreboard players remove @e[type=drowned,scores={DidAnode=1}] Mana 1
scoreboard players set @e[type=drowned,scores={DidAnode=1}] DidAnode 0


#Cathode: Mana from stand to drowned
execute as @e[type=drowned] at @s if entity @e[tag=cathode,distance=..3] if entity @e[type=armor_stand,distance=..5,scores={Mana=1..}] store success score @s DidCathode run scoreboard players remove @e[type=armor_stand,distance=..5,sort=nearest,limit=1,scores={Mana=1..}] Mana 1
scoreboard players add @e[type=drowned,scores={DidCathode=1}] Mana 1
scoreboard players set @e[type=drowned,scores={DidCathode=1}] DidCathode 0

#Redstone detection
execute as @e[type=drowned,scores={Mana=1..}] at @s if block ~ ~-1 ~ quartz_block run fill ~ ~-2 ~ ~ ~-2 ~ redstone_lamp[lit=true] replace redstone_lamp[lit=false]
execute as @e[type=drowned,scores={Mana=0}] at @s if block ~ ~-1 ~ quartz_block run fill ~ ~-2 ~ ~ ~-2 ~ redstone_lamp[lit=false] replace redstone_lamp[lit=true]

#Redstone Duode:
execute as @e[tag=duode] at @s if block ~ ~-1 ~ redstone_block run tag @s add anode
execute as @e[tag=duode] at @s if block ~ ~-1 ~ redstone_block run tag @s remove cathode

execute as @e[tag=duode] at @s unless block ~ ~-1 ~ redstone_block run tag @s add cathode
execute as @e[tag=duode] at @s unless block ~ ~-1 ~ redstone_block run tag @s remove anode