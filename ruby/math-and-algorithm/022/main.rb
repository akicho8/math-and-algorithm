# [022] Choose Cards 3
# https://atcoder.jp/contests/math-and-algorithm/tasks/math_and_algorithm_v
# $stdin = DATA
n = gets.to_i
a = gets.split.take(n).collect(&:to_i)

# https://atcoder.jp/contests/math-and-algorithm/submissions/30729866
# c = 0
# h = a.tally
# h.each do |k, v|
#   if k == 50000
#     c += v * (v - 1) / 2
#   elsif h[100000 - k]
#     c += h[k] * h[100000 - k]
#     h.delete(100000 - k)
#   end
# end
# p c
# ↑本に解説なくない？

c = 0
(0...n).each do |i|
  (i.next...n).each do |j|
    if (a[i] + a[j]) == 100000
      c += 1
    end
  end
end
p c
__END__
6
40000 50000 20000 80000 50000 30000
# >> 2
