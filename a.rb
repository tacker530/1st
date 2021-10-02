# 問題文
# あなたは、3 桁の整数を入力として受け取り、それを 2 倍して出力するプログラムの作成を頼まれた。
# ところが、どうやらプログラムに入力される文字列 S に英小文字が紛れ込むことがあるようだ。
# そこで、その場合はエラーを出力することにした。
# S が 3 桁の整数である場合 (0 で始まる場合を含む) はその 2 倍の値を出力し、
# そうでなければ error と出力するプログラムを作成せよ。
#
# 制約
# S は長さ 3 の文字列である。
# S の各文字は数字または英小文字である

in_str = gets.chop # 読み込み
if /\A[0-9]+\z/.match?(in_str) then
  puts in_str.to_i * 2
else
  puts "error"
end
