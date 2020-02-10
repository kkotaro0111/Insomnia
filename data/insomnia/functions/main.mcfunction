## 雷雨対応 ##
# 雷雨のとき誰か一人が 10tick 寝てたら、天気を晴れにする
execute if predicate insomnia:is_thundering if entity @a[nbt={SleepTimer:10s}]  run function insomnia:in_thundering

execute if entity @a[nbt={SleepTimer:60s}] run function insomnia:sleeper
