execute as @s run tag @s remove on_air
execute as @s run tag @s remove facing_air
execute as @s if block ~~-1~ minecraft:air run tag @s add on_air
execute at @s if block ^^^1.2 minecraft:air run tag @s add facing_air
# Up
    execute as @s[tag=!facing_air,tag=is_jumping] run effect @s levitation 1 1 true

    execute as @s[tag=!on_air] run effect @s levitation 0 0 true
    execute as @s[tag=facing_air] run effect @s levitation 0 0 true

# Down
    execute as @s[tag=!facing_air,tag=!is_jumping] run effect @s levitation 0 0 true
    execute as @s[tag=!facing_air,tag=!is_jumping,tag=on_air] run effect @s slow_falling 1 0 true

    execute as @s[tag=facing_air] run effect @s slow_falling 0 0 true
    execute as @s[tag=!on_air] run effect @s slow_falling 0 0 true