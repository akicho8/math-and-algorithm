# [A] Lacked Number
# https://atcoder.jp/contests/abc248/tasks/abc248_a
s = gets.strip.chars.collect(&:to_i) # => [0, 2, 3, 4, 5, 6, 7, 8, 9]
a = (0..9).to_a
s.each { |e| a.delete(e) }
p a.first                       # => 1
__END__
023456789
# >> 1
