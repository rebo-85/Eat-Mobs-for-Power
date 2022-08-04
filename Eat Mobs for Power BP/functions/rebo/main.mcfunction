# Initialize
    scoreboard objectives add display dummy "§l§g[ ABILITIES ]§r"
    scoreboard objectives add v-on_entry dummy
    scoreboard objectives add v-per_second dummy

    scoreboard objectives add v-bee dummy
    scoreboard objectives add v-chicken dummy
    scoreboard objectives add v-cow dummy
    scoreboard objectives add v-pig dummy
    scoreboard objectives add v-sheep dummy

    


# On Entry
    scoreboard players add @a v-on_entry 0

    execute @a[scores={v-on_entry=0}] ~~~ function rebo/on_entry

    scoreboard players reset * v-on_entry
    scoreboard players set @a v-on_entry 1
# Per Tick
    function rebo/per_tick
# Per Second
    execute @p[scores={v-per_second=0..}] ~~~ scoreboard players add @a v-per_second 1

    execute @p[scores={v-per_second=20}] ~~~ function rebo/per_second

    execute @p[scores={v-per_second=20}] ~~~ scoreboard players set @s v-per_second 0