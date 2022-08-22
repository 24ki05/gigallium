#茎生成の回数をカウント
scoreboard players add gigallium gigalliumCount 1
#乱数格納用スコアの有効化（正直いるのかよくわからんけど一応）
scoreboard players add @s gigalliumID 0
#乱数格納用スコアにUUIDの一部を代入
execute store result score @s gigalliumID run data get entity @s UUID[0] 1 
#UUIDが負なら正の値に変更する
execute if score @s gigalliumID matches ..-1 run scoreboard players operation @s gigalliumID *= gigallium reverse
#UUIDの一部を10で割った余り（0~9）を求めてこれを乱数とする
scoreboard players operation @s gigalliumID %= gigallium remainder

#乱数が9なら生成停止処理（生成初期は停止処理の代わりに生成処理1を行う）
execute if score @s gigalliumID matches 9 run function gigallium:stem0
#乱数が0~4なら生成処理1（lime_wool）
execute if score gigallium gigalliumCount matches ..55 if score @s gigalliumID matches 0..4 run function gigallium:stem1
#乱数が0~4なら生成処理2（green_wool）
execute if score gigallium gigalliumCount matches ..55 if score @s gigalliumID matches 5..8 run function gigallium:stem2

#半径13を越えそうなら強制終了
execute if score gigallium gigalliumCount matches 55 run function gigallium:stem0

#効果音
playsound minecraft:block.cave_vines.step block @a ~ ~ ~ 1 0 0 

#生成処理を行ったアマスタは用済みなのでさよなら
kill @s