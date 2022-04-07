# [016] Greatest Common Divisor of N Integers
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_p
gcd = -> a, b {
  loop do
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
}
# gcd.(11, 88)                    # => 11
n = gets.to_i
av = gets.split.take(n).collect(&:to_i)
# av = [11, 88, 22]
p av.inject {|a, e| gcd.(a, e) }
# >> 11
