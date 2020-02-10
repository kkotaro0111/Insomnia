# tell @a "夜間対応"

# 誰か一人が 60tick 寝てたら、就寝処理をする
execute as @a[nbt={SleepTimer:60s}] run tellraw @a {"text": "", "extra": ["おはようございます！  ", {"selector": "@s"}, " さん！"], "color": "yellow"}

# 雨だったら、晴れにする
execute if predicate insomnia:is_raining unless predicate insomnia:is_thundering run weather rain 1

# 朝にする
time set 0
