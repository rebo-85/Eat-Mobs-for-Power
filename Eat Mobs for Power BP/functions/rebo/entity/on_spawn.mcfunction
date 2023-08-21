# Entity Count
    scoreboard players reset * i-entity_count
    execute as @e run scoreboard players add @a i-entity_count 1
    
# Entity ID Assignment
    scoreboard players reset * i-entity_id
    scoreboard players set @e i-entity_id -1

# Start Here
    execute as @s[type=minecraft:player] run function rebo/player/on_spawn
