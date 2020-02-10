## 雷雨対応 ##
# 雷雨のとき誰か一人が 10tick 寝てたら、天気を晴れにする
execute if predicate insomnia:is_thundering if entity @a[nbt={SleepTimer:10s}] run function insomnia:in_thundering

## 夜間対応 ##
# 12541〜23458 の間（就寝可能時間帯）なら、夜間対応を行なう（predicates/in_the_night.json参照）
execute if predicate insomnia:in_the_night if entity @a[nbt={SleepTimer:60s}] run function insomnia:sleeper
