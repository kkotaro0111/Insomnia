scoreboard objectives add insomnia dummy
scoreboard objectives add insomnia_st dummy
scoreboard objectives add insomnia_flag dummy
# insomnia scoreboard に true_day がなければ、初期化する
execute unless score true_day insomnia matches 0.. run scoreboard players set true_day insomnia 0