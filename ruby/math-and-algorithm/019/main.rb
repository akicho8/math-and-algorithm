# [019] Choose Cards 1
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_s
#
# - これはよく理解できていない
# - pCr = n! / r!(n-r)! の公式に当てはめるのではない？？？
# - 2個選ぶので n * (n-1) * (n-2) * (n-3) の最初の2つが分子
# - 2個選ぶので分母が 2 ……でいいのか？

# $stdin = DATA
n = gets.to_i
a = gets.split.take(n).collect(&:to_i)
c = Hash.new(0).merge(a.tally)
x = [
  c[1] * (c[1] - 1) / 2,
  c[2] * (c[2] - 1) / 2,
  c[3] * (c[3] - 1) / 2,
].sum
p x                             # => 4
__END__
6
1 3 2 1 1 2
# >> 4
