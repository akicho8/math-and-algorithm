# [033] Distance
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_ae
require "matrix"
list = 3.times.collect { Vector[*gets.split.collect(&:to_i)] }
a, b, c = list   # => [Vector[0, 5], Vector[1, 1], Vector[3, 0]]
a = a - b            # => Vector[-1, 4]
c = c - b            # => Vector[2, -1]
c = c.normalize      # => Vector[0.8944271909999159, -0.4472135954999579]
len = a.map2(c) { |a, b| a * b }.sum # => -2.6832815729997477
p len
__END__
0 5
1 1
3 0
