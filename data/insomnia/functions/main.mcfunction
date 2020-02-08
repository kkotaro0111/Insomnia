
# 誰か一人が 20tick 寝てたら、天気を晴れにする
execute if entity @a[nbt={SleepTimer:20s}] run weather clear

# 誰か一人が 60tick 寝てたら、就寝処理をする
execute if entity @a[nbt={SleepTimer:60s}] run function insomnia:sleeper
