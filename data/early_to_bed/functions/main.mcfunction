# 一人でも床に就いてる人がいれば、朝にする
execute if entity @a[nbt=!{SleepTimer:0s}] run time set day
