#置くブロックを選ぶ乱数を格納する
scoreboard objectives add gigalliumID dummy

#茎の長さの記録および花の半径の決定に用いる
scoreboard objectives add gigalliumCount dummy
scoreboard players add gigallium gigalliumCount 0

#花の生成時に動かすアマスタの動作管理に用いる
scoreboard objectives add gigalliumCount2 dummy


#UUIDをこれで割った余りを乱数として用いる
scoreboard objectives add remainder dummy
scoreboard players set gigallium remainder 10

#UUIDが負のとき正の値に調整するのに用いる
scoreboard objectives add reverse dummy
scoreboard players set gigallium reverse -1

#茎の長さと花の半径の比を4:1にするのに用いる
scoreboard objectives add quarter dummy
scoreboard players set gigallium quarter 4


