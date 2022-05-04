# [D] Index Trio
# https://atcoder.jp/contests/abc249/tasks/abc249_d
gets
A = gets.split.collect(&:to_i)
u = {}
s = []
c = 0
f = -> i {
  if s.size == 3
    if s[0] / s[1] == s[2]
      c += 1
      p s
    end
    return
  end
  i = i.modulo(A.size)
  if u[i]
    f.call(i + 1)
  else
    u[i] = true
    s << A[i]
    f.call(i + 1)
    s.pop
    u[i] = false
    p s
  end
}
f.call(0)
__END__
3
6 2 3
# >> [6, 2, 3]
# >> [6, 2]
# >> [6]
# >> []
