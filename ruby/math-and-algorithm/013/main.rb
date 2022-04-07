# [013] Divisor Enumeration
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_m

# v = 100
v = gets.to_i
# v = 12
# v = 827847039317

# 冗長な方法
# (1..v).find_all { |i| v.modulo(i).zero? } # => [1, 2, 4, 5, 10, 20, 25, 50, 100]

# 速い方法
a = []
i = 1                           # 素数では2だったが約数なので1から始める
loop do
  if i * i > v
    break
  end
  q, r = v.divmod(i)            # ついでに商も追加するかもしれないので一度に計算
  if r.zero?
    a << i                      # 100 % 4 == 0 なので割った数 4 を入れる
    if i != q                   # これがないと 100.dimod(10) で商余がどちらも 10 になるため 10 と 10 を push してしまう
      a << q                    # 100 / 4 のとき 20 も追加する
    end
  end
  i += 1
end
puts a.sort                               # => nil
# >> 1
# >> 909859
# >> 909863
# >> 827847039317
