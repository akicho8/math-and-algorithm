# [014] Factorization
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_n
# https://qiita.com/drken/items/a14e9af0ca2d857dad23#4-%E7%B4%A0%E5%9B%A0%E6%95%B0%E5%88%86%E8%A7%A3

# n = 2020
n = gets.to_i

res = []
i = 2                           # 1は除外するので2から始める
while i * i <= n                # 素数と同じで sqrt(n) までで良い
  if n.modulo(i).zero?          # 割り切れたら、さらに同じ数で割り続ける
    ex = 0                      # 指数
    loop do                     # このループ回数が指数になる
      q, r = n.divmod(i)
      if r.nonzero?             # 割り切れなかった
        break
      end
      n = q                     # これで n がどんどん小さくなる
      ex += 1                   # 指数++
    end
    res << [i, ex]              # i**ex を [i, ex] として持っておく
  end
  i += 1
end
if n != 1                       # 最後に残った数も追加する (1は除く)
  res << [n, 1]                 # n**1
end

puts res.flat_map { |v, count| [v] * count }.join(" ")
