
execute @s ~~~ detect ~~-1~ minecraft:grass 0 teleport @s ~~-1~
execute @s ~~~ detect ~~~1 minecraft:grass 0 teleport @s ~~~1
execute @s ~~~ detect ~1~~ minecraft:grass 0 teleport @s ~1~~
execute @s ~~~ detect ~-1~~ minecraft:grass 0 teleport @s ~-1~~
execute @s ~~~ detect ~~1~ minecraft:grass 0 teleport @s ~~1~
execute @s ~~~ detect ~~~-1 minecraft:grass 0 teleport @s ~~~-1
execute @s ~~~ detect ~~~ minecraft:grass 0 tag @s add grass_detected
execute @s[tag=grass_detected] ~~~ execute @p[r=5,scores={v-sheep=0..}] ~~~ tag @s add in_range

execute @p[tag=in_range] ~~~ execute @e[tag=grass_detected] ~~~ setblock ~~~ minecraft:dirt
execute @s[tag=grass_detected] ~~~ execute @p[tag=in_range] ~~~ playsound dig.grass @a ^^^6 1.0 1.0
execute @s[tag=grass_detected] ~~~ event entity @p[tag=in_range] e:effects-regeneration
tag @e remove grass_detected
tag @e remove in_range
event entity @s e:instant_despawn
