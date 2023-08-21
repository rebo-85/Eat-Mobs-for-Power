# Bee
execute as @s[scores={v-bee=0..}] run event entity @s e:add-spawn_entity-bee_flight
execute as @s[scores={v-bee=0..}] run effect @s slow_falling 1 0 true
execute as @s[scores={v-bee=0..}] run playsound mob.bee.loop @a

