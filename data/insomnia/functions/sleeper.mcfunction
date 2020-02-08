
# 現在時刻をcurrentTickに保存する
execute store result score currentTick insomnia run time query daytime
# それが 12541〜23458 の間（就寝可能時間帯）なら、時間を変更する
execute if score currentTick insomnia matches 12541..23458 run time set 0

# リセット
scoreboard players set currentTick insomnia 0