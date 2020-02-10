
# 雷雨のとき誰か一人が 10tick 寝てたら、天気を晴れにする
execute if entity @a[nbt={SleepTimer:10s}] if predicate insomnia:is_thundering run weather thunder 1

# 誰か一人が 60tick 寝てたら、就寝処理をする
execute as @a[nbt={SleepTimer:60s}] run tellraw @a {"text": "", "extra": ["おはようございます！  ", {"selector": "@s"}, " さん！"], "color": "yellow"}
execute if entity @a[nbt={SleepTimer:60s}] run function insomnia:sleeper
