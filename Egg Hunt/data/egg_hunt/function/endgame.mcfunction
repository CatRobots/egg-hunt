# Final Info
execute as @a[predicate=egg_hunt:hasegg] run title @a title {"selector":"@s","color":"gold","bold":true}
execute as @a[predicate=egg_hunt:hasegg] run title @a subtitle {"text":"Has won!","color":"yellow"}
# Sound
playsound block.conduit.deactivate master @a
# Reset
scoreboard players set #GameStarted GameStarted 0
scoreboard players set * Seconds 0
scoreboard players set * Minutes 0
scoreboard players set * Hours 0
scoreboard players set #Clock Hours 1
execute as @a run tellraw @a [{selector:"@s"},{text:" "},{score:{name:"@s",objective:"KillCount"},color:"white"},{text:"🗡",color:"white"}]