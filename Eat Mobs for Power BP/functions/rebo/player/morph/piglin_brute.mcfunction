event entity @s e:refresh_morph
event entity @s e:piglin_brute

tag @s[hasitem={item=golden_axe}] add has_golden_axe
give @s[tag=!has_golden_axe] minecraft:golden_axe
tag @s remove has_golden_axe
tellraw @s { "rawtext": [ { "translate": "inmine.transform.piglin_brute" }] }
