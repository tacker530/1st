ruby: 個人でよく使うtrue falseを返す正規表現の書き方
Ruby
Rails
正規表現
※備忘録

半角小文字の英文字かどうかを判定


/\A[a-z]+\z/.match?("kaye")
=> true
半角大文字の英文字かどうかを判定


/\A[A-Z]+\z/.match?("KAYE")
=> true
半角数字かどうかを判定


/\A[0-9]+\z/.match?("21")
=> true
半角英文字と半角数字かどうかを判定


/\A[a-zA-Z0-9]+\z/.match?("kayeN21")
=> true
半角英文字と半角数字かどうかを判定


/\A[a-zA-Z0-9]+\z/.match?("kayeN21")
=> true
半角英文字と半角数字と特定の記号のみを許容する判定


/\A[a-z0-9[.][_]]+\z/.match?("kaye.nr")
=> true
適宜暇なときに追記していきます。
なお、こんな書き方の方がいいよとかがあればご教示いただけると嬉しいです。