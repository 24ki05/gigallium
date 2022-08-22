#花生成に用いるアマスタを召喚（北・真下向き）
summon armor_stand ~ ~ ~ {Tags:[gigallium,gigallium2],Invisible:true,Rotation:[-180f,90f]}
#召喚したアマスタに茎の長さを代入
execute as @e[tag=gigallium2,limit=1,sort=nearest] store result score @s gigalliumCount run scoreboard players get gigallium gigalliumCount
#先のスコアを4で割った値の整数部分を花の半径として用いる
execute as @e[tag=gigallium2,limit=1,sort=nearest] run scoreboard players operation @s gigalliumCount /= gigallium quarter


