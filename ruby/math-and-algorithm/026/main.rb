# [026] Coin Gacha
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_z
n = gets.to_i
# (1..n).collect { |i| n.fdiv(i) } # => [5.0, 2.5, 1.6666666666666667, 1.25, 1.0]
p (1..n).sum { |i| n.fdiv(i) }    # => 11.416666666666666
__END__
5
