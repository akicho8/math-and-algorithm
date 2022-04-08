# [017] Least Common Multiple of N Integers
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_q

gcd = -> a, b {
  if a.zero?
    b
  else
    gcd.(b.modulo(a), a)
  end
}

lcm = -> a, b {
  a * b / gcd.(a, b)
}

n = gets.to_i
a = gets.split.take(n).collect(&:to_i)
p a.inject {|a, e| lcm.(a, e) }
