# dec_day が 10 以上なら、 10日分計上する
execute if score dec_day insomnia matches 10.. run time add 240000
execute if score dec_day insomnia matches 10.. run scoreboard players remove dec_day insomnia 10
execute if score dec_day insomnia matches 10.. run function insomnia:day/add_10