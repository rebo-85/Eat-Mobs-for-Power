event entity @s e:refresh_morph
event entity @s e:skeleton
tag @s[hasitem={item=bow}] add has_bow
give @s[tag=!has_bow] minecraft:bow
tag @s remove has_bow
tag @s[hasitem={item=arrow}] add has_arrow
give @s[tag=!has_arrow] minecraft:arrow 64
tag @s remove has_arrow
tellraw @s { "rawtext": [ { "translate": "inmine.transform.skeleton" }] }
