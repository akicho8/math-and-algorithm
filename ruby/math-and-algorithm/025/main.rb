# [025] Jiro's Vacation
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_y
n = gets.to_i
a = gets.split.take(n).collect(&:to_i)
b = gets.split.take(n).collect(&:to_i)
x = 0.0
n.times do |i|
  x += 2.fdiv(6) * a[i]
  x += 4.fdiv(6) * b[i]
end
puts "%.12f" % x
__END__
5
3 1 4 1 5
9 2 6 5 3
# >> 21.333333333333
