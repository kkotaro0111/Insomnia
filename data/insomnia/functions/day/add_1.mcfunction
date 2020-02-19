# dec_day が 1 以上なら、 1日分計上する
execute if score dec_day insomnia matches 1.. run time add 24000
execute if score dec_day insomnia matches 1.. run scoreboard players remove dec_day insomnia 1
execute if score dec_day insomnia matches 1.. run function insomnia:day/add_1