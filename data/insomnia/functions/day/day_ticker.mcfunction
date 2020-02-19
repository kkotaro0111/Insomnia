# 日付計算が必要になったら呼ばれるfunction

# 日付を1日計上する
scoreboard players add true_day insomnia 1

# デクリメント用の日付を true_day にあわせる
execute store result score dec_day insomnia run scoreboard players get true_day insomnia

# 日付をとりあえず初期化する
time set 0

# 1000日単位のtime adder を呼び出す
function insomnia:day/add_1000
# 100日単位のtime adder を呼び出す
function insomnia:day/add_100
# 10日単位のtime adder を呼び出す
function insomnia:day/add_10
# 1日単位のtime adder を呼び出す
function insomnia:day/add_1


