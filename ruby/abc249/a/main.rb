# [A] Jogging
# https://atcoder.jp/contests/abc249/tasks/abc249_a
a, b, c, d, e, f, x = gets.split.collect(&:to_i)

s1 = [b] * a + [0] * c
s2 = [e] * d + [0] * f

t1 = x.times.sum { |i| s1[i.modulo(s1.size)] } # => 21
t2 = x.times.sum { |i| s2[i.modulo(s2.size)] } # => 12

case
when t1 == t2
  puts "Draw"
when t1 > t2
  puts "Takahashi"
else
  puts "Aoki"
end

__END__
4 3 3 6 2 5 10
# >> Takahashi
