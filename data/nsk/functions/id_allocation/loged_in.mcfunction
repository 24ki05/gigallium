#nsk_idの有効化（値を持っていない人にとりあえず0を与える。持ってる人は値が変わらない）
scoreboard players add @a nsk_id 0

#id未割当の人がいたら割り当て処理を実行
execute as @a[scores={nsk_id=0},limit=1] run function nsk:id_allocation/id_allocation
