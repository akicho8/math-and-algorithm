# [D] Range Count Query
# https://atcoder.jp/contests/abc248/tasks/abc248_d
gets
a = gets.split.collect(&:to_i)
q = gets.to_i
m = {}
q.times do
  str = gets
  m[str] ||= yield_self do
    l, r, x = str.split.collect(&:to_i)
    a[l.pred..r.pred].tally[x] || 0
  end
  p m[str]
end
__END__
5
3 1 4 1 5
4
1 5 1
2 4 3
1 5 2
1 3 3
# >> 2
# >> 0
# >> 0
# >> 1
