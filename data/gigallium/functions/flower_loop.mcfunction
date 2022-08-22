#一時的に記録した半径方向の長さのスコアを1減らす
scoreboard players remove @s gigalliumCount2 1
#スコアが0になったらブロック設置
execute if score @s gigalliumCount2 matches 0 run function gigallium:flower_set
#スコアが1以上ならまだ半径分だけ実行位置が移動できていないのでこのファンクションをまた呼び出して繰り返す
execute if score @s gigalliumCount2 matches 1.. positioned ^ ^ ^1 run function gigallium:flower_loop


