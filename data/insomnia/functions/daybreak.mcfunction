# 値リセット
scoreboard players set sleep_flag insomnia 0

# 挨拶
execute as @a[scores={insomnia_st=60..100}] run tellraw @s {"text": "", "extra": ["おはようございます！  ", {"selector": "@s"}, " さん！"], "color": "yellow"}

# 雨だったら、晴れにする
execute if predicate insomnia:is_raining unless predicate insomnia:is_thundering run weather rain 1

# 朝にする
function insomnia:day/day_ticker
