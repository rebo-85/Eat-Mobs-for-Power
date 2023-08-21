event entity @s e:refresh_morph
event entity @s e:salmon
tag @s[hasitem={item=water_bucket}] add has_water_bucket
give @s[tag=!has_water_bucket] minecraft:water_bucket
tag @s remove has_water_bucket
tellraw @s { "rawtext": [ { "translate": "inmine.transform.salmon" }] }
