# [021] Combination Easy
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_u
#
# 100C5 = (100 * 99 * 98 * 97 * 96) / (5 * 4 * 3 * 2 * 1)
#
# $stdin = DATA
n, r = gets.split.collect(&:to_i)
x = n.downto(n - r + 1)
y = 1..r   # 2 から始めてはいけない。r=1 なら (2..1).inject(:*) で nil になる
p x.inject(:*) / y.inject(:*)     # => 15
__END__
6 2
# >> 15
