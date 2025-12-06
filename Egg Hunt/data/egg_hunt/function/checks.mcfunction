# Check Player Role
execute as @a[predicate=egg_hunt:hasegg] if score #GameStarted GameStarted matches 1 run function egg_hunt:hunted
execute as @a[predicate=!egg_hunt:hasegg] if score #GameStarted GameStarted matches 1 run function egg_hunt:hunters
# Check Timer
execute if score #GameStarted GameStarted matches 1 run function egg_hunt:timer
execute if score #GameStarted GameStarted matches 1 if score #Clock Hours matches ..0 if score #Clock Minutes matches ..0 if score #Clock Seconds matches ..0 if score #Clock Ticks matches ..0 run function egg_hunt:endgame
# Show Display
execute as @a run function egg_hunt:display
# Enable Triggers
execute as @a run scoreboard players enable @a ActionBarDisplay
execute as @a run scoreboard players enable @a BossBarDisplay
execute as @a run scoreboard players enable @a CheckPlayerWithEgg
execute as @a run scoreboard players enable @a Settings
# Check Triggers
execute as @a[scores={ActionBarDisplay=6..}] run scoreboard players set @s ActionBarDisplay 0
execute as @a[scores={BossBarDisplay=2..}] run scoreboard players set @s BossBarDisplay 0
execute as @a[scores={CheckPlayerWithEgg=1..}] run scoreboard players set @s CheckPlayerWithEgg 0
execute as @a[scores={Settings=1..}] run scoreboard players set @s Settings 0
# Check PreTimer
execute if score #IsPreTimer IsPreTimer matches 1 run scoreboard players set #Clock Hours 1
execute if score #IsPreTimer IsPreTimer matches 1 run scoreboard players set #IsPreTimer IsPreTimer 0
# Allow KeepInventory
execute as @a[scores={DeathCheck=1..},predicate=egg_hunt:hasegg] run function egg_hunt:dropegg
execute as @a[scores={DeathCheck=1..}] run scoreboard players set @s DeathCheck 0