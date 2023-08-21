execute as @s run scoreboard players random @s i-random 1 18
execute as @s[scores={i-random=14},tag=nether] run scoreboard players random @s i-random 1 13

execute as @s[scores={i-random=1}] run function rebo/player/morph/axolotl
execute as @s[scores={i-random=2}] run function rebo/player/morph/blaze
execute as @s[scores={i-random=3}] run function rebo/player/morph/cat
execute as @s[scores={i-random=4}] run function rebo/player/morph/chicken
execute as @s[scores={i-random=5}] run function rebo/player/morph/creeper
execute as @s[scores={i-random=6}] run function rebo/player/morph/enderman
execute as @s[scores={i-random=7}] run function rebo/player/morph/fox
execute as @s[scores={i-random=8}] run function rebo/player/morph/frog
execute as @s[scores={i-random=9}] run function rebo/player/morph/ghast
execute as @s[scores={i-random=10}] run function rebo/player/morph/panda
execute as @s[scores={i-random=11}] run function rebo/player/morph/parrot
execute as @s[scores={i-random=12}] run function rebo/player/morph/pig
execute as @s[scores={i-random=13}] run function rebo/player/morph/piglin_brute
execute as @s[scores={i-random=14}] run function rebo/player/morph/salmon
execute as @s[scores={i-random=15}] run function rebo/player/morph/skeleton
execute as @s[scores={i-random=16}] run function rebo/player/morph/spider
execute as @s[scores={i-random=17}] run function rebo/player/morph/strider
execute as @s[scores={i-random=18}] run function rebo/player/morph/zombie

execute as @s run scoreboard players reset @s i-random

execute at @s run playsound mob.villager.death @a ^^^5 2.0 1.0 2.0
execute at @s run particle minecraft:knockback_roar_particle ~~~
