# 問題文
# 16 進法では、一般的に 0123456789ABCDEF の  16 個の数字を使って 1 つの桁を表しますが、 
# 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ の  36 個の数字を使う 36 進法を考えます。
# 36 進法では、0 の次は 1 、 9 の次は A 、Z の次は 10 になります。 
# 整数 N が 10 進表記で与えられるので、 36 進表記に変換してください。
# 制約
# N は整数
# 0≤N<36^3
# 
# 先行ゼロはサプレスすること！

# 標準入力
ext = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
dec = gets.to_i # 10進数

dec36_3 = dec / (36 * 36) # 3桁目
ext3 = ext[dec36_3]       # 36進数変換
if ext3 == "0" then
  ext3 = ""
end
mod36_3 = dec % (36 * 36)

dec36_2 = mod36_3 / 36   # 2桁目
ext2 = ext[dec36_2]      # 36進数変換
if ext3 == "" and ext2 == "0" then
  ext2 = ""
end

mod36_2 = mod36_3 % 36
ext1 = ext[mod36_2]      # 36進数変換

str = ext3 + ext2 + ext1

puts str