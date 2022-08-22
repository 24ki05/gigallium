#半径方向の長さを一時的に記録するスコアに半径方向の長さ（を4で割ったやつ）を代入
execute store result score @s gigalliumCount2 run scoreboard players get @s gigalliumCount
#今半径方向の長さを記録したスコアを1ずつ減らしながら実行位置を半径方向にずらしていき、中心から半径分だけ距離が離れたらブロック設置
function gigallium:flower_loop
#中央のアマスタの向きをちょっとずらす
tp @s ^ ^ ^ ~5 ~

#回転の最終段階に到達したとき終了処理
execute as @s[nbt={Rotation:[175f,-90f]}] run function gigallium:flower_finish


#横方向の回転が一通り終わったらちょっと上向きに視点を変える（半径が小さい時はちょっと大きめに向きを変えて時短）
execute if score @s gigalliumCount matches ..7 run tp @s[y_rotation=175] ~ ~ ~ ~5 ~-10
execute if score @s gigalliumCount matches 8.. run tp @s[y_rotation=175] ~ ~ ~ ~5 ~-5
