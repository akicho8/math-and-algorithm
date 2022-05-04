# [B] Slimes
# https://atcoder.jp/contests/abc248/tasks/abc248_b
a, b, k = gets.split.collect(&:to_i)
i = 0
loop do
  if a >= b
    break
  end
  a = a * k
  i += 1
end
p i
__END__
1 4 2
# >> 2
