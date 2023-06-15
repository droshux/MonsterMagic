#Anode: Mana from zombie to stand
execute as @e[type=zombie,scores={DirtyMana=1..}] at @s store success score @s DidAnode if entity @e[tag=anode,distance=..3] if entity @e[type=armor_stand,distance=..2] run scoreboard players add @e[type=armor_stand,distance=..2,sort=nearest,limit=1] DirtyMana 1
scoreboard players remove @e[type=zombie,scores={DidAnode=1}] DirtyMana 1
scoreboard players set @e[type=zombie,scores={DidAnode=1}] DidAnode 0


#Cathode: Mana from stand to zombie
execute as @e[type=zombie] at @s if entity @e[tag=cathode,distance=..3] if entity @e[type=armor_stand,distance=..5,scores={DirtyMana=1..}] store success score @s DidCathode run scoreboard players remove @e[type=armor_stand,distance=..5,sort=nearest,limit=1,scores={DirtyMana=1..}] DirtyMana 1
scoreboard players add @e[type=zombie,scores={DidCathode=1}] DirtyMana 1
scoreboard players set @e[type=zombie,scores={DidCathode=1}] DidCathode 0

#Redstone detection
execute as @e[type=zombie,scores={DirtyMana=1..}] at @s if block ~ ~-1 ~ quartz_block run fill ~ ~-2 ~ ~ ~-2 ~ redstone_lamp[lit=true] replace redstone_lamp[lit=false]
execute as @e[type=zombie,scores={DirtyMana=0}] at @s if block ~ ~-1 ~ quartz_block run fill ~ ~-2 ~ ~ ~-2 ~ redstone_lamp[lit=false] replace redstone_lamp[lit=true]

#Mana Purification FIRST TRY!!
execute as @e[tag=manaPurifier] at @s if entity @e[type=armor_stand,scores={DirtyMana=1..},distance=..3,sort=nearest,limit=1] run execute as @e[type=armor_stand,scores={DirtyMana=0}] at @s if block ~ ~-1 ~ sea_lantern store success score @e[type=vex,tag=manaPurifier,sort=nearest,limit=1] DidAddMana run scoreboard players add @s Mana 1
execute as @e[tag=manaPurifier,scores={DidAddMana=1}] at @s if entity @e[type=armor_stand,scores={DirtyMana=1..},distance=..3,sort=nearest,limit=1] if entity @e[type=armor_stand,scores={Mana=1..},distance=..3,sort=nearest,limit=1] run scoreboard players remove @e[type=armor_stand,scores={DirtyMana=1..},distance=..3,sort=nearest,limit=1] DirtyMana 1

#Detect purification with redstone...
execute as @e[tag=manaPurifier,scores={DidAddMana=1}] at @s if block ~ ~-1 ~ quartz_block if block ~ ~-2 ~ redstone_lamp[lit=false] run setblock ~ ~-2 ~ redstone_lamp[lit=true]
execute as @e[tag=manaPurifier,scores={DidAddMana=0}] at @s if block ~ ~-1 ~ quartz_block if block ~ ~-2 ~ redstone_lamp[lit=true] run setblock ~ ~-2 ~ redstone_lamp[lit=false]
scoreboard players set @e[tag=manaPurifier,scores={DidAddMana=1}] DidAddMana 0

#Mana drain
execute as @e[scores={DirtyMana=1..}] at @s if block ~ ~-1 ~ mycelium run scoreboard players remove @s DirtyMana 1
execute as @e[scores={Mana=1..}] at @s if block ~ ~-1 ~ mycelium run scoreboard players remove @s Mana 1

#Redstone Duode:
execute as @e[tag=duode] at @s if block ~ ~-1 ~ redstone_block run tag @s add anode
execute as @e[tag=duode] at @s if block ~ ~-1 ~ redstone_block run tag @s remove cathode

execute as @e[tag=duode] at @s unless block ~ ~-1 ~ redstone_block run tag @s add cathode
execute as @e[tag=duode] at @s unless block ~ ~-1 ~ redstone_block run tag @s remove anode