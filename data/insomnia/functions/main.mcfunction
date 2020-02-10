
# 雷雨のとき誰か一人が 10tick 寝てたら、天気を晴れにする
execute if entity @a[nbt={SleepTimer:10s}] if predicate insomnia:is_thundering run weather thunder 1

# 誰か一人が 60tick 寝てたら、就寝処理をする
execute if entity @a[nbt={SleepTimer:60s}] run tellraw @a {"text": "", "extra": ["おはようございます！ ", {"selector": "@a[nbt={SleepTimer:60s},limit=1]"}, " さん！"], "color": "yellow"}
execute if entity @a[nbt={SleepTimer:60s}] run function insomnia:sleeper
