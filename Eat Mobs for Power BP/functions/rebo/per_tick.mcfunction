# Entity ID Assignment
    scoreboard players set @e v-entity_id 0

    execute as @e[scores={i-entity_id=0..}] run scoreboard players add @e v-entity_id 1

    execute as @e[c=1,scores={i-entity_id=!0..}] run scoreboard players operation @s i-entity_id = @s v-entity_id

# Player ID Assignment
    scoreboard players set @a v-player_id 0

    execute as @a[scores={i-player_id=0..}] run scoreboard players add @a v-player_id 1

    execute as @p[scores={i-player_id=!0..}] run scoreboard players operation @s i-player_id = @s v-player_id

# Life time
    # scoreboard players add @e[type=whitelisted]i-life_time 1

# Start Here
    scoreboard players reset @a[scores={v-bee=0}] v-bee

    