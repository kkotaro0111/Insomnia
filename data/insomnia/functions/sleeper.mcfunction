
# 雨だったら、晴れにする
execute if predicate insomnia:is_raining unless predicate insomnia:is_thundering run weather rain 1

# 12541〜23458 の間（就寝可能時間帯）なら、時間を変更する（predicates/in_the_night.json参照）
execute if predicate insomnia:in_the_night run time set 0
