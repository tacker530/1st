# ある商品の N 日間の売上、2 日目以降の各日について、その日の売上が
# 前日の売上よりどれだけ高かったか (あるいは低かったか) を出力するプログラムを作成することにした。
# より具体的には、プログラムは N−1 行を出力し、i 行目 (1≦i≦N−1) の内容は次の通りである。
# 前日と等しい場合: stay
# 前日より小さい場合: down [減少量]、ここで [減少量] は整数値
#前日より大きい場合: up [増加量]、ここで [増加量] は整数値

inputdata = $stdin.readlines(chomp:true)

a_array=[]

a_num    = inputdata[0].to_i # 件数
last_day = inputdata[1].to_i # 前日値（初日）

inputdata[0,2] = []       # 配列データの削除

inputdata.each_with_index do |item,i|
  a_array[ i ] = item.to_i   # 2日目以降の配列
end

a_array.each do |today|
  if today == last_day then
    puts "stay"
  end
  if today > last_day then
    puts "up  #{today - last_day}"
  end
  if today < last_day then
    puts "down  #{last_day - today}"
  end
  last_day = today
end
