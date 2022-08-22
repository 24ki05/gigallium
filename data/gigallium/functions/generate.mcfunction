#茎の生成に用いるアマスタ
summon armor_stand ~ ~ ~ {Tags:[gigallium,gigallium1]}
#茎の長さを記録するスコアを初期化
scoreboard players set gigallium gigalliumCount 0
#元々生えてたアリウムが邪魔なので消しとく
setblock ~ ~ ~ air
#骨粉は用済みなのでさよなら
kill @s

