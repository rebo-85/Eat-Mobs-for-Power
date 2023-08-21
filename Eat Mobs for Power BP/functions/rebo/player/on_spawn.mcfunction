# Per Second Refresh
    scoreboard players set @a v-second 0
    
# Per Damage Tick Refresh
    scoreboard players set @a v-damage_tick 0

# Player Count
    scoreboard players reset * i-player_count
    execute as @a run scoreboard players add @a i-player_count 1

# Player ID Assignment
    scoreboard players reset * i-player_id
    scoreboard players set @a i-player_id -1

# Start Here
