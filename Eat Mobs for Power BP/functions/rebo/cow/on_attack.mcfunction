replaceitem entity @s[hasitem=[{item=minecraft:bucket,location=slot.weapon.mainhand,quantity=..1}]] slot.weapon.mainhand 0 minecraft:milk_bucket 1
give @s[hasitem=[{item=minecraft:bucket,location=slot.weapon.mainhand,quantity=2..}]] minecraft:milk_bucket
clear @s[m=!creative,hasitem=[{item=minecraft:bucket,location=slot.weapon.mainhand,quantity=2..}]] minecraft:bucket 0 1
playsound mob.cow.milk @a ^^^1 1.0 1.0
