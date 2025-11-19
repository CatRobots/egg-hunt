scoreboard players remove "#Ticks" Ticks 1
execute if score "#Ticks" Ticks matches ..0 run scoreboard players remove "#Seconds" Seconds 1
execute if score "#Ticks" Ticks matches ..0 run scoreboard players reset "#Ticks" Ticks

execute if score "#Seconds" Seconds matches ..0 run scoreboard players remove "#Minutes" Minutes 1
execute if score "#Seconds" Seconds matches ..0 run scoreboard players reset "#Seconds" Seconds

execute if score "#Minutes" Minutes matches ..0 run scoreboard players remove "#Hours" Hours 1
execute if score "#Minutes" Minutes matches ..0 run scoreboard players reset "#Minutes" Minutes