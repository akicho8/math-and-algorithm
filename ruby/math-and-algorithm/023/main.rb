# [023] Dice Expectation
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_w
n = gets.to_i
a = gets.split.take(n).collect(&:to_i)
b = gets.split.take(n).collect(&:to_i)

# なんで 22 にならない？？？
# total = a.sum { |i| b.sum {|j| i * j } } # => 360
# p total.fdiv(n * n)                      # => 40.0

a = a.sum.fdiv(n)               # => 2.0
b = b.sum.fdiv(n)               # => 20.0
puts "%.12f" % [a + b]
__END__
3
1 2 3
10 20 30
# >> 22.000000000000
