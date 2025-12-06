team join EggHolder @s[team=!EggHolder]
effect give @s minecraft:glowing 1 0 true
# Add 1 Tick
scoreboard players add @s Ticks 1
# Roll Over Ticks to Seconds
execute if score @s Ticks matches 21.. run scoreboard players add @s Seconds 1
execute if score @s Ticks matches 21.. run scoreboard players set @s Ticks 0
# Roll Over Seconds to Minutes
execute if score @s Seconds matches 61.. run scoreboard players add @s Minutes 1
execute if score @s Seconds matches 61.. run scoreboard players set @s Seconds 0
# Roll Over Minutes to Hours
execute if score @s Minutes matches 61.. run scoreboard players add @s Hours 1
execute if score @s Minutes matches 61.. run scoreboard players set @s Minutes 0