# Chicken
    execute @a[scores={v-chicken=0..}] ~~~ scoreboard players remove @s v-chicken 1
    execute @a[scores={v-chicken=0..}] ~~~ scoreboard players operation "Chicken: " display = @p v-chicken
    execute @a[scores={v-chicken=-1}] ~~~ scoreboard players reset "Chicken: "
# Cow
    execute @a[scores={v-cow=0..}] ~~~ scoreboard players remove @s v-cow 1
    execute @a[scores={v-cow=0..}] ~~~ scoreboard players operation "Cow: " display = @p v-cow
    execute @a[scores={v-cow=-1}] ~~~ scoreboard players reset "Cow: "

# Pig
    execute @a[scores={v-pig=0..}] ~~~ scoreboard players remove @s v-pig 1
    execute @a[scores={v-pig=0..}] ~~~ scoreboard players operation "Pig: " display = @p v-pig
    execute @a[scores={v-pig=-1}] ~~~ scoreboard players reset "Pig: "

# Sheep
    execute @a[scores={v-sheep=0..}] ~~~ scoreboard players remove @s v-sheep 1
    execute @a[scores={v-sheep=0..}] ~~~ scoreboard players operation "Sheep: " display = @p v-sheep
    execute @a[scores={v-sheep=-1}] ~~~ scoreboard players reset "Sheep: "
