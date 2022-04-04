# [008] Brute Force 1
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_h
n, s = gets.split.map(&:to_i)
p (1..n).sum { |i| (1..n).count { |j| i + j <= s } }
