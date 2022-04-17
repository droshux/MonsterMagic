#Store every slime's size as a scoreboard and tag only slimes of size 9
execute as @e[type=slime] store result score @s SlimeSize run data get entity @s Size
tag @e[scores={SlimeSize=9}] add chunkeater
tag @e[scores={SlimeSize=..8}] remove chunkeater

#EAT
execute as @e[tag=chunkeater] if block ~ ~-1 ~ emerald_block at @s run fill ~ -64 ~ ~ 319 ~ air replace stone
execute as @e[tag=chunkeater] if block ~ ~-1 ~ emerald_block at @s run fill ~ -64 ~ ~ 319 ~ air replace deepslate

execute as @e[tag=chunkeater] if block ~ ~-1 ~ emerald_block at @s run fill ~1 -64 ~ ~1 319 ~ air replace stone
execute as @e[tag=chunkeater] if block ~ ~-1 ~ emerald_block at @s run fill ~1 -64 ~ ~1 319 ~ air replace deepslate

execute as @e[tag=chunkeater] if block ~ ~-1 ~ emerald_block at @s run fill ~-1 -64 ~ ~-1 319 ~ air replace stone
execute as @e[tag=chunkeater] if block ~ ~-1 ~ emerald_block at @s run fill ~-1 -64 ~ ~-1 319 ~ air replace deepslate

execute as @e[tag=chunkeater] if block ~ ~-1 ~ emerald_block at @s run fill ~ -64 ~1 ~ 319 ~1 air replace stone
execute as @e[tag=chunkeater] if block ~ ~-1 ~ emerald_block at @s run fill ~ -64 ~1 ~ 319 ~1 air replace deepslate

execute as @e[tag=chunkeater] if block ~ ~-1 ~ emerald_block at @s run fill ~ -64 ~-1 ~ 319 ~-1 air replace stone
execute as @e[tag=chunkeater] if block ~ ~-1 ~ emerald_block at @s run fill ~ -64 ~-1 ~ 319 ~-1 air replace deepslate

#VFX
execute as @e[tag=chunkeater] at @s run particle minecraft:block minecraft:slime_block ~ ~ ~ 10 10 10 1 50 