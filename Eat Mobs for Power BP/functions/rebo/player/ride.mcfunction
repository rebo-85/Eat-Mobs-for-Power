tag @s remove air2
execute as @s if block ~~2~ minecraft:air run tag @s add air2
tag @s remove air1
execute as @s if block ~~1~ minecraft:air run tag @s add air1
tag @s remove air0
execute as @s if block ~~~ minecraft:air run tag @s add air0
tag @s remove air-1
execute as @s if block ~~-1~ minecraft:air run tag @s add air-1
tag @s remove air-2
execute as @s if block ~~-2~ minecraft:air run tag @s add air-2



# tag @s remove west
# tag @s remove north
# tag @s remove east
# tag @s remove south
# execute @s[rym=-135.99,ry=-45.99] ~~~ tag @s add west
# execute @s[rym=-46,ry=45.99] ~~~ tag @s add north
# execute @s[rym=46,ry=135.99] ~~~ tag @s add east
# execute @s[rym=136,ry=180] ~~~ tag @s add south
# execute @s[rym=-180,ry=-136] ~~~ tag @s add south

execute as @s[tag=!air1,tag=air0,tag=!air-1,tag=!is_riding] run summon inmine:dummy_ride
execute as @s[tag=!air1,tag=air0,tag=!air-1,tag=!is_riding] run teleport @e[type=inmine:dummy_ride,c=1] ^^^-1 facing @s
execute as @s[tag=!air1,tag=air0,tag=!air-1,tag=!is_riding] run teleport @e[type=inmine:dummy_ride,c=1] ^^^1
execute as @s[tag=!air1,tag=air0,tag=!air-1,tag=!is_riding] run title @s title hide horse heart ui
execute as @s[tag=!air1,tag=air0,tag=!air-1,tag=!is_riding] run ride @s start_riding @e[type=inmine:dummy_ride,c=1] teleport_rider

execute as @s[tag=!air2,tag=air1,tag=!air0,tag=!is_riding] run summon inmine:dummy_ride ~~1~
execute as @s[tag=!air2,tag=air1,tag=!air0,tag=!is_riding] run title @s title hide horse heart ui
execute as @s[tag=!air2,tag=air1,tag=!air0,tag=!is_riding] run ride @s start_riding @e[type=inmine:dummy_ride,c=1] teleport_rider




execute as @s[tag=riding_dummy_ride,tag=air1] run event entity @e[type=inmine:dummy_ride,c=1] e:instant_despawn
execute as @s[tag=riding_dummy_ride,tag=air1] run title @s title show all ui
execute as @s[tag=riding_dummy_ride,tag=air1] run teleport @s ~~1~

tag @s remove riding_dummy_ride

execute as @s[tag=is_riding] run execute as @e[type=inmine:dummy_ride,c=1,r=1] run tag @p add riding_dummy_ride

execute as @s[tag=riding_dummy_ride] run event entity @s e:add-ignited
execute as @s[tag=!riding_dummy_ride] run event entity @s e:remove-ignited




