
#足元にアイテムを出す
execute at @s run loot spawn ~ ~ ~ loot gigallium:giga_bone_meal
#出てきたアイテムをすぐ拾えるようにする
data modify entity @e[type=item,limit=1,sort=nearest] PickupDelay set value 0
#レシピ解除時に進捗が解除されてコマンドが動くので、また進捗を起動できるようにレシピを取り除く
recipe take @s nsk:giga_bone_meal
#普通にクラフトされたものはただのダミーなので消す
clear @s structure_void 1
#進捗もまた使えるように解除する
advancement revoke @s only nsk:craft/giga_bone_meal