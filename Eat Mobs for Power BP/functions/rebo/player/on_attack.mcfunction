# Blaze
    execute as @s[scores={variant=2,i-blaze_charge=1..},tag=is_sneaking] run event entity @s e:shoot-small_fireball
    execute at @s[scores={variant=2,i-blaze_charge=1..},tag=is_sneaking] run playsound mob.blaze.shoot @a ^^^1
    execute as @s[scores={variant=2,i-blaze_charge=1..},tag=is_sneaking] run scoreboard players remove @s i-blaze_charge 1

# Enderman
    execute as @s[scores={variant=6,cd-enderman=60},tag=is_sneaking] run event entity @s e:shoot-tp_dummy
    execute as @s[scores={variant=6,cd-enderman=60},tag=is_sneaking] run scoreboard players set @s cd-enderman 1

# Ghast
    execute as @s[scores={variant=9,cd-ghast=60},tag=is_sneaking] run event entity @s e:shoot-fireball
    execute at @s[scores={variant=9,cd-ghast=60},tag=is_sneaking] run playsound mob.ghast.fireball @a ^^^1
    execute as @s[scores={variant=9,cd-ghast=60},tag=is_sneaking] run scoreboard players set @s cd-ghast 1