# Scoreboards
scoreboard objectives add Ticks dummy
scoreboard objectives add Seconds dummy
scoreboard objectives add Minutes dummy
scoreboard objectives add Hours dummy
scoreboard objectives add TotalSeconds dummy
scoreboard objectives add IsPreTimer dummy
scoreboard objectives add GameStarted dummy
scoreboard objectives add ActionBarDisplay trigger
scoreboard objectives add BossBarDisplay trigger
scoreboard objectives add CheckPlayerWithEgg trigger
scoreboard objectives add Settings trigger
scoreboard objectives add DeathCheck deathCount
scoreboard objectives add KillCount playerKillCount
scoreboard objectives setdisplay list Minutes
scoreboard players set #GameStarted GameStarted 1
# Teams
team add EggHolder {"text":"EggHolder", color:"dark_purple"}
team modify EggHolder color dark_purple
# Boss Bar
bossbar add timer [{text:"??",color:"light_purple"},{text:" : ",color:"dark_purple",font:"uniform"},{text:"??",color:"light_purple"},{text:" : ",color:"dark_purple",font:"uniform"},{text:"??",color:"light_purple"}]
bossbar set timer color pink
bossbar set timer max 60
bossbar add countdown [{text:"??",color:"red"},{text:" : ",color:"dark_red",font:"uniform"},{text:"??",color:"red"},{text:" : ",color:"dark_red",font:"uniform"},{text:"??",color:"red"}]
bossbar set countdown color red
bossbar set countdown max 60
bossbar set countdown style notched_6