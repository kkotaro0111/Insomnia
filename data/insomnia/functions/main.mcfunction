## プレイヤー全員のSleepTimeをstoreする
execute as @a store result score @s insomnia_st run data get entity @s SleepTimer 1

## SleepTimerが0の人は、insomnia_flag を 0 にする
execute as @a[scores={insomnia_st=0}] run scoreboard players set @s insomnia_flag 0

## 日付対応 ##
# 自然と日が明けたときに、 scoreboard の true_day を更新する
execute store result score game_day insomnia run time query day
execute if score true_day insomnia < game_day insomnia run execute store result score true_day insomnia run scoreboard players get game_day insomnia

## 雷雨対応 ##
# 雷雨じゃなければ、 thunder_flagは倒す
execute unless predicate insomnia:is_thundering run scoreboard players set thunder_flag insomnia 0

# 雷雨のときに誰か一人が 10tick以上寝てたら、thunder_flagを立てる
execute if score thunder_flag insomnia matches 0 store success score thunder_flag insomnia run execute if predicate insomnia:is_thundering if entity @a[scores={insomnia_st=10..100}]

## 夜間対応 ##
# 12541〜23458 の間（就寝可能時間帯）なら、夜間対応を行なう（predicates/in_the_night.json参照）
execute if predicate insomnia:in_the_night run function insomnia:sleeper

## フラグ処理 ##
# thunder_flagが立っているなら、雷雨を止める
execute if score thunder_flag insomnia matches 1 run function insomnia:in_thundering

# sleep_flagが立っているなら、夜が明ける
execute if score sleep_flag insomnia matches 1.. run function insomnia:daybreak

