#個人の識別番号を記録するスコア
scoreboard objectives add nsk_id dummy

#誰にも番号が付与されていない場合は、idがどこまで割り振られたかを記録するストレージに0を記録しておく
execute unless entity @a[scores={nsk_id=1..}] run data modify storage nsk id_allocated set value 0
