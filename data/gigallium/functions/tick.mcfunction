#専用骨粉の近くにアリウムがあったら茎の生成を開始
execute as @e[type=item,nbt={Item:{id:"minecraft:bone_meal",tag:{nsk:gigallium}}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ allium run function gigallium:generate

#茎の生成
execute as @e[type=armor_stand,tag=gigallium1] at @s run function gigallium:stem

#花の生成（コマンド一本だと生成がめっちゃ遅いので多めに並べた。重かったら減らして）
execute as @e[type=armor_stand,tag=gigallium2] at @s run function gigallium:flower_r
execute as @e[type=armor_stand,tag=gigallium2] at @s run function gigallium:flower_r
execute as @e[type=armor_stand,tag=gigallium2] at @s run function gigallium:flower_r
execute as @e[type=armor_stand,tag=gigallium2] at @s run function gigallium:flower_r
execute as @e[type=armor_stand,tag=gigallium2] at @s run function gigallium:flower_r
execute as @e[type=armor_stand,tag=gigallium2] at @s run function gigallium:flower_r