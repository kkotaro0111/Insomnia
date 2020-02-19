# dec_day が 100 以上なら、 100日分計上する
execute if score dec_day insomnia matches 100.. run time add 2400000
execute if score dec_day insomnia matches 100.. run scoreboard players remove dec_day insomnia 100
execute if score dec_day insomnia matches 100.. run function insomnia:day/add_100