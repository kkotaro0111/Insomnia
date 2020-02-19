# dec_day が 1000 以上なら、 1000日分計上する
execute if score dec_day insomnia matches 1000.. run time add 24000000
execute if score dec_day insomnia matches 1000.. run scoreboard players remove dec_day insomnia 1000
execute if score dec_day insomnia matches 1000.. run function insomnia:day/add_1000