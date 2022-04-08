# [018] Convenience Store 1
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_r
#
# - 100 + 400 と 200 + 300 の組み合わせだけが 500 になる
# - 何通りかは a * b なので
# - 100円の商品の個数 * 400円の商品の個数
# - 200円の商品の個数 * 300円の商品の個数
# - この合計で何通りあるかわかる
#
# $stdin = DATA
n = gets.to_i
a = gets.split.take(n).collect(&:to_i)
c = Hash.new(0).merge(a.tally)
p c[100] * c[400] + c[200] * c[300]
__END__
5
100 300 400 400 200
# >> 6
