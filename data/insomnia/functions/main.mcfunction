
# 雷雨のとき誰か一人が 10tick 寝てたら、天気を晴れにする
execute if entity @a[nbt={SleepTimer:10s}] if predicate insomnia:is_thundering run weather thunder 1

execute if entity @a[nbt={SleepTimer:60s}] run function insomnia:sleeper
