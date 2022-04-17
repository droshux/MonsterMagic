#Welcome Messages
execute as @a run tellraw @p {"text":"Welcome to monter magic!","bold":true,"italic":true,"color":"dark_red"}

#Declare Variables
scoreboard objectives add DeltaDirtyMana dummy
scoreboard objectives add DirtyMana dummy {"text": "DirtyMana","color": "brown"}
scoreboard objectives add DeltaMana dummy
scoreboard objectives add Mana dummy {"text": "Mana","color": "cyan"}
scoreboard objectives add EnderMana dummy {"text":"Ender Mana", "color": "magenta"}
scoreboard objectives add SlimeSize dummy

function monstermagic:declare_successes

#Schedule Functions
schedule function monstermagic:tensecs 10s
schedule function monstermagic:minutely 60s