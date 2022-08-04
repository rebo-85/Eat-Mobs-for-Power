# World
    # Chicken
        execute @a[scores={v-chicken=1..}] ~~~ effect @s slow_falling 1 3 true
    # Tags
        # Add
            execute @a[scores={v-bee=0..}] ~~~ tag @s add v-bee
            execute @a[scores={v-chicken=0..}] ~~~ tag @s add v-chicken
            execute @a[scores={v-cow=0..}] ~~~ tag @s add v-cow
            execute @a[scores={v-pig=0..}] ~~~ tag @s add v-pig
            execute @a[scores={v-sheep=0..}] ~~~ tag @s add v-sheep
        # Remove
            execute @a[scores={v-bee=-1}] ~~~ tag @s remove v-bee
            execute @a[scores={v-chicken=-1}] ~~~ tag @s remove v-chicken
            execute @a[scores={v-cow=-1}] ~~~ tag @s remove v-cow
            execute @a[scores={v-pig=-1}] ~~~ tag @s remove v-pig
            execute @a[scores={v-sheep=-1}] ~~~ tag @s remove v-bee

    # Scoreboard Display
        # Display main scoreboard
            scoreboard objectives setdisplay sidebar display
        # Update display
            execute @a[scores={v-bee=0..}] ~~~ scoreboard players operation "Bee: " display = @p v-bee
            execute @a[scores={v-chicken=0..}] ~~~ scoreboard players operation "Chicken: " display = @p v-chicken
            execute @a[scores={v-cow=0..}] ~~~ scoreboard players operation "Cow: " display = @p v-cow
            execute @a[scores={v-pig=0..}] ~~~ scoreboard players operation "Pig: " display = @p v-pig
            execute @a[scores={v-sheep=0..}] ~~~ scoreboard players operation "Sheep: " display = @p v-sheep

            # Clear on time-out
                execute @a[scores={v-bee=-1}] ~~~ scoreboard players reset "Bee: "
                execute @a[scores={v-chicken=-1}] ~~~ scoreboard players reset "Chicken: "
                execute @a[scores={v-cow=-1}] ~~~ scoreboard players reset "Cow: "
                execute @a[scores={v-pig=-1}] ~~~ scoreboard players reset "Pig: "
                execute @a[scores={v-sheep=-1}] ~~~ scoreboard players reset "Sheep: "
# Developer
    execute @p ~~~ effect @e[type=!player,r=5] slowness 1 255 false