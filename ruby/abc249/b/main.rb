# [B] Perfect String
# https://atcoder.jp/contests/abc249/tasks/abc249_b
s = gets.strip
if s.match?(/[A-Z]/) && s.match?(/[a-z]/) && s.chars.uniq.size == s.size
  puts "Yes"
else
  puts "No"
end
__END__
AtCoder
# >> Yes
