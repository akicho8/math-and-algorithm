# [011] Print Prime Numbers
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_k
# max = 100
max = gets.to_i

# 遅い (こちらでもACにはなるけど2倍時間がかかている)
# puts (2..max).find_all { |v| (2...v).none? { |i| v.modulo(i).zero? } }.join(" ")

# 速い
puts (2..max).find_all { |v| (2..Math.sqrt(v)).none? { |i| v.modulo(i).zero? } }.join(" ")

# sqrt を使わなければ30%ほど速くなる
