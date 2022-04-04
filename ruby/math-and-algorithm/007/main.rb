# [007] Number of Multiples 1
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_g
n, *v = gets.split.map(&:to_i)
p (1..n).count { |i| v.any? { |d| i.modulo(d).zero? } }
