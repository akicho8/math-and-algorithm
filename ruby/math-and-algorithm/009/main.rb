# [009] Brute Force 2
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_i
# n, s = 3, 11
# a = [2, 5, 9]

# 全探索版
n, s = gets.split.map(&:to_i)
a = gets.split.take(n).map(&:to_i)
if a.combination(2).any? { |e| e.sum == s }
  puts "Yes"
else
  puts "No"
end
