#一度全員のidを割り当て前の状態に戻す
scoreboard players set @a nsk_id 0

#割り当て済みidを記録したストレージを初期値に戻す
data modify storage nsk id_allocated set value 0

#また一人ずつ割り振りなおす
execute as @a[scores={nsk_id=0},limit=1] run function nsk:id_allocation/id_allocation