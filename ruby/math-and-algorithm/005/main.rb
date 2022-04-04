# [005] Modulo 100
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_e
n = gets.to_i
p gets.split.take(n).map(&:to_i).sum.modulo(100)
