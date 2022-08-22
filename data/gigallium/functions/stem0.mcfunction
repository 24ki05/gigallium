#茎の長さが十分なら花の生成処理へ移行
execute if score gigallium gigalliumCount matches 13.. run function gigallium:flower
#茎がまだ短いなら茎の生成処理を代わりに実行
execute if score gigallium gigalliumCount matches ..12 run function gigallium:stem1