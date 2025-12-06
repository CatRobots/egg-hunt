# Subtract 1 Tick
scoreboard players remove #Clock Ticks 1
# Roll Over Seconds to Ticks
execute if score #Clock Ticks matches ..-1 run scoreboard players remove #Clock Seconds 1
execute if score #Clock Ticks matches ..-1 run scoreboard players set #Clock Ticks 19
# Roll Over Minutes to Seconds
execute if score #Clock Seconds matches ..-1 run scoreboard players remove #Clock Minutes 1
execute if score #Clock Seconds matches ..-1 run scoreboard players set #Clock Seconds 59
# Roll Over Hours to Minutes
execute if score #Clock Minutes matches ..-1 run scoreboard players remove #Clock Hours 1
execute if score #Clock Minutes matches ..-1 run scoreboard players set #Clock Minutes 59
# Update Boss Bar
execute store result bossbar timer value run scoreboard players get #Clock Minutes
execute store result bossbar countdown value run scoreboard players get #Clock Seconds
# Show Timer Display
function egg_hunt:timerdisplay