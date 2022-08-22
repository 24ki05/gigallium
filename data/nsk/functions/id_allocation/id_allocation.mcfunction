#割り当て済みのidを取得してスコアに記録
execute store result score @s nsk_id run data get storage nsk id_allocated 1
#idを+1して未割当のidの値に変更する
scoreboard players add @s nsk_id 1
#変更後のスコアを割り当て済みのidとしてストレージに記録
execute store result storage nsk id_allocated int 1 run scoreboard players get @s nsk_id
#まだ割り当てがされていない人について上の処理を一人ずつ実行
execute as @a[scores={nsk_id=0},limit=1] run function nsk:id_allocation/id_allocation
