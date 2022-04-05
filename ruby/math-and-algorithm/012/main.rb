# [012] Primality Test
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_l

# 遅い 1とvを含める必要がない
func1 = -> v {
  (1..v).count { |i| v.modulo(i).zero? } == 2
}

# 遅い 2...v まで調べる必要はない
func1 = -> v {
  (2...v).none? { |i| v.modulo(i).zero? }
}

# 高速版 2..sqrt(v) まででよかった
func2 = -> v {
  (2..Math.sqrt(v)).none? { |i| v.modulo(i).zero? }
}

# 高速版の sqrt を使わない版
func3 = -> v {
  r = nil
  i = 2
  loop do
    if i * i > v
      r = true
      break
    end
    if v.modulo(i).zero?
      r = false
      break
    end
    i += 1
  end
  r
}

# (2..100).find_all { |i| func1[i] } # => [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
# (2..100).find_all { |i| func2[i] } # => [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
# (2..100).find_all { |i| func3[i] } # => [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
#
# require 'active_support/core_ext/benchmark'
# max = 10000
# Benchmark.ms { (2..max).each { |i| func1[i] }} # => 669.5520000066608
# Benchmark.ms { (2..max).each { |i| func2[i] }} # => 34.55000004032627
# Benchmark.ms { (2..max).each { |i| func3[i] }} # => 20.489999966230243

v = gets.to_i
if func3[v]
  puts "Yes"
else
  puts "No"
end
