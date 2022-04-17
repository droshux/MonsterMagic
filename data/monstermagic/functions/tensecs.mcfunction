#Grow Sugar Cane
execute as @e[type=armor_stand,scores={DirtyMana=4..}] at @s store success score @s DidGrow run execute as @e[type=furnace_minecart,distance=..4] at @s if block ~ ~2 ~ sugar_cane run setblock ~ ~3 ~ sugar_cane
execute as @e[type=armor_stand,scores={DirtyMana=4..}] at @s store success score @s DidGrow run execute as @e[type=furnace_minecart,distance=..4] at @s if block ~ ~3 ~ sugar_cane run setblock ~ ~3 ~ air destroy
scoreboard players remove @e[scores={DidGrow=1}] DirtyMana 4
scoreboard players set @e[scores={DidGrow=1}] DidGrow 0


#Repeat
schedule function monstermagic:tensecs 10s