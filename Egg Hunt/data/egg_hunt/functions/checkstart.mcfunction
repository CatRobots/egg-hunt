execute as @a[predicate=egg_hunt:hasdragonegg, scores={HasStarted=1}] run function egg_hunt:huntedplayer
execute if score "#GameStarted" HasStarted matches 1 run function egg_hunt:timer
execute if score "Ticks" Ticks matches ..0 if score "Seconds" matches ..0 if score "Minutes" matches ..0 if score "hours" matches ..0 run function egg_hunt:endgame