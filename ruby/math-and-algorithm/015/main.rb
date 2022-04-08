# [015] Greatest Common Divisor
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_o
a, b = gets.split.collect(&:to_i)

method1 = -> a, b {
  loop do
    if a.zero?
      break b
    end
    if b.zero?
      break a
    end
    if a > b
      a = a.modulo(b)
    else
      b = b.modulo(a)
    end
  end
}

method2 = -> a, b {
  if a.zero?
    b
  else
    method2.(b.modulo(a), a)
  end
}

# p method1.(a, b)
p method2.(a, b)
