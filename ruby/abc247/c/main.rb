# [C] 1 2 1 3 1 2 1
# https://atcoder.jp/contests/abc247/tasks/abc247_c
n = gets.to_i
def f(n)
  if n == 1
    [1]
  else
    [*f(n - 1), n, *f(n - 1)]
  end
end
puts f(n) * " "                            # => nil
__END__
4
# >> 1 2 1 3 1 2 1 4 1 2 1 3 1 2 1
