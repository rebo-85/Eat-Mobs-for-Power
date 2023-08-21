# Scores
    scoreboard objectives add b-initialized dummy
    scoreboard objectives add i-child_id dummy
    scoreboard objectives add i-control_count dummy
    scoreboard objectives add i-life_time dummy
    scoreboard objectives add v-entity_id dummy
    scoreboard objectives add i-entity_id dummy
    scoreboard objectives add i-entity_count dummy
    scoreboard objectives add i-player_count dummy
    scoreboard objectives add i-player_id dummy
    scoreboard objectives add v-player_id dummy
    scoreboard objectives add v-damage_tick dummy
    scoreboard objectives add v-on_spawn dummy
    scoreboard objectives add v-second dummy
    scoreboard objectives add variant dummy
    scoreboard objectives add v-bee dummy



# Ticking Areas
    tickingarea add circle 1000000 0 1000000 1 control_area
    
# On Addon Initialization
    execute unless entity @e[type=minecraft:armor_stand,name=control] run summon minecraft:armor_stand "control" 1000000 0 1000000

    scoreboard players add @e[type=minecraft:armor_stand,name=control] b-initialized 0
    scoreboard players operation @e[type=minecraft:armor_stand,name=control] b-initialized = @p b-initialized

    execute if entity @e[type=minecraft:armor_stand,name=control,scores={b-initialized=0}] run function rebo/on_addon_initialization
    
# On Entity Spawn
    scoreboard players add @e v-on_spawn 0

    execute as @e[scores={v-on_spawn=0}] run function rebo/entity/on_spawn

    scoreboard players reset * v-on_spawn

    scoreboard players set @e v-on_spawn 1
# Per tick
    function rebo/per_tick
    function rebo/debug/per_tick

# Per Damage Tick
    scoreboard players add @a[scores={i-player_id=0}] v-damage_tick 0
    execute as @a[scores={v-damage_tick=0..}] run scoreboard players add @a v-damage_tick 1

    execute as @a[scores={v-damage_tick=10}] run function rebo/per_damage_tick
    execute as @a[scores={v-damage_tick=10}] run function rebo/debug/per_damage_tick

    execute as @a[scores={v-damage_tick=10..}] run scoreboard players set @s v-damage_tick 0

# Per Second
    scoreboard players add @a[scores={i-player_id=0}] v-second 0
    execute as @a[scores={v-second=0..}] run scoreboard players add @a v-second 1

    execute as @a[scores={v-second=20}] run function rebo/per_second
    execute as @a[scores={v-second=20}] run function rebo/debug/per_second

    execute as @a[scores={v-second=20..}] run scoreboard players set @s v-second 0


    