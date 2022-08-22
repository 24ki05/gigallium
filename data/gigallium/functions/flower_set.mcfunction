#乱数生成のためにアマスタ召喚
summon armor_stand ~ ~ ~ {Tags:[gigallium,gigallium3],Invisible:true}
#スコアの有効化（これ要る？）
scoreboard players add @e[tag=gigallium3,limit=1,sort=nearest] gigalliumID 0
#UUIDの一部をコピー
execute store result score @e[tag=gigallium3,limit=1,sort=nearest] gigalliumID run data get entity @e[tag=gigallium3,limit=1,sort=nearest] UUID[0] 1 
#コピーしたUUIDが負なら正の値に直す
execute if score @e[tag=gigallium3,limit=1,sort=nearest] gigalliumID matches ..-1 run scoreboard players operation @e[tag=gigallium3,limit=1,sort=nearest] gigalliumID *= gigallium reverse
#10で割った余りを乱数として用いる
scoreboard players operation @e[tag=gigallium3,limit=1,sort=nearest] gigalliumID %= gigallium remainder

#実行位置において花のブロックが未設置なら乱数に応じてブロック設置
execute unless block ~ ~ ~ #gigallium:flower if score @e[tag=gigallium3,limit=1,sort=nearest] gigalliumID matches 0..4 run setblock ~ ~ ~ magenta_wool
execute unless block ~ ~ ~ #gigallium:flower if score @e[tag=gigallium3,limit=1,sort=nearest] gigalliumID matches 5..9 run setblock ~ ~ ~ purple_wool


#エフェクト
execute if score @e[tag=gigallium3,limit=1,sort=nearest] gigalliumID matches 2 run particle composter ~ ~ ~ 1 1 1 1 12 normal
#用済みのアマスタはさよなら
kill @e[tag=gigallium3,limit=1,sort=nearest]


