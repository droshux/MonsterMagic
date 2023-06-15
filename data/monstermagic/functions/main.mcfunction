#Functions that run every tick
function monstermagic:mana_generation
function monstermagic:manatransfer_dirty
function monstermagic:manatransfer_pure
function monstermagic:transferblocks
function monstermagic:simpleeffects
function monstermagic:mana_altar
function monstermagic:ender_generator

#Effects of having mana
execute as @e[scores={DirtyMana=1..}] at @s run particle soul ~ ~1 ~ 0.15 0.15 0.15 0.01 1
execute as @e[scores={Mana=1..}] at @s run particle soul_fire_flame ~ ~1 ~ 0.15 0.15 0.15 0.01 1

#Mana overload and underload
execute as @e[type=armor_stand,scores={DirtyMana=65..}] at @s run summon lightning_bolt
execute as @e[type=armor_stand,scores={DirtyMana=65..}] at @s run fill ~ ~-1 ~ ~ ~2 ~ air replace bedrock
execute as @e[type=armor_stand,scores={DirtyMana=65..}] at @s run scoreboard players set @s DirtyMana 0

execute as @e[type=armor_stand,scores={Mana=65..}] at @s run summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:10}

execute as @e[scores={DirtyMana=..-1}] run scoreboard players set @s DirtyMana 0
execute as @e[scores={Mana=..-1}] run scoreboard players set @s Mana 0