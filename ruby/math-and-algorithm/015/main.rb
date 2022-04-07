# [015] Greatest Common Divisor
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_o
a, b = gets.split.collect(&:to_i)
r = loop do
  if a.zero?
    break b
  end
  if b.zero?
    break a
  end
  if a < b
    b = b.modulo(a)
  else
    a = a.modulo(b)
  end
end
p r
