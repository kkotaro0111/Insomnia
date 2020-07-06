# tell @a "夜間対応"

# insomnia_st の値が 60 以上になってるプレイヤーがいたら、そのプレイヤーの就寝フラグを 1 にする
execute as @a[scores={insomnia_st=60..100}] run scoreboard players set @s insomnia_flag 1

# insomnia_st の値が 100 以上になってるプレイヤーがいたら、そのプレイヤーの就寝フラグを 2 にする（起床中）
execute as @a[scores={insomnia_st=101..}] run scoreboard players set @s insomnia_flag 2

# 誰か一人が寝てたら(insomnia_flag == 1)、就寝処理をする
execute store success score flag insomnia run execute if entity @a[scores={insomnia_flag=1}]
execute if score flag insomnia matches 1.. run function insomnia:daybreak

